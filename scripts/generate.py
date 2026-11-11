#!/usr/bin/env python3
"""Generate mechanical bindings from the pinned declarations in api.json.

Read in this order: main -> generate_module -> emit_descriptor/emit_function.
File organization is in layout.py. Async ownership stays in handwritten C.
Normal builds consume the checked-in output and do not run this script.
"""

import argparse
import hashlib
import json
import os
import re
import shutil
import subprocess
from pathlib import Path

from callbacks import generate as generate_callbacks
from layout import section_for

ROOT = Path(__file__).resolve().parents[1]
API = json.loads((ROOT / "scripts/api.json").read_text())
PREFIX = dict(
    gfx="sg_",
    app="sapp_",
    audio="saudio_",
    fetch="sfetch_",
    args="sargs_",
    time="stm_",
    log="slog_",
    glue="sglue_",
)
STRUCTS = {
    declaration["name"]: (module, declaration)
    for module, declarations in API.items()
    for declaration in declarations
    if declaration["kind"] == "struct"
}
ENUMS = {
    declaration["name"]: (module, declaration)
    for module, declarations in API.items()
    for declaration in declarations
    if declaration["kind"] == "enum"
}
# Explicit audited value categories, rather than a guess based on field shape.
HANDLES = {
    "sg_buffer",
    "sg_image",
    "sg_sampler",
    "sg_shader",
    "sg_pipeline",
    "sg_view",
    "sfetch_handle_t",
}
RANGES = {"sg_range", "sapp_range", "sfetch_range_t"}
CALLBACKS = {"sg_trace_hooks", "sg_commit_listener"}
PRIMITIVES = {
    "void": ("Unit", "void"),
    "int": ("Int", "int32_t"),
    "int32_t": ("Int", "int32_t"),
    "uint32_t": ("UInt", "uint32_t"),
    "uint8_t": ("Byte", "uint8_t"),
    "uint16_t": ("UInt16", "uint16_t"),
    "int16_t": ("Int16", "int16_t"),
    "int8_t": ("Int", "int32_t"),
    "int64_t": ("Int64", "int64_t"),
    "uint64_t": ("UInt64", "uint64_t"),
    "uintptr_t": ("UInt64", "uint64_t"),
    "size_t": ("UInt64", "uint64_t"),
    "float": ("Float", "float"),
    "double": ("Double", "double"),
    "bool": ("Bool", "int32_t"),
}
RESERVED = set(
    """type fn struct enum match let mut const continue test loop for
    while in as is raise try catch else if return pub priv trait impl extern
    async with guard derive default readonly ref""".split()
)
CUSTOM = {
    "sg_shutdown",
    "sg_install_trace_hooks",
    "sg_add_commit_listener",
    "sg_remove_commit_listener",
    "sapp_run",
    "sapp_html5_fetch_dropped_file",
    "saudio_push",
    "sfetch_send",
    "sfetch_bind_buffer",
    "sfetch_unbind_buffer",
    "sfetch_shutdown",
    "sfetch_dowork",
    "sargs_setup",
    "stm_laptime",
    "slog_func",
}
# Exact scalar ABI matches. bool, size_t and small integers need normalization.
DIRECT_SCALARS = {
    "void",
    "int",
    "int32_t",
    "uint32_t",
    "int64_t",
    "uint64_t",
    "float",
    "double",
    "void *",
    "const void *",
} | set(ENUMS)
BORROWED_STRINGS = {
    "sg_push_debug_group",
    "sapp_set_clipboard_string",
    "sapp_set_window_title",
}


def identifier(name):
    return name + "_" if name in RESERVED else name


def type_name(name):
    owner = (STRUCTS.get(name) or ENUMS[name])[0]
    if name == "sfetch_error_t":
        return "FetchError"
    words = name.removeprefix(PREFIX[owner]).removesuffix("_t").split("_")
    return "".join(word.capitalize() for word in words)


def moon_type(c_type, module, ffi=False):
    if c_type in HANDLES and ffi:
        return "UInt"
    if c_type in PRIMITIVES:
        return PRIMITIVES[c_type][0]
    if c_type in STRUCTS or c_type in ENUMS:
        owner = (STRUCTS.get(c_type) or ENUMS[c_type])[0]
        qualifier = "" if owner == module else f"@{owner}."
        return qualifier + type_name(c_type)
    if c_type == "const char *":
        return "Bytes" if ffi else "String"
    if "*" in c_type:
        return "@native.Handle"
    raise ValueError(f"unsupported C type: {c_type}")


