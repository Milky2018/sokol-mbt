#!/usr/bin/env python3
"""Maintain mechanical declarations and C-layout adapters for pinned Sokol.

This script does not infer resource ownership from names. Long-lived callback
and IO state is implemented explicitly in support.c and documented in OWNERSHIP.md.
"""
import hashlib
import json
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
API = json.loads((ROOT / 'scripts/api.json').read_text())
PREFIX = dict(gfx='sg_', app='sapp_', audio='saudio_', fetch='sfetch_', args='sargs_', time='stm_', log='slog_', glue='sglue_')
STRUCTS = {d['name']: (m, d) for m, ds in API.items() for d in ds if d['kind'] == 'struct'}
ENUMS = {d['name']: (m, d) for m, ds in API.items() for d in ds if d['kind'] == 'enum'}
HANDLES = {n for n, (_, d) in STRUCTS.items() if d['fields'] == [{'name': 'id', 'type': 'uint32_t'}]}
RANGES = {'sg_range', 'sapp_range', 'sfetch_range_t'}
CALLBACKS = {'sg_trace_hooks', 'sg_commit_listener'}
PRIM = {
    'void': ('Unit', 'void'), 'int': ('Int', 'int32_t'), 'int32_t': ('Int', 'int32_t'),
    'uint32_t': ('UInt', 'uint32_t'), 'uint8_t': ('Byte', 'uint8_t'), 'uint16_t': ('UInt16', 'uint16_t'),
    'int16_t': ('Int16', 'int16_t'), 'int8_t': ('Int', 'int32_t'), 'int64_t': ('Int64', 'int64_t'),
    'uint64_t': ('UInt64', 'uint64_t'), 'uintptr_t': ('UInt64', 'uint64_t'), 'size_t': ('UInt64', 'uint64_t'),
    'float': ('Float', 'float'), 'double': ('Double', 'double'), 'bool': ('Bool', 'int32_t'),
}
RESERVED = set('type fn struct enum match let mut const continue test loop for while in as is raise try catch else if return pub priv trait impl extern async with guard derive default readonly ref'.split())
CUSTOM = {'sg_shutdown', 'sapp_run', 'saudio_push', 'sfetch_send', 'sfetch_bind_buffer', 'sfetch_unbind_buffer', 'sfetch_shutdown', 'sfetch_dowork', 'sargs_setup', 'stm_laptime', 'slog_func', 'sapp_html5_fetch_dropped_file', 'sg_add_commit_listener', 'sg_remove_commit_listener', 'sg_install_trace_hooks'}
# Exact C/MoonBit scalar ABI matches. bool, size_t and small integers retain
# normalization shims. String inputs are borrowed only by the audited APIs below.
DIRECT_SCALARS = {'void', 'int', 'int32_t', 'uint32_t', 'int64_t', 'uint64_t', 'float', 'double', 'void *', 'const void *'} | set(ENUMS)
BORROWED_STRINGS = {'sg_push_debug_group', 'sapp_set_clipboard_string', 'sapp_set_window_title'}
GENERATED = [ROOT / m / name for m in API for name in ['types.mbt', 'ffi.mbt', 'bindings.inc.h', 'moon.pkg']] + [ROOT / 'gfx/callbacks.inc.h', ROOT / 'gfx/callbacks.mbt', ROOT / 'scripts/coverage.json']
BEFORE = {p: p.read_bytes() if p.exists() else None for p in GENERATED} if '--check' in sys.argv else None


def ident(name):
    return name + '_' if name in RESERVED else name


def typename(name):
    owner = (STRUCTS.get(name) or ENUMS[name])[0]
    return 'FetchError' if name == 'sfetch_error_t' else ''.join(w.capitalize() for w in name.removeprefix(PREFIX[owner]).removesuffix('_t').split('_'))


def mbtype(t, module, ffi=False):
    if t in HANDLES and ffi:
        return 'UInt'
    if t in PRIM:
        return PRIM[t][0]
    if t in STRUCTS or t in ENUMS:
        owner = (STRUCTS.get(t) or ENUMS[t])[0]
        return ('' if owner == module else '@' + owner + '.') + typename(t)
    if t == 'const char *':
        return 'Bytes' if ffi else 'String'
    if '*' in t:
        return '@native.Handle'
    raise ValueError(t)


