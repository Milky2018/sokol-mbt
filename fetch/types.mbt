// C API declarations and field adapters maintained by scripts/generate.py.

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
pub fn LogItem::to_int(self : LogItem) -> Int32 {
  sfetch_log_item_t_int(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Logger

///|
pub fn Logger::new() -> Logger {
  sfetch_logger_t_new()
}

///|
pub fn Logger::copy(self : Logger) -> Logger {
  sfetch_logger_t_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Logger::unsafe_native_handle(self : Logger) -> @native.Handle {
  sfetch_logger_t_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Logger::unsafe_from_native(ptr : @native.Handle) -> Logger {
  sfetch_logger_t_from_native(ptr)
}

///|
pub fn Logger::func(self : Logger) -> @native.Handle {
  sfetch_logger_t_get_func(self)
}

///|
pub fn Logger::set_func(self : Logger, value : @native.Handle) -> Logger {
  sfetch_logger_t_set_func(self, value)
  self
}

///|
pub fn Logger::user_data(self : Logger) -> @native.Handle {
  sfetch_logger_t_get_user_data(self)
}

///|
pub fn Logger::set_user_data(self : Logger, value : @native.Handle) -> Logger {
  sfetch_logger_t_set_user_data(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Range

///|
pub fn Range::new() -> Range {
  sfetch_range_t_new()
}

///|
pub fn Range::copy(self : Range) -> Range {
  sfetch_range_t_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Range::unsafe_native_handle(self : Range) -> @native.Handle {
  sfetch_range_t_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Range::unsafe_from_native(ptr : @native.Handle) -> Range {
  sfetch_range_t_from_native(ptr)
}

///|
pub fn Range::bytes(self : Range) -> Bytes {
  sfetch_range_t_bytes(self)
}

///|
pub fn Range::from_bytes(data : Bytes) -> Range {
  sfetch_range_t_data(data)
}

///|
pub fn Range::size(self : Range) -> UInt64 {
  sfetch_range_t_get_size(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Allocator

///|
pub fn Allocator::new() -> Allocator {
  sfetch_allocator_t_new()
}

///|
pub fn Allocator::copy(self : Allocator) -> Allocator {
  sfetch_allocator_t_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Allocator::unsafe_native_handle(self : Allocator) -> @native.Handle {
  sfetch_allocator_t_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Allocator::unsafe_from_native(ptr : @native.Handle) -> Allocator {
  sfetch_allocator_t_from_native(ptr)
}

///|
pub fn Allocator::alloc_fn(self : Allocator) -> @native.Handle {
  sfetch_allocator_t_get_alloc_fn(self)
}

///|
pub fn Allocator::set_alloc_fn(
  self : Allocator,
  value : @native.Handle,
) -> Allocator {
  sfetch_allocator_t_set_alloc_fn(self, value)
  self
}

///|
pub fn Allocator::free_fn(self : Allocator) -> @native.Handle {
  sfetch_allocator_t_get_free_fn(self)
}

///|
pub fn Allocator::set_free_fn(
  self : Allocator,
  value : @native.Handle,
) -> Allocator {
  sfetch_allocator_t_set_free_fn(self, value)
  self
}

///|
pub fn Allocator::user_data(self : Allocator) -> @native.Handle {
  sfetch_allocator_t_get_user_data(self)
}

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
pub fn Desc::new() -> Desc {
  sfetch_desc_t_new()
}

///|
pub fn Desc::copy(self : Desc) -> Desc {
  sfetch_desc_t_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Desc::unsafe_native_handle(self : Desc) -> @native.Handle {
  sfetch_desc_t_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Desc::unsafe_from_native(ptr : @native.Handle) -> Desc {
  sfetch_desc_t_from_native(ptr)
}

///|
pub fn Desc::max_requests(self : Desc) -> UInt32 {
  sfetch_desc_t_get_max_requests(self)
}

///|
pub fn Desc::set_max_requests(self : Desc, value : UInt32) -> Desc {
  sfetch_desc_t_set_max_requests(self, value)
  self
}

///|
pub fn Desc::num_channels(self : Desc) -> UInt32 {
  sfetch_desc_t_get_num_channels(self)
}

///|
pub fn Desc::set_num_channels(self : Desc, value : UInt32) -> Desc {
  sfetch_desc_t_set_num_channels(self, value)
  self
}

///|
pub fn Desc::num_lanes(self : Desc) -> UInt32 {
  sfetch_desc_t_get_num_lanes(self)
}

///|
pub fn Desc::set_num_lanes(self : Desc, value : UInt32) -> Desc {
  sfetch_desc_t_set_num_lanes(self, value)
  self
}

///|
pub fn Desc::allocator(self : Desc) -> Allocator {
  sfetch_desc_t_get_allocator(self)
}

///|
pub fn Desc::set_allocator(self : Desc, value : Allocator) -> Desc {
  sfetch_desc_t_set_allocator(self, value)
  self
}

///|
pub fn Desc::logger(self : Desc) -> Logger {
  sfetch_desc_t_get_logger(self)
}

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
pub fn FetchError::to_int(self : FetchError) -> Int32 {
  sfetch_error_t_int(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Response

///|
pub fn Response::new() -> Response {
  sfetch_response_t_new()
}

///|
pub fn Response::copy(self : Response) -> Response {
  sfetch_response_t_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Response::unsafe_native_handle(self : Response) -> @native.Handle {
  sfetch_response_t_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Response::unsafe_from_native(ptr : @native.Handle) -> Response {
  sfetch_response_t_from_native(ptr)
}

///|
pub fn Response::handle(self : Response) -> Handle {
  Handle(sfetch_response_t_get_handle(self))
}

///|
pub fn Response::dispatched(self : Response) -> Bool {
  sfetch_response_t_get_dispatched(self)
}

///|
pub fn Response::fetched(self : Response) -> Bool {
  sfetch_response_t_get_fetched(self)
}

///|
pub fn Response::paused(self : Response) -> Bool {
  sfetch_response_t_get_paused(self)
}

///|
pub fn Response::finished(self : Response) -> Bool {
  sfetch_response_t_get_finished(self)
}

///|
pub fn Response::failed(self : Response) -> Bool {
  sfetch_response_t_get_failed(self)
}

///|
pub fn Response::cancelled(self : Response) -> Bool {
  sfetch_response_t_get_cancelled(self)
}

///|
pub fn Response::error_code(self : Response) -> FetchError {
  sfetch_response_t_get_error_code(self)
}

///|
pub fn Response::channel(self : Response) -> UInt32 {
  sfetch_response_t_get_channel(self)
}

///|
pub fn Response::lane(self : Response) -> UInt32 {
  sfetch_response_t_get_lane(self)
}

///|
pub fn Response::path(self : Response) -> String {
  @utf8.decode_lossy(sfetch_response_t_get_path(self))
}

///|
pub fn Response::user_data(self : Response) -> @native.Handle {
  sfetch_response_t_get_user_data(self)
}

///|
pub fn Response::data_offset(self : Response) -> UInt32 {
  sfetch_response_t_get_data_offset(self)
}

///|
pub fn Response::data(self : Response) -> Range {
  sfetch_response_t_get_data(self)
}

///|
pub fn Response::buffer(self : Response) -> Range {
  sfetch_response_t_get_buffer(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Request

///|
pub fn Request::new() -> Request {
  sfetch_request_t_new()
}

///|
pub fn Request::copy(self : Request) -> Request {
  sfetch_request_t_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Request::unsafe_native_handle(self : Request) -> @native.Handle {
  sfetch_request_t_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Request::unsafe_from_native(ptr : @native.Handle) -> Request {
  sfetch_request_t_from_native(ptr)
}

///|
pub fn Request::channel(self : Request) -> UInt32 {
  sfetch_request_t_get_channel(self)
}

///|
pub fn Request::set_channel(self : Request, value : UInt32) -> Request {
  sfetch_request_t_set_channel(self, value)
  self
}

///|
pub fn Request::path(self : Request) -> String {
  @utf8.decode_lossy(sfetch_request_t_get_path(self))
}

///|
pub fn Request::set_path(self : Request, value : String) -> Request {
  sfetch_request_t_set_path(self, @native.cstring(value))
  self
}

///|
pub fn Request::callback(self : Request) -> @native.Handle {
  sfetch_request_t_get_callback(self)
}

///|
pub fn Request::set_callback(self : Request, value : @native.Handle) -> Request {
  sfetch_request_t_set_callback(self, value)
  self
}

///|
pub fn Request::chunk_size(self : Request) -> UInt32 {
  sfetch_request_t_get_chunk_size(self)
}

///|
pub fn Request::set_chunk_size(self : Request, value : UInt32) -> Request {
  sfetch_request_t_set_chunk_size(self, value)
  self
}

///|
pub fn Request::buffer(self : Request) -> Range {
  sfetch_request_t_get_buffer(self)
}

///|
pub fn Request::set_buffer(self : Request, value : Range) -> Request {
  sfetch_request_t_set_buffer(self, value)
  self
}

///|
pub fn Request::user_data(self : Request) -> Range {
  sfetch_request_t_get_user_data(self)
}

///|
pub fn Request::set_user_data(self : Request, value : Range) -> Request {
  sfetch_request_t_set_user_data(self, value)
  self
}

///|
pub fn setup(desc : Desc) -> Unit {
  sfetch_setup(desc)
}

///|
pub fn valid() -> Bool {
  sfetch_valid()
}

///|
pub fn desc() -> Desc {
  sfetch_desc()
}

///|
pub fn max_userdata_bytes() -> Int32 {
  sfetch_max_userdata_bytes()
}

///|
pub fn max_path() -> Int32 {
  sfetch_max_path()
}

///|
pub fn handle_valid(h : Handle) -> Bool {
  sfetch_handle_valid(h.0)
}

///|
pub fn cancel(h : Handle) -> Unit {
  sfetch_cancel(h.0)
}

///|
pub fn pause(h : Handle) -> Unit {
  sfetch_pause(h.0)
}

///|
pub fn continue_(h : Handle) -> Unit {
  sfetch_continue(h.0)
}

///|
pub fn Logger::default() -> Logger {
  sfetch_logger_t_default()
}
