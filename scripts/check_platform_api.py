#!/usr/bin/env python3
"""Check Windows/non-Windows API visibility with real compiler invocations.

Both configurations are typechecked on the host. This checks conditional public
interfaces, not cross-platform linking or runtime behavior.
"""

import os
import subprocess
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
MOON_HOME = Path(os.environ.get("MOON_HOME", Path.home() / ".moon"))
CORE = MOON_HOME / "lib/core/_build/native/release/bundle"
WINDOWS = [
    "app.win32_get_hwnd",
    "app.d3d11_get_swap_chain",
    "gfx.d3d11_device",
    "gfx.d3d11_query_buffer_info",
]
NON_WINDOWS = [
    "app.macos_get_window",
    "app.x11_get_display",
    "app.egl_get_context",
    "app.android_get_native_window",
    "app.ios_get_window",
    "app.html5_fetch_dropped_file_native",
    "app.show_keyboard",
    "gfx.mtl_device",
    "gfx.mtl_query_image_info",
]
COMMON = ["app.width", "gfx.make_buffer", "gfx.gl_query_image_info", "gfx.wgpu_device"]


def core_imports():
    arguments = []
    for package, alias in [
        ("builtin", "moonbitlang/core/builtin"),
        ("prelude", "prelude"),
        ("debug", "debug"),
        ("encoding/utf8", "utf8"),
    ]:
        path = CORE / package / (package.rsplit("/", 1)[-1] + ".mi")
        arguments += ["-i", f"{path}:{alias}"]
    return arguments


def check(command, directory, expected_success=True, symbol=None):
    result = subprocess.run(command, cwd=directory, capture_output=True, text=True)
    output = result.stdout + result.stderr
    if expected_success:
        if result.returncode:
            raise SystemExit(output)
    elif (
        not result.returncode
        or symbol not in output
        or "not found in package" not in output
    ):
        raise SystemExit(
            f"expected an unavailable API diagnostic for {symbol}:\n{output}"
        )


def main():
    with tempfile.TemporaryDirectory(prefix="sokol-platform-api-") as temporary:
        directory = Path(temporary)
        build = directory / "build"
        subprocess.run(
            [
                "moon",
                "check",
                "--target",
                "native",
                "--no-mbti",
                "--target-dir",
                str(build),
            ],
            cwd=ROOT,
            check=True,
        )
        native = build / "native/debug/check/native/native.mi"
        imports = [*core_imports(), "-i", f"{native}:native"]
        for windows in [False, True]:
            label = "windows" if windows else "non-windows"
            output = directory / label
            output.mkdir()
            # An explicit non-Windows value makes this independent of the host.
            cfg = ["-cfg", "platform=windows" if windows else "platform=unix"]
            for module in ["app", "gfx"]:
                sources = [
                    str(path)
                    for path in sorted((ROOT / module).glob("*.mbt"))
                    if not path.name.endswith(("_test.mbt", "_wbtest.mbt"))
                ]
                check(
                    [
                        "moonc",
                        "check",
                        *sources,
                        "-target",
                        "native",
                        *cfg,
                        "-pkg",
                        f"Milky2018/sokol/{module}",
                        *imports,
                        "-o",
                        str(output / f"{module}.mi"),
                    ],
                    output,
                )
            package_imports = [*imports]
            for module in ["app", "gfx"]:
                package_imports += ["-i", f"{output / (module + '.mi')}:{module}"]
            shaders = build / "native/debug/check/examples/shaders/shaders.mi"
            check(
                [
                    "moonc",
                    "check",
                    str(ROOT / "examples/offscreen/main.mbt"),
                    "-target",
                    "native",
                    *cfg,
                    "-pkg",
                    "offscreen_probe",
                    "-is-main",
                    *package_imports,
                    "-i",
                    f"{shaders}:shaders",
                    "-no-mi",
                ],
                output,
            )
            consumer = output / "consumer.mbt"
            command = [
                "moonc",
                "check",
                str(consumer),
                "-target",
                "native",
                *cfg,
                "-pkg",
                "platform_consumer",
                *package_imports,
                "-no-mi",
            ]
            available = WINDOWS if windows else NON_WINDOWS
            consumer.write_text(
                "pub fn probe() -> Unit {\n"
                + "\n".join(f"  ignore(@{symbol})" for symbol in [*COMMON, *available])
                + "\n}\n"
            )
            check(command, output)
            unavailable = NON_WINDOWS if windows else WINDOWS
            for symbol in unavailable:
                consumer.write_text(f"pub fn probe() -> Unit {{ ignore(@{symbol}) }}\n")
                check(
                    command, output, expected_success=False, symbol=symbol.split(".")[1]
                )
            print(
                f"{label}: common and supported APIs compile; {len(unavailable)} foreign APIs rejected."
            )


if __name__ == "__main__":
    main()
