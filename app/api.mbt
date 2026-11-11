///|
#owned(desc, init, frame, cleanup, event)
extern "c" fn run_ffi(
  desc : Desc,
  call : FuncRef[(() -> Unit) -> Unit],
  init : () -> Unit,
  frame : () -> Unit,
  cleanup : () -> Unit,
  event_call : FuncRef[((Event) -> Unit, Event) -> Unit],
  event : (Event) -> Unit,
) = "mb_app_run"

///|
/// Run on the main OS thread. Sokol owns the event loop and may terminate the
/// process instead of returning. Callbacks must not raise across the C boundary.
pub fn run(
  desc : Desc,
  init~ : () -> Unit,
  frame~ : () -> Unit,
  cleanup~ : () -> Unit = fn() {  },
  event~ : (Event) -> Unit = fn(_) {  },
) -> Unit {
  run_ffi(desc, fn(f) { f() }, init, frame, cleanup, fn(f, e) { f(e) }, event)
}

///|
#cfg(not(platform="windows"))
#borrow(request)
extern "c" fn html5_fetch_ffi(request : Html5FetchRequest) = "mb_app_html5_fetch"

///|
/// Native-level HTML5 integration. The C callback and buffer must outlive loading.
/// This operation is available only in Sokol's HTML5 platform implementation.
#cfg(not(platform="windows"))
pub fn html5_fetch_dropped_file_native(request : Html5FetchRequest) -> Unit {
  html5_fetch_ffi(request)
}

///|
#owned(desc)
extern "c" fn run_native_ffi(desc : Desc) = "mb_app_run_native"

///|
/// Run a descriptor containing native C callbacks. Callback function pointers and
/// user_data must remain valid for the entire application lifetime.
pub fn run_native(desc : Desc) -> Unit {
  run_native_ffi(desc)
}
