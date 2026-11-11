///|
extern "c" fn stm_setup() -> Unit = "stm_setup"

///|
pub fn setup() -> Unit {
  stm_setup()
}

///|
extern "c" fn stm_now() -> UInt64 = "stm_now"

///|
pub fn now() -> UInt64 {
  stm_now()
}

///|
extern "c" fn stm_diff(new_ticks : UInt64, old_ticks : UInt64) -> UInt64 = "stm_diff"

///|
pub fn diff(new_ticks : UInt64, old_ticks : UInt64) -> UInt64 {
  stm_diff(new_ticks, old_ticks)
}

///|
extern "c" fn stm_since(start_ticks : UInt64) -> UInt64 = "stm_since"

///|
pub fn since(start_ticks : UInt64) -> UInt64 {
  stm_since(start_ticks)
}

///|
extern "c" fn stm_round_to_common_refresh_rate(frame_ticks : UInt64) -> UInt64 = "stm_round_to_common_refresh_rate"

///|
pub fn round_to_common_refresh_rate(frame_ticks : UInt64) -> UInt64 {
  stm_round_to_common_refresh_rate(frame_ticks)
}

///|
extern "c" fn stm_sec(ticks : UInt64) -> Double = "stm_sec"

///|
pub fn sec(ticks : UInt64) -> Double {
  stm_sec(ticks)
}

///|
extern "c" fn stm_ms(ticks : UInt64) -> Double = "stm_ms"

///|
pub fn ms(ticks : UInt64) -> Double {
  stm_ms(ticks)
}

///|
extern "c" fn stm_us(ticks : UInt64) -> Double = "stm_us"

///|
pub fn us(ticks : UInt64) -> Double {
  stm_us(ticks)
}

///|
extern "c" fn stm_ns(ticks : UInt64) -> Double = "stm_ns"

///|
pub fn ns(ticks : UInt64) -> Double {
  stm_ns(ticks)
}
