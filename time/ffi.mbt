// Private ABI declarations maintained by scripts/generate.py.

///|
extern "c" fn stm_setup() -> Unit = "stm_setup"

///|
extern "c" fn stm_now() -> UInt64 = "stm_now"

///|
extern "c" fn stm_diff(new_ticks : UInt64, old_ticks : UInt64) -> UInt64 = "stm_diff"

///|
extern "c" fn stm_since(start_ticks : UInt64) -> UInt64 = "stm_since"

///|
extern "c" fn stm_round_to_common_refresh_rate(frame_ticks : UInt64) -> UInt64 = "stm_round_to_common_refresh_rate"

///|
extern "c" fn stm_sec(ticks : UInt64) -> Double = "stm_sec"

///|
extern "c" fn stm_ms(ticks : UInt64) -> Double = "stm_ms"

///|
extern "c" fn stm_us(ticks : UInt64) -> Double = "stm_us"

///|
extern "c" fn stm_ns(ticks : UInt64) -> Double = "stm_ns"
