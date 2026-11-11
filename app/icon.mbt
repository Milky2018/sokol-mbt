///|
/// Owned C value. copy() creates an independent copy.
pub type Range

///|
extern "c" fn sapp_range_new() -> Range = "mb_app_sapp_range_new"

///|
pub fn Range::new() -> Range {
  sapp_range_new()
}

///|
#borrow(object_)
extern "c" fn sapp_range_copy(object_ : Range) -> Range = "mb_app_sapp_range_copy"

///|
pub fn Range::copy(self : Range) -> Range {
  sapp_range_copy(self)
}

///|
#borrow(object_)
extern "c" fn sapp_range_native(object_ : Range) -> @native.Handle = "mb_app_sapp_range_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Range::unsafe_native_handle(self : Range) -> @native.Handle {
  sapp_range_native(self)
}

///|
extern "c" fn sapp_range_from_native(ptr : @native.Handle) -> Range = "mb_app_sapp_range_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Range::unsafe_from_native(ptr : @native.Handle) -> Range {
  sapp_range_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sapp_range_bytes(object_ : Range) -> Bytes = "mb_app_sapp_range_bytes"

///|
pub fn Range::bytes(self : Range) -> Bytes {
  sapp_range_bytes(self)
}

///|
#borrow(data)
extern "c" fn sapp_range_data(data : Bytes) -> Range = "mb_app_sapp_range_data"

///|
pub fn Range::from_bytes(data : Bytes) -> Range {
  sapp_range_data(data)
}

///|
#borrow(object_)
extern "c" fn sapp_range_get_size(object_ : Range) -> UInt64 = "mb_app_sapp_range_get_size"

