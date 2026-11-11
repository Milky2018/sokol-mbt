// C API declarations and field adapters maintained by scripts/generate.py.

///|
/// Owned C value. copy() creates an independent copy.
pub type Allocator

///|
pub fn Allocator::new() -> Allocator {
  sargs_allocator_new()
}

///|
pub fn Allocator::copy(self : Allocator) -> Allocator {
  sargs_allocator_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Allocator::unsafe_native_handle(self : Allocator) -> @native.Handle {
  sargs_allocator_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Allocator::unsafe_from_native(ptr : @native.Handle) -> Allocator {
  sargs_allocator_from_native(ptr)
}

///|
pub fn Allocator::alloc_fn(self : Allocator) -> @native.Handle {
  sargs_allocator_get_alloc_fn(self)
}

///|
pub fn Allocator::set_alloc_fn(
  self : Allocator,
  value : @native.Handle,
) -> Allocator {
  sargs_allocator_set_alloc_fn(self, value)
  self
}

///|
pub fn Allocator::free_fn(self : Allocator) -> @native.Handle {
  sargs_allocator_get_free_fn(self)
}

///|
pub fn Allocator::set_free_fn(
  self : Allocator,
  value : @native.Handle,
) -> Allocator {
  sargs_allocator_set_free_fn(self, value)
  self
}

///|
pub fn Allocator::user_data(self : Allocator) -> @native.Handle {
  sargs_allocator_get_user_data(self)
}

///|
pub fn Allocator::set_user_data(
  self : Allocator,
  value : @native.Handle,
) -> Allocator {
  sargs_allocator_set_user_data(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Desc

///|
pub fn Desc::new() -> Desc {
  sargs_desc_new()
}

///|
pub fn Desc::copy(self : Desc) -> Desc {
  sargs_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Desc::unsafe_native_handle(self : Desc) -> @native.Handle {
  sargs_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Desc::unsafe_from_native(ptr : @native.Handle) -> Desc {
  sargs_desc_from_native(ptr)
}

///|
pub fn Desc::argc(self : Desc) -> Int32 {
  sargs_desc_get_argc(self)
}

///|
pub fn Desc::set_argc(self : Desc, value : Int32) -> Desc {
  sargs_desc_set_argc(self, value)
  self
}

///|
pub fn Desc::argv(self : Desc) -> @native.Handle {
  sargs_desc_get_argv(self)
}

///|
pub fn Desc::set_argv(self : Desc, value : @native.Handle) -> Desc {
  sargs_desc_set_argv(self, value)
  self
}

///|
pub fn Desc::max_args(self : Desc) -> Int32 {
  sargs_desc_get_max_args(self)
}

///|
pub fn Desc::set_max_args(self : Desc, value : Int32) -> Desc {
  sargs_desc_set_max_args(self, value)
  self
}

///|
pub fn Desc::buf_size(self : Desc) -> Int32 {
  sargs_desc_get_buf_size(self)
}

///|
pub fn Desc::set_buf_size(self : Desc, value : Int32) -> Desc {
  sargs_desc_set_buf_size(self, value)
  self
}

///|
pub fn Desc::allocator(self : Desc) -> Allocator {
  sargs_desc_get_allocator(self)
}

///|
pub fn Desc::set_allocator(self : Desc, value : Allocator) -> Desc {
  sargs_desc_set_allocator(self, value)
  self
}

///|
pub fn shutdown() -> Unit {
  sargs_shutdown()
}

///|
pub fn isvalid() -> Bool {
  sargs_isvalid()
}

///|
pub fn exists(key : String) -> Bool {
  sargs_exists(@native.cstring(key))
}

///|
pub fn value(key : String) -> String {
  @utf8.decode_lossy(sargs_value(@native.cstring(key)))
}

///|
pub fn value_def(key : String, def : String) -> String {
  @utf8.decode_lossy(
    sargs_value_def(@native.cstring(key), @native.cstring(def)),
  )
}

///|
pub fn equals(key : String, val : String) -> Bool {
  sargs_equals(@native.cstring(key), @native.cstring(val))
}

///|
pub fn boolean(key : String) -> Bool {
  sargs_boolean(@native.cstring(key))
}

///|
pub fn find(key : String) -> Int32 {
  sargs_find(@native.cstring(key))
}

///|
pub fn num_args() -> Int32 {
  sargs_num_args()
}

///|
pub fn key_at(index : Int32) -> String {
  @utf8.decode_lossy(sargs_key_at(index))
}

///|
pub fn value_at(index : Int32) -> String {
  @utf8.decode_lossy(sargs_value_at(index))
}
