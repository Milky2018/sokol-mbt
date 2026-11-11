#!/usr/bin/env python3
"""Extract the pinned Sokol declarations using Clang's JSON AST.

The result records syntax, not lifetime semantics. Review api.json after every
upstream update; functions requiring retention need an explicit handwritten bridge.
"""

import json
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
PREFIXES = {
    "gfx": "sg_",
    "app": "sapp_",
    "audio": "saudio_",
    "fetch": "sfetch_",
    "args": "sargs_",
    "time": "stm_",
    "log": "slog_",
    "glue": "sglue_",
}


def c_type(node):
    return node["type"]["qualType"].replace("_Bool", "bool")


def constant_value(node):
    if node.get("kind") == "ConstantExpr":
        return int(node["value"])
    for child in node.get("inner", []):
        value = constant_value(child)
        if value is not None:
            return value
    return None


def enum_declaration(node):
    items = []
    previous = -1
    for child in node.get("inner", []):
        if child["kind"] != "EnumConstantDecl":
            continue
        explicit = constant_value(child)
        previous = previous + 1 if explicit is None else explicit
        items.append({"name": child["name"], "value": previous})
    return {
        "kind": "enum" if node.get("name") else "consts",
        "name": node.get("name", ""),
        "items": items,
    }


def declaration_name(node):
    name = node.get("name", "")
    if node["kind"] == "EnumDecl" and not name:
        # Anonymous constant groups still belong to a module by their prefix.
        name = next(
            (
                child.get("name", "")
                for child in node.get("inner", [])
                if child["kind"] == "EnumConstantDecl"
            ),
            "",
        ).lower()
    return name


def extract_declaration(node, name):
    kind = node["kind"]
    if kind == "RecordDecl" and node.get("completeDefinition"):
        return {
            "kind": "struct",
            "name": node["name"],
            "fields": [
                {"name": child.get("name", ""), "type": c_type(child)}
                for child in node.get("inner", [])
                if child["kind"] == "FieldDecl"
            ],
        }
    if kind == "EnumDecl":
        return enum_declaration(node)
    if kind == "FunctionDecl":
        return {
            "kind": "func",
            "name": name,
            "result": c_type(node).split("(")[0].strip(),
            "params": [
                {"name": child.get("name", f"arg{index}"), "type": c_type(child)}
                for index, child in enumerate(node.get("inner", []))
                if child["kind"] == "ParmVarDecl"
            ],
        }
    return None


def main():
    source = ROOT / ".prepare/declarations.c"
    source.parent.mkdir(parents=True, exist_ok=True)
    source.write_text(
        "\n".join(f'#include "{ROOT}/native/sokol_{module}.h"' for module in PREFIXES)
    )
    ast = json.loads(
        subprocess.check_output(
            [
                "clang",
                "-Xclang",
                "-ast-dump=json",
                "-fsyntax-only",
                str(source),
            ]
        )
    )
    declarations = {module: [] for module in PREFIXES}
    for node in ast["inner"]:
        name = declaration_name(node)
        owner = next(
            (
                module
                for module, prefix in PREFIXES.items()
                if name.lower().lstrip("_").startswith(prefix)
            ),
            None,
        )
        if owner is None:
            continue
        declaration = extract_declaration(node, name)
        if declaration is not None:
            declarations[owner].append(declaration)
    (ROOT / "scripts/api.json").write_text(json.dumps(declarations, indent=2) + "\n")
    for module, entries in declarations.items():
        counts = {
            kind: sum(entry["kind"] == kind for entry in entries)
            for kind in ["struct", "enum", "func"]
        }
        print(module, counts)


if __name__ == "__main__":
    main()
