// Private ABI declarations maintained by scripts/generate.py.

///|
extern "c" fn sfetch_log_item_t_int(value : LogItem) -> Int32 = "mb_sokol_enum_identity"

///|
extern "c" fn sfetch_logger_t_new() -> Logger = "mb_fetch_sfetch_logger_t_new"

///|
#borrow(object_)
extern "c" fn sfetch_logger_t_copy(object_ : Logger) -> Logger = "mb_fetch_sfetch_logger_t_copy"

///|
#borrow(object_)
extern "c" fn sfetch_logger_t_native(object_ : Logger) -> @native.Handle = "mb_fetch_sfetch_logger_t_native"

///|
extern "c" fn sfetch_logger_t_from_native(ptr : @native.Handle) -> Logger = "mb_fetch_sfetch_logger_t_from_native"

///|
#borrow(object_)
extern "c" fn sfetch_logger_t_get_func(object_ : Logger) -> @native.Handle = "mb_fetch_sfetch_logger_t_get_func"

///|
#borrow(object_)
extern "c" fn sfetch_logger_t_set_func(
  object_ : Logger,
  value : @native.Handle,
) -> Unit = "mb_fetch_sfetch_logger_t_set_func"

///|
#borrow(object_)
extern "c" fn sfetch_logger_t_get_user_data(object_ : Logger) -> @native.Handle = "mb_fetch_sfetch_logger_t_get_user_data"

///|
#borrow(object_)
extern "c" fn sfetch_logger_t_set_user_data(
  object_ : Logger,
  value : @native.Handle,
) -> Unit = "mb_fetch_sfetch_logger_t_set_user_data"

///|
extern "c" fn sfetch_range_t_new() -> Range = "mb_fetch_sfetch_range_t_new"

///|
#borrow(object_)
extern "c" fn sfetch_range_t_copy(object_ : Range) -> Range = "mb_fetch_sfetch_range_t_copy"

///|
#borrow(object_)
extern "c" fn sfetch_range_t_native(object_ : Range) -> @native.Handle = "mb_fetch_sfetch_range_t_native"

///|
extern "c" fn sfetch_range_t_from_native(ptr : @native.Handle) -> Range = "mb_fetch_sfetch_range_t_from_native"

///|
#borrow(object_)
extern "c" fn sfetch_range_t_bytes(object_ : Range) -> Bytes = "mb_fetch_sfetch_range_t_bytes"

///|
#borrow(data)
extern "c" fn sfetch_range_t_data(data : Bytes) -> Range = "mb_fetch_sfetch_range_t_data"

///|
#borrow(object_)
extern "c" fn sfetch_range_t_get_size(object_ : Range) -> UInt64 = "mb_fetch_sfetch_range_t_get_size"

///|
extern "c" fn sfetch_allocator_t_new() -> Allocator = "mb_fetch_sfetch_allocator_t_new"

///|
#borrow(object_)
extern "c" fn sfetch_allocator_t_copy(object_ : Allocator) -> Allocator = "mb_fetch_sfetch_allocator_t_copy"

///|
#borrow(object_)
extern "c" fn sfetch_allocator_t_native(object_ : Allocator) -> @native.Handle = "mb_fetch_sfetch_allocator_t_native"

///|
extern "c" fn sfetch_allocator_t_from_native(ptr : @native.Handle) -> Allocator = "mb_fetch_sfetch_allocator_t_from_native"

///|
#borrow(object_)
extern "c" fn sfetch_allocator_t_get_alloc_fn(
  object_ : Allocator,
) -> @native.Handle = "mb_fetch_sfetch_allocator_t_get_alloc_fn"

///|
#borrow(object_)
extern "c" fn sfetch_allocator_t_set_alloc_fn(
  object_ : Allocator,
  value : @native.Handle,
) -> Unit = "mb_fetch_sfetch_allocator_t_set_alloc_fn"

///|
#borrow(object_)
extern "c" fn sfetch_allocator_t_get_free_fn(
  object_ : Allocator,
) -> @native.Handle = "mb_fetch_sfetch_allocator_t_get_free_fn"

///|
#borrow(object_)
extern "c" fn sfetch_allocator_t_set_free_fn(
  object_ : Allocator,
  value : @native.Handle,
) -> Unit = "mb_fetch_sfetch_allocator_t_set_free_fn"

///|
#borrow(object_)
extern "c" fn sfetch_allocator_t_get_user_data(
  object_ : Allocator,
) -> @native.Handle = "mb_fetch_sfetch_allocator_t_get_user_data"

///|
#borrow(object_)
extern "c" fn sfetch_allocator_t_set_user_data(
  object_ : Allocator,
  value : @native.Handle,
) -> Unit = "mb_fetch_sfetch_allocator_t_set_user_data"

