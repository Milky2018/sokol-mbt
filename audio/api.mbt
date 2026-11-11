///|
#borrow(samples)
extern "c" fn push_ffi(samples : FixedArray[Float]) -> Int32 = "mb_audio_push"

///|
/// Push interleaved PCM samples from the MoonBit thread. Returns accepted frames.
/// The number of samples must be a multiple of the configured channel count.
pub fn push(samples : FixedArray[Float]) -> Int32 {
  guard isvalid() else { abort("audio must be initialized") }
  guard samples.length() % channels() == 0 else {
    abort("incomplete audio frame")
  }
  push_ffi(samples)
}

///|
extern "c" fn headless_ffi() -> Bool = "mb_audio_headless"

///|
pub fn is_headless() -> Bool {
  headless_ffi()
}
