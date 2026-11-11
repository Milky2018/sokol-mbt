# Sokol for MoonBit

Native MoonBit bindings for all eight core Sokol headers: **app, gfx, audio,
fetch, time, args, log, and glue**. The binding covers 261 upstream functions,
172 structures, and 42 enum types at the pinned revision
`93aa187b5d387cc24b7290b3ca3f13f61e139e7c`.

Sokol's implementation is vendored under `native/`; normal builds do not fetch
sources, run Clang's AST parser, or regenerate bindings. Moon executes
`build.mbtx` to supply platform compiler and linker flags.

## Build and run

Install a current MoonBit toolchain and a native C compiler. This
repository was validated with Moon 0.1.20261104 and moonc v0.10.20.

| Platform | Default graphics backend | Native dependencies |
| --- | --- | --- |
| macOS | Metal | Xcode command-line tools; system AppKit, QuartzCore, Metal, AudioToolbox |
| Linux | OpenGL | C compiler; X11, Xi, Xcursor, GL and ALSA development packages |
| Windows | D3D11 | Clang/MSVC toolchain and Windows SDK |

On Debian/Ubuntu, install `libx11-dev libxi-dev libxcursor-dev libgl1-mesa-dev libasound2-dev`.
The implemented build targets are desktop **native**. Browser Wasm, Android and
iOS packaging are not provided by this repository. Platform-specific upstream
entry points remain available for native integrations and retain Sokol's own
platform restrictions.

```sh
moon run cmd/main                 # colored triangle; Escape closes the window
moon run cmd/main -- --smoke      # render ten frames, then quit
moon run examples/offscreen      # macOS Metal rendering with GPU pixel readback
moon check --target all --warn-list +73
moon test
```

Run the full graphics/audio lifecycle tests without a window or sound device:

```sh
SOKOL_HEADLESS=1 moon test --target native
SOKOL_HEADLESS=1 moon test --target native --release
```

`SOKOL_HEADLESS=1` selects Sokol's real dummy graphics/audio implementations.
It does not emulate a window system. The ordinary `moon test` run tests portable
binding behavior and runs GPU/audio lifecycle tests when built with that flag.
On PowerShell, set `$env:SOKOL_HEADLESS = "1"` before running the test command.

## Packages and API mapping

Import only the packages used by your application:

```moonbit nocheck
///|
import {
  "Milky2018/sokol/app",
  "Milky2018/sokol/gfx",
  "Milky2018/sokol/glue",
}
```

| Package | Upstream | Main APIs |
| --- | --- | --- |
| `app` | `sokol_app.h` | Window/input/clipboard/drop events, lifecycle, environment, native handles |
| `gfx` | `sokol_gfx.h` | Buffers, images, samplers, shaders, pipelines, views, render/compute passes, uploads/copies, queries/stats, trace hooks/listeners |
| `audio` | `sokol_audio.h` | Audio configuration, device queries, interleaved PCM push, native callback interop |
| `fetch` | `sokol_fetch.h` | Async and streaming file loading, owned response snapshots, cancellation, pause/continue, buffer binding |
| `time` | `sokol_time.h` | Monotonic ticks, lap timing, refresh-rate rounding and unit conversions |
| `args` | `sokol_args.h` | Argument parsing, booleans, defaults and indexed queries |
| `log` | `sokol_log.h` | Standard Sokol logging |
| `glue` | `sokol_glue.h` | `environment()` and `swapchain()` from the active app |
| `native` | FFI support | Explicitly unowned native pointers and C-string encoding |

Names follow the C API: `sg_make_buffer` becomes `@gfx.make_buffer`,
`sg_buffer_desc` becomes `@gfx.BufferDesc`, and `sfetch_error_t` becomes
`@fetch.FetchError`. Reserved method names have a trailing underscore, such as
`event.type_()`, `view.readonly_()`, and `@fetch.continue_()`.

All public fields have getters and immutable `with_*` setters, including indexed
access for fixed-size arrays. Internal canaries and raw range pointer setters
are intentionally hidden. Enum types retain upstream integer values and expose
`to_int()`. Native pointer/callback fields use `@native.Handle`; they require
native interoperability lifetime discipline. Generated `pkg.generated.mbti`
files document every public signature. `scripts/coverage.json` records the
upstream surface and identifies the interfaces with handwritten lifetime logic.