///|
extern "c" fn sfetch_desc_t_new() -> Desc = "mb_fetch_sfetch_desc_t_new"

///|
#borrow(object_)
extern "c" fn sfetch_desc_t_copy(object_ : Desc) -> Desc = "mb_fetch_sfetch_desc_t_copy"

///|
#borrow(object_)
extern "c" fn sfetch_desc_t_native(object_ : Desc) -> @native.Handle = "mb_fetch_sfetch_desc_t_native"

///|
extern "c" fn sfetch_desc_t_from_native(ptr : @native.Handle) -> Desc = "mb_fetch_sfetch_desc_t_from_native"

///|
#borrow(object_)
extern "c" fn sfetch_desc_t_get_max_requests(object_ : Desc) -> UInt32 = "mb_fetch_sfetch_desc_t_get_max_requests"

///|
#borrow(object_)
extern "c" fn sfetch_desc_t_set_max_requests(
  object_ : Desc,
  value : UInt32,
) -> Unit = "mb_fetch_sfetch_desc_t_set_max_requests"

///|
#borrow(object_)
extern "c" fn sfetch_desc_t_get_num_channels(object_ : Desc) -> UInt32 = "mb_fetch_sfetch_desc_t_get_num_channels"

///|
#borrow(object_)
extern "c" fn sfetch_desc_t_set_num_channels(
  object_ : Desc,
  value : UInt32,
) -> Unit = "mb_fetch_sfetch_desc_t_set_num_channels"

///|
#borrow(object_)
extern "c" fn sfetch_desc_t_get_num_lanes(object_ : Desc) -> UInt32 = "mb_fetch_sfetch_desc_t_get_num_lanes"

///|
#borrow(object_)
extern "c" fn sfetch_desc_t_set_num_lanes(
  object_ : Desc,
  value : UInt32,
) -> Unit = "mb_fetch_sfetch_desc_t_set_num_lanes"

///|
#borrow(object_)
extern "c" fn sfetch_desc_t_get_allocator(object_ : Desc) -> Allocator = "mb_fetch_sfetch_desc_t_get_allocator"

///|
#borrow(object_, value)
extern "c" fn sfetch_desc_t_set_allocator(
  object_ : Desc,
  value : Allocator,
) -> Unit = "mb_fetch_sfetch_desc_t_set_allocator"

///|
#borrow(object_)
extern "c" fn sfetch_desc_t_get_logger(object_ : Desc) -> Logger = "mb_fetch_sfetch_desc_t_get_logger"

///|
#borrow(object_, value)
extern "c" fn sfetch_desc_t_set_logger(object_ : Desc, value : Logger) -> Unit = "mb_fetch_sfetch_desc_t_set_logger"

///|
extern "c" fn sfetch_handle_t_read_id(ptr : @native.Handle) -> UInt32 = "mb_fetch_sfetch_handle_t_read_id"

///|
extern "c" fn sfetch_error_t_int(value : FetchError) -> Int32 = "mb_sokol_enum_identity"

///|
extern "c" fn sfetch_response_t_new() -> Response = "mb_fetch_sfetch_response_t_new"

///|
#borrow(object_)
extern "c" fn sfetch_response_t_copy(object_ : Response) -> Response = "mb_fetch_sfetch_response_t_copy"

///|
#borrow(object_)
extern "c" fn sfetch_response_t_native(object_ : Response) -> @native.Handle = "mb_fetch_sfetch_response_t_native"

///|
extern "c" fn sfetch_response_t_from_native(ptr : @native.Handle) -> Response = "mb_fetch_sfetch_response_t_from_native"

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_handle(object_ : Response) -> UInt32 = "mb_fetch_sfetch_response_t_get_handle"

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_dispatched(object_ : Response) -> Bool = "mb_fetch_sfetch_response_t_get_dispatched"

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_fetched(object_ : Response) -> Bool = "mb_fetch_sfetch_response_t_get_fetched"

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_paused(object_ : Response) -> Bool = "mb_fetch_sfetch_response_t_get_paused"

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_finished(object_ : Response) -> Bool = "mb_fetch_sfetch_response_t_get_finished"

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_failed(object_ : Response) -> Bool = "mb_fetch_sfetch_response_t_get_failed"

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_cancelled(object_ : Response) -> Bool = "mb_fetch_sfetch_response_t_get_cancelled"

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_error_code(
  object_ : Response,
) -> FetchError = "mb_fetch_sfetch_response_t_get_error_code"

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_channel(object_ : Response) -> UInt32 = "mb_fetch_sfetch_response_t_get_channel"

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_lane(object_ : Response) -> UInt32 = "mb_fetch_sfetch_response_t_get_lane"

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_path(object_ : Response) -> Bytes = "mb_fetch_sfetch_response_t_get_path"

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_user_data(
  object_ : Response,
) -> @native.Handle = "mb_fetch_sfetch_response_t_get_user_data"

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_data_offset(object_ : Response) -> UInt32 = "mb_fetch_sfetch_response_t_get_data_offset"

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_data(object_ : Response) -> Range = "mb_fetch_sfetch_response_t_get_data"

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_buffer(object_ : Response) -> Range = "mb_fetch_sfetch_response_t_get_buffer"

