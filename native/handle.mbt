///|
/// An unowned native pointer. The caller must uphold the native object's lifetime.
#external
pub type Handle

///|
extern "c" fn null_ffi() -> Handle = "mb_sokol_null"

///|
pub fn null() -> Handle {
  null_ffi()
}

///|
extern "c" fn address_ffi(value : Handle) -> UInt64 = "mb_sokol_address"

///|
pub fn Handle::address(self : Handle) -> UInt64 {
  address_ffi(self)
}

///|
pub fn Handle::is_null(self : Handle) -> Bool {
  self.address() == 0UL
}

///|
extern "c" fn from_address_ffi(value : UInt64) -> Handle = "mb_sokol_from_address"

///|
/// The address must identify a valid native object for every use of this pointer.
pub fn unsafe_from_address(value : UInt64) -> Handle {
  from_address_ffi(value)
}

///|
/// Encode a C string, rejecting embedded NUL characters.
pub fn cstring(value : String) -> Bytes {
  guard !value.contains("\u{0}") else { abort("C strings cannot contain NUL") }
  @utf8.encode(value)
}