def bridge_type(c_type):
    if c_type in HANDLES:
        return "uint32_t"
    if c_type in PRIMITIVES:
        return PRIMITIVES[c_type][1]
    if c_type in ENUMS:
        return "int32_t"
    if c_type in STRUCTS:
        return c_type + " *"
    return "moonbit_bytes_t" if c_type == "const char *" else "void *"


def pointed_struct(c_type):
    name = c_type.removeprefix("const ").removesuffix(" *")
    return name if c_type.endswith(" *") and name in STRUCTS else None


def native_argument(c_type, name):
    if c_type in HANDLES:
        return f"({c_type}){{ .id = {name} }}"
    if c_type in STRUCTS:
        return f"(*{name})"
    if pointed_struct(c_type):
        return name
    if c_type == "const char *":
        return f"(const char*){name}"
    if c_type in PRIMITIVES or c_type in ENUMS:
        return f"({c_type}){name}"
    return name


def public_fields(declaration):
    return [
        field for field in declaration["fields"] if not field["name"].startswith("_")
    ]


def array_dimensions(c_type):
    return [int(size) for size in re.findall(r"\[(\d+)\]", c_type)]


def element_type(c_type):
    return c_type.split("[")[0].strip()


def enum_variants(declaration):
    items = [
        item
        for item in declaration["items"]
        if not item["name"].endswith(("FORCE_U32", "NUM", "NUMTYPES"))
    ]
    prefix = os.path.commonprefix([item["name"].lstrip("_") for item in items])
    prefix = prefix.rsplit("_", 1)[0] + "_"
    for item in items:
        words = item["name"].lstrip("_").removeprefix(prefix).split("_")
        variant = "".join(word.capitalize() for word in words)
        if variant[0].isdigit():
            variant = "V" + variant
        yield variant, item["value"]


def clone_field(c_type, destination, source):
    if c_type in STRUCTS and c_type not in HANDLES:
        return f"mb_clone_{c_type}(&{destination}, &{source});"
    if c_type == "const char *":
        return f"{destination} = mb_string({source});"
    return ""


def drop_field(c_type, value):
    if c_type in STRUCTS and c_type not in HANDLES:
        return f"mb_drop_{c_type}(&{value});"
    if c_type == "const char *":
        return f"free((void*){value});"
    return ""


