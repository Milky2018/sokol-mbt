///|
/// Owned C value. copy() creates an independent copy.
pub type Html5FetchResponse

///|
extern "c" fn sapp_html5_fetch_response_new() -> Html5FetchResponse = "mb_app_sapp_html5_fetch_response_new"

///|
pub fn Html5FetchResponse::new() -> Html5FetchResponse {
  sapp_html5_fetch_response_new()
}

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_copy(
  object_ : Html5FetchResponse,
) -> Html5FetchResponse = "mb_app_sapp_html5_fetch_response_copy"

///|
pub fn Html5FetchResponse::copy(
  self : Html5FetchResponse,
) -> Html5FetchResponse {
  sapp_html5_fetch_response_copy(self)
}

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_native(
  object_ : Html5FetchResponse,
) -> @native.Handle = "mb_app_sapp_html5_fetch_response_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Html5FetchResponse::unsafe_native_handle(
  self : Html5FetchResponse,
) -> @native.Handle {
  sapp_html5_fetch_response_native(self)
}

///|
extern "c" fn sapp_html5_fetch_response_from_native(
  ptr : @native.Handle,
) -> Html5FetchResponse = "mb_app_sapp_html5_fetch_response_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Html5FetchResponse::unsafe_from_native(
  ptr : @native.Handle,
) -> Html5FetchResponse {
  sapp_html5_fetch_response_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_get_succeeded(
  object_ : Html5FetchResponse,
) -> Bool = "mb_app_sapp_html5_fetch_response_get_succeeded"

///|
pub fn Html5FetchResponse::succeeded(self : Html5FetchResponse) -> Bool {
  sapp_html5_fetch_response_get_succeeded(self)
}

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_set_succeeded(
  object_ : Html5FetchResponse,
  replacement : Bool,
) -> Unit = "mb_app_sapp_html5_fetch_response_set_succeeded"

///|
pub fn Html5FetchResponse::set_succeeded(
  self : Html5FetchResponse,
  value : Bool,
) -> Html5FetchResponse {
  sapp_html5_fetch_response_set_succeeded(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_get_error_code(
  object_ : Html5FetchResponse,
) -> Html5FetchError = "mb_app_sapp_html5_fetch_response_get_error_code"

///|
pub fn Html5FetchResponse::error_code(
  self : Html5FetchResponse,
) -> Html5FetchError {
  sapp_html5_fetch_response_get_error_code(self)
}

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_set_error_code(
  object_ : Html5FetchResponse,
  replacement : Html5FetchError,
) -> Unit = "mb_app_sapp_html5_fetch_response_set_error_code"

///|
pub fn Html5FetchResponse::set_error_code(
  self : Html5FetchResponse,
  value : Html5FetchError,
) -> Html5FetchResponse {
  sapp_html5_fetch_response_set_error_code(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_get_file_index(
  object_ : Html5FetchResponse,
) -> Int32 = "mb_app_sapp_html5_fetch_response_get_file_index"

///|
pub fn Html5FetchResponse::file_index(self : Html5FetchResponse) -> Int32 {
  sapp_html5_fetch_response_get_file_index(self)
}

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_set_file_index(
  object_ : Html5FetchResponse,
  replacement : Int32,
) -> Unit = "mb_app_sapp_html5_fetch_response_set_file_index"

///|
pub fn Html5FetchResponse::set_file_index(
  self : Html5FetchResponse,
  value : Int32,
) -> Html5FetchResponse {
  sapp_html5_fetch_response_set_file_index(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_get_data(
  object_ : Html5FetchResponse,
) -> Range = "mb_app_sapp_html5_fetch_response_get_data"

///|
pub fn Html5FetchResponse::data(self : Html5FetchResponse) -> Range {
  sapp_html5_fetch_response_get_data(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sapp_html5_fetch_response_set_data(
  object_ : Html5FetchResponse,
  replacement : Range,
) -> Unit = "mb_app_sapp_html5_fetch_response_set_data"

///|
pub fn Html5FetchResponse::set_data(
  self : Html5FetchResponse,
  value : Range,
) -> Html5FetchResponse {
  sapp_html5_fetch_response_set_data(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_get_buffer(
  object_ : Html5FetchResponse,
) -> Range = "mb_app_sapp_html5_fetch_response_get_buffer"

///|
pub fn Html5FetchResponse::buffer(self : Html5FetchResponse) -> Range {
  sapp_html5_fetch_response_get_buffer(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sapp_html5_fetch_response_set_buffer(
  object_ : Html5FetchResponse,
  replacement : Range,
) -> Unit = "mb_app_sapp_html5_fetch_response_set_buffer"

///|
pub fn Html5FetchResponse::set_buffer(
  self : Html5FetchResponse,
  value : Range,
) -> Html5FetchResponse {
  sapp_html5_fetch_response_set_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_get_user_data(
  object_ : Html5FetchResponse,
) -> @native.Handle = "mb_app_sapp_html5_fetch_response_get_user_data"

///|
pub fn Html5FetchResponse::user_data(
  self : Html5FetchResponse,
) -> @native.Handle {
  sapp_html5_fetch_response_get_user_data(self)
}

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_set_user_data(
  object_ : Html5FetchResponse,
  replacement : @native.Handle,
) -> Unit = "mb_app_sapp_html5_fetch_response_set_user_data"

///|
pub fn Html5FetchResponse::set_user_data(
  self : Html5FetchResponse,
  value : @native.Handle,
) -> Html5FetchResponse {
  sapp_html5_fetch_response_set_user_data(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Html5FetchRequest

///|
extern "c" fn sapp_html5_fetch_request_new() -> Html5FetchRequest = "mb_app_sapp_html5_fetch_request_new"

///|
pub fn Html5FetchRequest::new() -> Html5FetchRequest {
  sapp_html5_fetch_request_new()
}

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_request_copy(
  object_ : Html5FetchRequest,
) -> Html5FetchRequest = "mb_app_sapp_html5_fetch_request_copy"

///|
pub fn Html5FetchRequest::copy(self : Html5FetchRequest) -> Html5FetchRequest {
  sapp_html5_fetch_request_copy(self)
}

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_request_native(
  object_ : Html5FetchRequest,
) -> @native.Handle = "mb_app_sapp_html5_fetch_request_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Html5FetchRequest::unsafe_native_handle(
  self : Html5FetchRequest,
) -> @native.Handle {
  sapp_html5_fetch_request_native(self)
}

///|
extern "c" fn sapp_html5_fetch_request_from_native(
  ptr : @native.Handle,
) -> Html5FetchRequest = "mb_app_sapp_html5_fetch_request_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Html5FetchRequest::unsafe_from_native(
  ptr : @native.Handle,
) -> Html5FetchRequest {
  sapp_html5_fetch_request_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_request_get_dropped_file_index(
  object_ : Html5FetchRequest,
) -> Int32 = "mb_app_sapp_html5_fetch_request_get_dropped_file_index"

///|
pub fn Html5FetchRequest::dropped_file_index(self : Html5FetchRequest) -> Int32 {
  sapp_html5_fetch_request_get_dropped_file_index(self)
}

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_request_set_dropped_file_index(
  object_ : Html5FetchRequest,
  replacement : Int32,
) -> Unit = "mb_app_sapp_html5_fetch_request_set_dropped_file_index"

///|
pub fn Html5FetchRequest::set_dropped_file_index(
  self : Html5FetchRequest,
  value : Int32,
) -> Html5FetchRequest {
  sapp_html5_fetch_request_set_dropped_file_index(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_request_get_callback(
  object_ : Html5FetchRequest,
) -> @native.Handle = "mb_app_sapp_html5_fetch_request_get_callback"

///|
pub fn Html5FetchRequest::callback(self : Html5FetchRequest) -> @native.Handle {
  sapp_html5_fetch_request_get_callback(self)
}

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_request_set_callback(
  object_ : Html5FetchRequest,
  replacement : @native.Handle,
) -> Unit = "mb_app_sapp_html5_fetch_request_set_callback"

///|
pub fn Html5FetchRequest::set_callback(
  self : Html5FetchRequest,
  value : @native.Handle,
) -> Html5FetchRequest {
  sapp_html5_fetch_request_set_callback(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_request_get_buffer(
  object_ : Html5FetchRequest,
) -> Range = "mb_app_sapp_html5_fetch_request_get_buffer"

///|
pub fn Html5FetchRequest::buffer(self : Html5FetchRequest) -> Range {
  sapp_html5_fetch_request_get_buffer(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sapp_html5_fetch_request_set_buffer(
  object_ : Html5FetchRequest,
  replacement : Range,
) -> Unit = "mb_app_sapp_html5_fetch_request_set_buffer"

///|
pub fn Html5FetchRequest::set_buffer(
  self : Html5FetchRequest,
  value : Range,
) -> Html5FetchRequest {
  sapp_html5_fetch_request_set_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_request_get_user_data(
  object_ : Html5FetchRequest,
) -> @native.Handle = "mb_app_sapp_html5_fetch_request_get_user_data"

///|
pub fn Html5FetchRequest::user_data(self : Html5FetchRequest) -> @native.Handle {
  sapp_html5_fetch_request_get_user_data(self)
}

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_request_set_user_data(
  object_ : Html5FetchRequest,
  replacement : @native.Handle,
) -> Unit = "mb_app_sapp_html5_fetch_request_set_user_data"

///|
pub fn Html5FetchRequest::set_user_data(
  self : Html5FetchRequest,
  value : @native.Handle,
) -> Html5FetchRequest {
  sapp_html5_fetch_request_set_user_data(self, value)
  self
}

///|
#cfg(not(platform="windows"))
extern "c" fn sapp_html5_ask_leave_site(ask : Bool) -> Unit = "mb_app_sapp_html5_ask_leave_site"

///|
#cfg(not(platform="windows"))
pub fn html5_ask_leave_site(ask : Bool) -> Unit {
  sapp_html5_ask_leave_site(ask)
}

///|
#cfg(not(platform="windows"))
extern "c" fn sapp_html5_get_dropped_file_size(index : Int32) -> UInt32 = "sapp_html5_get_dropped_file_size"

///|
#cfg(not(platform="windows"))
pub fn html5_get_dropped_file_size(index : Int32) -> UInt32 {
  sapp_html5_get_dropped_file_size(index)
}
