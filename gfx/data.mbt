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
