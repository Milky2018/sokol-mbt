///|
#derive(Debug, Eq)
pub(all) enum LogItem {
  Ok = 0
  MallocFailed = 1
  FilePathUtf8DecodingFailed = 2
  SendQueueFull = 3
  RequestChannelIndexTooBig = 4
  RequestPathIsNull = 5
  RequestPathTooLong = 6
  RequestCallbackMissing = 7
  RequestChunkSizeGreaterBufferSize = 8
  RequestUserdataPtrIsSetButUserdataSizeIsNull = 9
  RequestUserdataPtrIsNullButUserdataSizeIsNot = 10
  RequestUserdataSizeTooBig = 11
  ClampingNumChannelsToMaxChannels = 12
  RequestPoolExhausted = 13
}

///|
pub extend LogItem with Eq::{equal, not_equal}

///|
pub extend LogItem with @debug.Debug::{to_repr}

///|
extern "c" fn sfetch_log_item_t_int(value : LogItem) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn LogItem::to_int(self : LogItem) -> Int32 {
  sfetch_log_item_t_int(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Logger

///|
extern "c" fn sfetch_logger_t_new() -> Logger = "mb_fetch_sfetch_logger_t_new"

///|
pub fn Logger::new() -> Logger {
  sfetch_logger_t_new()
}

///|
#borrow(object_)
extern "c" fn sfetch_logger_t_copy(object_ : Logger) -> Logger = "mb_fetch_sfetch_logger_t_copy"

///|
pub fn Logger::copy(self : Logger) -> Logger {
  sfetch_logger_t_copy(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_logger_t_native(object_ : Logger) -> @native.Handle = "mb_fetch_sfetch_logger_t_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Logger::unsafe_native_handle(self : Logger) -> @native.Handle {
  sfetch_logger_t_native(self)
}

///|
extern "c" fn sfetch_logger_t_from_native(ptr : @native.Handle) -> Logger = "mb_fetch_sfetch_logger_t_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Logger::unsafe_from_native(ptr : @native.Handle) -> Logger {
  sfetch_logger_t_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sfetch_logger_t_get_func(object_ : Logger) -> @native.Handle = "mb_fetch_sfetch_logger_t_get_func"

///|
pub fn Logger::func(self : Logger) -> @native.Handle {
  sfetch_logger_t_get_func(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_logger_t_set_func(
  object_ : Logger,
  replacement : @native.Handle,
) -> Unit = "mb_fetch_sfetch_logger_t_set_func"

///|
pub fn Logger::set_func(self : Logger, value : @native.Handle) -> Logger {
  sfetch_logger_t_set_func(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sfetch_logger_t_get_user_data(object_ : Logger) -> @native.Handle = "mb_fetch_sfetch_logger_t_get_user_data"

///|
pub fn Logger::user_data(self : Logger) -> @native.Handle {
  sfetch_logger_t_get_user_data(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_logger_t_set_user_data(
  object_ : Logger,
  replacement : @native.Handle,
) -> Unit = "mb_fetch_sfetch_logger_t_set_user_data"

///|
pub fn Logger::set_user_data(self : Logger, value : @native.Handle) -> Logger {
  sfetch_logger_t_set_user_data(self, value)
  self
}

///|
extern "c" fn sfetch_logger_t_default() -> Logger = "mb_fetch_sfetch_logger_t_default"

///|
pub fn Logger::default() -> Logger {
  sfetch_logger_t_default()
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Range

///|
extern "c" fn sfetch_range_t_new() -> Range = "mb_fetch_sfetch_range_t_new"

///|
pub fn Range::new() -> Range {
  sfetch_range_t_new()
}

///|
#borrow(object_)
extern "c" fn sfetch_range_t_copy(object_ : Range) -> Range = "mb_fetch_sfetch_range_t_copy"

///|
pub fn Range::copy(self : Range) -> Range {
  sfetch_range_t_copy(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_range_t_native(object_ : Range) -> @native.Handle = "mb_fetch_sfetch_range_t_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Range::unsafe_native_handle(self : Range) -> @native.Handle {
  sfetch_range_t_native(self)
}

///|
extern "c" fn sfetch_range_t_from_native(ptr : @native.Handle) -> Range = "mb_fetch_sfetch_range_t_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Range::unsafe_from_native(ptr : @native.Handle) -> Range {
  sfetch_range_t_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sfetch_range_t_bytes(object_ : Range) -> Bytes = "mb_fetch_sfetch_range_t_bytes"

///|
pub fn Range::bytes(self : Range) -> Bytes {
  sfetch_range_t_bytes(self)
}

///|
#borrow(data)
extern "c" fn sfetch_range_t_data(data : Bytes) -> Range = "mb_fetch_sfetch_range_t_data"

///|
pub fn Range::from_bytes(data : Bytes) -> Range {
  sfetch_range_t_data(data)
}

///|
#borrow(object_)
extern "c" fn sfetch_range_t_get_size(object_ : Range) -> UInt64 = "mb_fetch_sfetch_range_t_get_size"

///|
pub fn Range::size(self : Range) -> UInt64 {
  sfetch_range_t_get_size(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Allocator

///|
extern "c" fn sfetch_allocator_t_new() -> Allocator = "mb_fetch_sfetch_allocator_t_new"

///|
pub fn Allocator::new() -> Allocator {
  sfetch_allocator_t_new()
}

///|
#borrow(object_)
extern "c" fn sfetch_allocator_t_copy(object_ : Allocator) -> Allocator = "mb_fetch_sfetch_allocator_t_copy"

///|
pub fn Allocator::copy(self : Allocator) -> Allocator {
  sfetch_allocator_t_copy(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_allocator_t_native(object_ : Allocator) -> @native.Handle = "mb_fetch_sfetch_allocator_t_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Allocator::unsafe_native_handle(self : Allocator) -> @native.Handle {
  sfetch_allocator_t_native(self)
}

///|
extern "c" fn sfetch_allocator_t_from_native(ptr : @native.Handle) -> Allocator = "mb_fetch_sfetch_allocator_t_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Allocator::unsafe_from_native(ptr : @native.Handle) -> Allocator {
  sfetch_allocator_t_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sfetch_allocator_t_get_alloc_fn(
  object_ : Allocator,
) -> @native.Handle = "mb_fetch_sfetch_allocator_t_get_alloc_fn"

///|
pub fn Allocator::alloc_fn(self : Allocator) -> @native.Handle {
  sfetch_allocator_t_get_alloc_fn(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_allocator_t_set_alloc_fn(
  object_ : Allocator,
  replacement : @native.Handle,
) -> Unit = "mb_fetch_sfetch_allocator_t_set_alloc_fn"

///|
pub fn Allocator::set_alloc_fn(
  self : Allocator,
  value : @native.Handle,
) -> Allocator {
  sfetch_allocator_t_set_alloc_fn(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sfetch_allocator_t_get_free_fn(
  object_ : Allocator,
) -> @native.Handle = "mb_fetch_sfetch_allocator_t_get_free_fn"

///|
pub fn Allocator::free_fn(self : Allocator) -> @native.Handle {
  sfetch_allocator_t_get_free_fn(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_allocator_t_set_free_fn(
  object_ : Allocator,
  replacement : @native.Handle,
) -> Unit = "mb_fetch_sfetch_allocator_t_set_free_fn"

///|
pub fn Allocator::set_free_fn(
  self : Allocator,
  value : @native.Handle,
) -> Allocator {
  sfetch_allocator_t_set_free_fn(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sfetch_allocator_t_get_user_data(
  object_ : Allocator,
) -> @native.Handle = "mb_fetch_sfetch_allocator_t_get_user_data"

///|
pub fn Allocator::user_data(self : Allocator) -> @native.Handle {
  sfetch_allocator_t_get_user_data(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_allocator_t_set_user_data(
  object_ : Allocator,
  replacement : @native.Handle,
) -> Unit = "mb_fetch_sfetch_allocator_t_set_user_data"

///|
pub fn Allocator::set_user_data(
  self : Allocator,
  value : @native.Handle,
) -> Allocator {
  sfetch_allocator_t_set_user_data(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Desc

///|
extern "c" fn sfetch_desc_t_new() -> Desc = "mb_fetch_sfetch_desc_t_new"

///|
pub fn Desc::new() -> Desc {
  sfetch_desc_t_new()
}

///|
#borrow(object_)
extern "c" fn sfetch_desc_t_copy(object_ : Desc) -> Desc = "mb_fetch_sfetch_desc_t_copy"

///|
pub fn Desc::copy(self : Desc) -> Desc {
  sfetch_desc_t_copy(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_desc_t_native(object_ : Desc) -> @native.Handle = "mb_fetch_sfetch_desc_t_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Desc::unsafe_native_handle(self : Desc) -> @native.Handle {
  sfetch_desc_t_native(self)
}

///|
extern "c" fn sfetch_desc_t_from_native(ptr : @native.Handle) -> Desc = "mb_fetch_sfetch_desc_t_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Desc::unsafe_from_native(ptr : @native.Handle) -> Desc {
  sfetch_desc_t_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sfetch_desc_t_get_max_requests(object_ : Desc) -> UInt32 = "mb_fetch_sfetch_desc_t_get_max_requests"

///|
pub fn Desc::max_requests(self : Desc) -> UInt32 {
  sfetch_desc_t_get_max_requests(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_desc_t_set_max_requests(
  object_ : Desc,
  replacement : UInt32,
) -> Unit = "mb_fetch_sfetch_desc_t_set_max_requests"

///|
pub fn Desc::set_max_requests(self : Desc, value : UInt32) -> Desc {
  sfetch_desc_t_set_max_requests(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sfetch_desc_t_get_num_channels(object_ : Desc) -> UInt32 = "mb_fetch_sfetch_desc_t_get_num_channels"

///|
pub fn Desc::num_channels(self : Desc) -> UInt32 {
  sfetch_desc_t_get_num_channels(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_desc_t_set_num_channels(
  object_ : Desc,
  replacement : UInt32,
) -> Unit = "mb_fetch_sfetch_desc_t_set_num_channels"

///|
pub fn Desc::set_num_channels(self : Desc, value : UInt32) -> Desc {
  sfetch_desc_t_set_num_channels(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sfetch_desc_t_get_num_lanes(object_ : Desc) -> UInt32 = "mb_fetch_sfetch_desc_t_get_num_lanes"

///|
pub fn Desc::num_lanes(self : Desc) -> UInt32 {
  sfetch_desc_t_get_num_lanes(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_desc_t_set_num_lanes(
  object_ : Desc,
  replacement : UInt32,
) -> Unit = "mb_fetch_sfetch_desc_t_set_num_lanes"

///|
pub fn Desc::set_num_lanes(self : Desc, value : UInt32) -> Desc {
  sfetch_desc_t_set_num_lanes(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sfetch_desc_t_get_allocator(object_ : Desc) -> Allocator = "mb_fetch_sfetch_desc_t_get_allocator"

///|
pub fn Desc::allocator(self : Desc) -> Allocator {
  sfetch_desc_t_get_allocator(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sfetch_desc_t_set_allocator(
  object_ : Desc,
  replacement : Allocator,
) -> Unit = "mb_fetch_sfetch_desc_t_set_allocator"

///|
pub fn Desc::set_allocator(self : Desc, value : Allocator) -> Desc {
  sfetch_desc_t_set_allocator(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sfetch_desc_t_get_logger(object_ : Desc) -> Logger = "mb_fetch_sfetch_desc_t_get_logger"

///|
pub fn Desc::logger(self : Desc) -> Logger {
  sfetch_desc_t_get_logger(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sfetch_desc_t_set_logger(
  object_ : Desc,
  replacement : Logger,
) -> Unit = "mb_fetch_sfetch_desc_t_set_logger"

///|
pub fn Desc::set_logger(self : Desc, value : Logger) -> Desc {
  sfetch_desc_t_set_logger(self, value)
  self
}

///|
/// Non-owning Sokol ID; copying this value does not allocate a C object.
#derive(Debug, Eq)
pub struct Handle(UInt32)

///|
pub extend Handle with Eq::{equal, not_equal}

///|
pub extend Handle with @debug.Debug::{to_repr}

///|
pub fn Handle::new() -> Handle {
  Handle(0U)
}

///|
pub fn Handle::id(self : Handle) -> UInt32 {
  self.0
}

///|
pub fn Handle::from_id(id : UInt32) -> Handle {
  Handle(id)
}

///|
extern "c" fn sfetch_handle_t_read_id(ptr : @native.Handle) -> UInt32 = "mb_fetch_sfetch_handle_t_read_id"

///|
/// The pointer must identify a live `sfetch_handle_t`.
pub fn Handle::unsafe_from_native(ptr : @native.Handle) -> Handle {
  Handle(sfetch_handle_t_read_id(ptr))
}

///|
#derive(Debug, Eq)
pub(all) enum FetchError {
  NoError = 0
  FileNotFound = 1
  NoBuffer = 2
  BufferTooSmall = 3
  UnexpectedEof = 4
  InvalidHttpStatus = 5
  Cancelled = 6
  JsOther = 7
}

///|
pub extend FetchError with Eq::{equal, not_equal}

///|
pub extend FetchError with @debug.Debug::{to_repr}

///|
extern "c" fn sfetch_error_t_int(value : FetchError) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn FetchError::to_int(self : FetchError) -> Int32 {
  sfetch_error_t_int(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Response

///|
extern "c" fn sfetch_response_t_new() -> Response = "mb_fetch_sfetch_response_t_new"

///|
pub fn Response::new() -> Response {
  sfetch_response_t_new()
}

///|
#borrow(object_)
extern "c" fn sfetch_response_t_copy(object_ : Response) -> Response = "mb_fetch_sfetch_response_t_copy"

///|
pub fn Response::copy(self : Response) -> Response {
  sfetch_response_t_copy(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_response_t_native(object_ : Response) -> @native.Handle = "mb_fetch_sfetch_response_t_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Response::unsafe_native_handle(self : Response) -> @native.Handle {
  sfetch_response_t_native(self)
}

///|
extern "c" fn sfetch_response_t_from_native(ptr : @native.Handle) -> Response = "mb_fetch_sfetch_response_t_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Response::unsafe_from_native(ptr : @native.Handle) -> Response {
  sfetch_response_t_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_handle(object_ : Response) -> UInt32 = "mb_fetch_sfetch_response_t_get_handle"

///|
pub fn Response::handle(self : Response) -> Handle {
  Handle(sfetch_response_t_get_handle(self))
}

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_dispatched(object_ : Response) -> Bool = "mb_fetch_sfetch_response_t_get_dispatched"

///|
pub fn Response::dispatched(self : Response) -> Bool {
  sfetch_response_t_get_dispatched(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_fetched(object_ : Response) -> Bool = "mb_fetch_sfetch_response_t_get_fetched"

///|
pub fn Response::fetched(self : Response) -> Bool {
  sfetch_response_t_get_fetched(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_paused(object_ : Response) -> Bool = "mb_fetch_sfetch_response_t_get_paused"

///|
pub fn Response::paused(self : Response) -> Bool {
  sfetch_response_t_get_paused(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_finished(object_ : Response) -> Bool = "mb_fetch_sfetch_response_t_get_finished"

///|
pub fn Response::finished(self : Response) -> Bool {
  sfetch_response_t_get_finished(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_failed(object_ : Response) -> Bool = "mb_fetch_sfetch_response_t_get_failed"

///|
pub fn Response::failed(self : Response) -> Bool {
  sfetch_response_t_get_failed(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_cancelled(object_ : Response) -> Bool = "mb_fetch_sfetch_response_t_get_cancelled"

///|
pub fn Response::cancelled(self : Response) -> Bool {
  sfetch_response_t_get_cancelled(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_error_code(
  object_ : Response,
) -> FetchError = "mb_fetch_sfetch_response_t_get_error_code"

///|
pub fn Response::error_code(self : Response) -> FetchError {
  sfetch_response_t_get_error_code(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_channel(object_ : Response) -> UInt32 = "mb_fetch_sfetch_response_t_get_channel"

///|
pub fn Response::channel(self : Response) -> UInt32 {
  sfetch_response_t_get_channel(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_lane(object_ : Response) -> UInt32 = "mb_fetch_sfetch_response_t_get_lane"

///|
pub fn Response::lane(self : Response) -> UInt32 {
  sfetch_response_t_get_lane(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_path(object_ : Response) -> Bytes = "mb_fetch_sfetch_response_t_get_path"

///|
pub fn Response::path(self : Response) -> String {
  @utf8.decode_lossy(sfetch_response_t_get_path(self))
}

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_user_data(
  object_ : Response,
) -> @native.Handle = "mb_fetch_sfetch_response_t_get_user_data"

///|
pub fn Response::user_data(self : Response) -> @native.Handle {
  sfetch_response_t_get_user_data(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_data_offset(object_ : Response) -> UInt32 = "mb_fetch_sfetch_response_t_get_data_offset"

///|
pub fn Response::data_offset(self : Response) -> UInt32 {
  sfetch_response_t_get_data_offset(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_data(object_ : Response) -> Range = "mb_fetch_sfetch_response_t_get_data"

///|
pub fn Response::data(self : Response) -> Range {
  sfetch_response_t_get_data(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_response_t_get_buffer(object_ : Response) -> Range = "mb_fetch_sfetch_response_t_get_buffer"

///|
pub fn Response::buffer(self : Response) -> Range {
  sfetch_response_t_get_buffer(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Request

///|
extern "c" fn sfetch_request_t_new() -> Request = "mb_fetch_sfetch_request_t_new"

///|
pub fn Request::new() -> Request {
  sfetch_request_t_new()
}

///|
#borrow(object_)
extern "c" fn sfetch_request_t_copy(object_ : Request) -> Request = "mb_fetch_sfetch_request_t_copy"

///|
pub fn Request::copy(self : Request) -> Request {
  sfetch_request_t_copy(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_request_t_native(object_ : Request) -> @native.Handle = "mb_fetch_sfetch_request_t_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Request::unsafe_native_handle(self : Request) -> @native.Handle {
  sfetch_request_t_native(self)
}

///|
extern "c" fn sfetch_request_t_from_native(ptr : @native.Handle) -> Request = "mb_fetch_sfetch_request_t_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Request::unsafe_from_native(ptr : @native.Handle) -> Request {
  sfetch_request_t_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sfetch_request_t_get_channel(object_ : Request) -> UInt32 = "mb_fetch_sfetch_request_t_get_channel"

///|
pub fn Request::channel(self : Request) -> UInt32 {
  sfetch_request_t_get_channel(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_request_t_set_channel(
  object_ : Request,
  replacement : UInt32,
) -> Unit = "mb_fetch_sfetch_request_t_set_channel"

///|
pub fn Request::set_channel(self : Request, value : UInt32) -> Request {
  sfetch_request_t_set_channel(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sfetch_request_t_get_path(object_ : Request) -> Bytes = "mb_fetch_sfetch_request_t_get_path"

///|
pub fn Request::path(self : Request) -> String {
  @utf8.decode_lossy(sfetch_request_t_get_path(self))
}

///|
#borrow(object_, replacement)
extern "c" fn sfetch_request_t_set_path(
  object_ : Request,
  replacement : Bytes,
) -> Unit = "mb_fetch_sfetch_request_t_set_path"

///|
pub fn Request::set_path(self : Request, value : String) -> Request {
  sfetch_request_t_set_path(self, @native.cstring(value))
  self
}

///|
#borrow(object_)
extern "c" fn sfetch_request_t_get_callback(
  object_ : Request,
) -> @native.Handle = "mb_fetch_sfetch_request_t_get_callback"

///|
pub fn Request::callback(self : Request) -> @native.Handle {
  sfetch_request_t_get_callback(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_request_t_set_callback(
  object_ : Request,
  replacement : @native.Handle,
) -> Unit = "mb_fetch_sfetch_request_t_set_callback"

///|
pub fn Request::set_callback(self : Request, value : @native.Handle) -> Request {
  sfetch_request_t_set_callback(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sfetch_request_t_get_chunk_size(object_ : Request) -> UInt32 = "mb_fetch_sfetch_request_t_get_chunk_size"

///|
pub fn Request::chunk_size(self : Request) -> UInt32 {
  sfetch_request_t_get_chunk_size(self)
}

///|
#borrow(object_)
extern "c" fn sfetch_request_t_set_chunk_size(
  object_ : Request,
  replacement : UInt32,
) -> Unit = "mb_fetch_sfetch_request_t_set_chunk_size"

///|
pub fn Request::set_chunk_size(self : Request, value : UInt32) -> Request {
  sfetch_request_t_set_chunk_size(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sfetch_request_t_get_buffer(object_ : Request) -> Range = "mb_fetch_sfetch_request_t_get_buffer"

///|
pub fn Request::buffer(self : Request) -> Range {
  sfetch_request_t_get_buffer(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sfetch_request_t_set_buffer(
  object_ : Request,
  replacement : Range,
) -> Unit = "mb_fetch_sfetch_request_t_set_buffer"

///|
pub fn Request::set_buffer(self : Request, value : Range) -> Request {
  sfetch_request_t_set_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sfetch_request_t_get_user_data(object_ : Request) -> Range = "mb_fetch_sfetch_request_t_get_user_data"

///|
pub fn Request::user_data(self : Request) -> Range {
  sfetch_request_t_get_user_data(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sfetch_request_t_set_user_data(
  object_ : Request,
  replacement : Range,
) -> Unit = "mb_fetch_sfetch_request_t_set_user_data"

///|
pub fn Request::set_user_data(self : Request, value : Range) -> Request {
  sfetch_request_t_set_user_data(self, value)
  self
}

///|
#borrow(desc)
extern "c" fn sfetch_setup(desc : Desc) -> Unit = "mb_fetch_sfetch_setup"

///|
pub fn setup(desc : Desc) -> Unit {
  sfetch_setup(desc)
}

///|
extern "c" fn sfetch_valid() -> Bool = "mb_fetch_sfetch_valid"

///|
pub fn valid() -> Bool {
  sfetch_valid()
}

///|
extern "c" fn sfetch_desc() -> Desc = "mb_fetch_sfetch_desc"

///|
pub fn desc() -> Desc {
  sfetch_desc()
}

///|
extern "c" fn sfetch_max_userdata_bytes() -> Int32 = "sfetch_max_userdata_bytes"

///|
pub fn max_userdata_bytes() -> Int32 {
  sfetch_max_userdata_bytes()
}

///|
extern "c" fn sfetch_max_path() -> Int32 = "sfetch_max_path"

///|
pub fn max_path() -> Int32 {
  sfetch_max_path()
}

///|
extern "c" fn sfetch_handle_valid(h : UInt32) -> Bool = "mb_fetch_sfetch_handle_valid"

///|
pub fn handle_valid(h : Handle) -> Bool {
  sfetch_handle_valid(h.0)
}

///|
extern "c" fn sfetch_cancel(h : UInt32) -> Unit = "mb_fetch_sfetch_cancel"

///|
pub fn cancel(h : Handle) -> Unit {
  sfetch_cancel(h.0)
}

///|
extern "c" fn sfetch_pause(h : UInt32) -> Unit = "mb_fetch_sfetch_pause"

///|
pub fn pause(h : Handle) -> Unit {
  sfetch_pause(h.0)
}

///|
extern "c" fn sfetch_continue(h : UInt32) -> Unit = "mb_fetch_sfetch_continue"

///|
pub fn continue_(h : Handle) -> Unit {
  sfetch_continue(h.0)
}