## Descriptors and data ownership

Descriptors are immutable snapshots. Modifying a copy does not change its source;
nested values, strings, and data remain alive for all native uses of the snapshot.
Fixed-array indices are checked before entering C. C strings reject embedded NUL.
Native pointer fields are unowned and do not transfer ownership of a GPU/OS object.

GPU resources have explicit `destroy_*` functions. Destroy them
before `@gfx.shutdown()` and from the graphics thread; their handles are not GC
finalizers. Descriptor snapshots themselves are reclaimed by MoonBit.

```mbt check
///|
test "owned buffer descriptor" {
  let desc = @gfx.BufferDesc::new()
    .with_label("vertices")
    .with_data(@gfx.Range::from_floats([0.0F, 1.0F, 2.0F]))
  assert_eq(desc.data().size(), 12UL)
  assert_eq(desc.with_label("other").label(), "other")
  assert_eq(desc.label(), "vertices")
}
```

`Range::from_bytes`, `from_floats`, `from_uints`, and `from_ushorts` own copies of
packed data. Pass a range to buffer/image creation, uniform updates, or the
upload/copy descriptors. Actual GPU operations retain Sokol's validation rules
and report native failures through configured logging and resource-state queries.
Use `Logger::default()` on the relevant setup descriptor to enable C-side logs.

## Application lifecycle

`@app.run(desc, init~, frame~, event?, cleanup?)` keeps captured MoonBit state
alive for the application lifetime and copies event objects before invoking the
MoonBit callback. Call it on the main OS thread. Callbacks cannot raise across C.
Sokol may terminate the process instead of returning from `run`; release GPU and
audio resources in `cleanup`, and do not depend on code after `run`.

The complete triangle is in `cmd/main/main.mbt`. Its initialization passes
`@glue.environment()` into `@gfx.setup`; each frame passes `@glue.swapchain()` into
`@gfx.begin_pass`. Acquire the swapchain once per frame. The offscreen example
shows using `gfx` with an independently created Metal device, and verifies
compute dispatch, unsealed buffer uploads, texture uploads and image copies
through GPU readback.

## Shaders, rendering and compute

`ShaderDesc` exposes all shader functions, attributes, uniform blocks,
texture/storage views, samplers and backend binding metadata. `PipelineDesc`
exposes vertex layout, depth/stencil/blend/rasterization and compute configuration.
`ViewDesc` supports texture, storage and render-attachment views. All dispatch,
transient/unsealed upload, sealing, copy, query and statistics APIs are bound.