class ModuleBindings:
    """Output buffers for one package, grouped by feature in both languages.

    emit() appends MoonBit blocks; extern() places its private declaration next
    to the public method. No ownership or resource state is stored here.
    Parameter tuples are (name, C ABI type, MoonBit ABI type, borrow/owned/None).
    """

    def __init__(self, module, declarations):
        self.module = module
        self.declarations = declarations
        self.moon_sections = {}
        self.c_sections = {}
        self.direct = []
        self.header = []
        self.select("bindings")

    def select(self, section):
        self.moon = self.moon_sections.setdefault(section, [])
        self.native = self.c_sections.setdefault(section, [])

    def select_declaration(self, declaration):
        self.select(section_for(self.module, declaration))

    def emit(self, text):
        self.moon.extend(["", "///|", text])

    def extern(self, name, params, result, c_result, body=None, symbol=None):
        symbol = symbol or f"mb_{self.module}_{name}"
        attributes = []
        for ownership in ["borrow", "owned"]:
            names = [
                "object_" if name == "self" else name
                for name, _, _, own in params
                if own == ownership
            ]
            if names:
                attributes.append(f"#{ownership}({', '.join(names)})")
        signature = ", ".join(
            f"{'object_' if name == 'self' else name} : {moon_type}"
            for name, _, moon_type, _ in params
        )
        declaration = f'extern "c" fn {name}({signature}) -> {result} = "{symbol}"'
        self.emit("\n".join([*attributes, declaration]))
        if body is not None:
            arguments = (
                ", ".join(f"{c_type} {name}" for name, c_type, _, _ in params) or "void"
            )
            self.native.append(
                f"MOONBIT_FFI_EXPORT {c_result} {symbol}({arguments}) {{\n{body}\n}}"
            )

    def emit_header(self, needed):
        module = self.module
        headers = [
            ROOT / "native/common.h",
            ROOT / "native/sokol_log.h",
            ROOT / f"native/sokol_{module}.h",
        ]
        self.header = [
            "/* Generated by scripts/generate.py; see MAINTAINING.md. */",
            "",
            '#include "../native/common.h"',
        ]
        if module == "glue":
            self.header += [
                '#include "../native/sokol_gfx.h"',
                '#include "../native/sokol_app.h"',
            ]
            headers += [ROOT / "native/sokol_gfx.h", ROOT / "native/sokol_app.h"]
        self.header += ["", "/* Sokol configuration. */"]
        if module == "app":
            self.header.append("#define SOKOL_NO_ENTRY")
        if module == "gfx":
            self.header.append("#define SOKOL_TRACE_HOOKS")
        if module != "log":
            self.header += [
                "#define SOKOL_API_IMPL MOONBIT_FFI_EXPORT",
                "#define SOKOL_IMPL",
            ]
        self.header.append(f'#include "../native/sokol_{module}.h"')
        digest = hashlib.sha256(
            b"".join(path.read_bytes() for path in headers)
        ).hexdigest()
        self.header.insert(
            1,
            f"/* Header inputs: {digest}. Regenerate after editing shared headers. */",
        )
        # Forward declarations permit feature files to refer to one another.
        if needed:
            self.header += ["", "/* Copy and allocation helpers. */"]
        for name in sorted(needed):
            self.header += [
                "",
                f"static void mb_clone_{name}({name}*, const {name}*);",
                f"static void mb_drop_{name}(void*);",
                f"static {name} *mb_new_{name}(void);",
                f"static {name} *mb_copy_{name}(const {name}*);",
            ]
        if CALLBACKS & needed:
            self.header += ["", "/* Managed callback helpers. */"]
        for name in sorted(CALLBACKS & needed):
            self.header += [
                "",
                f"static void mb_clone_{name}_callbacks({name}*, const {name}*);",
                f"static void mb_drop_{name}_callbacks({name}*);",
                f"static int mb_managed_{name}(const {name}*);",
            ]

    def emit_copy_helpers(self, name):
        owner, declaration = STRUCTS[name]
        self.select_declaration(
            declaration if owner == self.module else {"kind": "func", "name": ""}
        )
        clone = ["*dst = *src;"]
        drop = []
        if name in RANGES:
            clone.append("dst->ptr = mb_copy(src->ptr, src->size);")
            drop.append("free((void*)value->ptr);")
        elif name in CALLBACKS:
            clone.append(f"mb_clone_{name}_callbacks(dst, src);")
            drop.append(f"mb_drop_{name}_callbacks(value);")
        else:
            for field in public_fields(declaration):
                c_type = element_type(field["type"])
                sizes = array_dimensions(field["type"])
                suffix = "".join(f"[i{index}]" for index in range(len(sizes)))
                member = field["name"] + suffix
                copy = clone_field(c_type, f"dst->{member}", f"src->{member}")
                destroy = drop_field(c_type, f"value->{member}")
                for index, size in reversed(list(enumerate(sizes))):
                    if copy:
                        copy = f"for (int i{index}=0; i{index}<{size}; i{index}++) {{\n{copy}\n}}"
                    if destroy:
                        destroy = f"for (int i{index}=0; i{index}<{size}; i{index}++) {{\n{destroy}\n}}"
                if copy:
                    clone.append(copy)
                if destroy:
                    drop.append(destroy)
        if name == "sfetch_response_t":
            # This aliasing/lifetime policy is deliberately handwritten.
            self.native.append('#include "response.h"')
        else:
            if drop:
                drop.insert(0, f"{name} *value = object;")
            else:
                drop.append("(void)object;")
            self.native += [
                f"static void mb_clone_{name}({name} *dst, const {name} *src) {{\n"
                + "\n".join(clone)
                + "\n}",
                f"static void mb_drop_{name}(void *object) {{\n"
                + "\n".join(drop)
                + "\n}",
            ]
        self.native += [
            f'_Static_assert(_Alignof({name}) <= _Alignof(void*), "external payload alignment");',
            f"""static {name} *mb_new_{name}(void) {{
                return mb_object_new(sizeof({name}), mb_drop_{name});
            }}""",
            f"""static {name} *mb_copy_{name}(const {name} *source) {{
                {name} *result = mb_new_{name}();
                mb_clone_{name}(result, source);
                return result;
            }}""",
        ]

    def emit_enum(self, declaration):
        name = declaration["name"]
        public_type = type_name(name)
        variants = "\n".join(
            f"  {variant} = {value}" for variant, value in enum_variants(declaration)
        )
        self.emit(f"#derive(Debug, Eq)\npub(all) enum {public_type} {{\n{variants}\n}}")
        self.emit(
            f"pub extend {public_type} with Eq::{{equal, not_equal}}\npub extend {public_type} with @debug.Debug::{{to_repr}}"
        )
        self.emit(
            f'extern "c" fn {name}_int(value : {public_type}) -> Int = "mb_sokol_enum_identity"'
        )
        self.emit(
            f"pub fn {public_type}::to_int(self : {public_type}) -> Int {{ {name}_int(self) }}"
        )

    def emit_constants(self, declaration):
        for item in declaration["items"]:
            if not item["name"].startswith("_"):
                name = item["name"].removeprefix(PREFIX[self.module].upper())
                self.emit(f"pub const {name} : Int = {item['value']}")

    def emit_handle(self, name):
        public_type = type_name(name)
        self.emit(f"""/// Non-owning Sokol ID; copying this value does not allocate a C object.
#derive(Debug, Eq)
pub struct {public_type}(UInt)""")
        self.emit(
            f"pub extend {public_type} with Eq::{{equal, not_equal}}\npub extend {public_type} with @debug.Debug::{{to_repr}}"
        )
        self.emit(
            f"pub fn {public_type}::new() -> {public_type} {{ {public_type}(0U) }}"
        )
        self.emit(
            f"pub fn {public_type}::id(self : {public_type}) -> UInt {{ self.0 }}"
        )
        self.emit(
            f"pub fn {public_type}::from_id(id : UInt) -> {public_type} {{ {public_type}(id) }}"
        )
        self.extern(
            name + "_read_id",
            [("ptr", "void *", "@native.Handle", None)],
            "UInt",
            "uint32_t",
            """if (!ptr) abort();
uint32_t id;
memcpy(&id, ptr, sizeof(id));
return id;""",
        )
        self.emit(f"""/// The pointer must identify a live `{name}`.
pub fn {public_type}::unsafe_from_native(ptr : @native.Handle) -> {public_type} {{
  {public_type}({name}_read_id(ptr))
}}""")

    def emit_descriptor(self, declaration):
        name = declaration["name"]
        if name in HANDLES:
            self.emit_handle(name)
            return
        public_type = type_name(name)
        c_type = bridge_type(name)
        receiver = [("self", c_type, public_type, "borrow")]
        self.emit(
            f"/// Owned C value. copy() creates an independent copy.\npub type {public_type}"
        )
        self.extern(name + "_new", [], public_type, c_type, f"return mb_new_{name}();")
        self.emit(f"pub fn {public_type}::new() -> {public_type} {{ {name}_new() }}")
        self.extern(
            name + "_copy",
            receiver,
            public_type,
            c_type,
            f"return mb_copy_{name}(self);",
        )
        self.emit(
            f"pub fn {public_type}::copy(self : {public_type}) -> {public_type} {{ {name}_copy(self) }}"
        )
        self.extern(
            name + "_native", receiver, "@native.Handle", "void *", "return self;"
        )
        self.emit(f"""/// Unowned pointer. Keep this object alive across the native operation.
pub fn {public_type}::unsafe_native_handle(self : {public_type}) -> @native.Handle {{
  {name}_native(self)
}}""")
        self.extern(
            name + "_from_native",
            [("ptr", "void *", "@native.Handle", None)],
            public_type,
            c_type,
            f"if (!ptr) abort(); return mb_copy_{name}(ptr);",
        )
        self.emit(f"""/// The pointer and its owned string/range fields must be readable for this call.
pub fn {public_type}::unsafe_from_native(ptr : @native.Handle) -> {public_type} {{
  {name}_from_native(ptr)
}}""")
        if name in RANGES:
            self.emit_range(name, receiver)
        for field in public_fields(declaration):
            if name not in RANGES or field["name"] != "ptr":
                self.emit_field(name, field, receiver)
        if name.removesuffix("_t").endswith("_logger"):
            self.extern(
                name + "_default",
                [],
                public_type,
                c_type,
                f"""
{name} *result = mb_new_{name}();
result->func = slog_func;
return result;""",
            )
            self.emit(
                f"pub fn {public_type}::default() -> {public_type} {{ {name}_default() }}"
            )

    def emit_range(self, name, receiver):
        public_type = type_name(name)
        self.extern(
            name + "_bytes",
            receiver,
            "Bytes",
            "moonbit_bytes_t",
            "return mb_bytes(self->ptr, self->size);",
        )
        self.emit(
            f"pub fn {public_type}::bytes(self : {public_type}) -> Bytes {{ {name}_bytes(self) }}"
        )
        self.extern(
            name + "_data",
            [("data", "moonbit_bytes_t", "Bytes", "borrow")],
            public_type,
            bridge_type(name),
            f"""
{name} source = {{ .ptr = data, .size = Moonbit_array_length(data) }};
return mb_copy_{name}(&source);""",
        )
        self.emit(
            f"pub fn {public_type}::from_bytes(data : Bytes) -> {public_type} {{ {name}_data(data) }}"
        )

    def emit_field(self, name, field, receiver):
        field_name = field["name"]
        c_type = element_type(field["type"])
        sizes = array_dimensions(field["type"])
        is_callback = "(*)" in c_type
        if is_callback:
            callback_type = f"mb_{name}_{field_name}_fn"
            result, signature = c_type.split("(*)")
            self.native.append(f"typedef {result} (*{callback_type}){signature};")
            public_type, abi_type = "@native.Handle", "void *"
        else:
            public_type = moon_type(c_type, self.module)
            abi_type = bridge_type(c_type)
        params = receiver + [
            (f"i{index}", "int32_t", "Int", None) for index in range(len(sizes))
        ]
        signature = ", ".join(
            f"{parameter} : {moon}" for parameter, _, moon, _ in params
        )
        arguments = ", ".join(parameter for parameter, _, _, _ in params)
        suffix = "".join(f"[i{index}]" for index in range(len(sizes)))
        access = f"value->{field_name}{suffix}"
        bounds = "\n".join(
            f"if (i{index}<0 || i{index}>={size}) abort();"
            for index, size in enumerate(sizes)
        )
        checks = "\n".join(
            f'guard i{index} >= 0 && i{index} < {size} else {{ abort("descriptor array index out of bounds") }};'
            for index, size in enumerate(sizes)
        )
        prefix = (bounds + "\n" if bounds else "") + f"{name} *value = self;\n"
        getter = f"{name}_get_{field_name}"
        if c_type in HANDLES:
            get_body, abi_moon = f"return {access}.id;", "UInt"
        elif c_type in STRUCTS:
            get_body, abi_moon = f"return mb_copy_{c_type}(&{access});", public_type
        elif c_type == "const char *":
            get_body, abi_moon = f"return mb_utf8({access});", "Bytes"
        else:
            cast = "(void*)" if "*" in c_type else ""
            get_body, abi_moon = f"return {cast}{access};", public_type
        self.extern(getter, params, abi_moon, abi_type, prefix + get_body)
        call = f"{getter}({arguments})"
        if c_type == "const char *":
            call = f"@utf8.decode_lossy({call})"
        elif c_type in HANDLES:
            call = f"{type_name(c_type)}({call})"
        self.emit(
            f"pub fn {type_name(name)}::{identifier(field_name)}({signature}) -> {public_type} {{\n{checks}\n{call}\n}}"
        )
        if name in RANGES or name == "sfetch_response_t":
            return
        setter = f"{name}_set_{field_name}"
        owned_field = (
            c_type in STRUCTS and c_type not in HANDLES
        ) or c_type == "const char *"
        setter_params = params + [
            ("replacement", abi_type, abi_moon, "borrow" if owned_field else None)
        ]
        if c_type in STRUCTS and c_type not in HANDLES:
            body = f"""{c_type} copy;
mb_clone_{c_type}(&copy, replacement);
mb_drop_{c_type}(&{access});
{access} = copy;"""
        elif c_type == "const char *":
            body = f"""const char *copy = mb_string((const char*)replacement);
free((void*){access});
{access} = copy;"""
        else:
            expression = (
                f"({callback_type})replacement"
                if is_callback
                else native_argument(c_type, "replacement")
            )
            body = f"{access} = {expression};"
        if name in CALLBACKS:
            body = f"if (mb_managed_{name}(value)) abort();\n" + body
        self.extern(setter, setter_params, "Unit", "void", prefix + body)
        replacement = "value"
        if c_type == "const char *":
            replacement = "@native.cstring(value)"
        elif c_type in HANDLES:
            replacement = "value.0"
        self.emit(f"""pub fn {type_name(name)}::set_{field_name}({signature}, value : {public_type}) -> {type_name(name)} {{
{checks}
{setter}({arguments}, {replacement});
self
}}""")

    def emit_function(self, declaration):
        name = declaration["name"]
        params, signature, arguments, native_arguments = [], [], [], []
        for parameter in declaration["params"]:
            parameter_name = identifier(parameter["name"])
            c_type = parameter["type"]
            base_type = pointed_struct(c_type) or c_type
            borrowed = (
                base_type in STRUCTS and base_type not in HANDLES
            ) or c_type == "const char *"
            params.append(
                (
                    parameter_name,
                    bridge_type(base_type),
                    moon_type(base_type, self.module, ffi=True),
                    "borrow" if borrowed else None,
                )
            )
            signature.append(f"{parameter_name} : {moon_type(base_type, self.module)}")
            if c_type == "const char *":
                arguments.append(f"@native.cstring({parameter_name})")
            elif base_type in HANDLES:
                arguments.append(f"{parameter_name}.0")
            else:
                arguments.append(parameter_name)
            native_arguments.append(native_argument(c_type, parameter_name))
        result = declaration["result"]
        native_call = f"{name}({', '.join(native_arguments)})"
        if result in HANDLES:
            body = f"{result} value = {native_call};\nreturn value.id;"
        elif result in STRUCTS:
            body = f"{result} value = {native_call};\nreturn mb_copy_{result}(&value);"
        elif result == "void":
            body = native_call + ";"
        elif result == "const char *":
            body = f"return mb_utf8({native_call});"
        else:
            cast = "(void*)" if "*" in result else ""
            body = f"return {cast}{native_call};"
        types = [result] + [parameter["type"] for parameter in declaration["params"]]
        direct = all(
            c_type in DIRECT_SCALARS
            or (c_type == "const char *" and name in BORROWED_STRINGS)
            for c_type in types
        )
        self.extern(
            name,
            params,
            moon_type(result, self.module, ffi=True),
            bridge_type(result),
            body=None if direct else body,
            symbol=name if direct else None,
        )
        if direct:
            self.direct.append(name)
        call = f"{name}({', '.join(arguments)})"
        if result in HANDLES:
            call = f"{type_name(result)}({call})"
        elif result == "const char *":
            call = f"@utf8.decode_lossy({call})"
        if self.module == "glue":
            call = (
                'guard @app.isvalid() else { abort("app must be initialized") };\n'
                + call
            )
        public_name = identifier(name.removeprefix(PREFIX[self.module]))
        self.emit(
            f"pub fn {public_name}({', '.join(signature)}) -> {moon_type(result, self.module)} {{\n{call}\n}}"
        )

    def write(self):
        directory = ROOT / self.module
        if any(self.c_sections.values()):
            self.header += ["", "/* Generated feature implementations. */"]
        for section, blocks in self.moon_sections.items():
            if blocks:
                source = (
                    "// Generated by scripts/generate.py; see MAINTAINING.md.\n"
                    + "\n".join(blocks)
                    + "\n"
                )
                (directory / f"{section}.generated.mbt").write_text(source)
        for section, definitions in self.c_sections.items():
            if definitions:
                source = (
                    "/* Generated by scripts/generate.py; see MAINTAINING.md. */\n"
                    + "\n\n".join(definitions)
                    + "\n"
                )
                (directory / f"{section}.generated.h").write_text(source)
                self.header.append(f'#include "{section}.generated.h"')
        (directory / "bindings.inc.h").write_text("\n".join(self.header) + "\n")


