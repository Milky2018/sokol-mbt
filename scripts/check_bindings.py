#!/usr/bin/env python3
"""Check that each pinned function has a native binding and a public API.

This is a declaration-coverage check, not an ownership or correctness proof.
"""

import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
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
# Upstream function -> handwritten C bridge and public MoonBit entry point.
CUSTOM = {
    "sg_shutdown": ("mb_gfx_shutdown", "shutdown"),
    "sg_install_trace_hooks": ("mb_gfx_install_trace_hooks", "install_trace_hooks"),
    "sg_add_commit_listener": ("mb_gfx_add_commit_listener", "add_commit_listener"),
    "sg_remove_commit_listener": (
        "mb_gfx_remove_commit_listener",
        "remove_commit_listener",
    ),
    "sapp_run": ("mb_app_run", "run"),
    "sapp_html5_fetch_dropped_file": (
        "mb_app_html5_fetch",
        "html5_fetch_dropped_file_native",
    ),
    "saudio_push": ("mb_audio_push", "push"),
    "sfetch_send": ("mb_fetch_send", "send"),
    "sfetch_shutdown": ("mb_fetch_shutdown", "shutdown"),
    "sfetch_dowork": ("mb_fetch_dowork", "dowork"),
    "sfetch_bind_buffer": ("mb_fetch_bind_buffer", "bind_buffer"),
    "sfetch_unbind_buffer": ("mb_fetch_unbind_buffer", "unbind_buffer"),
    "sargs_setup": ("mb_args_setup", "setup"),
    "stm_laptime": ("mb_time_laptime", "laptime"),
    "slog_func": ("mb_log_write", "write"),
}


def check_function(module, declaration, coverage, native_source, moon_source):
    name = declaration["name"]
    default = (f"mb_{module}_{name}", name.removeprefix(PREFIX[module]))
    bridge, public = CUSTOM.get(name, default)
    if public == "continue":
        public = "continue_"
    if name in coverage["direct"]:
        pattern = r'= "' + re.escape(name) + r'"'
        if not re.search(pattern, moon_source):
            raise SystemExit(f"missing direct FFI declaration: {name}")
    else:
        pattern = r"\b" + re.escape(bridge) + r"\s*\("
        if not re.search(pattern, native_source):
            raise SystemExit(f"missing C bridge: {name}")
    if not re.search(r"pub fn " + re.escape(public) + r"\s*\(", moon_source):
        raise SystemExit(f"missing public API: {name}")


def main():
    api = json.loads((ROOT / "scripts/api.json").read_text())
    coverage = json.loads((ROOT / "scripts/coverage.json").read_text())
    count = 0
    for module, declarations in api.items():
        directory = ROOT / module
        native_source = "\n".join(
            path.read_text()
            for path in directory.iterdir()
            if path.suffix in {".h", ".c"}
        )
        moon_source = "\n".join(
            path.read_text()
            for path in directory.glob("*.mbt")
            if not path.name.endswith(("_test.mbt", "_wbtest.mbt"))
        )
        for declaration in declarations:
            if declaration["kind"] == "func":
                check_function(
                    module, declaration, coverage[module], native_source, moon_source
                )
                count += 1
    print(
        f"All {count} upstream functions have native bindings and public MoonBit APIs."
    )


if __name__ == "__main__":
    main()
