///|
#borrow(hooks)
extern "c" fn install_trace_hooks_ffi(hooks : TraceHooks) -> TraceHooks = "mb_gfx_install_trace_hooks"

///|
/// Install callback snapshots. Keep native callbacks and user_data valid until replaced.
pub fn install_trace_hooks(hooks : TraceHooks) -> TraceHooks {
  install_trace_hooks_ffi(hooks)
}

///|
#borrow(listener)
extern "c" fn add_commit_listener_ffi(listener : CommitListener) -> Bool = "mb_gfx_add_commit_listener"

///|
pub fn add_commit_listener(listener : CommitListener) -> Bool {
  add_commit_listener_ffi(listener)
}

///|
#borrow(listener)
extern "c" fn remove_commit_listener_ffi(listener : CommitListener) -> Bool = "mb_gfx_remove_commit_listener"

///|
pub fn remove_commit_listener(listener : CommitListener) -> Bool {
  remove_commit_listener_ffi(listener)
}

///|
extern "c" fn shutdown_ffi() = "mb_gfx_shutdown"

///|
pub fn shutdown() -> Unit {
  shutdown_ffi()
}

///|
extern "c" fn headless_ffi() -> Bool = "mb_gfx_headless"

///|
pub fn is_headless() -> Bool {
  headless_ffi()
}