def required_structs(declarations):
    """Include nested values and cross-package query results (notably glue)."""
    needed = set()

    def visit(name):
        if name in needed or name in HANDLES:
            return
        needed.add(name)
        for field in public_fields(STRUCTS[name][1]):
            nested = element_type(field["type"])
            if nested in STRUCTS:
                visit(nested)

    for declaration in declarations:
        if declaration["kind"] == "struct":
            visit(declaration["name"])
        elif declaration["kind"] == "func" and declaration["result"] in STRUCTS:
            visit(declaration["result"])
    return needed


def generate_module(module, declarations):
    output = ModuleBindings(module, declarations)
    needed = required_structs(declarations)
    output.emit_header(needed)
    for name in sorted(needed):
        output.emit_copy_helpers(name)
    for declaration in declarations:
        output.select_declaration(declaration)
        kind = declaration["kind"]
        if kind == "enum":
            output.emit_enum(declaration)
        elif kind == "consts":
            output.emit_constants(declaration)
        elif kind == "struct":
            output.emit_descriptor(declaration)
        elif kind == "func" and declaration["name"] not in CUSTOM:
            output.emit_function(declaration)
    output.write()
    functions = [
        declaration["name"]
        for declaration in declarations
        if declaration["kind"] == "func"
    ]
    return {
        "functions": len(functions),
        "direct": output.direct,
        "adapted": [
            name
            for name in functions
            if name not in CUSTOM and name not in output.direct
        ],
        "custom": [name for name in functions if name in CUSTOM],
        "structs": sum(declaration["kind"] == "struct" for declaration in declarations),
        "enums": sum(declaration["kind"] == "enum" for declaration in declarations),
    }