def ctype(t):
    if t in HANDLES:
        return 'uint32_t'
    if t in PRIM:
        return PRIM[t][1]
    if t in ENUMS:
        return 'int32_t'
    if t in STRUCTS:
        return t + ' *'
    return 'moonbit_bytes_t' if t == 'const char *' else 'void *'


def structptr(t):
    base = t.removeprefix('const ').removesuffix(' *')
    return base if t.endswith(' *') and base in STRUCTS else None


def argexpr(t, name):
    if t in HANDLES:
        return f'({t}){{ .id = {name} }}'
    if t in STRUCTS:
        return f'(*{name})'
    if structptr(t):
        return name
    if t == 'const char *':
        return f'(const char*){name}'
    return f'({t}){name}' if t in PRIM or t in ENUMS else name


def fields(d):
    return [f for f in d['fields'] if not f['name'].startswith('_')]


def dimensions(t):
    return [int(n) for n in re.findall(r'\[(\d+)\]', t)]


def base(t):
    return t.split('[')[0].strip()


def enum_variants(d):
    import os
    items = [i for i in d['items'] if not i['name'].endswith(('FORCE_U32', 'NUM', 'NUMTYPES'))]
    prefix = os.path.commonprefix([i['name'].lstrip('_') for i in items]).rsplit('_', 1)[0] + '_'
    for item in items:
        name = ''.join(w.capitalize() for w in item['name'].lstrip('_').removeprefix(prefix).split('_'))
        yield ('V' + name if name[0].isdigit() else name), item['value']


def clone_statement(t, dst, src):
    if t in STRUCTS and t not in HANDLES:
        return f'mb_clone_{t}(&{dst}, &{src});'
    if t == 'const char *':
        return f'{dst} = mb_string({src});'
    return ''


def drop_statement(t, value):
    if t in STRUCTS and t not in HANDLES:
        return f'mb_drop_{t}(&{value});'
    if t == 'const char *':
        return f'free((void*){value});'
    return ''


