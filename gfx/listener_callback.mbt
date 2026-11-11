///|
#borrow(value)
#owned(callback)
extern "c" fn sg_commit_listener_on_func_ffi(
  value : CommitListener,
  call : FuncRef[(() -> Unit) -> Unit],
  callback : () -> Unit,
) -> CommitListener = "mb_sg_commit_listener_on_func"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn CommitListener::on_func(
  self : CommitListener,
  callback : () -> Unit,
) -> CommitListener {
  sg_commit_listener_on_func_ffi(self, fn(callback) { callback() }, callback)
}