def generated_paths(root=ROOT):
    paths = {root / "scripts/coverage.json", root / "gfx/callbacks.inc.h"}
    for module in API:
        directory = root / module
        paths.update(directory.glob("*.generated.mbt"))
        paths.update(directory.glob("*.generated.h"))
        paths.add(directory / "bindings.inc.h")
    return paths


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--check",
        action="store_true",
        help="verify output in a temporary checkout without modifying the repository",
    )
    args = parser.parse_args()
    formatter = shutil.which("clang-format")
    if formatter is None:
        parser.error("clang-format 21.1.8 is required; see scripts/requirements.txt")
    version = subprocess.check_output([formatter, "--version"], text=True)
    if not re.search(r"\bversion 21\.1\.8\b", version):
        parser.error(
            "use clang-format 21.1.8 from scripts/requirements.txt for reproducible output"
        )
    if args.check:
        check_generated()
        return
    for path in generated_paths():
        if path.name not in {"coverage.json", "bindings.inc.h", "callbacks.inc.h"}:
            path.unlink()
    coverage = {
        module: generate_module(module, declarations)
        for module, declarations in API.items()
    }
    generate_callbacks()
    (ROOT / "scripts/coverage.json").write_text(json.dumps(coverage, indent=2) + "\n")
    c_paths = [str(path) for path in generated_paths() if path.suffix == ".h"]
    subprocess.run([formatter, "-i", *sorted(c_paths)], cwd=ROOT, check=True)
    moon_paths = [str(path) for path in generated_paths() if path.suffix == ".mbt"]
    subprocess.run(["moon", "fmt", *sorted(moon_paths)], cwd=ROOT, check=True)
    print(
        f"Bindings: {sum(len(entry['direct']) for entry in coverage.values())} direct calls; aggregate ABI and callback adapters retained."
    )


