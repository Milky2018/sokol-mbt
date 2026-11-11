///|
#borrow(last_time)
extern "c" fn laptime_ffi(last_time : Ref[UInt64]) -> UInt64 = "mb_time_laptime"

///|
/// Measure elapsed ticks and update the caller's previous timestamp.
pub fn laptime(last_time : Ref[UInt64]) -> UInt64 {
  laptime_ffi(last_time)
}