///|
extern "c" fn sfetch_request_t_new() -> Request = "mb_fetch_sfetch_request_t_new"

///|
#borrow(object_)
extern "c" fn sfetch_request_t_copy(object_ : Request) -> Request = "mb_fetch_sfetch_request_t_copy"

///|
#borrow(object_)
extern "c" fn sfetch_request_t_native(object_ : Request) -> @native.Handle = "mb_fetch_sfetch_request_t_native"

///|
extern "c" fn sfetch_request_t_from_native(ptr : @native.Handle) -> Request = "mb_fetch_sfetch_request_t_from_native"

///|
#borrow(object_)
extern "c" fn sfetch_request_t_get_channel(object_ : Request) -> UInt32 = "mb_fetch_sfetch_request_t_get_channel"

///|
#borrow(object_)
extern "c" fn sfetch_request_t_set_channel(
  object_ : Request,
  value : UInt32,
) -> Unit = "mb_fetch_sfetch_request_t_set_channel"

///|
#borrow(object_)
extern "c" fn sfetch_request_t_get_path(object_ : Request) -> Bytes = "mb_fetch_sfetch_request_t_get_path"

///|
#borrow(object_, value)
extern "c" fn sfetch_request_t_set_path(
  object_ : Request,
  value : Bytes,
) -> Unit = "mb_fetch_sfetch_request_t_set_path"

///|
#borrow(object_)
extern "c" fn sfetch_request_t_get_callback(
  object_ : Request,
) -> @native.Handle = "mb_fetch_sfetch_request_t_get_callback"

///|
#borrow(object_)
extern "c" fn sfetch_request_t_set_callback(
  object_ : Request,
  value : @native.Handle,
) -> Unit = "mb_fetch_sfetch_request_t_set_callback"

///|
#borrow(object_)
extern "c" fn sfetch_request_t_get_chunk_size(object_ : Request) -> UInt32 = "mb_fetch_sfetch_request_t_get_chunk_size"

///|
#borrow(object_)
extern "c" fn sfetch_request_t_set_chunk_size(
  object_ : Request,
  value : UInt32,
) -> Unit = "mb_fetch_sfetch_request_t_set_chunk_size"

///|
#borrow(object_)
extern "c" fn sfetch_request_t_get_buffer(object_ : Request) -> Range = "mb_fetch_sfetch_request_t_get_buffer"

///|
#borrow(object_, value)
extern "c" fn sfetch_request_t_set_buffer(
  object_ : Request,
  value : Range,
) -> Unit = "mb_fetch_sfetch_request_t_set_buffer"

///|
#borrow(object_)
extern "c" fn sfetch_request_t_get_user_data(object_ : Request) -> Range = "mb_fetch_sfetch_request_t_get_user_data"

///|
#borrow(object_, value)
extern "c" fn sfetch_request_t_set_user_data(
  object_ : Request,
  value : Range,
) -> Unit = "mb_fetch_sfetch_request_t_set_user_data"

///|
#borrow(desc)
extern "c" fn sfetch_setup(desc : Desc) -> Unit = "mb_fetch_sfetch_setup"

///|
extern "c" fn sfetch_valid() -> Bool = "mb_fetch_sfetch_valid"

///|
extern "c" fn sfetch_desc() -> Desc = "mb_fetch_sfetch_desc"

///|
extern "c" fn sfetch_max_userdata_bytes() -> Int32 = "sfetch_max_userdata_bytes"

///|
extern "c" fn sfetch_max_path() -> Int32 = "sfetch_max_path"

///|
extern "c" fn sfetch_handle_valid(h : UInt32) -> Bool = "mb_fetch_sfetch_handle_valid"

///|
extern "c" fn sfetch_cancel(h : UInt32) -> Unit = "mb_fetch_sfetch_cancel"

///|
extern "c" fn sfetch_pause(h : UInt32) -> Unit = "mb_fetch_sfetch_pause"

///|
extern "c" fn sfetch_continue(h : UInt32) -> Unit = "mb_fetch_sfetch_continue"

///|
extern "c" fn sfetch_logger_t_default() -> Logger = "mb_fetch_sfetch_logger_t_default"
