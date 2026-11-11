# Native ownership contracts

These contracts apply to the bundled Sokol revision in `native/upstream.json`
and moonc v0.10.20. They distinguish the lifetime of a descriptor, an ID value,
an underlying Sokol resource, and a registered callback. ABI adaptation does not
imply resource ownership. Raw native pointers always remain caller-owned.

## Values and descriptors

| Value | Ownership and release |
| --- | --- |
| Numeric scalars and constant enums | Passed by value. Adapters normalize C bool and platform-sized integers. |
| `gfx.Buffer/Image/Sampler/Shader/Pipeline/View`, `fetch.Handle` | MoonBit ID values. No C object, finalizer or descriptor retention. IDs alone do not keep a resource alive. |
| Descriptors and query records | One external-object payload contains the C value directly, with no separate descriptor allocation. Its type-specific destructor frees copied strings/ranges and owned nested fields. No arena, descriptor ancestry, or implicit resource registry. |
| Strings | UTF-8 C strings copied on field assignment; replaced strings are immediately freed. Input strings to native functions are borrowed for the call. Returned strings are copied before returning to MoonBit. |
| Ranges | Own copied bytes. Nested assignment and `copy()` create independent storage. Fetch unbind can transfer an IO allocation directly to a range. |
| Native device/resource pointers, allocators, logger/stream callbacks, userdata | Unowned interoperability references. The caller maintains their lifetime and the correct C ABI. No arbitrary native pointee is copied or freed. |

Binding-owned copies use libc allocation and `free`, independently of any
custom Sokol allocator. Sokol alone uses the allocator configured in its setup
descriptor. Allocation families are never mixed.

`set_*` mutates the receiver and clones only the assigned owned field. A nested
getter returns a copy; modifying it requires assigning it back. This prevents
shared mutable C pointers and accidental descriptor ancestry. `copy()` explicitly
duplicates owned fields. The `unsafe_*` pointer helpers require live, correctly
typed readable memory. Never change owned string/range pointers behind the
binding's back; the destructor frees them using `free`.

Copy/destructor implementations cover the audited field categories:
`const char*`, the three Sokol range structs, and nested aggregate values. The
callback context types have explicit clone/drop code. Unknown pointers are
unowned. Resource retention is implemented explicitly in the native bridges;
it does not follow automatically from a `make`, `setup` or `destroy` name.

## Graphics

| Operations | Borrow/retain/release contract |
| --- | --- |
| All six `make_*` and `init_*` operations | Borrow the input descriptor for the call. The backend consumes/uploads data and copies required names/reflection information. The binding keeps no descriptor after returning. |
| `apply_*`, render/compute passes, draw/dispatch, writes and copies | Borrow input values for the call. Uploaded bytes can be released after the operation returns; GPU resources and ordering follow Sokol's own contract. |
| `query_*` | Copy returned C aggregate values. Raw backend pointers remain unowned. Querying a resource descriptor returns the fields reconstructed by Sokol, not the original creation descriptor. |
| `alloc_*`, `dealloc_*`, `uninit_*`, `destroy_*` | Follow Sokol's explicit resource-state transitions; no GC finalizer destroys a GPU resource. |
| `setup`/`shutdown` | Sokol owns its context and resource pools. Setup stores unowned allocator/logger/backend pointers. Their native owners must outlive the context. Shutdown first stops Sokol, then releases the binding's registered callback references. |

Pinned source evidence in [native/sokol_gfx.h](native/sokol_gfx.h):
`_sg_init_buffer`, `_sg_init_image`, `_sg_init_shader` and backend creation/upload
implementations consume input descriptors synchronously; GL/D3D11 shader
attribute names use `_sg_strcpy`; Metal creates NSString values; descriptor
queries such as `sg_query_buffer_desc` reconstruct common fields without holding
initial upload pointers. Native backend resource injection still requires the
native object's documented lifetime; it is not retained by a descriptor copy.

The default build selects Metal, D3D11, or OpenGL. Other backend-specific fields
and queries retain the restrictions of Sokol's compiled backend. They do not
create support for a backend or platform excluded by the build.

## Managed graphics callbacks

`TraceHooks::on_*` and `CommitListener::on_func` return independent configurations.
A context owns one MoonBit reference per active closure. Replacing a slot copies
only the still-active references; it does not retain the obsolete closure or a
predecessor descriptor. Raw setters cannot overwrite a managed callback context.

Sokol copies hook/listener structs and retains their userdata pointers:

- Installing hooks creates a separate owned configuration. The binding keeps it
  until replacement/shutdown. The returned old configuration owns independent
  callback references, so it can be restored safely.
- Registering a listener retains its owning configuration only if registration
  succeeds. Removal releases that reference only if Sokol accepts removal.
  Shutdown releases remaining registrations after Sokol stops calling them.
- A copied managed listener has a new userdata identity. Remove a registration
  using its original listener configuration.

