///|
#borrow(desc, arguments)
extern "c" fn setup_ffi(desc : Desc, arguments : FixedArray[Bytes]) = "mb_args_setup"

///|
/// Arguments include the executable name at index zero, as in C argv.
pub fn setup(arguments : Array[String], desc~ : Desc = Desc::new()) -> Unit {
  setup_ffi(
    desc,
    FixedArray::makei(arguments.length(), i => @native.cstring(arguments[i])),
  )
}
