#!/usr/bin/env python3
"""Check API visibility in both Windows and non-Windows compiler configurations.

Moon resolves the compiler and dependencies. All source copies, probes and build
outputs stay in a temporary directory; this does not link or run foreign binaries.
"""

import json
import shutil
import subprocess
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
WINDOWS = [
    "app.win32_get_hwnd",
    "app.d3d11_get_swap_chain",
    "gfx.d3d11_device",
    "gfx.d3d11_device_context",
    "gfx.d3d11_query_buffer_info",
    "gfx.d3d11_query_image_info",
    "gfx.d3d11_query_sampler_info",
    "gfx.d3d11_query_shader_info",
    "gfx.d3d11_query_pipeline_info",
    "gfx.d3d11_query_view_info",
]
NON_WINDOWS = [
    "app.macos_get_window",
    "app.ios_get_window",
    "app.x11_get_window",
    "app.x11_get_display",
    "app.android_get_native_activity",
    "app.android_get_native_window",
    "app.egl_get_display",
    "app.egl_get_context",
    "app.html5_ask_leave_site",
    "app.html5_get_dropped_file_size",
    "app.html5_fetch_dropped_file_native",
    "app.show_keyboard",
    "app.keyboard_shown",
    "gfx.mtl_device",
    "gfx.mtl_render_command_encoder",
    "gfx.mtl_compute_command_encoder",
    "gfx.mtl_command_queue",
    "gfx.mtl_query_buffer_info",
    "gfx.mtl_query_image_info",
    "gfx.mtl_query_sampler_info",
    "gfx.mtl_query_shader_info",
    "gfx.mtl_query_pipeline_info",
]
COMMON = ["app.width", "gfx.make_buffer", "gfx.gl_query_image_info", "gfx.wgpu_device"]


def check(checkout, paths, unavailable=None):
    result = subprocess.run(
        ["moon", "check", "--target", "native", "--no-mbti", "--json", *paths],
        cwd=checkout,
        capture_output=True,
        text=True,
    )
    try:
        report = json.loads(result.stdout)
    except json.JSONDecodeError:
        raise SystemExit(
            f"moon check did not return JSON diagnostics:\n{result.stdout}{result.stderr}"
        ) from None
    if unavailable is None:
        if result.returncode or report["status"] != "success":
            raise SystemExit(
                f"Expected a successful check:\n{result.stdout}{result.stderr}"
            )
        return
    errors = [entry for entry in report["diagnostics"] if entry["level"] == "error"]
    # E4021 is an unbound value. Check the probe location and identifier too,
    # so a dependency/compiler failure cannot satisfy this negative test.
    if (
        result.returncode != 1
        or report["status"] != "failure"
        or len(errors) != 1
        or errors[0]["error_code"] != 4021
        or Path(errors[0]["path"]).resolve() != (checkout / "probe/probe.mbt").resolve()
        or unavailable.split(".")[1] not in errors[0]["message"]
    ):
        raise SystemExit(
            f"Expected an unavailable API diagnostic for {unavailable}:\n"
            f"{result.stdout}{result.stderr}"
        )


def main():
    # Spaces in this path also exercise argument handling on every host.
    with tempfile.TemporaryDirectory(prefix="sokol platform api ") as temporary:
        checkout = Path(temporary)
        for directory in [
            "app", "gfx", "native", "examples/shaders", "examples/offscreen"
        ]:
            shutil.copytree(ROOT / directory, checkout / directory)
        shutil.copyfile(ROOT / "build.mbtx", checkout / "build.mbtx")
        probe = checkout / "probe"
        probe.mkdir()
        (probe / "moon.pkg").write_text(
            'import { "Milky2018/sokol/app", "Milky2018/sokol/gfx" }\n'
            'supported_targets = "native"\n'
        )
        manifest = (ROOT / "moon.mod").read_text()
        for windows in [False, True]:
            label = "windows" if windows else "non-windows"
            # These compiler flags simulate the two configurations. Source cfg
            # attributes only test platform="windows" or its negation.
            platform = "windows" if windows else "non-windows"
            (checkout / "moon.mod").write_text(
                manifest.replace(
                    "options(",
                    f'options(\n  "compile-flags": ["-cfg", "platform={platform}"],',
                    1,
                )
            )
            available = WINDOWS if windows else NON_WINDOWS
            (probe / "probe.mbt").write_text(
                "pub fn probe() -> Unit {\n"
                + "\n".join(f"  ignore(@{symbol})" for symbol in [*COMMON, *available])
                + "\n}\n"
            )
            check(checkout, ["probe", "examples/offscreen"])
            unavailable = NON_WINDOWS if windows else WINDOWS
            for symbol in unavailable:
                (probe / "probe.mbt").write_text(
                    f"pub fn probe() -> Unit {{ ignore(@{symbol}) }}\n"
                )
                check(checkout, ["probe"], unavailable=symbol)
            print(
                f"{label}: {len(available)} platform APIs and common APIs compile; "
                f"{len(unavailable)} foreign APIs rejected."
            )


if __name__ == "__main__":
    main()