///|
pub fn Range::size(self : Range) -> UInt64 {
  sapp_range_get_size(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ImageDesc

///|
extern "c" fn sapp_image_desc_new() -> ImageDesc = "mb_app_sapp_image_desc_new"

///|
pub fn ImageDesc::new() -> ImageDesc {
  sapp_image_desc_new()
}

///|
#borrow(object_)
extern "c" fn sapp_image_desc_copy(object_ : ImageDesc) -> ImageDesc = "mb_app_sapp_image_desc_copy"

///|
pub fn ImageDesc::copy(self : ImageDesc) -> ImageDesc {
  sapp_image_desc_copy(self)
}

///|
#borrow(object_)
extern "c" fn sapp_image_desc_native(object_ : ImageDesc) -> @native.Handle = "mb_app_sapp_image_desc_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ImageDesc::unsafe_native_handle(self : ImageDesc) -> @native.Handle {
  sapp_image_desc_native(self)
}

///|
extern "c" fn sapp_image_desc_from_native(ptr : @native.Handle) -> ImageDesc = "mb_app_sapp_image_desc_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ImageDesc::unsafe_from_native(ptr : @native.Handle) -> ImageDesc {
  sapp_image_desc_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sapp_image_desc_get_width(object_ : ImageDesc) -> Int32 = "mb_app_sapp_image_desc_get_width"

///|
pub fn ImageDesc::width(self : ImageDesc) -> Int32 {
  sapp_image_desc_get_width(self)
}

///|
#borrow(object_)
extern "c" fn sapp_image_desc_set_width(
  object_ : ImageDesc,
  replacement : Int32,
) -> Unit = "mb_app_sapp_image_desc_set_width"

///|
pub fn ImageDesc::set_width(self : ImageDesc, value : Int32) -> ImageDesc {
  sapp_image_desc_set_width(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_image_desc_get_height(object_ : ImageDesc) -> Int32 = "mb_app_sapp_image_desc_get_height"

///|
pub fn ImageDesc::height(self : ImageDesc) -> Int32 {
  sapp_image_desc_get_height(self)
}

///|
#borrow(object_)
extern "c" fn sapp_image_desc_set_height(
  object_ : ImageDesc,
  replacement : Int32,
) -> Unit = "mb_app_sapp_image_desc_set_height"

///|
pub fn ImageDesc::set_height(self : ImageDesc, value : Int32) -> ImageDesc {
  sapp_image_desc_set_height(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_image_desc_get_cursor_hotspot_x(
  object_ : ImageDesc,
) -> Int32 = "mb_app_sapp_image_desc_get_cursor_hotspot_x"

///|
pub fn ImageDesc::cursor_hotspot_x(self : ImageDesc) -> Int32 {
  sapp_image_desc_get_cursor_hotspot_x(self)
}

///|
#borrow(object_)
extern "c" fn sapp_image_desc_set_cursor_hotspot_x(
  object_ : ImageDesc,
  replacement : Int32,
) -> Unit = "mb_app_sapp_image_desc_set_cursor_hotspot_x"

///|
pub fn ImageDesc::set_cursor_hotspot_x(
  self : ImageDesc,
  value : Int32,
) -> ImageDesc {
  sapp_image_desc_set_cursor_hotspot_x(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_image_desc_get_cursor_hotspot_y(
  object_ : ImageDesc,
) -> Int32 = "mb_app_sapp_image_desc_get_cursor_hotspot_y"

///|
pub fn ImageDesc::cursor_hotspot_y(self : ImageDesc) -> Int32 {
  sapp_image_desc_get_cursor_hotspot_y(self)
}

///|
#borrow(object_)
extern "c" fn sapp_image_desc_set_cursor_hotspot_y(
  object_ : ImageDesc,
  replacement : Int32,
) -> Unit = "mb_app_sapp_image_desc_set_cursor_hotspot_y"

///|
pub fn ImageDesc::set_cursor_hotspot_y(
  self : ImageDesc,
  value : Int32,
) -> ImageDesc {
  sapp_image_desc_set_cursor_hotspot_y(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_image_desc_get_pixels(object_ : ImageDesc) -> Range = "mb_app_sapp_image_desc_get_pixels"

///|
pub fn ImageDesc::pixels(self : ImageDesc) -> Range {
  sapp_image_desc_get_pixels(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sapp_image_desc_set_pixels(
  object_ : ImageDesc,
  replacement : Range,
) -> Unit = "mb_app_sapp_image_desc_set_pixels"

///|
pub fn ImageDesc::set_pixels(self : ImageDesc, value : Range) -> ImageDesc {
  sapp_image_desc_set_pixels(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type IconDesc

///|
extern "c" fn sapp_icon_desc_new() -> IconDesc = "mb_app_sapp_icon_desc_new"

///|
pub fn IconDesc::new() -> IconDesc {
  sapp_icon_desc_new()
}

///|
#borrow(object_)
extern "c" fn sapp_icon_desc_copy(object_ : IconDesc) -> IconDesc = "mb_app_sapp_icon_desc_copy"

///|
pub fn IconDesc::copy(self : IconDesc) -> IconDesc {
  sapp_icon_desc_copy(self)
}

///|
#borrow(object_)
extern "c" fn sapp_icon_desc_native(object_ : IconDesc) -> @native.Handle = "mb_app_sapp_icon_desc_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn IconDesc::unsafe_native_handle(self : IconDesc) -> @native.Handle {
  sapp_icon_desc_native(self)
}

///|
extern "c" fn sapp_icon_desc_from_native(ptr : @native.Handle) -> IconDesc = "mb_app_sapp_icon_desc_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn IconDesc::unsafe_from_native(ptr : @native.Handle) -> IconDesc {
  sapp_icon_desc_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sapp_icon_desc_get_sokol_default(object_ : IconDesc) -> Bool = "mb_app_sapp_icon_desc_get_sokol_default"

///|
pub fn IconDesc::sokol_default(self : IconDesc) -> Bool {
  sapp_icon_desc_get_sokol_default(self)
}

///|
#borrow(object_)
extern "c" fn sapp_icon_desc_set_sokol_default(
  object_ : IconDesc,
  replacement : Bool,
) -> Unit = "mb_app_sapp_icon_desc_set_sokol_default"

///|
pub fn IconDesc::set_sokol_default(self : IconDesc, value : Bool) -> IconDesc {
  sapp_icon_desc_set_sokol_default(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_icon_desc_get_images(
  object_ : IconDesc,
  i0 : Int32,
) -> ImageDesc = "mb_app_sapp_icon_desc_get_images"

///|
pub fn IconDesc::images(self : IconDesc, i0 : Int32) -> ImageDesc {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sapp_icon_desc_get_images(self, i0)
}

///|
#borrow(object_, replacement)
extern "c" fn sapp_icon_desc_set_images(
  object_ : IconDesc,
  i0 : Int32,
  replacement : ImageDesc,
) -> Unit = "mb_app_sapp_icon_desc_set_images"

///|
pub fn IconDesc::set_images(
  self : IconDesc,
  i0 : Int32,
  value : ImageDesc,
) -> IconDesc {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sapp_icon_desc_set_images(self, i0, value)
  self
}

///|
#borrow(desc)
extern "c" fn sapp_bind_mouse_cursor_image(
  cursor : MouseCursor,
  desc : ImageDesc,
) -> MouseCursor = "mb_app_sapp_bind_mouse_cursor_image"

///|
pub fn bind_mouse_cursor_image(
  cursor : MouseCursor,
  desc : ImageDesc,
) -> MouseCursor {
  sapp_bind_mouse_cursor_image(cursor, desc)
}

///|
extern "c" fn sapp_unbind_mouse_cursor_image(cursor : MouseCursor) -> Unit = "sapp_unbind_mouse_cursor_image"

///|
pub fn unbind_mouse_cursor_image(cursor : MouseCursor) -> Unit {
  sapp_unbind_mouse_cursor_image(cursor)
}

///|
#borrow(icon_desc)
extern "c" fn sapp_set_icon(icon_desc : IconDesc) -> Unit = "mb_app_sapp_set_icon"

///|
pub fn set_icon(icon_desc : IconDesc) -> Unit {
  sapp_set_icon(icon_desc)
}