For production cross-backend shaders, use the official
[sokol-shdc](https://github.com/floooh/sokol-tools/blob/master/docs/sokol-shdc.md)
to generate C headers. A small user C stub can return the generated
`const sg_shader_desc*`; `ShaderDesc::unsafe_from_native` copies its strings and
bytecode into a managed snapshot. Pin sokol-shdc to a revision compatible with
this repository's Sokol revision. `examples/shaders` also demonstrates writing
Metal, GLSL and HLSL source descriptions directly in MoonBit.

Trace hooks support captured MoonBit closures through every `TraceHooks::on_*`
method. Install with `install_trace_hooks`; it returns the previous snapshot so
hooks can be restored. Build closure hooks from `TraceHooks::new()`; mixing
closure hooks with raw native callbacks or overwriting their userdata is invalid.
`CommitListener::on_func` provides the equivalent closure bridge for commit
listeners. Registered hooks/listeners stay alive until replaced, removed, or
shutdown, even when the original MoonBit value is released.

## Fetch and audio

Fetch callbacks run on the calling MoonBit thread when `dowork()` is called.
Each response owns copies of its path and data and can be retained after the
request finishes or fetch shuts down. Send reserves the request's native
`callback` and `user_data` fields for its closure bridge. Capture application
state in the callback instead. An invalid/over-capacity request returns a handle
with ID zero and never invokes the callback.

```moonbit nocheck
@fetch.setup(@fetch.Desc::new().with_logger(@fetch.Logger::default()))
let request = @fetch.Request::new()
  .with_path("assets/texture.bin")
  .with_buffer(@fetch.Range::allocate(1024 * 1024))
let handle = @fetch.send(request, fn(response) {
  if response.fetched() { consume(response.data().bytes()) }
  if response.failed() { report(response.error_code()) }
})
// Call @fetch.dowork() in the application's frame callback.
// When loading ends, or during application cleanup:
@fetch.shutdown()
```

Use `cancel`, `pause`, `continue_`, `bind_buffer`, and `unbind_buffer` for request
control. Buffer binding/unbinding is restricted to response callbacks. Streaming
requests require an initial buffer at least as large as `chunk_size`, matching
this pinned upstream's validation. A non-streaming request can instead bind its
buffer in the dispatch callback. Do not call `shutdown` or `dowork` recursively
from a response callback. Use a single MoonBit thread for the fetch context.

Audio uses `audio.setup(Desc)` and `audio.push(FixedArray[Float])` from the
MoonBit thread. Samples are interleaved, their count must be divisible by the
channel count, and `push` returns accepted **frames**. Native Sokol stream/log/
allocator callbacks can run on foreign threads; use C callbacks there, never
enter the MoonBit runtime from a device/worker thread. The push interface avoids
that runtime restriction. Shut audio down during application cleanup.

## Timing, arguments and logging

`time.setup()` initializes the tick clock; `laptime(Ref[UInt64])` updates the last
timestamp. `args.setup(arguments, desc?)` takes an array including the executable
name at index zero and copies parsed values. Call `args.shutdown()` when done.
`log.write(tag, level, message)` routes through the standard C logger; Panic
level terminates the process. Logger/allocator callback fields remain available
for native integrations through explicit unowned handles.

## Maintainer validation

```sh
python3 scripts/prepare.py --check
python3 scripts/check_bindings.py
python3 scripts/generate.py --check
moon check --target all --warn-list +73
SOKOL_HEADLESS=1 moon test --target native
SOKOL_HEADLESS=1 moon test --target native --release
moon info && moon fmt
```

The included `scripts/run-asan.py` is adapted from the MoonBit C-binding skill's
runner. It restores package files and the runtime object in a `finally` block.
It temporarily replaces the installed MoonBit allocator object, so run it without
other MoonBit builds in progress. On Linux, run it normally for ASan and LSan. On
macOS with Apple's Clang, add `--cc /usr/bin/clang --no-leak-check`; Apple's runtime
does not provide leak detection. An older Homebrew LLVM runtime can deadlock in
ASan initialization on recent macOS before any binding code runs.

```sh
SOKOL_HEADLESS=1 python3 scripts/run-asan.py --repo-root . \
  --pkg moon.pkg --pkg native/moon.pkg --pkg app/moon.pkg --pkg gfx/moon.pkg \
  --pkg audio/moon.pkg --pkg fetch/moon.pkg --pkg args/moon.pkg \
  --pkg time/moon.pkg --pkg log/moon.pkg --pkg glue/moon.pkg \
  --pkg cmd/main/moon.pkg --pkg examples/offscreen/moon.pkg
```

For real macOS callback and GPU checks under ASan, unset `SOKOL_HEADLESS`, add
`--cc /usr/bin/clang --no-leak-check`, and append
`--run cmd/main --run examples/offscreen` to the runner command. This runs the
window lifecycle and offscreen pixel-readback executables after the test suite.

To update Sokol: choose an upstream revision, update `scripts/upstream.json` and
its per-file SHA-256 hashes, run `scripts/prepare.py`, then
`python3 scripts/inspect_api.py` (requires Clang) and `python3 scripts/generate.py`.
Review the API coverage report and generated interfaces, adapt handwritten
lifetime bridges if signatures changed, and run the validation commands above.
The generator normalizes C ABI boundaries; it does not copy MoonBit's internal
record layout or expose C aggregate-by-value ABI assumptions.

The bindings are Apache-2.0 licensed. Vendored Sokol retains its original zlib
license and copyright notices in `native/SOKOL-LICENSE` and each header.
