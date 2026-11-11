///|
/// Owned C value. copy() creates an independent copy.
pub type Touchpoint

///|
extern "c" fn sapp_touchpoint_new() -> Touchpoint = "mb_app_sapp_touchpoint_new"

///|
pub fn Touchpoint::new() -> Touchpoint {
  sapp_touchpoint_new()
}

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_copy(object_ : Touchpoint) -> Touchpoint = "mb_app_sapp_touchpoint_copy"

///|
pub fn Touchpoint::copy(self : Touchpoint) -> Touchpoint {
  sapp_touchpoint_copy(self)
}

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_native(object_ : Touchpoint) -> @native.Handle = "mb_app_sapp_touchpoint_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Touchpoint::unsafe_native_handle(self : Touchpoint) -> @native.Handle {
  sapp_touchpoint_native(self)
}

///|
extern "c" fn sapp_touchpoint_from_native(ptr : @native.Handle) -> Touchpoint = "mb_app_sapp_touchpoint_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Touchpoint::unsafe_from_native(ptr : @native.Handle) -> Touchpoint {
  sapp_touchpoint_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_get_identifier(object_ : Touchpoint) -> UInt64 = "mb_app_sapp_touchpoint_get_identifier"

///|
pub fn Touchpoint::identifier(self : Touchpoint) -> UInt64 {
  sapp_touchpoint_get_identifier(self)
}

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_set_identifier(
  object_ : Touchpoint,
  replacement : UInt64,
) -> Unit = "mb_app_sapp_touchpoint_set_identifier"

