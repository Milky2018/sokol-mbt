# Maintaining the bindings

The checked-in MoonBit and C sources are the maintained implementation. Edit
them directly. There is no binding generator, declaration-inventory pipeline,
or required Clang parser/formatter. `pkg.generated.mbti` is the standard MoonBit
public interface snapshot produced by `moon info`.

## Source map

| Change | Files to edit |
| --- | --- |
| Buffer types, fields and resource operations | `gfx/buffer.mbt`, `gfx/buffer.h` |
| Image, sampler, shader, pipeline or view | The corresponding `gfx/<feature>.mbt` and `.h`; shader reflection has its own file |
| Passes, uploads, statistics, backend interop | `gfx/pass.*`, `gfx/upload.*`, `gfx/statistics.*`, `gfx/metal.*`, etc. |
| Graphics hook/listener registration and shutdown | `gfx/callbacks.mbt`, `gfx/support.c` |
| Graphics closure arguments and references | `gfx/trace_callbacks.mbt` / `.h`, `gfx/listener_callback.mbt` / `.h` |
| Fetch requests, buffers and callbacks | `fetch/api.mbt`, `fetch/support.c` |
| Fetch response snapshot copying and destruction | `fetch/response.h` |
| App callbacks and cleanup | `app/api.mbt`, `app/support.c` |
| Smaller packages | Their `api.mbt`, `bindings.mbt`, `bindings.h` and `support.c`, where present |
| Shared native memory helpers | `native/common.h` |
| Package imports and native compiler options | Each package's `moon.pkg` |
| Platform/compiler/linker selection | `build.mbtx` |

Private `extern "c"` declarations sit next to the public methods that use them.
The matching C feature file contains field adapters and copy/drop helpers. For
example, `BufferDesc::set_label` calls `sg_buffer_desc_set_label`, which names
`mb_gfx_sg_buffer_desc_set_label` in `gfx/buffer.h`.

```sh
rg -n 'BufferDesc::set_label|sg_buffer_desc_set_label' gfx/buffer.*
```

A direct binding names the upstream Sokol symbol and needs no C adapter. Each
package's `support.c` includes `internal.h`, which configures the bundled Sokol
implementation, declares cross-file helpers, and includes the feature headers.
These headers contain definitions and are included once in that C compilation
unit. Graphics callback implementations are included directly by `gfx/support.c`.

## Change a binding

Update the public method, its adjacent FFI declaration, and the C implementation
together. Keep argument conversions, `#borrow`/`#owned`, and copy/drop behavior
consistent. For native pointers, callbacks or retained buffers, check the pinned
upstream implementation and [OWNERSHIP.md](OWNERSHIP.md); write the lifetime
transitions explicitly and test them through the actual API.

Windows-only entry points and their private FFI declarations use
`#cfg(platform="windows")`. Non-Windows entry points use its negation. Apply the
condition to both declarations. These conditions do not distinguish macOS from
Linux or select a graphics backend. Configuration structs can hold fields for
multiple backends; the active backend's restrictions still apply.

`build.mbtx` reads the shared native headers and includes their content fingerprint
in compiler arguments. This invalidates C objects when a shared header changes;
it does not generate or rewrite source files. Package-local headers are tracked
by Moon. New shared headers must also be listed in `header_fingerprint()`.

## Validate

Builds need MoonBit and the platform's native compiler/SDK. The remaining Python
scripts are test/sanitizer and upstream-source helpers; none generates bindings.
There are no pip dependencies.

```sh
python3 scripts/prepare.py --check
python3 scripts/check_platform_api.py
moon check --target all --warn-list +73
SOKOL_HEADLESS=1 moon test --target native
SOKOL_HEADLESS=1 moon test --target native --release
moon info && moon fmt
```

On PowerShell, set `$env:SOKOL_HEADLESS = "1"` before the test commands.
`check_platform_api.py` typechecks Windows and non-Windows interfaces and checks
consumers that must compile or must fail. It does not run a Windows binary on
the host. The tracked `app`/`gfx` interfaces describe non-Windows exports; Windows
CI validates its interface through these probes rather than comparing it to the
non-Windows snapshot. A behavior-preserving refactor should not change interfaces.

For native lifetime changes, also run:

```sh
SOKOL_HEADLESS=1 python3 scripts/run-asan.py
# On a macOS host with a Metal device:
python3 scripts/run-asan.py --run cmd/main --run examples/offscreen
```

The sanitizer runner instruments C compilation and linking without modifying
manifests or the installed toolchain. macOS ASan checks invalid accesses, while
Linux additionally enables LSan. Finalizer probes in `tests/lifetime` check prompt
callback release. Headless tests do not exercise a production GPU backend.

## Update Sokol

1. Choose a revision, update `scripts/upstream.json` and the file hashes, then
   run `python3 scripts/prepare.py` to fetch the pinned source files.
2. Review upstream header and implementation changes. Update the matching
   MoonBit declarations and C bridges directly, including new or removed APIs.
3. Review callback/buffer retention, copy/drop functions, native integer widths,
   platform conditions and compiler/linker flags. Update contracts and tests.
4. Run the checks above, review `moon info` interface changes, and verify the
   production backends on the supported platforms.

The upstream helper only fetches/verifies vendor files; it never edits bindings.
