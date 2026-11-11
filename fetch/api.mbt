///|
#borrow(request)
#owned(callback)
extern "c" fn send_ffi(
  request : Request,
  call : FuncRef[((Response) -> Unit, Response) -> Unit],
  callback : (Response) -> Unit,
) -> UInt32 = "mb_fetch_send"

///|
/// Queue a request. Call dowork() on the same MoonBit thread to receive callbacks.
/// Responses own snapshots of their data and remain readable after completion.
/// The callback replaces Request.callback and reserves Request.user_data internally.
pub fn send(request : Request, callback : (Response) -> Unit) -> Handle {
  guard valid() else { abort("fetch must be initialized") }
  guard request.path() != "" else { abort("fetch path must not be empty") }
  Handle(send_ffi(request, fn(f, response) { f(response) }, callback))
}

///|
extern "c" fn shutdown_ffi() = "mb_fetch_shutdown"

///|
/// Wait for workers and release pending requests. Do not call inside a callback.
pub fn shutdown() -> Unit {
  shutdown_ffi()
}

///|
#borrow(buffer)
extern "c" fn bind_buffer_ffi(handle : UInt32, buffer : Range) = "mb_fetch_bind_buffer"

///|
/// Bind an owned buffer from a response callback after dispatch or unbinding.
pub fn bind_buffer(handle : Handle, buffer : Range) -> Unit {
  guard handle.id() != 0U && active_request_ffi() == handle.id() else {
    abort("buffer binding requires this request callback")
  }
  guard buffer.size() > 0UL else { abort("fetch buffer must not be empty") }
  bind_buffer_ffi(handle.id(), buffer)
}

///|
extern "c" fn unbind_buffer_ffi(handle : UInt32) -> Range = "mb_fetch_unbind_buffer"

///|
/// Unbind from this request callback and transfer the buffer into the returned range.
pub fn unbind_buffer(handle : Handle) -> Range {
  guard handle.id() != 0U && active_request_ffi() == handle.id() else {
    abort("buffer unbinding requires this request callback")
  }
  unbind_buffer_ffi(handle.id())
}

///|
/// Allocate a zero-filled transfer buffer.
pub fn Range::allocate(size : Int32) -> Range {
  guard size > 0 else { abort("fetch buffer size must be positive") }
  Range::from_bytes(Bytes::make(size, 0))
}

///|
extern "c" fn dowork_ffi() = "mb_fetch_dowork"

///|
/// Deliver pending responses on the calling thread. Do not call recursively.
pub fn dowork() -> Unit {
  dowork_ffi()
}

///|
extern "c" fn active_request_ffi() -> UInt32 = "mb_fetch_active_request"
