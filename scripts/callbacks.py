"""Generate typed closure trampolines; registration is handwritten in gfx/support.c.

Each slot contains a closure and its typed FuncRef bridge. Context copies retain
all active slots except the replaced slot. The lifetime regressions cover both
replacement and unregistration from inside an executing callback.
"""

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
API = json.loads((ROOT / "scripts/api.json").read_text())
STRUCTS = {
    declaration["name"]: declaration
    for declaration in API["gfx"]
    if declaration["kind"] == "struct"
}
HANDLES = {"sg_buffer", "sg_image", "sg_sampler", "sg_shader", "sg_pipeline", "sg_view"}
PRIMITIVES = {
    "int": ("Int", "int32_t"),
    "bool": ("Bool", "int32_t"),
    "uint32_t": ("UInt", "uint32_t"),
    "float": ("Float", "float"),
    "size_t": ("UInt64", "uint64_t"),
}


def type_name(name):
    return "".join(word.capitalize() for word in name.removeprefix("sg_").split("_"))


def argument_type(c_type):
    base = c_type.removeprefix("const ").removesuffix(" *")
    if base in HANDLES:
        return "UInt", "uint32_t", base
    if base in STRUCTS:
        return type_name(base), base + " *", base
    if c_type == "const char *":
        return "Bytes", "moonbit_bytes_t", None
    return (*PRIMITIVES[c_type], None)


def callback_parameters(field):
    parameters = field["type"].split("(*)(")[1].removesuffix(")").split(", ")
    assert parameters[-1] == "void *", field
    return parameters[:-1]


def slot_name(name, field):
    return f"MB_{name}_{field['name']}".upper()


def emit_context(name, callbacks):
    """Named, typed slots make generated retain/release operations auditable."""
    context = f"mb_{name}_callbacks"
    declarations, members = [], []
    for field in callbacks:
        field_name = field["name"]
        normalized = [
            argument_type(parameter) for parameter in callback_parameters(field)
        ]
        arguments = ", ".join(["void*", *[c_type for _, c_type, _ in normalized]])
        call_type = f"mb_{name}_{field_name}_call"
        declarations.append(f"typedef void (*{call_type})({arguments});")
        members.append(f"struct {{ void *closure; {call_type} call; }} {field_name};")
    slots = ",\n".join(slot_name(name, field) for field in callbacks)
    declarations += [
        "enum {\n" + slots + "\n};",
        "typedef struct {\n" + "\n".join(members) + f"\n}} {context};",
    ]
    return "\n\n".join(declarations)


def emit_trampoline(name, field):
    field_name = field["name"]
    parameters = callback_parameters(field)
    normalized = [argument_type(parameter) for parameter in parameters]
    c_parameters = [
        f"{parameter} a{index}" for index, parameter in enumerate(parameters)
    ]
    c_parameters.append("void *userdata")
    body = [f"mb_{name}_callbacks *context = userdata;"]
    arguments, temporaries = [], []
    for index, (parameter, (_, _, base)) in enumerate(zip(parameters, normalized)):
        if base in HANDLES:
            arguments.append(f"a{index}.id")
        elif base:
            source = f"a{index}" if "*" in parameter else f"&a{index}"
            body.append(f"{base} *arg{index} = mb_copy_{base}({source});")
            arguments.append(f"arg{index}")
            temporaries.append(f"arg{index}")
        elif parameter == "const char *":
            body.append(f"moonbit_bytes_t arg{index} = mb_utf8(a{index});")
            arguments.append(f"arg{index}")
            temporaries.append(f"arg{index}")
        else:
            arguments.append(f"a{index}")
    body += [
        "/* The callback may unregister itself and free context. Save both first. */",
        f"void *closure = context->{field_name}.closure;",
        f"mb_{name}_{field_name}_call call = context->{field_name}.call;",
        "moonbit_incref(closure);",
        "call(" + ", ".join(["closure", *arguments]) + ");",
    ]
    body += [f"moonbit_decref({temporary});" for temporary in temporaries]
    body.append("moonbit_decref(closure);")
    signature = (
        f"static void mb_{name}_{field_name}_trampoline({', '.join(c_parameters)})"
    )
    return signature + " {\n" + "\n".join(body) + "\n}"


