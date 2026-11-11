///|
#derive(Debug, Eq)
pub(all) enum LogItem {
  Ok = 0
  MallocFailed = 1
  AlsaSndPcmOpenFailed = 2
  AlsaFloatSamplesNotSupported = 3
  AlsaRequestedBufferSizeNotSupported = 4
  AlsaRequestedChannelCountNotSupported = 5
  AlsaSndPcmHwParamsSetRateNearFailed = 6
  AlsaSndPcmHwParamsFailed = 7
  AlsaPthreadCreateFailed = 8
  PulseaudioInvalidSampleSpec = 9
  PulseaudioSimpleNewFailed = 10
  PulseaudioSimpleWriteFailed = 11
  PulseaudioPthreadCreateFailed = 12
  WasapiCreateEventFailed = 13
  WasapiCreateDeviceEnumeratorFailed = 14
  WasapiGetDefaultAudioEndpointFailed = 15
  WasapiDeviceActivateFailed = 16
  WasapiAudioClientInitializeFailed = 17
  WasapiAudioClientGetBufferSizeFailed = 18
  WasapiAudioClientGetServiceFailed = 19
  WasapiAudioClientSetEventHandleFailed = 20
  WasapiCreateThreadFailed = 21
  AaudioStreambuilderOpenStreamFailed = 22
  AaudioPthreadCreateFailed = 23
  AaudioRestartingStreamAfterError = 24
  UsingAaudioBackend = 25
  AaudioCreateStreambuilderFailed = 26
  CoreaudioNewOutputFailed = 27
  CoreaudioAllocateBufferFailed = 28
  CoreaudioStartFailed = 29
  BackendBufferSizeIsntMultipleOfPacketSize = 30
  VitaSceaudioOpenFailed = 31
  VitaPthreadCreateFailed = 32
  N3dsNdspOpenFailed = 33
}

///|
pub extend LogItem with Eq::{equal, not_equal}

///|
pub extend LogItem with @debug.Debug::{to_repr}

