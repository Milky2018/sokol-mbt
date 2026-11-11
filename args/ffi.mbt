// Private ABI declarations maintained by scripts/generate.py.

///|
extern "c" fn sargs_allocator_new() -> Allocator = "mb_args_sargs_allocator_new"

///|
#borrow(object_)
extern "c" fn sargs_allocator_copy(object_ : Allocator) -> Allocator = "mb_args_sargs_allocator_copy"

///|
#borrow(object_)
extern "c" fn sargs_allocator_native(object_ : Allocator) -> @native.Handle = "mb_args_sargs_allocator_native"

///|
extern "c" fn sargs_allocator_from_native(ptr : @native.Handle) -> Allocator = "mb_args_sargs_allocator_from_native"

///|
#borrow(object_)
extern "c" fn sargs_allocator_get_alloc_fn(
  object_ : Allocator,
) -> @native.Handle = "mb_args_sargs_allocator_get_alloc_fn"

///|
#borrow(object_)
extern "c" fn sargs_allocator_set_alloc_fn(
  object_ : Allocator,
  value : @native.Handle,
) -> Unit = "mb_args_sargs_allocator_set_alloc_fn"

///|
#borrow(object_)
extern "c" fn sargs_allocator_get_free_fn(
  object_ : Allocator,
) -> @native.Handle = "mb_args_sargs_allocator_get_free_fn"

///|
#borrow(object_)
extern "c" fn sargs_allocator_set_free_fn(
  object_ : Allocator,
  value : @native.Handle,
) -> Unit = "mb_args_sargs_allocator_set_free_fn"

///|
#borrow(object_)
extern "c" fn sargs_allocator_get_user_data(
  object_ : Allocator,
) -> @native.Handle = "mb_args_sargs_allocator_get_user_data"

///|
#borrow(object_)
extern "c" fn sargs_allocator_set_user_data(
  object_ : Allocator,
  value : @native.Handle,
) -> Unit = "mb_args_sargs_allocator_set_user_data"

///|
extern "c" fn sargs_desc_new() -> Desc = "mb_args_sargs_desc_new"

///|
#borrow(object_)
extern "c" fn sargs_desc_copy(object_ : Desc) -> Desc = "mb_args_sargs_desc_copy"

///|
#borrow(object_)
extern "c" fn sargs_desc_native(object_ : Desc) -> @native.Handle = "mb_args_sargs_desc_native"

///|
extern "c" fn sargs_desc_from_native(ptr : @native.Handle) -> Desc = "mb_args_sargs_desc_from_native"

///|
#borrow(object_)
extern "c" fn sargs_desc_get_argc(object_ : Desc) -> Int32 = "mb_args_sargs_desc_get_argc"

///|
#borrow(object_)
extern "c" fn sargs_desc_set_argc(object_ : Desc, value : Int32) -> Unit = "mb_args_sargs_desc_set_argc"

///|
#borrow(object_)
extern "c" fn sargs_desc_get_argv(object_ : Desc) -> @native.Handle = "mb_args_sargs_desc_get_argv"

///|
#borrow(object_)
extern "c" fn sargs_desc_set_argv(
  object_ : Desc,
  value : @native.Handle,
) -> Unit = "mb_args_sargs_desc_set_argv"

///|
#borrow(object_)
extern "c" fn sargs_desc_get_max_args(object_ : Desc) -> Int32 = "mb_args_sargs_desc_get_max_args"

///|
#borrow(object_)
extern "c" fn sargs_desc_set_max_args(object_ : Desc, value : Int32) -> Unit = "mb_args_sargs_desc_set_max_args"

///|
#borrow(object_)
extern "c" fn sargs_desc_get_buf_size(object_ : Desc) -> Int32 = "mb_args_sargs_desc_get_buf_size"

///|
#borrow(object_)
extern "c" fn sargs_desc_set_buf_size(object_ : Desc, value : Int32) -> Unit = "mb_args_sargs_desc_set_buf_size"

///|
#borrow(object_)
extern "c" fn sargs_desc_get_allocator(object_ : Desc) -> Allocator = "mb_args_sargs_desc_get_allocator"

///|
#borrow(object_, value)
extern "c" fn sargs_desc_set_allocator(
  object_ : Desc,
  value : Allocator,
) -> Unit = "mb_args_sargs_desc_set_allocator"

///|
extern "c" fn sargs_shutdown() -> Unit = "sargs_shutdown"

///|
extern "c" fn sargs_isvalid() -> Bool = "mb_args_sargs_isvalid"

///|
#borrow(key)
extern "c" fn sargs_exists(key : Bytes) -> Bool = "mb_args_sargs_exists"

///|
#borrow(key)
extern "c" fn sargs_value(key : Bytes) -> Bytes = "mb_args_sargs_value"

///|
#borrow(key, def)
extern "c" fn sargs_value_def(key : Bytes, def : Bytes) -> Bytes = "mb_args_sargs_value_def"

///|
#borrow(key, val)
extern "c" fn sargs_equals(key : Bytes, val : Bytes) -> Bool = "mb_args_sargs_equals"

///|
#borrow(key)
extern "c" fn sargs_boolean(key : Bytes) -> Bool = "mb_args_sargs_boolean"

///|
#borrow(key)
extern "c" fn sargs_find(key : Bytes) -> Int32 = "mb_args_sargs_find"

///|
extern "c" fn sargs_num_args() -> Int32 = "sargs_num_args"

///|
extern "c" fn sargs_key_at(index : Int32) -> Bytes = "mb_args_sargs_key_at"

///|
extern "c" fn sargs_value_at(index : Int32) -> Bytes = "mb_args_sargs_value_at"
