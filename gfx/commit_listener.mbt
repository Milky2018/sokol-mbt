///|
/// Owned C value. copy() creates an independent copy.
pub type CommitListener

///|
extern "c" fn sg_commit_listener_new() -> CommitListener = "mb_gfx_sg_commit_listener_new"

///|
pub fn CommitListener::new() -> CommitListener {
  sg_commit_listener_new()
}

///|
#borrow(object_)
extern "c" fn sg_commit_listener_copy(
  object_ : CommitListener,
) -> CommitListener = "mb_gfx_sg_commit_listener_copy"

///|
pub fn CommitListener::copy(self : CommitListener) -> CommitListener {
  sg_commit_listener_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_commit_listener_native(
  object_ : CommitListener,
) -> @native.Handle = "mb_gfx_sg_commit_listener_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn CommitListener::unsafe_native_handle(
  self : CommitListener,
) -> @native.Handle {
  sg_commit_listener_native(self)
}

///|
extern "c" fn sg_commit_listener_from_native(
  ptr : @native.Handle,
) -> CommitListener = "mb_gfx_sg_commit_listener_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn CommitListener::unsafe_from_native(
  ptr : @native.Handle,
) -> CommitListener {
  sg_commit_listener_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_commit_listener_get_func(
  object_ : CommitListener,
) -> @native.Handle = "mb_gfx_sg_commit_listener_get_func"

///|
pub fn CommitListener::func(self : CommitListener) -> @native.Handle {
  sg_commit_listener_get_func(self)
}

///|
#borrow(object_)
extern "c" fn sg_commit_listener_set_func(
  object_ : CommitListener,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_commit_listener_set_func"

///|
pub fn CommitListener::set_func(
  self : CommitListener,
  value : @native.Handle,
) -> CommitListener {
  sg_commit_listener_set_func(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_commit_listener_get_user_data(
  object_ : CommitListener,
) -> @native.Handle = "mb_gfx_sg_commit_listener_get_user_data"

///|
pub fn CommitListener::user_data(self : CommitListener) -> @native.Handle {
  sg_commit_listener_get_user_data(self)
}

///|
#borrow(object_)
extern "c" fn sg_commit_listener_set_user_data(
  object_ : CommitListener,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_commit_listener_set_user_data"

///|
pub fn CommitListener::set_user_data(
  self : CommitListener,
  value : @native.Handle,
) -> CommitListener {
  sg_commit_listener_set_user_data(self, value)
  self
}