///|
extern "c" fn saudio_log_item_int(value : LogItem) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn LogItem::to_int(self : LogItem) -> Int32 {
  saudio_log_item_int(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Logger

///|
extern "c" fn saudio_logger_new() -> Logger = "mb_audio_saudio_logger_new"

///|
pub fn Logger::new() -> Logger {
  saudio_logger_new()
}

///|
#borrow(object_)
extern "c" fn saudio_logger_copy(object_ : Logger) -> Logger = "mb_audio_saudio_logger_copy"

///|
pub fn Logger::copy(self : Logger) -> Logger {
  saudio_logger_copy(self)
}

///|
#borrow(object_)
extern "c" fn saudio_logger_native(object_ : Logger) -> @native.Handle = "mb_audio_saudio_logger_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Logger::unsafe_native_handle(self : Logger) -> @native.Handle {
  saudio_logger_native(self)
}

///|
extern "c" fn saudio_logger_from_native(ptr : @native.Handle) -> Logger = "mb_audio_saudio_logger_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Logger::unsafe_from_native(ptr : @native.Handle) -> Logger {
  saudio_logger_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn saudio_logger_get_func(object_ : Logger) -> @native.Handle = "mb_audio_saudio_logger_get_func"

///|
pub fn Logger::func(self : Logger) -> @native.Handle {
  saudio_logger_get_func(self)
}

///|
#borrow(object_)
extern "c" fn saudio_logger_set_func(
  object_ : Logger,
  replacement : @native.Handle,
) -> Unit = "mb_audio_saudio_logger_set_func"

///|
pub fn Logger::set_func(self : Logger, value : @native.Handle) -> Logger {
  saudio_logger_set_func(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn saudio_logger_get_user_data(object_ : Logger) -> @native.Handle = "mb_audio_saudio_logger_get_user_data"

///|
pub fn Logger::user_data(self : Logger) -> @native.Handle {
  saudio_logger_get_user_data(self)
}

///|
#borrow(object_)
extern "c" fn saudio_logger_set_user_data(
  object_ : Logger,
  replacement : @native.Handle,
) -> Unit = "mb_audio_saudio_logger_set_user_data"

///|
pub fn Logger::set_user_data(self : Logger, value : @native.Handle) -> Logger {
  saudio_logger_set_user_data(self, value)
  self
}

///|
extern "c" fn saudio_logger_default() -> Logger = "mb_audio_saudio_logger_default"

///|
pub fn Logger::default() -> Logger {
  saudio_logger_default()
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Allocator

///|
extern "c" fn saudio_allocator_new() -> Allocator = "mb_audio_saudio_allocator_new"

///|
pub fn Allocator::new() -> Allocator {
  saudio_allocator_new()
}

///|
#borrow(object_)
extern "c" fn saudio_allocator_copy(object_ : Allocator) -> Allocator = "mb_audio_saudio_allocator_copy"

///|
pub fn Allocator::copy(self : Allocator) -> Allocator {
  saudio_allocator_copy(self)
}

///|
#borrow(object_)
extern "c" fn saudio_allocator_native(object_ : Allocator) -> @native.Handle = "mb_audio_saudio_allocator_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Allocator::unsafe_native_handle(self : Allocator) -> @native.Handle {
  saudio_allocator_native(self)
}

///|
extern "c" fn saudio_allocator_from_native(ptr : @native.Handle) -> Allocator = "mb_audio_saudio_allocator_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Allocator::unsafe_from_native(ptr : @native.Handle) -> Allocator {
  saudio_allocator_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn saudio_allocator_get_alloc_fn(
  object_ : Allocator,
) -> @native.Handle = "mb_audio_saudio_allocator_get_alloc_fn"

///|
pub fn Allocator::alloc_fn(self : Allocator) -> @native.Handle {
  saudio_allocator_get_alloc_fn(self)
}

///|
#borrow(object_)
extern "c" fn saudio_allocator_set_alloc_fn(
  object_ : Allocator,
  replacement : @native.Handle,
) -> Unit = "mb_audio_saudio_allocator_set_alloc_fn"

///|
pub fn Allocator::set_alloc_fn(
  self : Allocator,
  value : @native.Handle,
) -> Allocator {
  saudio_allocator_set_alloc_fn(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn saudio_allocator_get_free_fn(
  object_ : Allocator,
) -> @native.Handle = "mb_audio_saudio_allocator_get_free_fn"

///|
pub fn Allocator::free_fn(self : Allocator) -> @native.Handle {
  saudio_allocator_get_free_fn(self)
}

///|
#borrow(object_)
extern "c" fn saudio_allocator_set_free_fn(
  object_ : Allocator,
  replacement : @native.Handle,
) -> Unit = "mb_audio_saudio_allocator_set_free_fn"

///|
pub fn Allocator::set_free_fn(
  self : Allocator,
  value : @native.Handle,
) -> Allocator {
  saudio_allocator_set_free_fn(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn saudio_allocator_get_user_data(
  object_ : Allocator,
) -> @native.Handle = "mb_audio_saudio_allocator_get_user_data"

///|
pub fn Allocator::user_data(self : Allocator) -> @native.Handle {
  saudio_allocator_get_user_data(self)
}

///|
#borrow(object_)
extern "c" fn saudio_allocator_set_user_data(
  object_ : Allocator,
  replacement : @native.Handle,
) -> Unit = "mb_audio_saudio_allocator_set_user_data"

///|
pub fn Allocator::set_user_data(
  self : Allocator,
  value : @native.Handle,
) -> Allocator {
  saudio_allocator_set_user_data(self, value)
  self
}

///|
#derive(Debug, Eq)
pub(all) enum N3dsNdspinterptype {
  Polyphase = 0
  Linear = 1
  None = 2
}

///|
pub extend N3dsNdspinterptype with Eq::{equal, not_equal}

///|
pub extend N3dsNdspinterptype with @debug.Debug::{to_repr}

///|
extern "c" fn saudio_n3ds_ndspinterptype_int(
  value : N3dsNdspinterptype,
) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn N3dsNdspinterptype::to_int(self : N3dsNdspinterptype) -> Int32 {
  saudio_n3ds_ndspinterptype_int(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type N3dsDesc

///|
extern "c" fn saudio_n3ds_desc_new() -> N3dsDesc = "mb_audio_saudio_n3ds_desc_new"

///|
pub fn N3dsDesc::new() -> N3dsDesc {
  saudio_n3ds_desc_new()
}

///|
#borrow(object_)
extern "c" fn saudio_n3ds_desc_copy(object_ : N3dsDesc) -> N3dsDesc = "mb_audio_saudio_n3ds_desc_copy"

///|
pub fn N3dsDesc::copy(self : N3dsDesc) -> N3dsDesc {
  saudio_n3ds_desc_copy(self)
}

///|
#borrow(object_)
extern "c" fn saudio_n3ds_desc_native(object_ : N3dsDesc) -> @native.Handle = "mb_audio_saudio_n3ds_desc_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn N3dsDesc::unsafe_native_handle(self : N3dsDesc) -> @native.Handle {
  saudio_n3ds_desc_native(self)
}

///|
extern "c" fn saudio_n3ds_desc_from_native(ptr : @native.Handle) -> N3dsDesc = "mb_audio_saudio_n3ds_desc_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn N3dsDesc::unsafe_from_native(ptr : @native.Handle) -> N3dsDesc {
  saudio_n3ds_desc_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn saudio_n3ds_desc_get_queue_count(object_ : N3dsDesc) -> Int32 = "mb_audio_saudio_n3ds_desc_get_queue_count"

///|
pub fn N3dsDesc::queue_count(self : N3dsDesc) -> Int32 {
  saudio_n3ds_desc_get_queue_count(self)
}

///|
#borrow(object_)
extern "c" fn saudio_n3ds_desc_set_queue_count(
  object_ : N3dsDesc,
  replacement : Int32,
) -> Unit = "mb_audio_saudio_n3ds_desc_set_queue_count"

///|
pub fn N3dsDesc::set_queue_count(self : N3dsDesc, value : Int32) -> N3dsDesc {
  saudio_n3ds_desc_set_queue_count(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn saudio_n3ds_desc_get_interpolation_type(
  object_ : N3dsDesc,
) -> N3dsNdspinterptype = "mb_audio_saudio_n3ds_desc_get_interpolation_type"

///|
pub fn N3dsDesc::interpolation_type(self : N3dsDesc) -> N3dsNdspinterptype {
  saudio_n3ds_desc_get_interpolation_type(self)
}

///|
#borrow(object_)
extern "c" fn saudio_n3ds_desc_set_interpolation_type(
  object_ : N3dsDesc,
  replacement : N3dsNdspinterptype,
) -> Unit = "mb_audio_saudio_n3ds_desc_set_interpolation_type"

///|
pub fn N3dsDesc::set_interpolation_type(
  self : N3dsDesc,
  value : N3dsNdspinterptype,
) -> N3dsDesc {
  saudio_n3ds_desc_set_interpolation_type(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn saudio_n3ds_desc_get_channel_id(object_ : N3dsDesc) -> Int32 = "mb_audio_saudio_n3ds_desc_get_channel_id"

///|
pub fn N3dsDesc::channel_id(self : N3dsDesc) -> Int32 {
  saudio_n3ds_desc_get_channel_id(self)
}

///|
#borrow(object_)
extern "c" fn saudio_n3ds_desc_set_channel_id(
  object_ : N3dsDesc,
  replacement : Int32,
) -> Unit = "mb_audio_saudio_n3ds_desc_set_channel_id"

///|
pub fn N3dsDesc::set_channel_id(self : N3dsDesc, value : Int32) -> N3dsDesc {
  saudio_n3ds_desc_set_channel_id(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Win32Desc

///|
extern "c" fn saudio_win32_desc_new() -> Win32Desc = "mb_audio_saudio_win32_desc_new"

///|
pub fn Win32Desc::new() -> Win32Desc {
  saudio_win32_desc_new()
}

///|
#borrow(object_)
extern "c" fn saudio_win32_desc_copy(object_ : Win32Desc) -> Win32Desc = "mb_audio_saudio_win32_desc_copy"

///|
pub fn Win32Desc::copy(self : Win32Desc) -> Win32Desc {
  saudio_win32_desc_copy(self)
}

///|
#borrow(object_)
extern "c" fn saudio_win32_desc_native(object_ : Win32Desc) -> @native.Handle = "mb_audio_saudio_win32_desc_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Win32Desc::unsafe_native_handle(self : Win32Desc) -> @native.Handle {
  saudio_win32_desc_native(self)
}

///|
extern "c" fn saudio_win32_desc_from_native(ptr : @native.Handle) -> Win32Desc = "mb_audio_saudio_win32_desc_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Win32Desc::unsafe_from_native(ptr : @native.Handle) -> Win32Desc {
  saudio_win32_desc_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn saudio_win32_desc_get_skip_coinitialize(
  object_ : Win32Desc,
) -> Bool = "mb_audio_saudio_win32_desc_get_skip_coinitialize"

///|
pub fn Win32Desc::skip_coinitialize(self : Win32Desc) -> Bool {
  saudio_win32_desc_get_skip_coinitialize(self)
}

///|
#borrow(object_)
extern "c" fn saudio_win32_desc_set_skip_coinitialize(
  object_ : Win32Desc,
  replacement : Bool,
) -> Unit = "mb_audio_saudio_win32_desc_set_skip_coinitialize"

///|
pub fn Win32Desc::set_skip_coinitialize(
  self : Win32Desc,
  value : Bool,
) -> Win32Desc {
  saudio_win32_desc_set_skip_coinitialize(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Desc

///|
extern "c" fn saudio_desc_new() -> Desc = "mb_audio_saudio_desc_new"

///|
pub fn Desc::new() -> Desc {
  saudio_desc_new()
}

///|
#borrow(object_)
extern "c" fn saudio_desc_copy(object_ : Desc) -> Desc = "mb_audio_saudio_desc_copy"

///|
pub fn Desc::copy(self : Desc) -> Desc {
  saudio_desc_copy(self)
}

///|
#borrow(object_)
extern "c" fn saudio_desc_native(object_ : Desc) -> @native.Handle = "mb_audio_saudio_desc_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Desc::unsafe_native_handle(self : Desc) -> @native.Handle {
  saudio_desc_native(self)
}

///|
extern "c" fn saudio_desc_from_native(ptr : @native.Handle) -> Desc = "mb_audio_saudio_desc_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Desc::unsafe_from_native(ptr : @native.Handle) -> Desc {
  saudio_desc_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn saudio_desc_get_sample_rate(object_ : Desc) -> Int32 = "mb_audio_saudio_desc_get_sample_rate"

///|
pub fn Desc::sample_rate(self : Desc) -> Int32 {
  saudio_desc_get_sample_rate(self)
}

///|
#borrow(object_)
extern "c" fn saudio_desc_set_sample_rate(
  object_ : Desc,
  replacement : Int32,
) -> Unit = "mb_audio_saudio_desc_set_sample_rate"

///|
pub fn Desc::set_sample_rate(self : Desc, value : Int32) -> Desc {
  saudio_desc_set_sample_rate(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn saudio_desc_get_num_channels(object_ : Desc) -> Int32 = "mb_audio_saudio_desc_get_num_channels"

///|
pub fn Desc::num_channels(self : Desc) -> Int32 {
  saudio_desc_get_num_channels(self)
}

///|
#borrow(object_)
extern "c" fn saudio_desc_set_num_channels(
  object_ : Desc,
  replacement : Int32,
) -> Unit = "mb_audio_saudio_desc_set_num_channels"

///|
pub fn Desc::set_num_channels(self : Desc, value : Int32) -> Desc {
  saudio_desc_set_num_channels(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn saudio_desc_get_buffer_frames(object_ : Desc) -> Int32 = "mb_audio_saudio_desc_get_buffer_frames"

///|
pub fn Desc::buffer_frames(self : Desc) -> Int32 {
  saudio_desc_get_buffer_frames(self)
}

///|
#borrow(object_)
extern "c" fn saudio_desc_set_buffer_frames(
  object_ : Desc,
  replacement : Int32,
) -> Unit = "mb_audio_saudio_desc_set_buffer_frames"

///|
pub fn Desc::set_buffer_frames(self : Desc, value : Int32) -> Desc {
  saudio_desc_set_buffer_frames(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn saudio_desc_get_packet_frames(object_ : Desc) -> Int32 = "mb_audio_saudio_desc_get_packet_frames"

///|
pub fn Desc::packet_frames(self : Desc) -> Int32 {
  saudio_desc_get_packet_frames(self)
}

///|
#borrow(object_)
extern "c" fn saudio_desc_set_packet_frames(
  object_ : Desc,
  replacement : Int32,
) -> Unit = "mb_audio_saudio_desc_set_packet_frames"

///|
pub fn Desc::set_packet_frames(self : Desc, value : Int32) -> Desc {
  saudio_desc_set_packet_frames(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn saudio_desc_get_num_packets(object_ : Desc) -> Int32 = "mb_audio_saudio_desc_get_num_packets"

///|
pub fn Desc::num_packets(self : Desc) -> Int32 {
  saudio_desc_get_num_packets(self)
}

///|
#borrow(object_)
extern "c" fn saudio_desc_set_num_packets(
  object_ : Desc,
  replacement : Int32,
) -> Unit = "mb_audio_saudio_desc_set_num_packets"

///|
pub fn Desc::set_num_packets(self : Desc, value : Int32) -> Desc {
  saudio_desc_set_num_packets(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn saudio_desc_get_stream_cb(object_ : Desc) -> @native.Handle = "mb_audio_saudio_desc_get_stream_cb"

///|
pub fn Desc::stream_cb(self : Desc) -> @native.Handle {
  saudio_desc_get_stream_cb(self)
}

///|
#borrow(object_)
extern "c" fn saudio_desc_set_stream_cb(
  object_ : Desc,
  replacement : @native.Handle,
) -> Unit = "mb_audio_saudio_desc_set_stream_cb"

///|
pub fn Desc::set_stream_cb(self : Desc, value : @native.Handle) -> Desc {
  saudio_desc_set_stream_cb(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn saudio_desc_get_stream_userdata_cb(
  object_ : Desc,
) -> @native.Handle = "mb_audio_saudio_desc_get_stream_userdata_cb"

///|
pub fn Desc::stream_userdata_cb(self : Desc) -> @native.Handle {
  saudio_desc_get_stream_userdata_cb(self)
}

///|
#borrow(object_)
extern "c" fn saudio_desc_set_stream_userdata_cb(
  object_ : Desc,
  replacement : @native.Handle,
) -> Unit = "mb_audio_saudio_desc_set_stream_userdata_cb"

///|
pub fn Desc::set_stream_userdata_cb(
  self : Desc,
  value : @native.Handle,
) -> Desc {
  saudio_desc_set_stream_userdata_cb(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn saudio_desc_get_user_data(object_ : Desc) -> @native.Handle = "mb_audio_saudio_desc_get_user_data"

///|
pub fn Desc::user_data(self : Desc) -> @native.Handle {
  saudio_desc_get_user_data(self)
}

///|
#borrow(object_)
extern "c" fn saudio_desc_set_user_data(
  object_ : Desc,
  replacement : @native.Handle,
) -> Unit = "mb_audio_saudio_desc_set_user_data"

///|
pub fn Desc::set_user_data(self : Desc, value : @native.Handle) -> Desc {
  saudio_desc_set_user_data(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn saudio_desc_get_win32(object_ : Desc) -> Win32Desc = "mb_audio_saudio_desc_get_win32"

///|
pub fn Desc::win32(self : Desc) -> Win32Desc {
  saudio_desc_get_win32(self)
}

///|
#borrow(object_, replacement)
extern "c" fn saudio_desc_set_win32(
  object_ : Desc,
  replacement : Win32Desc,
) -> Unit = "mb_audio_saudio_desc_set_win32"

///|
pub fn Desc::set_win32(self : Desc, value : Win32Desc) -> Desc {
  saudio_desc_set_win32(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn saudio_desc_get_n3ds(object_ : Desc) -> N3dsDesc = "mb_audio_saudio_desc_get_n3ds"

///|
pub fn Desc::n3ds(self : Desc) -> N3dsDesc {
  saudio_desc_get_n3ds(self)
}

///|
#borrow(object_, replacement)
extern "c" fn saudio_desc_set_n3ds(
  object_ : Desc,
  replacement : N3dsDesc,
) -> Unit = "mb_audio_saudio_desc_set_n3ds"

///|
pub fn Desc::set_n3ds(self : Desc, value : N3dsDesc) -> Desc {
  saudio_desc_set_n3ds(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn saudio_desc_get_allocator(object_ : Desc) -> Allocator = "mb_audio_saudio_desc_get_allocator"

///|
pub fn Desc::allocator(self : Desc) -> Allocator {
  saudio_desc_get_allocator(self)
}

///|
#borrow(object_, replacement)
extern "c" fn saudio_desc_set_allocator(
  object_ : Desc,
  replacement : Allocator,
) -> Unit = "mb_audio_saudio_desc_set_allocator"

///|
pub fn Desc::set_allocator(self : Desc, value : Allocator) -> Desc {
  saudio_desc_set_allocator(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn saudio_desc_get_logger(object_ : Desc) -> Logger = "mb_audio_saudio_desc_get_logger"

///|
pub fn Desc::logger(self : Desc) -> Logger {
  saudio_desc_get_logger(self)
}

///|
#borrow(object_, replacement)
extern "c" fn saudio_desc_set_logger(
  object_ : Desc,
  replacement : Logger,
) -> Unit = "mb_audio_saudio_desc_set_logger"

///|
pub fn Desc::set_logger(self : Desc, value : Logger) -> Desc {
  saudio_desc_set_logger(self, value)
  self
}

///|
#borrow(desc)
extern "c" fn saudio_setup(desc : Desc) -> Unit = "mb_audio_saudio_setup"

///|
pub fn setup(desc : Desc) -> Unit {
  saudio_setup(desc)
}

///|
extern "c" fn saudio_shutdown() -> Unit = "saudio_shutdown"

///|
pub fn shutdown() -> Unit {
  saudio_shutdown()
}

///|
extern "c" fn saudio_isvalid() -> Bool = "mb_audio_saudio_isvalid"

///|
pub fn isvalid() -> Bool {
  saudio_isvalid()
}

///|
extern "c" fn saudio_userdata() -> @native.Handle = "saudio_userdata"

///|
pub fn userdata() -> @native.Handle {
  saudio_userdata()
}

///|
extern "c" fn saudio_query_desc() -> Desc = "mb_audio_saudio_query_desc"

///|
pub fn query_desc() -> Desc {
  saudio_query_desc()
}

///|
extern "c" fn saudio_sample_rate() -> Int32 = "saudio_sample_rate"

///|
pub fn sample_rate() -> Int32 {
  saudio_sample_rate()
}

///|
extern "c" fn saudio_buffer_frames() -> Int32 = "saudio_buffer_frames"

///|
pub fn buffer_frames() -> Int32 {
  saudio_buffer_frames()
}

///|
extern "c" fn saudio_channels() -> Int32 = "saudio_channels"

///|
pub fn channels() -> Int32 {
  saudio_channels()
}

///|
extern "c" fn saudio_suspended() -> Bool = "mb_audio_saudio_suspended"

///|
pub fn suspended() -> Bool {
  saudio_suspended()
}

///|
extern "c" fn saudio_expect() -> Int32 = "saudio_expect"

///|
pub fn expect() -> Int32 {
  saudio_expect()
}