coverage = {}
for module, declarations in API.items():
    directory = ROOT / module
    mb = ['// C API declarations and field adapters maintained by scripts/generate.py.']
    ffi = ['// Private ABI declarations maintained by scripts/generate.py.']
    c = ['/* C-layout adapters. Resource ownership is handled in support.c. */', '#include "../native/common.h"']
    deps = set()
    if module == 'glue':
        c += ['#include "../native/sokol_gfx.h"', '#include "../native/sokol_app.h"']
        deps.update(['app', 'gfx'])
    if module == 'app':
        c += ['#define SOKOL_NO_ENTRY']
    if module == 'gfx':
        c += ['#define SOKOL_TRACE_HOOKS']
    if module != 'log':
        c += ['#define SOKOL_API_IMPL MOONBIT_FFI_EXPORT', '#define SOKOL_IMPL']
    c += [f'#include "../native/sokol_{module}.h"']
    headers = [ROOT/'native/common.h', ROOT/'native/sokol_log.h', ROOT/f'native/sokol_{module}.h']
    if module == 'glue':
        headers += [ROOT/'native/sokol_gfx.h', ROOT/'native/sokol_app.h']
    digest = hashlib.sha256(b''.join(p.read_bytes() for p in headers)).hexdigest()
    c.insert(0, f'/* Header inputs: {digest}. Regenerate after editing shared headers. */')

    def block(out, text):
        out += ['', '///|', text]

    def extern(name, params, result, cresult, body=None, symbol=None):
        symbol = symbol or f'mb_{module}_{name}'
        attrs = ''
        for ownership in ['borrow', 'owned']:
            names = ['object_' if n == 'self' else n for n, ct, mt, own in params if own == ownership]
            if names:
                attrs += f'#{ownership}({", ".join(names)})\n'
        signature = ', '.join(f'{"object_" if n == "self" else n} : {mt}' for n, ct, mt, own in params)
        block(ffi, f'{attrs}extern "c" fn {name}({signature}) -> {result} = "{symbol}"')
        if body is not None:
            args = ', '.join(f'{ct} {n}' for n, ct, mt, own in params) or 'void'
            c.append(f'MOONBIT_FFI_EXPORT {cresult} {symbol}({args}) {{ {body} }}')

    # Only the types returned by glue need local copy helpers there.
    needed = set()
    def visit(name):
        if name in needed or name in HANDLES:
            return
        needed.add(name)
        for field in fields(STRUCTS[name][1]):
            nested = base(field['type'])
            if nested in STRUCTS:
                visit(nested)
    for d in declarations:
        if d['kind'] == 'struct':
            visit(d['name'])
        elif d['kind'] == 'func' and d['result'] in STRUCTS:
            visit(d['result'])
    for name in sorted(needed):
        c += [f'static void mb_clone_{name}({name}*, const {name}*);', f'static void mb_drop_{name}(void*);']
    for name in sorted(CALLBACKS & needed):
        c += [f'static void mb_clone_{name}_callbacks({name}*, const {name}*);', f'static void mb_drop_{name}_callbacks({name}*);', f'static int mb_managed_{name}(const {name}*);']
    for name in sorted(needed):
        clone = [f'static void mb_clone_{name}({name} *dst, const {name} *src) {{ *dst = *src;']
        drop = [f'static void mb_drop_{name}(void *object) {{ {name} *value = object;']
        if name in RANGES:
            clone += ['dst->ptr = mb_copy(src->ptr, src->size);']
            drop += ['free((void*)value->ptr);']
        elif name in CALLBACKS:
            clone += [f'mb_clone_{name}_callbacks(dst, src);']
            drop += [f'mb_drop_{name}_callbacks(value);']
        elif name == 'sfetch_response_t':
            clone += ['dst->path = mb_string(src->path);', 'mb_clone_sfetch_range_t(&dst->buffer, &src->buffer);', 'if (dst->buffer.ptr && mb_contains(src->buffer.ptr, src->buffer.size, src->data.ptr, src->data.size)) { dst->data.ptr = (const uint8_t*)dst->buffer.ptr + ((uintptr_t)src->data.ptr - (uintptr_t)src->buffer.ptr); } else { mb_clone_sfetch_range_t(&dst->data, &src->data); }']
            drop += ['if (!mb_contains(value->buffer.ptr, value->buffer.size, value->data.ptr, value->data.size)) free((void*)value->data.ptr);', 'free((void*)value->buffer.ptr); free((void*)value->path);']
        else:
            for field in fields(STRUCTS[name][1]):
                t = base(field['type'])
                sizes = dimensions(field['type'])
                suffix = ''.join(f'[i{k}]' for k in range(len(sizes)))
                copy = clone_statement(t, 'dst->' + field['name'] + suffix, 'src->' + field['name'] + suffix)
                destroy = drop_statement(t, 'value->' + field['name'] + suffix)
                for k, size in reversed(list(enumerate(sizes))):
                    if copy:
                        copy = f'for (int i{k}=0; i{k}<{size}; i{k}++) {{ {copy} }}'
                    if destroy:
                        destroy = f'for (int i{k}=0; i{k}<{size}; i{k}++) {{ {destroy} }}'
                if copy:
                    clone.append(copy)
                if destroy:
                    drop.append(destroy)
        c += clone + ['}'] + drop + ['}']
        c += [f'_Static_assert(_Alignof({name}) <= _Alignof(void*), "external payload alignment");', f'static {name} *mb_new_{name}(void) {{ return mb_object_new(sizeof({name}), mb_drop_{name}); }}', f'static {name} *mb_copy_{name}(const {name} *source) {{ {name} *r = mb_new_{name}(); mb_clone_{name}(r, source); return r; }}']

    direct = []
    for d in declarations:
        name = d.get('name', '')
        if d['kind'] == 'enum':
            t = typename(name)
            deps.add('debug')
            block(mb, '#derive(Debug, Eq)\npub(all) enum ' + t + ' {\n' + ''.join(f'  {v} = {i}\n' for v, i in enum_variants(d)) + '}')
            block(mb, f'pub extend {t} with Eq::{{equal, not_equal}}\npub extend {t} with @debug.Debug::{{to_repr}}')
            block(ffi, f'extern "c" fn {name}_int(value : {t}) -> Int = "mb_sokol_enum_identity"')
            block(mb, f'pub fn {t}::to_int(self : {t}) -> Int {{ {name}_int(self) }}')
        elif d['kind'] == 'consts':
            for item in d['items']:
                if not item['name'].startswith('_'):
                    block(mb, f'pub const {item["name"].removeprefix(PREFIX[module].upper())} : Int = {item["value"]}')
        elif d['kind'] == 'struct':
            t = typename(name)
            if name in HANDLES:
                block(mb, f'/// Non-owning Sokol ID; copying this value does not allocate a C object.\n#derive(Debug, Eq)\npub struct {t}(UInt)')
                deps.update(['debug', 'native'])
                block(mb, f'pub extend {t} with Eq::{{equal, not_equal}}\npub extend {t} with @debug.Debug::{{to_repr}}')
                block(mb, f'pub fn {t}::new() -> {t} {{ {t}(0U) }}')
                block(mb, f'pub fn {t}::id(self : {t}) -> UInt {{ self.0 }}')
                block(mb, f'pub fn {t}::from_id(id : UInt) -> {t} {{ {t}(id) }}')
                extern(name + '_read_id', [('ptr', 'void *', '@native.Handle', None)], 'UInt', 'uint32_t', 'if (!ptr) abort(); uint32_t id; memcpy(&id, ptr, sizeof(id)); return id;')
                block(mb, f'/// The pointer must identify a live `{name}`.\npub fn {t}::unsafe_from_native(ptr : @native.Handle) -> {t} {{ {t}({name}_read_id(ptr)) }}')
                continue
            deps.add('native')
            block(mb, f'/// Owned C value. copy() creates an independent copy.\npub type {t}')
            extern(name + '_new', [], t, ctype(name), f'return mb_new_{name}();')
            block(mb, f'pub fn {t}::new() -> {t} {{ {name}_new() }}')
            extern(name + '_copy', [('self', ctype(name), t, 'borrow')], t, ctype(name), f'return mb_copy_{name}(self);')
            block(mb, f'pub fn {t}::copy(self : {t}) -> {t} {{ {name}_copy(self) }}')
            extern(name + '_native', [('self', ctype(name), t, 'borrow')], '@native.Handle', 'void *', 'return self;')
            block(mb, f'/// Unowned pointer. Keep this object alive across the native operation.\npub fn {t}::unsafe_native_handle(self : {t}) -> @native.Handle {{ {name}_native(self) }}')
            extern(name + '_from_native', [('ptr', 'void *', '@native.Handle', None)], t, ctype(name), f'if (!ptr) abort(); return mb_copy_{name}(ptr);')
            block(mb, f'/// The pointer and its owned string/range fields must be readable for this call.\npub fn {t}::unsafe_from_native(ptr : @native.Handle) -> {t} {{ {name}_from_native(ptr) }}')
            if name in RANGES:
                extern(name + '_bytes', [('self', ctype(name), t, 'borrow')], 'Bytes', 'moonbit_bytes_t', f'{name} *v = self; return mb_bytes(v->ptr, v->size);')
                block(mb, f'pub fn {t}::bytes(self : {t}) -> Bytes {{ {name}_bytes(self) }}')
                extern(name + '_data', [('data', 'moonbit_bytes_t', 'Bytes', 'borrow')], t, ctype(name), f'{name} source = {{ .ptr = data, .size = Moonbit_array_length(data) }}; return mb_copy_{name}(&source);')
                block(mb, f'pub fn {t}::from_bytes(data : Bytes) -> {t} {{ {name}_data(data) }}')
            for field in fields(d):
                fname = field['name']
                b = base(field['type'])
                sizes = dimensions(field['type'])
                if name in RANGES and fname == 'ptr':
                    continue
                callback = '(*)' in b
                if callback:
                    cbtype = f'mb_{name}_{fname}_fn'
                    result, signature = b.split('(*)')
                    c.append(f'typedef {result} (*{cbtype}){signature};')
                    mt, ct = '@native.Handle', 'void *'
                else:
                    mt, ct = mbtype(b, module), ctype(b)
                deps.update(['native'] if '*' in b else [])
                if b == 'const char *':
                    deps.add('utf8')
                suffix = ''.join(f'[i{k}]' for k in range(len(sizes)))
                access = f'v->{fname}{suffix}'
                params = [('self', ctype(name), t, 'borrow')] + [(f'i{k}', 'int32_t', 'Int', None) for k in range(len(sizes))]
                msig = ', '.join(f'{n} : {mt}' for n, ct, mt, own in params)
                args = ', '.join(n for n, ct, mt, own in params)
                bounds = ' '.join(f'if (i{k}<0 || i{k}>={size}) abort();' for k, size in enumerate(sizes))
                checks = ' '.join(f'guard i{k} >= 0 && i{k} < {size} else {{ abort("descriptor array index out of bounds") }};' for k, size in enumerate(sizes))
                get = f'{name}_get_{fname}'
                if b in HANDLES:
                    body = f'return {access}.id;'
                elif b in STRUCTS:
                    body = f'return mb_copy_{b}(&{access});'
                elif b == 'const char *':
                    body = f'return mb_utf8({access});'
                else:
                    body = 'return ' + ('(void*)' if '*' in b else '') + access + ';'
                extern(get, params, 'Bytes' if b == 'const char *' else 'UInt' if b in HANDLES else mt, ct, f'{bounds} {name} *v = self; {body}')
                call = f'{get}({args})'
                if b == 'const char *':
                    call = f'@utf8.decode_lossy({call})'
                if b in HANDLES:
                    call = f'{typename(b)}({call})'
                block(mb, f'pub fn {t}::{ident(fname)}({msig}) -> {mt} {{ {checks} {call} }}')
                if name in RANGES or name == 'sfetch_response_t':
                    continue
                setname = f'{name}_set_{fname}'
                own = 'borrow' if (b in STRUCTS and b not in HANDLES) or b == 'const char *' else None
                setter_params = params + [('value', ct, 'Bytes' if b == 'const char *' else 'UInt' if b in HANDLES else mt, own)]
                if b in STRUCTS and b not in HANDLES:
                    setter = f'{b} replacement; mb_clone_{b}(&replacement, value); mb_drop_{b}(&{access}); {access} = replacement;'
                elif b == 'const char *':
                    setter = f'const char *replacement = mb_string((const char*)value); free((void*){access}); {access} = replacement;'
                else:
                    setter = f'{access} = ' + (f'({cbtype})value' if callback else argexpr(b, 'value')) + ';'
                if name in CALLBACKS:
                    setter = f'if (mb_managed_{name}(v)) abort(); ' + setter
                extern(setname, setter_params, 'Unit', 'void', f'{bounds} {name} *v = self; {setter}')
                value = '@native.cstring(value)' if b == 'const char *' else 'value.0' if b in HANDLES else 'value'
                block(mb, f'pub fn {t}::set_{fname}({msig}, value : {mt}) -> {t} {{ {checks} {setname}({args}, {value}); self }}')
        elif d['kind'] == 'func' and name not in CUSTOM:
            public = ident(name.removeprefix(PREFIX[module]))
            params, signature, args, actual = [], [], [], []
            types = [d['result']] + [p['type'] for p in d['params']]
            is_direct = all(t in DIRECT_SCALARS or (t == 'const char *' and name in BORROWED_STRINGS) for t in types)
            for param in d['params']:
                n, pt = ident(param['name']), param['type']
                b = structptr(pt) or pt
                mt = mbtype(b, module)
                if mt.startswith('@native.'):
                    deps.add('native')
                own = 'borrow' if (b in STRUCTS and b not in HANDLES) or pt == 'const char *' else None
                params.append((n, ctype(b), mbtype(b, module, True), own))
                signature.append(f'{n} : {mt}')
                args.append(f'@native.cstring({n})' if pt == 'const char *' else f'{n}.0' if b in HANDLES else n)
                actual.append(argexpr(pt, n))
                if pt == 'const char *':
                    deps.add('native')
            result = d['result']
            if '*' in result:
                deps.add('native')
            call = name + '(' + ', '.join(actual) + ')'
            if result in HANDLES:
                body = f'{result} value = {call}; return value.id;'
            elif result in STRUCTS:
                body = f'{result} value = {call}; return mb_copy_{result}(&value);'
            elif result == 'void':
                body = call + ';'
            elif result == 'const char *':
                deps.add('utf8')
                body = f'return mb_utf8({call});'
            else:
                body = 'return ' + ('(void*)' if '*' in result else '') + call + ';'
            extern(name, params, mbtype(result, module, True), ctype(result), None if is_direct else body, name if is_direct else None)
            if is_direct:
                direct.append(name)
            mcall = f'{name}({", ".join(args)})'
            if result in HANDLES:
                mcall = f'{typename(result)}({mcall})'
            elif result == 'const char *':
                mcall = f'@utf8.decode_lossy({mcall})'
            if module == 'glue':
                mcall = 'guard @app.isvalid() else { abort("app must be initialized") }; ' + mcall
            block(mb, f'pub fn {public}({", ".join(signature)}) -> {mbtype(result, module)} {{ {mcall} }}')
    for name, (owner, d) in STRUCTS.items():
        if owner == module and name.removesuffix('_t').endswith('_logger'):
            t = typename(name)
            extern(name + '_default', [], t, ctype(name), f'{name} *r = mb_new_{name}(); r->func = slog_func; return r;')
            block(mb, f'pub fn {t}::default() -> {t} {{ {name}_default() }}')
    # Handwritten APIs also import these helpers.
    if module in ['app', 'gfx', 'fetch', 'args', 'log']:
        deps.add('native')
    if module == 'log':
        deps.add('debug')
    (directory / 'types.mbt').write_text('\n'.join(mb) + '\n')
    (directory / 'ffi.mbt').write_text('\n'.join(ffi) + '\n')
    (directory / 'bindings.inc.h').write_text('\n'.join(c) + '\n')
    imports = ['moonbitlang/core/encoding/utf8' if dep == 'utf8' else 'moonbitlang/core/debug' if dep == 'debug' else 'Milky2018/sokol/' + dep for dep in sorted(deps)]
    config = 'import {\n' + ''.join(f'  "{name}",\n' for name in imports) + '}\nsupported_targets = "native"\n'
    flag = f'${{build.SOKOL_{module.upper()}_FLAGS}}' if module in ['gfx', 'app', 'audio'] else ''
    config += 'options(\n  "native-stub": ["support.c"],\n  link: { "native": { "stub-cc-flags": "' + flag + '" } },\n)\n'
    if module == 'fetch':
        config += '\nimport { "Milky2018/sokol/time" } for "test"\n'
    (directory / 'moon.pkg').write_text(config)
    coverage[module] = {'functions': sum(d['kind'] == 'func' for d in declarations), 'direct': direct, 'adapted': [d['name'] for d in declarations if d['kind'] == 'func' and d['name'] not in CUSTOM and d['name'] not in direct], 'custom': [d['name'] for d in declarations if d['kind'] == 'func' and d['name'] in CUSTOM], 'structs': sum(d['kind'] == 'struct' for d in declarations), 'enums': sum(d['kind'] == 'enum' for d in declarations)}
(ROOT / 'scripts/coverage.json').write_text(json.dumps(coverage, indent=2) + '\n')
from callbacks import generate as generate_callbacks
generate_callbacks()
subprocess.run(['moon', 'fmt'], cwd=ROOT, check=True)
if BEFORE is not None:
    changed = [str(p.relative_to(ROOT)) for p in GENERATED if p.read_bytes() != BEFORE[p]]
    if changed:
        raise SystemExit('Generated files were stale: ' + ', '.join(changed))
print(f'Bindings: {sum(len(v["direct"]) for v in coverage.values())} direct calls; aggregate ABI and callback adapters retained.')