def emit_context_lifetime(name, callbacks):
    context = f"mb_{name}_callbacks"
    detection, validation, retain, release = [], [], [], []
    for field in callbacks:
        field_name = field["name"]
        trampoline = f"mb_{name}_{field_name}_trampoline"
        detection.append(f"value->{field_name} == {trampoline}")
        validation.append(
            f"if (value->{field_name} && value->{field_name} != {trampoline}) abort();"
        )
        retain.append(f"""if (excluded != {slot_name(name, field)} && copy->{field_name}.closure) {{
            moonbit_incref(copy->{field_name}.closure);
        }}""")
        release.append(
            f"if (context->{field_name}.closure) moonbit_decref(context->{field_name}.closure);"
        )
    return [
        f"""static int mb_managed_{name}(const {name} *value) {{
            return {" || ".join(detection)};
        }}""",
        f"static void mb_validate_{name}(const {name} *value) {{\n"
        + "\n".join(validation)
        + "\n}",
        f"""static {context} *mb_copy_{name}_context(const {name} *value, int excluded) {{
            {context} *copy = mb_malloc(sizeof(*copy));
            if (mb_managed_{name}(value)) *copy = *({context}*)value->user_data;
            """
        + "\n".join(retain)
        + "\nreturn copy;\n}",
        f"""static void mb_clone_{name}_callbacks({name} *destination, const {name} *source) {{
            if (!mb_managed_{name}(source)) return;
            destination->user_data = mb_copy_{name}_context(source, -1);
        }}""",
        f"""static void mb_drop_{name}_callbacks({name} *value) {{
            if (!mb_managed_{name}(value)) return;
            {context} *context = value->user_data;
            """
        + "\n".join(release)
        + "\nfree(context);\n}",
    ]


def emit_setter(name, field):
    field_name = field["name"]
    return f"""MOONBIT_FFI_EXPORT {name} *mb_{name}_on_{field_name}(
        {name} *self, mb_{name}_{field_name}_call call, void *closure) {{
        mb_validate_{name}(self);
        {name} *result = mb_new_{name}();
        *result = *self;
        mb_{name}_callbacks *context = mb_copy_{name}_context(self, {slot_name(name, field)});
        context->{field_name}.closure = closure;
        context->{field_name}.call = call;
        result->user_data = context;
        result->{field_name} = mb_{name}_{field_name}_trampoline;
        return result;
    }}"""


def emit_moon_callback(name, field):
    field_name = field["name"]
    parameters = callback_parameters(field)
    normalized = [argument_type(parameter) for parameter in parameters]
    public_types, converted = [], []
    for index, (parameter, (moon_type, _, base)) in enumerate(
        zip(parameters, normalized)
    ):
        if parameter == "const char *":
            public_types.append("String")
            converted.append(f"@utf8.decode_lossy(a{index})")
        elif base in HANDLES:
            public_types.append(type_name(base))
            converted.append(f"{type_name(base)}(a{index})")
        else:
            public_types.append(moon_type)
            converted.append(f"a{index}")
    callback_type = "(" + ", ".join(public_types) + ") -> Unit"
    bridge_parameters = [callback_type, *[moon_type for moon_type, _, _ in normalized]]
    bridge_type = "FuncRef[(" + ", ".join(bridge_parameters) + ") -> Unit]"
    arguments = ["callback", *[f"a{index}" for index in range(len(parameters))]]
    public_type = type_name(name)
    return f"""
///|
#borrow(value)
#owned(callback)
extern "c" fn {name}_on_{field_name}_ffi(
  value : {public_type},
  call : {bridge_type},
  callback : {callback_type},
) -> {public_type} = "mb_{name}_on_{field_name}"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn {public_type}::on_{field_name}(self : {public_type}, callback : {callback_type}) -> {public_type} {{
  {name}_on_{field_name}_ffi(self, fn({", ".join(arguments)}) {{ callback({", ".join(converted)}) }}, callback)
}}
"""


def generate():
    includes = [
        "/* Generated closure ABI adapters; registration is in support.c. */",
        "",
    ]
    for name, section in [
        ("sg_trace_hooks", "trace_callbacks"),
        ("sg_commit_listener", "listener_callback"),
    ]:
        callbacks = [
            field for field in STRUCTS[name]["fields"] if "(*)" in field["type"]
        ]
        native = [emit_context(name, callbacks)]
        native += [emit_trampoline(name, field) for field in callbacks]
        native += emit_context_lifetime(name, callbacks)
        native += [emit_setter(name, field) for field in callbacks]
        moon = ["// Generated by scripts/callbacks.py; see MAINTAINING.md."]
        moon += [emit_moon_callback(name, field) for field in callbacks]
        (ROOT / f"gfx/{section}.generated.mbt").write_text("\n".join(moon) + "\n")
        (ROOT / f"gfx/{section}.generated.h").write_text("\n\n".join(native) + "\n")
        includes.append(f'#include "{section}.generated.h"')
    (ROOT / "gfx/callbacks.inc.h").write_text("\n".join(includes) + "\n")


if __name__ == "__main__":
    generate()
