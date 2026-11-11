///|
#derive(Debug, Eq)
pub(all) enum Level {
  Panic = 0
  Error = 1
  Warning = 2
  Info = 3
}

///|
pub extend Level with Eq::{equal, not_equal}

///|
pub extend Level with @debug.Debug::{to_repr}

///|
extern "c" fn level_ffi(value : Level) -> UInt32 = "mb_sokol_enum_identity"

///|
#borrow(tag, message, filename)
extern "c" fn write_ffi(
  tag : Bytes,
  level : UInt32,
  item : UInt32,
  message : Bytes,
  line : UInt32,
  filename : Bytes,
) = "mb_log_write"

///|
/// Write through Sokol's standard C logger. Panic level terminates the process.
pub fn write(
  tag : String,
  level : Level,
  message : String,
  item~ : UInt32 = 0U,
  line~ : UInt32 = 0U,
  filename~ : String = "",
) -> Unit {
  write_ffi(
    @native.cstring(tag),
    level_ffi(level),
    item,
    @utf8.encode(message),
    line,
    @native.cstring(filename),
  )
}
