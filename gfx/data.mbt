///|
/// Owned C value. copy() creates an independent copy.
pub type Range

///|
extern "c" fn sg_range_new() -> Range = "mb_gfx_sg_range_new"

///|
pub fn Range::new() -> Range {
  sg_range_new()
}

///|
#borrow(object_)
extern "c" fn sg_range_copy(object_ : Range) -> Range = "mb_gfx_sg_range_copy"

///|
pub fn Range::copy(self : Range) -> Range {
  sg_range_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_range_native(object_ : Range) -> @native.Handle = "mb_gfx_sg_range_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Range::unsafe_native_handle(self : Range) -> @native.Handle {
  sg_range_native(self)
}

///|
extern "c" fn sg_range_from_native(ptr : @native.Handle) -> Range = "mb_gfx_sg_range_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Range::unsafe_from_native(ptr : @native.Handle) -> Range {
  sg_range_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_range_bytes(object_ : Range) -> Bytes = "mb_gfx_sg_range_bytes"

///|
pub fn Range::bytes(self : Range) -> Bytes {
  sg_range_bytes(self)
}

///|
#borrow(data)
extern "c" fn sg_range_data(data : Bytes) -> Range = "mb_gfx_sg_range_data"

///|
pub fn Range::from_bytes(data : Bytes) -> Range {
  sg_range_data(data)
}

///|
#borrow(object_)
extern "c" fn sg_range_get_size(object_ : Range) -> UInt64 = "mb_gfx_sg_range_get_size"

///|
pub fn Range::size(self : Range) -> UInt64 {
  sg_range_get_size(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Color

///|
extern "c" fn sg_color_new() -> Color = "mb_gfx_sg_color_new"

///|
pub fn Color::new() -> Color {
  sg_color_new()
}

///|
#borrow(object_)
extern "c" fn sg_color_copy(object_ : Color) -> Color = "mb_gfx_sg_color_copy"

///|
pub fn Color::copy(self : Color) -> Color {
  sg_color_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_color_native(object_ : Color) -> @native.Handle = "mb_gfx_sg_color_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Color::unsafe_native_handle(self : Color) -> @native.Handle {
  sg_color_native(self)
}

///|
extern "c" fn sg_color_from_native(ptr : @native.Handle) -> Color = "mb_gfx_sg_color_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Color::unsafe_from_native(ptr : @native.Handle) -> Color {
  sg_color_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_color_get_r(object_ : Color) -> Float = "mb_gfx_sg_color_get_r"

///|
pub fn Color::r(self : Color) -> Float {
  sg_color_get_r(self)
}

///|
#borrow(object_)
extern "c" fn sg_color_set_r(object_ : Color, replacement : Float) -> Unit = "mb_gfx_sg_color_set_r"

///|
pub fn Color::set_r(self : Color, value : Float) -> Color {
  sg_color_set_r(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_color_get_g(object_ : Color) -> Float = "mb_gfx_sg_color_get_g"

///|
pub fn Color::g(self : Color) -> Float {
  sg_color_get_g(self)
}

///|
#borrow(object_)
extern "c" fn sg_color_set_g(object_ : Color, replacement : Float) -> Unit = "mb_gfx_sg_color_set_g"

///|
pub fn Color::set_g(self : Color, value : Float) -> Color {
  sg_color_set_g(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_color_get_b(object_ : Color) -> Float = "mb_gfx_sg_color_get_b"

///|
pub fn Color::b(self : Color) -> Float {
  sg_color_get_b(self)
}

///|
#borrow(object_)
extern "c" fn sg_color_set_b(object_ : Color, replacement : Float) -> Unit = "mb_gfx_sg_color_set_b"

///|
pub fn Color::set_b(self : Color, value : Float) -> Color {
  sg_color_set_b(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_color_get_a(object_ : Color) -> Float = "mb_gfx_sg_color_get_a"

///|
pub fn Color::a(self : Color) -> Float {
  sg_color_get_a(self)
}

///|
#borrow(object_)
extern "c" fn sg_color_set_a(object_ : Color, replacement : Float) -> Unit = "mb_gfx_sg_color_set_a"

///|
pub fn Color::set_a(self : Color, value : Float) -> Color {
  sg_color_set_a(self, value)
  self
}

///|
#borrow(values)
extern "c" fn floats_ffi(values : FixedArray[Float]) -> Range = "mb_gfx_floats"

///|
/// Copy packed 32-bit floating-point data into an owned range.
pub fn Range::from_floats(values : FixedArray[Float]) -> Range {
  floats_ffi(values)
}

///|
#borrow(values)
extern "c" fn uints_ffi(values : FixedArray[UInt32]) -> Range = "mb_gfx_uints"

///|
pub fn Range::from_uints(values : FixedArray[UInt32]) -> Range {
  uints_ffi(values)
}

///|
#borrow(values)
extern "c" fn ushorts_ffi(values : FixedArray[UInt16]) -> Range = "mb_gfx_ushorts"

///|
pub fn Range::from_ushorts(values : FixedArray[UInt16]) -> Range {
  ushorts_ffi(values)
}