///|
pub fn Touchpoint::set_identifier(
  self : Touchpoint,
  value : UInt64,
) -> Touchpoint {
  sapp_touchpoint_set_identifier(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_get_pos_x(object_ : Touchpoint) -> Float = "mb_app_sapp_touchpoint_get_pos_x"

///|
pub fn Touchpoint::pos_x(self : Touchpoint) -> Float {
  sapp_touchpoint_get_pos_x(self)
}

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_set_pos_x(
  object_ : Touchpoint,
  replacement : Float,
) -> Unit = "mb_app_sapp_touchpoint_set_pos_x"

///|
pub fn Touchpoint::set_pos_x(self : Touchpoint, value : Float) -> Touchpoint {
  sapp_touchpoint_set_pos_x(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_get_pos_y(object_ : Touchpoint) -> Float = "mb_app_sapp_touchpoint_get_pos_y"

///|
pub fn Touchpoint::pos_y(self : Touchpoint) -> Float {
  sapp_touchpoint_get_pos_y(self)
}

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_set_pos_y(
  object_ : Touchpoint,
  replacement : Float,
) -> Unit = "mb_app_sapp_touchpoint_set_pos_y"

///|
pub fn Touchpoint::set_pos_y(self : Touchpoint, value : Float) -> Touchpoint {
  sapp_touchpoint_set_pos_y(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_get_android_tooltype(
  object_ : Touchpoint,
) -> AndroidTooltype = "mb_app_sapp_touchpoint_get_android_tooltype"

///|
pub fn Touchpoint::android_tooltype(self : Touchpoint) -> AndroidTooltype {
  sapp_touchpoint_get_android_tooltype(self)
}

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_set_android_tooltype(
  object_ : Touchpoint,
  replacement : AndroidTooltype,
) -> Unit = "mb_app_sapp_touchpoint_set_android_tooltype"

///|
pub fn Touchpoint::set_android_tooltype(
  self : Touchpoint,
  value : AndroidTooltype,
) -> Touchpoint {
  sapp_touchpoint_set_android_tooltype(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_get_changed(object_ : Touchpoint) -> Bool = "mb_app_sapp_touchpoint_get_changed"

///|
pub fn Touchpoint::changed(self : Touchpoint) -> Bool {
  sapp_touchpoint_get_changed(self)
}

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_set_changed(
  object_ : Touchpoint,
  replacement : Bool,
) -> Unit = "mb_app_sapp_touchpoint_set_changed"

///|
pub fn Touchpoint::set_changed(self : Touchpoint, value : Bool) -> Touchpoint {
  sapp_touchpoint_set_changed(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Event

///|
extern "c" fn sapp_event_new() -> Event = "mb_app_sapp_event_new"

///|
pub fn Event::new() -> Event {
  sapp_event_new()
}

///|
#borrow(object_)
extern "c" fn sapp_event_copy(object_ : Event) -> Event = "mb_app_sapp_event_copy"

///|
pub fn Event::copy(self : Event) -> Event {
  sapp_event_copy(self)
}

///|
#borrow(object_)
extern "c" fn sapp_event_native(object_ : Event) -> @native.Handle = "mb_app_sapp_event_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Event::unsafe_native_handle(self : Event) -> @native.Handle {
  sapp_event_native(self)
}

///|
extern "c" fn sapp_event_from_native(ptr : @native.Handle) -> Event = "mb_app_sapp_event_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Event::unsafe_from_native(ptr : @native.Handle) -> Event {
  sapp_event_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sapp_event_get_frame_count(object_ : Event) -> UInt64 = "mb_app_sapp_event_get_frame_count"

///|
pub fn Event::frame_count(self : Event) -> UInt64 {
  sapp_event_get_frame_count(self)
}

///|
#borrow(object_)
extern "c" fn sapp_event_set_frame_count(
  object_ : Event,
  replacement : UInt64,
) -> Unit = "mb_app_sapp_event_set_frame_count"

///|
pub fn Event::set_frame_count(self : Event, value : UInt64) -> Event {
  sapp_event_set_frame_count(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_event_get_type(object_ : Event) -> EventType = "mb_app_sapp_event_get_type"

///|
pub fn Event::type_(self : Event) -> EventType {
  sapp_event_get_type(self)
}

///|
#borrow(object_)
extern "c" fn sapp_event_set_type(
  object_ : Event,
  replacement : EventType,
) -> Unit = "mb_app_sapp_event_set_type"

///|
pub fn Event::set_type(self : Event, value : EventType) -> Event {
  sapp_event_set_type(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_event_get_key_code(object_ : Event) -> Keycode = "mb_app_sapp_event_get_key_code"

///|
pub fn Event::key_code(self : Event) -> Keycode {
  sapp_event_get_key_code(self)
}

///|
#borrow(object_)
extern "c" fn sapp_event_set_key_code(
  object_ : Event,
  replacement : Keycode,
) -> Unit = "mb_app_sapp_event_set_key_code"

///|
pub fn Event::set_key_code(self : Event, value : Keycode) -> Event {
  sapp_event_set_key_code(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_event_get_char_code(object_ : Event) -> UInt32 = "mb_app_sapp_event_get_char_code"

///|
pub fn Event::char_code(self : Event) -> UInt32 {
  sapp_event_get_char_code(self)
}

///|
#borrow(object_)
extern "c" fn sapp_event_set_char_code(
  object_ : Event,
  replacement : UInt32,
) -> Unit = "mb_app_sapp_event_set_char_code"

///|
pub fn Event::set_char_code(self : Event, value : UInt32) -> Event {
  sapp_event_set_char_code(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_event_get_key_repeat(object_ : Event) -> Bool = "mb_app_sapp_event_get_key_repeat"

///|
pub fn Event::key_repeat(self : Event) -> Bool {
  sapp_event_get_key_repeat(self)
}

///|
#borrow(object_)
extern "c" fn sapp_event_set_key_repeat(
  object_ : Event,
  replacement : Bool,
) -> Unit = "mb_app_sapp_event_set_key_repeat"

///|
pub fn Event::set_key_repeat(self : Event, value : Bool) -> Event {
  sapp_event_set_key_repeat(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_event_get_modifiers(object_ : Event) -> UInt32 = "mb_app_sapp_event_get_modifiers"

///|
pub fn Event::modifiers(self : Event) -> UInt32 {
  sapp_event_get_modifiers(self)
}

///|
#borrow(object_)
extern "c" fn sapp_event_set_modifiers(
  object_ : Event,
  replacement : UInt32,
) -> Unit = "mb_app_sapp_event_set_modifiers"

///|
pub fn Event::set_modifiers(self : Event, value : UInt32) -> Event {
  sapp_event_set_modifiers(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_event_get_mouse_button(object_ : Event) -> Mousebutton = "mb_app_sapp_event_get_mouse_button"

///|
pub fn Event::mouse_button(self : Event) -> Mousebutton {
  sapp_event_get_mouse_button(self)
}

///|
#borrow(object_)
extern "c" fn sapp_event_set_mouse_button(
  object_ : Event,
  replacement : Mousebutton,
) -> Unit = "mb_app_sapp_event_set_mouse_button"

///|
pub fn Event::set_mouse_button(self : Event, value : Mousebutton) -> Event {
  sapp_event_set_mouse_button(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_event_get_mouse_x(object_ : Event) -> Float = "mb_app_sapp_event_get_mouse_x"

///|
pub fn Event::mouse_x(self : Event) -> Float {
  sapp_event_get_mouse_x(self)
}

///|
#borrow(object_)
extern "c" fn sapp_event_set_mouse_x(
  object_ : Event,
  replacement : Float,
) -> Unit = "mb_app_sapp_event_set_mouse_x"

///|
pub fn Event::set_mouse_x(self : Event, value : Float) -> Event {
  sapp_event_set_mouse_x(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_event_get_mouse_y(object_ : Event) -> Float = "mb_app_sapp_event_get_mouse_y"

///|
pub fn Event::mouse_y(self : Event) -> Float {
  sapp_event_get_mouse_y(self)
}

///|
#borrow(object_)
extern "c" fn sapp_event_set_mouse_y(
  object_ : Event,
  replacement : Float,
) -> Unit = "mb_app_sapp_event_set_mouse_y"

///|
pub fn Event::set_mouse_y(self : Event, value : Float) -> Event {
  sapp_event_set_mouse_y(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_event_get_mouse_dx(object_ : Event) -> Float = "mb_app_sapp_event_get_mouse_dx"

///|
pub fn Event::mouse_dx(self : Event) -> Float {
  sapp_event_get_mouse_dx(self)
}

///|
#borrow(object_)
extern "c" fn sapp_event_set_mouse_dx(
  object_ : Event,
  replacement : Float,
) -> Unit = "mb_app_sapp_event_set_mouse_dx"

///|
pub fn Event::set_mouse_dx(self : Event, value : Float) -> Event {
  sapp_event_set_mouse_dx(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_event_get_mouse_dy(object_ : Event) -> Float = "mb_app_sapp_event_get_mouse_dy"

///|
pub fn Event::mouse_dy(self : Event) -> Float {
  sapp_event_get_mouse_dy(self)
}

///|
#borrow(object_)
extern "c" fn sapp_event_set_mouse_dy(
  object_ : Event,
  replacement : Float,
) -> Unit = "mb_app_sapp_event_set_mouse_dy"

///|
pub fn Event::set_mouse_dy(self : Event, value : Float) -> Event {
  sapp_event_set_mouse_dy(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_event_get_scroll_x(object_ : Event) -> Float = "mb_app_sapp_event_get_scroll_x"

///|
pub fn Event::scroll_x(self : Event) -> Float {
  sapp_event_get_scroll_x(self)
}

///|
#borrow(object_)
extern "c" fn sapp_event_set_scroll_x(
  object_ : Event,
  replacement : Float,
) -> Unit = "mb_app_sapp_event_set_scroll_x"

///|
pub fn Event::set_scroll_x(self : Event, value : Float) -> Event {
  sapp_event_set_scroll_x(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_event_get_scroll_y(object_ : Event) -> Float = "mb_app_sapp_event_get_scroll_y"

///|
pub fn Event::scroll_y(self : Event) -> Float {
  sapp_event_get_scroll_y(self)
}

///|
#borrow(object_)
extern "c" fn sapp_event_set_scroll_y(
  object_ : Event,
  replacement : Float,
) -> Unit = "mb_app_sapp_event_set_scroll_y"

///|
pub fn Event::set_scroll_y(self : Event, value : Float) -> Event {
  sapp_event_set_scroll_y(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_event_get_num_touches(object_ : Event) -> Int32 = "mb_app_sapp_event_get_num_touches"

///|
pub fn Event::num_touches(self : Event) -> Int32 {
  sapp_event_get_num_touches(self)
}

///|
#borrow(object_)
extern "c" fn sapp_event_set_num_touches(
  object_ : Event,
  replacement : Int32,
) -> Unit = "mb_app_sapp_event_set_num_touches"

///|
pub fn Event::set_num_touches(self : Event, value : Int32) -> Event {
  sapp_event_set_num_touches(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_event_get_touches(object_ : Event, i0 : Int32) -> Touchpoint = "mb_app_sapp_event_get_touches"

///|
pub fn Event::touches(self : Event, i0 : Int32) -> Touchpoint {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sapp_event_get_touches(self, i0)
}

///|
#borrow(object_, replacement)
extern "c" fn sapp_event_set_touches(
  object_ : Event,
  i0 : Int32,
  replacement : Touchpoint,
) -> Unit = "mb_app_sapp_event_set_touches"

///|
pub fn Event::set_touches(
  self : Event,
  i0 : Int32,
  value : Touchpoint,
) -> Event {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sapp_event_set_touches(self, i0, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_event_get_window_width(object_ : Event) -> Int32 = "mb_app_sapp_event_get_window_width"

///|
pub fn Event::window_width(self : Event) -> Int32 {
  sapp_event_get_window_width(self)
}

///|
#borrow(object_)
extern "c" fn sapp_event_set_window_width(
  object_ : Event,
  replacement : Int32,
) -> Unit = "mb_app_sapp_event_set_window_width"

///|
pub fn Event::set_window_width(self : Event, value : Int32) -> Event {
  sapp_event_set_window_width(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_event_get_window_height(object_ : Event) -> Int32 = "mb_app_sapp_event_get_window_height"

///|
pub fn Event::window_height(self : Event) -> Int32 {
  sapp_event_get_window_height(self)
}

///|
#borrow(object_)
extern "c" fn sapp_event_set_window_height(
  object_ : Event,
  replacement : Int32,
) -> Unit = "mb_app_sapp_event_set_window_height"

///|
pub fn Event::set_window_height(self : Event, value : Int32) -> Event {
  sapp_event_set_window_height(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_event_get_framebuffer_width(object_ : Event) -> Int32 = "mb_app_sapp_event_get_framebuffer_width"

///|
pub fn Event::framebuffer_width(self : Event) -> Int32 {
  sapp_event_get_framebuffer_width(self)
}

///|
#borrow(object_)
extern "c" fn sapp_event_set_framebuffer_width(
  object_ : Event,
  replacement : Int32,
) -> Unit = "mb_app_sapp_event_set_framebuffer_width"

///|
pub fn Event::set_framebuffer_width(self : Event, value : Int32) -> Event {
  sapp_event_set_framebuffer_width(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_event_get_framebuffer_height(object_ : Event) -> Int32 = "mb_app_sapp_event_get_framebuffer_height"

///|
pub fn Event::framebuffer_height(self : Event) -> Int32 {
  sapp_event_get_framebuffer_height(self)
}

///|
#borrow(object_)
extern "c" fn sapp_event_set_framebuffer_height(
  object_ : Event,
  replacement : Int32,
) -> Unit = "mb_app_sapp_event_set_framebuffer_height"

///|
pub fn Event::set_framebuffer_height(self : Event, value : Int32) -> Event {
  sapp_event_set_framebuffer_height(self, value)
  self
}