def check_generated():
    # Checking must not rewrite handwritten sources, manifests, or dirty files.
    # Run the same generator in a disposable tree and compare only its outputs.
    import tempfile

    before = {
        path.relative_to(ROOT): path.read_bytes()
        for path in generated_paths()
        if path.exists()
    }
    with tempfile.TemporaryDirectory(prefix="sokol-codegen-") as temporary:
        checkout = Path(temporary)
        for name in ["scripts", "native", *API]:
            shutil.copytree(
                ROOT / name,
                checkout / name,
                ignore=shutil.ignore_patterns("__pycache__"),
            )
        for name in ["moon.mod", "build.mbtx", ".clang-format"]:
            shutil.copy2(ROOT / name, checkout / name)
        subprocess.run(
            [os.sys.executable, str(checkout / "scripts/generate.py")], check=True
        )
        after = {
            path.relative_to(checkout): path.read_bytes()
            for path in generated_paths(checkout)
            if path.exists()
        }
        changed = [
            str(path)
            for path in sorted(before.keys() | after.keys())
            if before.get(path) != after.get(path)
        ]
        if changed:
            raise SystemExit("Generated files are stale: " + ", ".join(changed))
    print("Generated sources are up to date; working tree unchanged.")


if __name__ == "__main__":
    main()
