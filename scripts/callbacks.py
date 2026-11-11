"""Mechanical closure ABI adapters; registration ownership is in gfx/support.c."""
import json
from pathlib import Path
ROOT = Path(__file__).resolve().parents[1]
API = json.loads((ROOT / 'scripts/api.json').read_text())
STRUCTS = {d['name']: d for d in API['gfx'] if d['kind'] == 'struct'}
HANDLES = {name for name, d in STRUCTS.items() if d['fields'] == [{'name': 'id', 'type': 'uint32_t'}]}
PRIM = {'int': ('Int', 'int32_t'), 'bool': ('Bool', 'int32_t'), 'uint32_t': ('UInt', 'uint32_t'), 'float': ('Float', 'float'), 'size_t': ('UInt64', 'uint64_t')}


def ty(name):
    return ''.join(w.capitalize() for w in name.removeprefix('sg_').split('_'))


def argtype(t):
    b = t.removeprefix('const ').removesuffix(' *')
    if b in HANDLES:
        return 'UInt', 'uint32_t', b
    if b in STRUCTS:
        return ty(b), b + ' *', b
    if t == 'const char *':
        return 'Bytes', 'moonbit_bytes_t', None
    return (*PRIM[t], None)


def generate():
    mb = ['// Closure ABI adapters maintained by scripts/callbacks.py.']
    c = ['/* Closure contexts have independent ownership; no descriptor parent chains. */']
    for name in ['sg_trace_hooks', 'sg_commit_listener']:
        callbacks = [f for f in STRUCTS[name]['fields'] if '(*)' in f['type']]
        count, st, context = len(callbacks), ty(name), f'mb_{name}_callbacks'
        c += [f'typedef struct {{ void *closure[{count}]; void *call[{count}]; }} {context};']
        setters = []
        for i, field in enumerate(callbacks):
            fname = field['name']
            params = field['type'].split('(*)(')[1].removesuffix(')').split(', ')
            assert params[-1] == 'void *'
            params = params[:-1]
            normalized = [argtype(t) for t in params]
            bridge, trampoline, setter = f'mb_{name}_{fname}_call', f'mb_{name}_{fname}_trampoline', f'mb_{name}_on_{fname}'
            c.append(f'typedef void (*{bridge})(void*' + ''.join(', ' + ct for mt, ct, b in normalized) + ');')
            cparams = ', '.join(t + f' a{k}' for k, t in enumerate(params)) + (', ' if params else '') + 'void *userdata'
            body, args, temporaries = [f'{context} *ctx = userdata;'], [], []
            for k, (t, (mt, ct, b)) in enumerate(zip(params, normalized)):
                if b in HANDLES:
                    args.append(f'a{k}.id')
                elif b:
                    source = f'a{k}' if '*' in t else f'&a{k}'
                    body.append(f'{b} *arg{k} = mb_copy_{b}({source});')
                    args.append(f'arg{k}')
                    temporaries.append(f'arg{k}')
                elif t == 'const char *':
                    body.append(f'moonbit_bytes_t arg{k} = mb_utf8(a{k});')
                    args.append(f'arg{k}')
                    temporaries.append(f'arg{k}')
                else:
                    args.append(f'a{k}')
            body += [f'void *closure = ctx->closure[{i}]; {bridge} call = ({bridge})ctx->call[{i}]; moonbit_incref(closure); call(closure' + ''.join(', ' + a for a in args) + ');']
            body += [f'moonbit_decref({temporary});' for temporary in temporaries]
            body += ['moonbit_decref(closure);']
            c.append(f'static void {trampoline}({cparams}) {{ ' + ' '.join(body) + ' }')
            checks = ' '.join(f'if (v->{f["name"]} && v->{f["name"]} != mb_{name}_{f["name"]}_trampoline) abort();' for f in callbacks)
            # Clone all currently active closures except the one being replaced.
            setters.append(f'''MOONBIT_FFI_EXPORT {name} *{setter}({name} *self, {bridge} call, void *closure) {{
                {name} *v = mb_new_{name}(); *v = *self;
                {checks}
                {context} *ctx = mb_malloc(sizeof(*ctx));
                if (mb_managed_{name}(v)) *ctx = *({context}*)v->user_data;
                for (int slot=0; slot<{count}; slot++) if (slot != {i} && ctx->closure[slot]) moonbit_incref(ctx->closure[slot]);
                ctx->closure[{i}] = closure; ctx->call[{i}] = (void*)call;
                v->user_data = ctx; v->{fname} = {trampoline}; return v;
            }}''')
            safe_types = ['String' if t == 'const char *' else ty(b) if b in HANDLES else mt for t, (mt, ct, b) in zip(params, normalized)]
            safe_callback = '(' + ', '.join(safe_types) + ') -> Unit'
            fnref = 'FuncRef[(' + safe_callback + ''.join(', ' + mt for mt, ct, b in normalized) + ') -> Unit]'
            mb += ['', '///|', '#borrow(value)\n#owned(callback)\n' + f'extern "c" fn {name}_on_{fname}_ffi(value : {st}, call : {fnref}, callback : {safe_callback}) -> {st} = "{setter}"']
            names = [f'a{k}' for k in range(len(params))]
            converted = [f'@utf8.decode_lossy(a{k})' if t == 'const char *' else f'{ty(b)}(a{k})' if b in HANDLES else f'a{k}' for k, (t, (mt, ct, b)) in enumerate(zip(params, normalized))]
            mb += ['', '///|', f'/// Return an independent callback configuration, replacing only this callback.\npub fn {st}::on_{fname}(self : {st}, callback : {safe_callback}) -> {st} {{\n  {name}_on_{fname}_ffi(self, fn(f' + ''.join(', ' + n for n in names) + ') { f(' + ', '.join(converted) + ') }, callback)\n}']
        detect = ' || '.join(f'value->{f["name"]} == mb_{name}_{f["name"]}_trampoline' for f in callbacks)
        c += [f'''static int mb_managed_{name}(const {name} *value) {{ return {detect}; }}
            static void mb_clone_{name}_callbacks({name} *dst, const {name} *src) {{
                if (!mb_managed_{name}(src)) return;
                {context} *ctx = mb_malloc(sizeof(*ctx)); *ctx = *({context}*)src->user_data;
                for (int i=0; i<{count}; i++) if (ctx->closure[i]) moonbit_incref(ctx->closure[i]);
                dst->user_data = ctx;
            }}
            static void mb_drop_{name}_callbacks({name} *value) {{
                if (!mb_managed_{name}(value)) return;
                {context} *ctx = value->user_data;
                for (int i=0; i<{count}; i++) if (ctx->closure[i]) moonbit_decref(ctx->closure[i]);
                free(ctx);
            }}'''] + setters
    mb += ['''
///|
#borrow(hooks)
extern "c" fn install_trace_hooks_ffi(hooks : TraceHooks) -> TraceHooks = "mb_gfx_install_trace_hooks"

///|
/// Install callback snapshots. Keep native callbacks and user_data valid until replaced.
pub fn install_trace_hooks(hooks : TraceHooks) -> TraceHooks { install_trace_hooks_ffi(hooks) }

///|
#borrow(listener)
extern "c" fn add_commit_listener_ffi(listener : CommitListener) -> Bool = "mb_gfx_add_commit_listener"

///|
pub fn add_commit_listener(listener : CommitListener) -> Bool { add_commit_listener_ffi(listener) }

///|
#borrow(listener)
extern "c" fn remove_commit_listener_ffi(listener : CommitListener) -> Bool = "mb_gfx_remove_commit_listener"

///|
pub fn remove_commit_listener(listener : CommitListener) -> Bool { remove_commit_listener_ffi(listener) }

///|
extern "c" fn shutdown_ffi() = "mb_gfx_shutdown"

///|
pub fn shutdown() -> Unit { shutdown_ffi() }

///|
extern "c" fn headless_ffi() -> Bool = "mb_gfx_headless"

///|
pub fn is_headless() -> Bool { headless_ffi() }
''']
    (ROOT / 'gfx/callbacks.mbt').write_text('\n'.join(mb) + '\n')
    (ROOT / 'gfx/callbacks.inc.h').write_text('\n'.join(c) + '\n')


if __name__ == '__main__':
    generate()