Callback `FuncRef` arguments are borrowed by the current compiler. The C bridge
pins the closure before invocation and releases that pin afterward. Allocated
argument copies are also released after invocation; MoonBit retains them if the
callback stores them. Saving the closure and function pointer locally permits a
hook to unregister itself and release the old context during its callback.
The finalizer regressions in `tests/lifetime` cover this case and rejected and
pending registrations. Descriptors containing closures must not form self-
retaining cycles through opaque native callback state; unregister native roots
explicitly and avoid capturing the owning callback configuration itself.

Pinned evidence: `sg_install_trace_hooks`, `sg_add_commit_listener`,
`sg_remove_commit_listener`, `sg_commit` and `sg_shutdown`.

## Fetch

Sokol owns its request pool; the binding owns only a pending callback reference
and an independent IO buffer. `_sfetch_item_init` in
[native/sokol_fetch.h](native/sokol_fetch.h) copies the path and userdata bytes
synchronously and stores the transfer-buffer pointer. The stack-local request
need not survive `sfetch_send`; the heap pending state and buffer must survive.

| Transition | Binding action |
| --- | --- |
| `send` | Borrow the request descriptor; copy its transfer buffer and transfer one callback reference to pending state. Put the pending-state pointer value into Sokol's copied userdata. |
| Rejected/over-capacity send | Free the copied buffer and pending state, release the callback, return ID zero. There will be no callback. |
| Response | Copy the response path and buffer once. The data subrange aliases that owned copy when it falls inside the buffer. The response destructor frees the allocation once. Pin the closure for the borrowed callback call and release the pin and temporary response afterward. |
| `bind_buffer` | Require that exact request's active response callback and a positive buffer size. Copy caller input into the active request's IO storage. |
| `unbind_buffer` | Require that exact active callback. Unbind in Sokol, then transfer the active allocation to an owned MoonBit range without copying. The response snapshot is separate. |
| Cancel/pause/continue | Request a Sokol state transition. Do not free in-flight state. Cancellation is cleaned up after the final callback. |
| Final callback | After callback return, release pending's original closure reference, active buffer, and pending state. Sokol retires its own slot. |
| Shutdown | Stop/join Sokol IO workers first, then release any pending callbacks and buffers. Shutdown does not synthesize final callbacks. |

Only the setup thread may call the context; callbacks run during `dowork` on
that same thread. Recursive `dowork`/shutdown from callbacks is rejected.
Response objects remain readable after unbinding, completion and shutdown.
`Request.callback/user_data` are reserved by the managed bridge; capture MoonBit
state in the closure instead. No arbitrary native userdata object is retained.

Pinned evidence: `_sfetch_item_init`, `_sfetch_invoke_response_callback`,
`_sfetch_channel_dowork`, `_sfetch_channel_discard`, `sfetch_shutdown`,
`sfetch_bind_buffer`, and `sfetch_unbind_buffer`.

## Application, audio and arguments

`app.run` transfers ownership of its descriptor and four callbacks into one
static application bridge. Each invocation borrows pinned arguments. Cleanup
runs the user cleanup callback first and then releases every original closure
reference and the descriptor, including on macOS where `sapp_run` never returns.
Returning desktop backends also clear any remaining bridge state. `run_native`
interposes cleanup without changing the native callbacks' userdata. OS process
termination can bypass cleanup; applications must follow Sokol's platform rules.

`sapp_desc` is copied by `_sapp_init_state`, so its owned title/icon inputs stay
alive through application cleanup. Native pointers inside it remain unowned.
Event values are copied for callback delivery and reclaimed after the callback
unless MoonBit retains them. One application runs on the main OS thread.

Audio `setup` stores scalar configuration and unowned native callback/allocator
pointers; `saudio_push` copies interleaved samples into its FIFO during the call.
Borrow the sample array only for that duration. `saudio_shutdown` stops the audio
backend before its native callbacks may be released. Native stream callbacks
must not enter MoonBit from an audio thread; use the push API from MoonBit.

`args.setup` borrows argv strings for parsing: `_sargs_parse_cargs` copies parsed
keys/values into Sokol's own string buffer. The temporary argv array is freed
on return. `sargs_shutdown` uses the configured allocator; its userdata remains
caller-owned. Time functions operate on scalars; `laptime` borrows its Ref only
for the timestamp update. Standard logging borrows strings for the call.

## Verification limits

`check_bindings.py` verifies declaration coverage, not ownership correctness.
Normal tests exercise public behavior; finalizer probes test release timing;
ASan checks instrumented execution for invalid accesses, including range alias
copies and hook self-removal. macOS ASan does not check leaks; Linux CI enables
LSan. Only macOS Metal and dummy graphics/audio have been executed locally.
Windows/Linux CI definitions are provided but are not evidence that those jobs
have passed. No test suite proves arbitrary native pointer use safe.
