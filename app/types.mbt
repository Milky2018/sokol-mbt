// C API declarations and field adapters maintained by scripts/generate.py.

///|
pub const MAX_TOUCHPOINTS : Int32 = 8

///|
pub const MAX_MOUSEBUTTONS : Int32 = 3

///|
pub const MAX_KEYCODES : Int32 = 512

///|
pub const MAX_ICONIMAGES : Int32 = 8

///|
#derive(Debug, Eq)
pub(all) enum EventType {
  Invalid = 0
  KeyDown = 1
  KeyUp = 2
  Char = 3
  MouseDown = 4
  MouseUp = 5
  MouseScroll = 6
  MouseMove = 7
  MouseEnter = 8
  MouseLeave = 9
  TouchesBegan = 10
  TouchesMoved = 11
  TouchesEnded = 12
  TouchesCancelled = 13
  Resized = 14
  Iconified = 15
  Restored = 16
  Focused = 17
  Unfocused = 18
  Suspended = 19
  Resumed = 20
  QuitRequested = 21
  ClipboardPasted = 22
  FilesDropped = 23
  AndroidBack = 24
}

///|
pub extend EventType with Eq::{equal, not_equal}

///|
pub extend EventType with @debug.Debug::{to_repr}

///|
pub fn EventType::to_int(self : EventType) -> Int32 {
  sapp_event_type_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum Keycode {
  Invalid = 0
  Space = 32
  Apostrophe = 39
  Comma = 44
  Minus = 45
  Period = 46
  Slash = 47
  V0 = 48
  V1 = 49
  V2 = 50
  V3 = 51
  V4 = 52
  V5 = 53
  V6 = 54
  V7 = 55
  V8 = 56
  V9 = 57
  Semicolon = 59
  Equal = 61
  A = 65
  B = 66
  C = 67
  D = 68
  E = 69
  F = 70
  G = 71
  H = 72
  I = 73
  J = 74
  K = 75
  L = 76
  M = 77
  N = 78
  O = 79
  P = 80
  Q = 81
  R = 82
  S = 83
  T = 84
  U = 85
  V = 86
  W = 87
  X = 88
  Y = 89
  Z = 90
  LeftBracket = 91
  Backslash = 92
  RightBracket = 93
  GraveAccent = 96
  World1 = 161
  World2 = 162
  Escape = 256
  Enter = 257
  Tab = 258
  Backspace = 259
  Insert = 260
  Delete = 261
  Right = 262
  Left = 263
  Down = 264
  Up = 265
  PageUp = 266
  PageDown = 267
  Home = 268
  End = 269
  CapsLock = 280
  ScrollLock = 281
  NumLock = 282
  PrintScreen = 283
  Pause = 284
  F1 = 290
  F2 = 291
  F3 = 292
  F4 = 293
  F5 = 294
  F6 = 295
  F7 = 296
  F8 = 297
  F9 = 298
  F10 = 299
  F11 = 300
  F12 = 301
  F13 = 302
  F14 = 303
  F15 = 304
  F16 = 305
  F17 = 306
  F18 = 307
  F19 = 308
  F20 = 309
  F21 = 310
  F22 = 311
  F23 = 312
  F24 = 313
  F25 = 314
  Kp0 = 320
  Kp1 = 321
  Kp2 = 322
  Kp3 = 323
  Kp4 = 324
  Kp5 = 325
  Kp6 = 326
  Kp7 = 327
  Kp8 = 328
  Kp9 = 329
  KpDecimal = 330
  KpDivide = 331
  KpMultiply = 332
  KpSubtract = 333
  KpAdd = 334
  KpEnter = 335
  KpEqual = 336
  LeftShift = 340
  LeftControl = 341
  LeftAlt = 342
  LeftSuper = 343
  RightShift = 344
  RightControl = 345
  RightAlt = 346
  RightSuper = 347
  Menu = 348
}

///|
pub extend Keycode with Eq::{equal, not_equal}

///|
pub extend Keycode with @debug.Debug::{to_repr}

///|
pub fn Keycode::to_int(self : Keycode) -> Int32 {
  sapp_keycode_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum AndroidTooltype {
  Unknown = 0
  Finger = 1
  Stylus = 2
  Mouse = 3
}

///|
pub extend AndroidTooltype with Eq::{equal, not_equal}

///|
pub extend AndroidTooltype with @debug.Debug::{to_repr}

///|
pub fn AndroidTooltype::to_int(self : AndroidTooltype) -> Int32 {
  sapp_android_tooltype_int(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Touchpoint

///|
pub fn Touchpoint::new() -> Touchpoint {
  sapp_touchpoint_new()
}

///|
pub fn Touchpoint::copy(self : Touchpoint) -> Touchpoint {
  sapp_touchpoint_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Touchpoint::unsafe_native_handle(self : Touchpoint) -> @native.Handle {
  sapp_touchpoint_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Touchpoint::unsafe_from_native(ptr : @native.Handle) -> Touchpoint {
  sapp_touchpoint_from_native(ptr)
}

///|
pub fn Touchpoint::identifier(self : Touchpoint) -> UInt64 {
  sapp_touchpoint_get_identifier(self)
}

///|
pub fn Touchpoint::set_identifier(
  self : Touchpoint,
  value : UInt64,
) -> Touchpoint {
  sapp_touchpoint_set_identifier(self, value)
  self
}

///|
pub fn Touchpoint::pos_x(self : Touchpoint) -> Float {
  sapp_touchpoint_get_pos_x(self)
}

///|
pub fn Touchpoint::set_pos_x(self : Touchpoint, value : Float) -> Touchpoint {
  sapp_touchpoint_set_pos_x(self, value)
  self
}

///|
pub fn Touchpoint::pos_y(self : Touchpoint) -> Float {
  sapp_touchpoint_get_pos_y(self)
}

///|
pub fn Touchpoint::set_pos_y(self : Touchpoint, value : Float) -> Touchpoint {
  sapp_touchpoint_set_pos_y(self, value)
  self
}

///|
pub fn Touchpoint::android_tooltype(self : Touchpoint) -> AndroidTooltype {
  sapp_touchpoint_get_android_tooltype(self)
}

///|
pub fn Touchpoint::set_android_tooltype(
  self : Touchpoint,
  value : AndroidTooltype,
) -> Touchpoint {
  sapp_touchpoint_set_android_tooltype(self, value)
  self
}

///|
pub fn Touchpoint::changed(self : Touchpoint) -> Bool {
  sapp_touchpoint_get_changed(self)
}

///|
pub fn Touchpoint::set_changed(self : Touchpoint, value : Bool) -> Touchpoint {
  sapp_touchpoint_set_changed(self, value)
  self
}

///|
#derive(Debug, Eq)
pub(all) enum Mousebutton {
  Left = 0
  Right = 1
  Middle = 2
  Invalid = 256
}

///|
pub extend Mousebutton with Eq::{equal, not_equal}

///|
pub extend Mousebutton with @debug.Debug::{to_repr}

///|
pub fn Mousebutton::to_int(self : Mousebutton) -> Int32 {
  sapp_mousebutton_int(self)
}

///|
pub const MODIFIER_SHIFT : Int32 = 1

///|
pub const MODIFIER_CTRL : Int32 = 2

///|
pub const MODIFIER_ALT : Int32 = 4

///|
pub const MODIFIER_SUPER : Int32 = 8

///|
pub const MODIFIER_LMB : Int32 = 256

///|
pub const MODIFIER_RMB : Int32 = 512

///|
pub const MODIFIER_MMB : Int32 = 1024

///|
/// Owned C value. copy() creates an independent copy.
pub type Event

///|
pub fn Event::new() -> Event {
  sapp_event_new()
}

///|
pub fn Event::copy(self : Event) -> Event {
  sapp_event_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Event::unsafe_native_handle(self : Event) -> @native.Handle {
  sapp_event_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Event::unsafe_from_native(ptr : @native.Handle) -> Event {
  sapp_event_from_native(ptr)
}

///|
pub fn Event::frame_count(self : Event) -> UInt64 {
  sapp_event_get_frame_count(self)
}

///|
pub fn Event::set_frame_count(self : Event, value : UInt64) -> Event {
  sapp_event_set_frame_count(self, value)
  self
}

///|
pub fn Event::type_(self : Event) -> EventType {
  sapp_event_get_type(self)
}

///|
pub fn Event::set_type(self : Event, value : EventType) -> Event {
  sapp_event_set_type(self, value)
  self
}

///|
pub fn Event::key_code(self : Event) -> Keycode {
  sapp_event_get_key_code(self)
}

///|
pub fn Event::set_key_code(self : Event, value : Keycode) -> Event {
  sapp_event_set_key_code(self, value)
  self
}

///|
pub fn Event::char_code(self : Event) -> UInt32 {
  sapp_event_get_char_code(self)
}

///|
pub fn Event::set_char_code(self : Event, value : UInt32) -> Event {
  sapp_event_set_char_code(self, value)
  self
}

///|
pub fn Event::key_repeat(self : Event) -> Bool {
  sapp_event_get_key_repeat(self)
}

///|
pub fn Event::set_key_repeat(self : Event, value : Bool) -> Event {
  sapp_event_set_key_repeat(self, value)
  self
}

///|
pub fn Event::modifiers(self : Event) -> UInt32 {
  sapp_event_get_modifiers(self)
}

///|
pub fn Event::set_modifiers(self : Event, value : UInt32) -> Event {
  sapp_event_set_modifiers(self, value)
  self
}

///|
pub fn Event::mouse_button(self : Event) -> Mousebutton {
  sapp_event_get_mouse_button(self)
}

///|
pub fn Event::set_mouse_button(self : Event, value : Mousebutton) -> Event {
  sapp_event_set_mouse_button(self, value)
  self
}

///|
pub fn Event::mouse_x(self : Event) -> Float {
  sapp_event_get_mouse_x(self)
}

///|
pub fn Event::set_mouse_x(self : Event, value : Float) -> Event {
  sapp_event_set_mouse_x(self, value)
  self
}

///|
pub fn Event::mouse_y(self : Event) -> Float {
  sapp_event_get_mouse_y(self)
}

///|
pub fn Event::set_mouse_y(self : Event, value : Float) -> Event {
  sapp_event_set_mouse_y(self, value)
  self
}

///|
pub fn Event::mouse_dx(self : Event) -> Float {
  sapp_event_get_mouse_dx(self)
}

///|
pub fn Event::set_mouse_dx(self : Event, value : Float) -> Event {
  sapp_event_set_mouse_dx(self, value)
  self
}

///|
pub fn Event::mouse_dy(self : Event) -> Float {
  sapp_event_get_mouse_dy(self)
}

///|
pub fn Event::set_mouse_dy(self : Event, value : Float) -> Event {
  sapp_event_set_mouse_dy(self, value)
  self
}

///|
pub fn Event::scroll_x(self : Event) -> Float {
  sapp_event_get_scroll_x(self)
}

///|
pub fn Event::set_scroll_x(self : Event, value : Float) -> Event {
  sapp_event_set_scroll_x(self, value)
  self
}

///|
pub fn Event::scroll_y(self : Event) -> Float {
  sapp_event_get_scroll_y(self)
}

///|
pub fn Event::set_scroll_y(self : Event, value : Float) -> Event {
  sapp_event_set_scroll_y(self, value)
  self
}

///|
pub fn Event::num_touches(self : Event) -> Int32 {
  sapp_event_get_num_touches(self)
}

///|
pub fn Event::set_num_touches(self : Event, value : Int32) -> Event {
  sapp_event_set_num_touches(self, value)
  self
}

///|
pub fn Event::touches(self : Event, i0 : Int32) -> Touchpoint {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sapp_event_get_touches(self, i0)
}

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
pub fn Event::window_width(self : Event) -> Int32 {
  sapp_event_get_window_width(self)
}

///|
pub fn Event::set_window_width(self : Event, value : Int32) -> Event {
  sapp_event_set_window_width(self, value)
  self
}

///|
pub fn Event::window_height(self : Event) -> Int32 {
  sapp_event_get_window_height(self)
}

///|
pub fn Event::set_window_height(self : Event, value : Int32) -> Event {
  sapp_event_set_window_height(self, value)
  self
}

///|
pub fn Event::framebuffer_width(self : Event) -> Int32 {
  sapp_event_get_framebuffer_width(self)
}

///|
pub fn Event::set_framebuffer_width(self : Event, value : Int32) -> Event {
  sapp_event_set_framebuffer_width(self, value)
  self
}

///|
pub fn Event::framebuffer_height(self : Event) -> Int32 {
  sapp_event_get_framebuffer_height(self)
}

///|
pub fn Event::set_framebuffer_height(self : Event, value : Int32) -> Event {
  sapp_event_set_framebuffer_height(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Range

///|
pub fn Range::new() -> Range {
  sapp_range_new()
}

///|
pub fn Range::copy(self : Range) -> Range {
  sapp_range_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Range::unsafe_native_handle(self : Range) -> @native.Handle {
  sapp_range_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Range::unsafe_from_native(ptr : @native.Handle) -> Range {
  sapp_range_from_native(ptr)
}

///|
pub fn Range::bytes(self : Range) -> Bytes {
  sapp_range_bytes(self)
}

///|
pub fn Range::from_bytes(data : Bytes) -> Range {
  sapp_range_data(data)
}

///|
pub fn Range::size(self : Range) -> UInt64 {
  sapp_range_get_size(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ImageDesc

///|
pub fn ImageDesc::new() -> ImageDesc {
  sapp_image_desc_new()
}

///|
pub fn ImageDesc::copy(self : ImageDesc) -> ImageDesc {
  sapp_image_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ImageDesc::unsafe_native_handle(self : ImageDesc) -> @native.Handle {
  sapp_image_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ImageDesc::unsafe_from_native(ptr : @native.Handle) -> ImageDesc {
  sapp_image_desc_from_native(ptr)
}

///|
pub fn ImageDesc::width(self : ImageDesc) -> Int32 {
  sapp_image_desc_get_width(self)
}

///|
pub fn ImageDesc::set_width(self : ImageDesc, value : Int32) -> ImageDesc {
  sapp_image_desc_set_width(self, value)
  self
}

///|
pub fn ImageDesc::height(self : ImageDesc) -> Int32 {
  sapp_image_desc_get_height(self)
}

///|
pub fn ImageDesc::set_height(self : ImageDesc, value : Int32) -> ImageDesc {
  sapp_image_desc_set_height(self, value)
  self
}

///|
pub fn ImageDesc::cursor_hotspot_x(self : ImageDesc) -> Int32 {
  sapp_image_desc_get_cursor_hotspot_x(self)
}

///|
pub fn ImageDesc::set_cursor_hotspot_x(
  self : ImageDesc,
  value : Int32,
) -> ImageDesc {
  sapp_image_desc_set_cursor_hotspot_x(self, value)
  self
}

///|
pub fn ImageDesc::cursor_hotspot_y(self : ImageDesc) -> Int32 {
  sapp_image_desc_get_cursor_hotspot_y(self)
}

///|
pub fn ImageDesc::set_cursor_hotspot_y(
  self : ImageDesc,
  value : Int32,
) -> ImageDesc {
  sapp_image_desc_set_cursor_hotspot_y(self, value)
  self
}

///|
pub fn ImageDesc::pixels(self : ImageDesc) -> Range {
  sapp_image_desc_get_pixels(self)
}

///|
pub fn ImageDesc::set_pixels(self : ImageDesc, value : Range) -> ImageDesc {
  sapp_image_desc_set_pixels(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type IconDesc

///|
pub fn IconDesc::new() -> IconDesc {
  sapp_icon_desc_new()
}

///|
pub fn IconDesc::copy(self : IconDesc) -> IconDesc {
  sapp_icon_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn IconDesc::unsafe_native_handle(self : IconDesc) -> @native.Handle {
  sapp_icon_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn IconDesc::unsafe_from_native(ptr : @native.Handle) -> IconDesc {
  sapp_icon_desc_from_native(ptr)
}

///|
pub fn IconDesc::sokol_default(self : IconDesc) -> Bool {
  sapp_icon_desc_get_sokol_default(self)
}

///|
pub fn IconDesc::set_sokol_default(self : IconDesc, value : Bool) -> IconDesc {
  sapp_icon_desc_set_sokol_default(self, value)
  self
}

///|
pub fn IconDesc::images(self : IconDesc, i0 : Int32) -> ImageDesc {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sapp_icon_desc_get_images(self, i0)
}

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
/// Owned C value. copy() creates an independent copy.
pub type Allocator

///|
pub fn Allocator::new() -> Allocator {
  sapp_allocator_new()
}

///|
pub fn Allocator::copy(self : Allocator) -> Allocator {
  sapp_allocator_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Allocator::unsafe_native_handle(self : Allocator) -> @native.Handle {
  sapp_allocator_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Allocator::unsafe_from_native(ptr : @native.Handle) -> Allocator {
  sapp_allocator_from_native(ptr)
}

///|
pub fn Allocator::alloc_fn(self : Allocator) -> @native.Handle {
  sapp_allocator_get_alloc_fn(self)
}

///|
pub fn Allocator::set_alloc_fn(
  self : Allocator,
  value : @native.Handle,
) -> Allocator {
  sapp_allocator_set_alloc_fn(self, value)
  self
}

///|
pub fn Allocator::free_fn(self : Allocator) -> @native.Handle {
  sapp_allocator_get_free_fn(self)
}

///|
pub fn Allocator::set_free_fn(
  self : Allocator,
  value : @native.Handle,
) -> Allocator {
  sapp_allocator_set_free_fn(self, value)
  self
}

///|
pub fn Allocator::user_data(self : Allocator) -> @native.Handle {
  sapp_allocator_get_user_data(self)
}

///|
pub fn Allocator::set_user_data(
  self : Allocator,
  value : @native.Handle,
) -> Allocator {
  sapp_allocator_set_user_data(self, value)
  self
}

///|
#derive(Debug, Eq)
pub(all) enum LogItem {
  Ok = 0
  MallocFailed = 1
  SwapchainDepthformatInvalid = 2
  MacosInvalidNsopenglProfile = 3
  MetalCreateSwapchainDepthTextureFailed = 4
  MetalCreateSwapchainMsaaTextureFailed = 5
  Win32LoadOpengl32DllFailed = 6
  Win32CreateHelperWindowFailed = 7
  Win32HelperWindowGetdcFailed = 8
  Win32DummyContextSetPixelformatFailed = 9
  Win32CreateDummyContextFailed = 10
  Win32DummyContextMakeCurrentFailed = 11
  Win32GetPixelformatAttribFailed = 12
  Win32WglFindPixelformatFailed = 13
  Win32WglDescribePixelformatFailed = 14
  Win32WglSetPixelformatFailed = 15
  Win32WglArbCreateContextRequired = 16
  Win32WglArbCreateContextProfileRequired = 17
  Win32WglOpenglVersionNotSupported = 18
  Win32WglOpenglProfileNotSupported = 19
  Win32WglIncompatibleDeviceContext = 20
  Win32WglCreateContextAttribsFailedOther = 21
  Win32D3d11CreateDeviceWithDebugFailed = 22
  Win32D3d11CreateDeviceFailed = 23
  Win32D3d11GetIdxgifactoryFailed = 24
  Win32D3d11GetIdxgiadapterFailed = 25
  Win32D3d11QueryInterfaceIdxgidevice1Failed = 26
  Win32D3d11CreateSwapchainFailed = 27
  Win32RegisterRawInputDevicesFailedMouseLock = 28
  Win32RegisterRawInputDevicesFailedMouseUnlock = 29
  Win32GetRawInputDataFailed = 30
  Win32DestroyiconForCursorFailed = 31
  LinuxGlxLoadLibglFailed = 32
  LinuxGlxLoadEntryPointsFailed = 33
  LinuxGlxExtensionNotFound = 34
  LinuxGlxQueryVersionFailed = 35
  LinuxGlxVersionTooLow = 36
  LinuxGlxNoGlxfbconfigs = 37
  LinuxGlxNoSuitableGlxfbconfig = 38
  LinuxGlxGetVisualFromFbconfigFailed = 39
  LinuxGlxRequiredExtensionsMissing = 40
  LinuxGlxCreateContextFailed = 41
  LinuxGlxCreateWindowFailed = 42
  LinuxX11CreateWindowFailed = 43
  LinuxEglBindOpenglApiFailed = 44
  LinuxEglBindOpenglEsApiFailed = 45
  LinuxEglGetDisplayFailed = 46
  LinuxEglInitializeFailed = 47
  LinuxEglNoConfigs = 48
  LinuxEglNoNativeVisual = 49
  LinuxEglGetVisualInfoFailed = 50
  LinuxEglCreateWindowSurfaceFailed = 51
  LinuxEglCreateContextFailed = 52
  LinuxEglMakeCurrentFailed = 53
  LinuxX11OpenDisplayFailed = 54
  LinuxX11QuerySystemDpiFailed = 55
  LinuxX11DroppedFileUriWrongScheme = 56
  LinuxX11FailedToBecomeOwnerOfClipboard = 57
  AndroidUnsupportedInputEventInputCb = 58
  AndroidUnsupportedInputEventMainCb = 59
  AndroidReadMsgFailed = 60
  AndroidWriteMsgFailed = 61
  AndroidMsgCreate = 62
  AndroidMsgResume = 63
  AndroidMsgPause = 64
  AndroidMsgFocus = 65
  AndroidMsgNoFocus = 66
  AndroidMsgSetNativeWindow = 67
  AndroidMsgSetInputQueue = 68
  AndroidMsgDestroy = 69
  AndroidUnknownMsg = 70
  AndroidLoopThreadStarted = 71
  AndroidLoopThreadDone = 72
  AndroidNativeActivityOnstart = 73
  AndroidNativeActivityOnresume = 74
  AndroidNativeActivityOnsaveinstancestate = 75
  AndroidNativeActivityOnwindowfocuschanged = 76
  AndroidNativeActivityOnpause = 77
  AndroidNativeActivityOnstop = 78
  AndroidNativeActivityOnnativewindowcreated = 79
  AndroidNativeActivityOnnativewindowdestroyed = 80
  AndroidNativeActivityOninputqueuecreated = 81
  AndroidNativeActivityOninputqueuedestroyed = 82
  AndroidNativeActivityOnconfigurationchanged = 83
  AndroidNativeActivityOnlowmemory = 84
  AndroidNativeActivityOndestroy = 85
  AndroidNativeActivityDone = 86
  AndroidNativeActivityOncreate = 87
  AndroidCreateThreadPipeFailed = 88
  AndroidNativeActivityCreateSuccess = 89
  AndroidChoreographerEnabled = 90
  AndroidChoreographerUnavailable = 91
  WgpuDeviceLost = 92
  WgpuDeviceLog = 93
  WgpuDeviceUncapturedError = 94
  WgpuSwapchainCreateSurfaceFailed = 95
  WgpuSwapchainSurfaceGetCapabilitiesFailed = 96
  WgpuSwapchainCreateDepthStencilTextureFailed = 97
  WgpuSwapchainCreateDepthStencilViewFailed = 98
  WgpuSwapchainCreateMsaaTextureFailed = 99
  WgpuSwapchainCreateMsaaViewFailed = 100
  WgpuSwapchainGetcurrenttextureFailed = 101
  WgpuRequestDeviceStatusError = 102
  WgpuRequestDeviceStatusUnknown = 103
  WgpuRequestAdapterStatusUnavailable = 104
  WgpuRequestAdapterStatusError = 105
  WgpuRequestAdapterStatusUnknown = 106
  WgpuCreateInstanceFailed = 107
  VulkanDebugGeneral = 108
  VulkanDebugValidation = 109
  VulkanDebugPerformance = 110
  VulkanRequiredInstanceExtensionFunctionMissing = 111
  VulkanAllocDeviceMemoryNoSuitableMemoryType = 112
  VulkanAllocateMemoryFailed = 113
  VulkanCreateInstanceFailed = 114
  VulkanEnumeratePhysicalDevicesFailed = 115
  VulkanNoPhysicalDevicesFound = 116
  VulkanNoSuitablePhysicalDeviceFound = 117
  VulkanCreateDeviceFailedExtensionNotPresent = 118
  VulkanCreateDeviceFailedFeatureNotPresent = 119
  VulkanCreateDeviceFailedInitializationFailed = 120
  VulkanCreateDeviceFailedOther = 121
  VulkanCreateSurfaceFailed = 122
  VulkanCreateSwapchainFailed = 123
  VulkanSwapchainCreateImageViewFailed = 124
  VulkanSwapchainCreateImageFailed = 125
  VulkanSwapchainAllocImageDeviceMemoryFailed = 126
  VulkanSwapchainBindImageMemoryFailed = 127
  VulkanAcquireNextImageFailed = 128
  VulkanQueuePresentFailed = 129
  ImageDataSizeMismatch = 130
  DroppedFilePathTooLong = 131
  ClipboardStringTooBig = 132
}

///|
pub extend LogItem with Eq::{equal, not_equal}

///|
pub extend LogItem with @debug.Debug::{to_repr}

///|
pub fn LogItem::to_int(self : LogItem) -> Int32 {
  sapp_log_item_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum PixelFormat {
  Default = 0
  None = 1
  Rgba8 = 2
  Srgb8a8 = 3
  Bgra8 = 4
  Sbgr8a8 = 5
  Rgba16f = 6
  Depth = 7
  DepthStencil = 8
}

///|
pub extend PixelFormat with Eq::{equal, not_equal}

///|
pub extend PixelFormat with @debug.Debug::{to_repr}

///|
pub fn PixelFormat::to_int(self : PixelFormat) -> Int32 {
  sapp_pixel_format_int(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type EnvironmentDefaults

///|
pub fn EnvironmentDefaults::new() -> EnvironmentDefaults {
  sapp_environment_defaults_new()
}

///|
pub fn EnvironmentDefaults::copy(
  self : EnvironmentDefaults,
) -> EnvironmentDefaults {
  sapp_environment_defaults_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn EnvironmentDefaults::unsafe_native_handle(
  self : EnvironmentDefaults,
) -> @native.Handle {
  sapp_environment_defaults_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn EnvironmentDefaults::unsafe_from_native(
  ptr : @native.Handle,
) -> EnvironmentDefaults {
  sapp_environment_defaults_from_native(ptr)
}

///|
pub fn EnvironmentDefaults::color_format(
  self : EnvironmentDefaults,
) -> PixelFormat {
  sapp_environment_defaults_get_color_format(self)
}

///|
pub fn EnvironmentDefaults::set_color_format(
  self : EnvironmentDefaults,
  value : PixelFormat,
) -> EnvironmentDefaults {
  sapp_environment_defaults_set_color_format(self, value)
  self
}

///|
pub fn EnvironmentDefaults::depth_format(
  self : EnvironmentDefaults,
) -> PixelFormat {
  sapp_environment_defaults_get_depth_format(self)
}

///|
pub fn EnvironmentDefaults::set_depth_format(
  self : EnvironmentDefaults,
  value : PixelFormat,
) -> EnvironmentDefaults {
  sapp_environment_defaults_set_depth_format(self, value)
  self
}

///|
pub fn EnvironmentDefaults::sample_count(self : EnvironmentDefaults) -> Int32 {
  sapp_environment_defaults_get_sample_count(self)
}

///|
pub fn EnvironmentDefaults::set_sample_count(
  self : EnvironmentDefaults,
  value : Int32,
) -> EnvironmentDefaults {
  sapp_environment_defaults_set_sample_count(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type MetalEnvironment

///|
pub fn MetalEnvironment::new() -> MetalEnvironment {
  sapp_metal_environment_new()
}

///|
pub fn MetalEnvironment::copy(self : MetalEnvironment) -> MetalEnvironment {
  sapp_metal_environment_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn MetalEnvironment::unsafe_native_handle(
  self : MetalEnvironment,
) -> @native.Handle {
  sapp_metal_environment_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn MetalEnvironment::unsafe_from_native(
  ptr : @native.Handle,
) -> MetalEnvironment {
  sapp_metal_environment_from_native(ptr)
}

///|
pub fn MetalEnvironment::device(self : MetalEnvironment) -> @native.Handle {
  sapp_metal_environment_get_device(self)
}

///|
pub fn MetalEnvironment::set_device(
  self : MetalEnvironment,
  value : @native.Handle,
) -> MetalEnvironment {
  sapp_metal_environment_set_device(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type D3d11Environment

///|
pub fn D3d11Environment::new() -> D3d11Environment {
  sapp_d3d11_environment_new()
}

///|
pub fn D3d11Environment::copy(self : D3d11Environment) -> D3d11Environment {
  sapp_d3d11_environment_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn D3d11Environment::unsafe_native_handle(
  self : D3d11Environment,
) -> @native.Handle {
  sapp_d3d11_environment_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn D3d11Environment::unsafe_from_native(
  ptr : @native.Handle,
) -> D3d11Environment {
  sapp_d3d11_environment_from_native(ptr)
}

///|
pub fn D3d11Environment::device(self : D3d11Environment) -> @native.Handle {
  sapp_d3d11_environment_get_device(self)
}

///|
pub fn D3d11Environment::set_device(
  self : D3d11Environment,
  value : @native.Handle,
) -> D3d11Environment {
  sapp_d3d11_environment_set_device(self, value)
  self
}

///|
pub fn D3d11Environment::device_context(
  self : D3d11Environment,
) -> @native.Handle {
  sapp_d3d11_environment_get_device_context(self)
}

///|
pub fn D3d11Environment::set_device_context(
  self : D3d11Environment,
  value : @native.Handle,
) -> D3d11Environment {
  sapp_d3d11_environment_set_device_context(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type WgpuEnvironment

///|
pub fn WgpuEnvironment::new() -> WgpuEnvironment {
  sapp_wgpu_environment_new()
}

///|
pub fn WgpuEnvironment::copy(self : WgpuEnvironment) -> WgpuEnvironment {
  sapp_wgpu_environment_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WgpuEnvironment::unsafe_native_handle(
  self : WgpuEnvironment,
) -> @native.Handle {
  sapp_wgpu_environment_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WgpuEnvironment::unsafe_from_native(
  ptr : @native.Handle,
) -> WgpuEnvironment {
  sapp_wgpu_environment_from_native(ptr)
}

///|
pub fn WgpuEnvironment::device(self : WgpuEnvironment) -> @native.Handle {
  sapp_wgpu_environment_get_device(self)
}

///|
pub fn WgpuEnvironment::set_device(
  self : WgpuEnvironment,
  value : @native.Handle,
) -> WgpuEnvironment {
  sapp_wgpu_environment_set_device(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type VulkanEnvironment

///|
pub fn VulkanEnvironment::new() -> VulkanEnvironment {
  sapp_vulkan_environment_new()
}

///|
pub fn VulkanEnvironment::copy(self : VulkanEnvironment) -> VulkanEnvironment {
  sapp_vulkan_environment_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn VulkanEnvironment::unsafe_native_handle(
  self : VulkanEnvironment,
) -> @native.Handle {
  sapp_vulkan_environment_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn VulkanEnvironment::unsafe_from_native(
  ptr : @native.Handle,
) -> VulkanEnvironment {
  sapp_vulkan_environment_from_native(ptr)
}

///|
pub fn VulkanEnvironment::instance(self : VulkanEnvironment) -> @native.Handle {
  sapp_vulkan_environment_get_instance(self)
}

///|
pub fn VulkanEnvironment::set_instance(
  self : VulkanEnvironment,
  value : @native.Handle,
) -> VulkanEnvironment {
  sapp_vulkan_environment_set_instance(self, value)
  self
}

///|
pub fn VulkanEnvironment::physical_device(
  self : VulkanEnvironment,
) -> @native.Handle {
  sapp_vulkan_environment_get_physical_device(self)
}

///|
pub fn VulkanEnvironment::set_physical_device(
  self : VulkanEnvironment,
  value : @native.Handle,
) -> VulkanEnvironment {
  sapp_vulkan_environment_set_physical_device(self, value)
  self
}

///|
pub fn VulkanEnvironment::device(self : VulkanEnvironment) -> @native.Handle {
  sapp_vulkan_environment_get_device(self)
}

///|
pub fn VulkanEnvironment::set_device(
  self : VulkanEnvironment,
  value : @native.Handle,
) -> VulkanEnvironment {
  sapp_vulkan_environment_set_device(self, value)
  self
}

///|
pub fn VulkanEnvironment::queue(self : VulkanEnvironment) -> @native.Handle {
  sapp_vulkan_environment_get_queue(self)
}

///|
pub fn VulkanEnvironment::set_queue(
  self : VulkanEnvironment,
  value : @native.Handle,
) -> VulkanEnvironment {
  sapp_vulkan_environment_set_queue(self, value)
  self
}

///|
pub fn VulkanEnvironment::queue_family_index(
  self : VulkanEnvironment,
) -> UInt32 {
  sapp_vulkan_environment_get_queue_family_index(self)
}

///|
pub fn VulkanEnvironment::set_queue_family_index(
  self : VulkanEnvironment,
  value : UInt32,
) -> VulkanEnvironment {
  sapp_vulkan_environment_set_queue_family_index(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Environment

///|
pub fn Environment::new() -> Environment {
  sapp_environment_new()
}

///|
pub fn Environment::copy(self : Environment) -> Environment {
  sapp_environment_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Environment::unsafe_native_handle(self : Environment) -> @native.Handle {
  sapp_environment_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Environment::unsafe_from_native(ptr : @native.Handle) -> Environment {
  sapp_environment_from_native(ptr)
}

///|
pub fn Environment::defaults(self : Environment) -> EnvironmentDefaults {
  sapp_environment_get_defaults(self)
}

///|
pub fn Environment::set_defaults(
  self : Environment,
  value : EnvironmentDefaults,
) -> Environment {
  sapp_environment_set_defaults(self, value)
  self
}

///|
pub fn Environment::metal(self : Environment) -> MetalEnvironment {
  sapp_environment_get_metal(self)
}

///|
pub fn Environment::set_metal(
  self : Environment,
  value : MetalEnvironment,
) -> Environment {
  sapp_environment_set_metal(self, value)
  self
}

///|
pub fn Environment::d3d11(self : Environment) -> D3d11Environment {
  sapp_environment_get_d3d11(self)
}

///|
pub fn Environment::set_d3d11(
  self : Environment,
  value : D3d11Environment,
) -> Environment {
  sapp_environment_set_d3d11(self, value)
  self
}

///|
pub fn Environment::wgpu(self : Environment) -> WgpuEnvironment {
  sapp_environment_get_wgpu(self)
}

///|
pub fn Environment::set_wgpu(
  self : Environment,
  value : WgpuEnvironment,
) -> Environment {
  sapp_environment_set_wgpu(self, value)
  self
}

///|
pub fn Environment::vulkan(self : Environment) -> VulkanEnvironment {
  sapp_environment_get_vulkan(self)
}

///|
pub fn Environment::set_vulkan(
  self : Environment,
  value : VulkanEnvironment,
) -> Environment {
  sapp_environment_set_vulkan(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type MetalSwapchain

///|
pub fn MetalSwapchain::new() -> MetalSwapchain {
  sapp_metal_swapchain_new()
}

///|
pub fn MetalSwapchain::copy(self : MetalSwapchain) -> MetalSwapchain {
  sapp_metal_swapchain_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn MetalSwapchain::unsafe_native_handle(
  self : MetalSwapchain,
) -> @native.Handle {
  sapp_metal_swapchain_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn MetalSwapchain::unsafe_from_native(
  ptr : @native.Handle,
) -> MetalSwapchain {
  sapp_metal_swapchain_from_native(ptr)
}

///|
pub fn MetalSwapchain::current_drawable(
  self : MetalSwapchain,
) -> @native.Handle {
  sapp_metal_swapchain_get_current_drawable(self)
}

///|
pub fn MetalSwapchain::set_current_drawable(
  self : MetalSwapchain,
  value : @native.Handle,
) -> MetalSwapchain {
  sapp_metal_swapchain_set_current_drawable(self, value)
  self
}

///|
pub fn MetalSwapchain::depth_stencil_texture(
  self : MetalSwapchain,
) -> @native.Handle {
  sapp_metal_swapchain_get_depth_stencil_texture(self)
}

///|
pub fn MetalSwapchain::set_depth_stencil_texture(
  self : MetalSwapchain,
  value : @native.Handle,
) -> MetalSwapchain {
  sapp_metal_swapchain_set_depth_stencil_texture(self, value)
  self
}

///|
pub fn MetalSwapchain::msaa_color_texture(
  self : MetalSwapchain,
) -> @native.Handle {
  sapp_metal_swapchain_get_msaa_color_texture(self)
}

///|
pub fn MetalSwapchain::set_msaa_color_texture(
  self : MetalSwapchain,
  value : @native.Handle,
) -> MetalSwapchain {
  sapp_metal_swapchain_set_msaa_color_texture(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type D3d11Swapchain

///|
pub fn D3d11Swapchain::new() -> D3d11Swapchain {
  sapp_d3d11_swapchain_new()
}

///|
pub fn D3d11Swapchain::copy(self : D3d11Swapchain) -> D3d11Swapchain {
  sapp_d3d11_swapchain_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn D3d11Swapchain::unsafe_native_handle(
  self : D3d11Swapchain,
) -> @native.Handle {
  sapp_d3d11_swapchain_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn D3d11Swapchain::unsafe_from_native(
  ptr : @native.Handle,
) -> D3d11Swapchain {
  sapp_d3d11_swapchain_from_native(ptr)
}

///|
pub fn D3d11Swapchain::render_view(self : D3d11Swapchain) -> @native.Handle {
  sapp_d3d11_swapchain_get_render_view(self)
}

///|
pub fn D3d11Swapchain::set_render_view(
  self : D3d11Swapchain,
  value : @native.Handle,
) -> D3d11Swapchain {
  sapp_d3d11_swapchain_set_render_view(self, value)
  self
}

///|
pub fn D3d11Swapchain::resolve_view(self : D3d11Swapchain) -> @native.Handle {
  sapp_d3d11_swapchain_get_resolve_view(self)
}

///|
pub fn D3d11Swapchain::set_resolve_view(
  self : D3d11Swapchain,
  value : @native.Handle,
) -> D3d11Swapchain {
  sapp_d3d11_swapchain_set_resolve_view(self, value)
  self
}

///|
pub fn D3d11Swapchain::depth_stencil_view(
  self : D3d11Swapchain,
) -> @native.Handle {
  sapp_d3d11_swapchain_get_depth_stencil_view(self)
}

///|
pub fn D3d11Swapchain::set_depth_stencil_view(
  self : D3d11Swapchain,
  value : @native.Handle,
) -> D3d11Swapchain {
  sapp_d3d11_swapchain_set_depth_stencil_view(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type WgpuSwapchain

///|
pub fn WgpuSwapchain::new() -> WgpuSwapchain {
  sapp_wgpu_swapchain_new()
}

///|
pub fn WgpuSwapchain::copy(self : WgpuSwapchain) -> WgpuSwapchain {
  sapp_wgpu_swapchain_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WgpuSwapchain::unsafe_native_handle(
  self : WgpuSwapchain,
) -> @native.Handle {
  sapp_wgpu_swapchain_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WgpuSwapchain::unsafe_from_native(ptr : @native.Handle) -> WgpuSwapchain {
  sapp_wgpu_swapchain_from_native(ptr)
}

///|
pub fn WgpuSwapchain::render_view(self : WgpuSwapchain) -> @native.Handle {
  sapp_wgpu_swapchain_get_render_view(self)
}

///|
pub fn WgpuSwapchain::set_render_view(
  self : WgpuSwapchain,
  value : @native.Handle,
) -> WgpuSwapchain {
  sapp_wgpu_swapchain_set_render_view(self, value)
  self
}

///|
pub fn WgpuSwapchain::resolve_view(self : WgpuSwapchain) -> @native.Handle {
  sapp_wgpu_swapchain_get_resolve_view(self)
}

///|
pub fn WgpuSwapchain::set_resolve_view(
  self : WgpuSwapchain,
  value : @native.Handle,
) -> WgpuSwapchain {
  sapp_wgpu_swapchain_set_resolve_view(self, value)
  self
}

///|
pub fn WgpuSwapchain::depth_stencil_view(
  self : WgpuSwapchain,
) -> @native.Handle {
  sapp_wgpu_swapchain_get_depth_stencil_view(self)
}

///|
pub fn WgpuSwapchain::set_depth_stencil_view(
  self : WgpuSwapchain,
  value : @native.Handle,
) -> WgpuSwapchain {
  sapp_wgpu_swapchain_set_depth_stencil_view(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type VulkanSwapchain

///|
pub fn VulkanSwapchain::new() -> VulkanSwapchain {
  sapp_vulkan_swapchain_new()
}

///|
pub fn VulkanSwapchain::copy(self : VulkanSwapchain) -> VulkanSwapchain {
  sapp_vulkan_swapchain_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn VulkanSwapchain::unsafe_native_handle(
  self : VulkanSwapchain,
) -> @native.Handle {
  sapp_vulkan_swapchain_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn VulkanSwapchain::unsafe_from_native(
  ptr : @native.Handle,
) -> VulkanSwapchain {
  sapp_vulkan_swapchain_from_native(ptr)
}

///|
pub fn VulkanSwapchain::render_image(self : VulkanSwapchain) -> @native.Handle {
  sapp_vulkan_swapchain_get_render_image(self)
}

///|
pub fn VulkanSwapchain::set_render_image(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sapp_vulkan_swapchain_set_render_image(self, value)
  self
}

///|
pub fn VulkanSwapchain::render_view(self : VulkanSwapchain) -> @native.Handle {
  sapp_vulkan_swapchain_get_render_view(self)
}

///|
pub fn VulkanSwapchain::set_render_view(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sapp_vulkan_swapchain_set_render_view(self, value)
  self
}

///|
pub fn VulkanSwapchain::resolve_image(self : VulkanSwapchain) -> @native.Handle {
  sapp_vulkan_swapchain_get_resolve_image(self)
}

///|
pub fn VulkanSwapchain::set_resolve_image(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sapp_vulkan_swapchain_set_resolve_image(self, value)
  self
}

///|
pub fn VulkanSwapchain::resolve_view(self : VulkanSwapchain) -> @native.Handle {
  sapp_vulkan_swapchain_get_resolve_view(self)
}

///|
pub fn VulkanSwapchain::set_resolve_view(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sapp_vulkan_swapchain_set_resolve_view(self, value)
  self
}

///|
pub fn VulkanSwapchain::depth_stencil_image(
  self : VulkanSwapchain,
) -> @native.Handle {
  sapp_vulkan_swapchain_get_depth_stencil_image(self)
}

///|
pub fn VulkanSwapchain::set_depth_stencil_image(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sapp_vulkan_swapchain_set_depth_stencil_image(self, value)
  self
}

///|
pub fn VulkanSwapchain::depth_stencil_view(
  self : VulkanSwapchain,
) -> @native.Handle {
  sapp_vulkan_swapchain_get_depth_stencil_view(self)
}

///|
pub fn VulkanSwapchain::set_depth_stencil_view(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sapp_vulkan_swapchain_set_depth_stencil_view(self, value)
  self
}

///|
pub fn VulkanSwapchain::render_finished_semaphore(
  self : VulkanSwapchain,
) -> @native.Handle {
  sapp_vulkan_swapchain_get_render_finished_semaphore(self)
}

///|
pub fn VulkanSwapchain::set_render_finished_semaphore(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sapp_vulkan_swapchain_set_render_finished_semaphore(self, value)
  self
}

///|
pub fn VulkanSwapchain::present_complete_semaphore(
  self : VulkanSwapchain,
) -> @native.Handle {
  sapp_vulkan_swapchain_get_present_complete_semaphore(self)
}

///|
pub fn VulkanSwapchain::set_present_complete_semaphore(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sapp_vulkan_swapchain_set_present_complete_semaphore(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type GlSwapchain

///|
pub fn GlSwapchain::new() -> GlSwapchain {
  sapp_gl_swapchain_new()
}

///|
pub fn GlSwapchain::copy(self : GlSwapchain) -> GlSwapchain {
  sapp_gl_swapchain_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn GlSwapchain::unsafe_native_handle(self : GlSwapchain) -> @native.Handle {
  sapp_gl_swapchain_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn GlSwapchain::unsafe_from_native(ptr : @native.Handle) -> GlSwapchain {
  sapp_gl_swapchain_from_native(ptr)
}

///|
pub fn GlSwapchain::framebuffer(self : GlSwapchain) -> UInt32 {
  sapp_gl_swapchain_get_framebuffer(self)
}

///|
pub fn GlSwapchain::set_framebuffer(
  self : GlSwapchain,
  value : UInt32,
) -> GlSwapchain {
  sapp_gl_swapchain_set_framebuffer(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Swapchain

///|
pub fn Swapchain::new() -> Swapchain {
  sapp_swapchain_new()
}

///|
pub fn Swapchain::copy(self : Swapchain) -> Swapchain {
  sapp_swapchain_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Swapchain::unsafe_native_handle(self : Swapchain) -> @native.Handle {
  sapp_swapchain_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Swapchain::unsafe_from_native(ptr : @native.Handle) -> Swapchain {
  sapp_swapchain_from_native(ptr)
}

///|
pub fn Swapchain::invalid(self : Swapchain) -> Bool {
  sapp_swapchain_get_invalid(self)
}

///|
pub fn Swapchain::set_invalid(self : Swapchain, value : Bool) -> Swapchain {
  sapp_swapchain_set_invalid(self, value)
  self
}

///|
pub fn Swapchain::width(self : Swapchain) -> Int32 {
  sapp_swapchain_get_width(self)
}

///|
pub fn Swapchain::set_width(self : Swapchain, value : Int32) -> Swapchain {
  sapp_swapchain_set_width(self, value)
  self
}

///|
pub fn Swapchain::height(self : Swapchain) -> Int32 {
  sapp_swapchain_get_height(self)
}

///|
pub fn Swapchain::set_height(self : Swapchain, value : Int32) -> Swapchain {
  sapp_swapchain_set_height(self, value)
  self
}

///|
pub fn Swapchain::sample_count(self : Swapchain) -> Int32 {
  sapp_swapchain_get_sample_count(self)
}

///|
pub fn Swapchain::set_sample_count(
  self : Swapchain,
  value : Int32,
) -> Swapchain {
  sapp_swapchain_set_sample_count(self, value)
  self
}

///|
pub fn Swapchain::color_format(self : Swapchain) -> PixelFormat {
  sapp_swapchain_get_color_format(self)
}

///|
pub fn Swapchain::set_color_format(
  self : Swapchain,
  value : PixelFormat,
) -> Swapchain {
  sapp_swapchain_set_color_format(self, value)
  self
}

///|
pub fn Swapchain::depth_format(self : Swapchain) -> PixelFormat {
  sapp_swapchain_get_depth_format(self)
}

///|
pub fn Swapchain::set_depth_format(
  self : Swapchain,
  value : PixelFormat,
) -> Swapchain {
  sapp_swapchain_set_depth_format(self, value)
  self
}

///|
pub fn Swapchain::metal(self : Swapchain) -> MetalSwapchain {
  sapp_swapchain_get_metal(self)
}

///|
pub fn Swapchain::set_metal(
  self : Swapchain,
  value : MetalSwapchain,
) -> Swapchain {
  sapp_swapchain_set_metal(self, value)
  self
}

///|
pub fn Swapchain::d3d11(self : Swapchain) -> D3d11Swapchain {
  sapp_swapchain_get_d3d11(self)
}

///|
pub fn Swapchain::set_d3d11(
  self : Swapchain,
  value : D3d11Swapchain,
) -> Swapchain {
  sapp_swapchain_set_d3d11(self, value)
  self
}

///|
pub fn Swapchain::wgpu(self : Swapchain) -> WgpuSwapchain {
  sapp_swapchain_get_wgpu(self)
}

///|
pub fn Swapchain::set_wgpu(
  self : Swapchain,
  value : WgpuSwapchain,
) -> Swapchain {
  sapp_swapchain_set_wgpu(self, value)
  self
}

///|
pub fn Swapchain::vulkan(self : Swapchain) -> VulkanSwapchain {
  sapp_swapchain_get_vulkan(self)
}

///|
pub fn Swapchain::set_vulkan(
  self : Swapchain,
  value : VulkanSwapchain,
) -> Swapchain {
  sapp_swapchain_set_vulkan(self, value)
  self
}

///|
pub fn Swapchain::gl(self : Swapchain) -> GlSwapchain {
  sapp_swapchain_get_gl(self)
}

///|
pub fn Swapchain::set_gl(self : Swapchain, value : GlSwapchain) -> Swapchain {
  sapp_swapchain_set_gl(self, value)
  self
}

///|
#derive(Debug, Eq)
pub(all) enum CompositeMode {
  Default = 0
  Opaque = 1
  Premultiplied = 2
}

///|
pub extend CompositeMode with Eq::{equal, not_equal}

///|
pub extend CompositeMode with @debug.Debug::{to_repr}

///|
pub fn CompositeMode::to_int(self : CompositeMode) -> Int32 {
  sapp_composite_mode_int(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Logger

///|
pub fn Logger::new() -> Logger {
  sapp_logger_new()
}

///|
pub fn Logger::copy(self : Logger) -> Logger {
  sapp_logger_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Logger::unsafe_native_handle(self : Logger) -> @native.Handle {
  sapp_logger_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Logger::unsafe_from_native(ptr : @native.Handle) -> Logger {
  sapp_logger_from_native(ptr)
}

///|
pub fn Logger::func(self : Logger) -> @native.Handle {
  sapp_logger_get_func(self)
}

///|
pub fn Logger::set_func(self : Logger, value : @native.Handle) -> Logger {
  sapp_logger_set_func(self, value)
  self
}

///|
pub fn Logger::user_data(self : Logger) -> @native.Handle {
  sapp_logger_get_user_data(self)
}

///|
pub fn Logger::set_user_data(self : Logger, value : @native.Handle) -> Logger {
  sapp_logger_set_user_data(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type GlDesc

///|
pub fn GlDesc::new() -> GlDesc {
  sapp_gl_desc_new()
}

///|
pub fn GlDesc::copy(self : GlDesc) -> GlDesc {
  sapp_gl_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn GlDesc::unsafe_native_handle(self : GlDesc) -> @native.Handle {
  sapp_gl_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn GlDesc::unsafe_from_native(ptr : @native.Handle) -> GlDesc {
  sapp_gl_desc_from_native(ptr)
}

///|
pub fn GlDesc::major_version(self : GlDesc) -> Int32 {
  sapp_gl_desc_get_major_version(self)
}

///|
pub fn GlDesc::set_major_version(self : GlDesc, value : Int32) -> GlDesc {
  sapp_gl_desc_set_major_version(self, value)
  self
}

///|
pub fn GlDesc::minor_version(self : GlDesc) -> Int32 {
  sapp_gl_desc_get_minor_version(self)
}

///|
pub fn GlDesc::set_minor_version(self : GlDesc, value : Int32) -> GlDesc {
  sapp_gl_desc_set_minor_version(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Win32Desc

///|
pub fn Win32Desc::new() -> Win32Desc {
  sapp_win32_desc_new()
}

///|
pub fn Win32Desc::copy(self : Win32Desc) -> Win32Desc {
  sapp_win32_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Win32Desc::unsafe_native_handle(self : Win32Desc) -> @native.Handle {
  sapp_win32_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Win32Desc::unsafe_from_native(ptr : @native.Handle) -> Win32Desc {
  sapp_win32_desc_from_native(ptr)
}

///|
pub fn Win32Desc::console_utf8(self : Win32Desc) -> Bool {
  sapp_win32_desc_get_console_utf8(self)
}

///|
pub fn Win32Desc::set_console_utf8(self : Win32Desc, value : Bool) -> Win32Desc {
  sapp_win32_desc_set_console_utf8(self, value)
  self
}

///|
pub fn Win32Desc::console_create(self : Win32Desc) -> Bool {
  sapp_win32_desc_get_console_create(self)
}

///|
pub fn Win32Desc::set_console_create(
  self : Win32Desc,
  value : Bool,
) -> Win32Desc {
  sapp_win32_desc_set_console_create(self, value)
  self
}

///|
pub fn Win32Desc::console_attach(self : Win32Desc) -> Bool {
  sapp_win32_desc_get_console_attach(self)
}

///|
pub fn Win32Desc::set_console_attach(
  self : Win32Desc,
  value : Bool,
) -> Win32Desc {
  sapp_win32_desc_set_console_attach(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Html5Desc

///|
pub fn Html5Desc::new() -> Html5Desc {
  sapp_html5_desc_new()
}

///|
pub fn Html5Desc::copy(self : Html5Desc) -> Html5Desc {
  sapp_html5_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Html5Desc::unsafe_native_handle(self : Html5Desc) -> @native.Handle {
  sapp_html5_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Html5Desc::unsafe_from_native(ptr : @native.Handle) -> Html5Desc {
  sapp_html5_desc_from_native(ptr)
}

///|
pub fn Html5Desc::canvas_selector(self : Html5Desc) -> String {
  @utf8.decode_lossy(sapp_html5_desc_get_canvas_selector(self))
}

///|
pub fn Html5Desc::set_canvas_selector(
  self : Html5Desc,
  value : String,
) -> Html5Desc {
  sapp_html5_desc_set_canvas_selector(self, @native.cstring(value))
  self
}

///|
pub fn Html5Desc::canvas_resize(self : Html5Desc) -> Bool {
  sapp_html5_desc_get_canvas_resize(self)
}

///|
pub fn Html5Desc::set_canvas_resize(
  self : Html5Desc,
  value : Bool,
) -> Html5Desc {
  sapp_html5_desc_set_canvas_resize(self, value)
  self
}

///|
pub fn Html5Desc::preserve_drawing_buffer(self : Html5Desc) -> Bool {
  sapp_html5_desc_get_preserve_drawing_buffer(self)
}

///|
pub fn Html5Desc::set_preserve_drawing_buffer(
  self : Html5Desc,
  value : Bool,
) -> Html5Desc {
  sapp_html5_desc_set_preserve_drawing_buffer(self, value)
  self
}

///|
pub fn Html5Desc::ask_leave_site(self : Html5Desc) -> Bool {
  sapp_html5_desc_get_ask_leave_site(self)
}

///|
pub fn Html5Desc::set_ask_leave_site(
  self : Html5Desc,
  value : Bool,
) -> Html5Desc {
  sapp_html5_desc_set_ask_leave_site(self, value)
  self
}

///|
pub fn Html5Desc::update_document_title(self : Html5Desc) -> Bool {
  sapp_html5_desc_get_update_document_title(self)
}

///|
pub fn Html5Desc::set_update_document_title(
  self : Html5Desc,
  value : Bool,
) -> Html5Desc {
  sapp_html5_desc_set_update_document_title(self, value)
  self
}

///|
pub fn Html5Desc::bubble_mouse_events(self : Html5Desc) -> Bool {
  sapp_html5_desc_get_bubble_mouse_events(self)
}

///|
pub fn Html5Desc::set_bubble_mouse_events(
  self : Html5Desc,
  value : Bool,
) -> Html5Desc {
  sapp_html5_desc_set_bubble_mouse_events(self, value)
  self
}

///|
pub fn Html5Desc::bubble_touch_events(self : Html5Desc) -> Bool {
  sapp_html5_desc_get_bubble_touch_events(self)
}

///|
pub fn Html5Desc::set_bubble_touch_events(
  self : Html5Desc,
  value : Bool,
) -> Html5Desc {
  sapp_html5_desc_set_bubble_touch_events(self, value)
  self
}

///|
pub fn Html5Desc::bubble_wheel_events(self : Html5Desc) -> Bool {
  sapp_html5_desc_get_bubble_wheel_events(self)
}

///|
pub fn Html5Desc::set_bubble_wheel_events(
  self : Html5Desc,
  value : Bool,
) -> Html5Desc {
  sapp_html5_desc_set_bubble_wheel_events(self, value)
  self
}

///|
pub fn Html5Desc::bubble_key_events(self : Html5Desc) -> Bool {
  sapp_html5_desc_get_bubble_key_events(self)
}

///|
pub fn Html5Desc::set_bubble_key_events(
  self : Html5Desc,
  value : Bool,
) -> Html5Desc {
  sapp_html5_desc_set_bubble_key_events(self, value)
  self
}

///|
pub fn Html5Desc::bubble_char_events(self : Html5Desc) -> Bool {
  sapp_html5_desc_get_bubble_char_events(self)
}

///|
pub fn Html5Desc::set_bubble_char_events(
  self : Html5Desc,
  value : Bool,
) -> Html5Desc {
  sapp_html5_desc_set_bubble_char_events(self, value)
  self
}

///|
pub fn Html5Desc::use_emsc_set_main_loop(self : Html5Desc) -> Bool {
  sapp_html5_desc_get_use_emsc_set_main_loop(self)
}

///|
pub fn Html5Desc::set_use_emsc_set_main_loop(
  self : Html5Desc,
  value : Bool,
) -> Html5Desc {
  sapp_html5_desc_set_use_emsc_set_main_loop(self, value)
  self
}

///|
pub fn Html5Desc::emsc_set_main_loop_simulate_infinite_loop(
  self : Html5Desc,
) -> Bool {
  sapp_html5_desc_get_emsc_set_main_loop_simulate_infinite_loop(self)
}

///|
pub fn Html5Desc::set_emsc_set_main_loop_simulate_infinite_loop(
  self : Html5Desc,
  value : Bool,
) -> Html5Desc {
  sapp_html5_desc_set_emsc_set_main_loop_simulate_infinite_loop(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type IosDesc

///|
pub fn IosDesc::new() -> IosDesc {
  sapp_ios_desc_new()
}

///|
pub fn IosDesc::copy(self : IosDesc) -> IosDesc {
  sapp_ios_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn IosDesc::unsafe_native_handle(self : IosDesc) -> @native.Handle {
  sapp_ios_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn IosDesc::unsafe_from_native(ptr : @native.Handle) -> IosDesc {
  sapp_ios_desc_from_native(ptr)
}

///|
pub fn IosDesc::keyboard_resizes_canvas(self : IosDesc) -> Bool {
  sapp_ios_desc_get_keyboard_resizes_canvas(self)
}

///|
pub fn IosDesc::set_keyboard_resizes_canvas(
  self : IosDesc,
  value : Bool,
) -> IosDesc {
  sapp_ios_desc_set_keyboard_resizes_canvas(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type MetalDesc

///|
pub fn MetalDesc::new() -> MetalDesc {
  sapp_metal_desc_new()
}

///|
pub fn MetalDesc::copy(self : MetalDesc) -> MetalDesc {
  sapp_metal_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn MetalDesc::unsafe_native_handle(self : MetalDesc) -> @native.Handle {
  sapp_metal_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn MetalDesc::unsafe_from_native(ptr : @native.Handle) -> MetalDesc {
  sapp_metal_desc_from_native(ptr)
}

///|
pub fn MetalDesc::disable_display_sync(self : MetalDesc) -> Bool {
  sapp_metal_desc_get_disable_display_sync(self)
}

///|
pub fn MetalDesc::set_disable_display_sync(
  self : MetalDesc,
  value : Bool,
) -> MetalDesc {
  sapp_metal_desc_set_disable_display_sync(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type AndroidDesc

///|
pub fn AndroidDesc::new() -> AndroidDesc {
  sapp_android_desc_new()
}

///|
pub fn AndroidDesc::copy(self : AndroidDesc) -> AndroidDesc {
  sapp_android_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn AndroidDesc::unsafe_native_handle(self : AndroidDesc) -> @native.Handle {
  sapp_android_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn AndroidDesc::unsafe_from_native(ptr : @native.Handle) -> AndroidDesc {
  sapp_android_desc_from_native(ptr)
}

///|
pub fn AndroidDesc::native_event_cb(self : AndroidDesc) -> @native.Handle {
  sapp_android_desc_get_native_event_cb(self)
}

///|
pub fn AndroidDesc::set_native_event_cb(
  self : AndroidDesc,
  value : @native.Handle,
) -> AndroidDesc {
  sapp_android_desc_set_native_event_cb(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Desc

///|
pub fn Desc::new() -> Desc {
  sapp_desc_new()
}

///|
pub fn Desc::copy(self : Desc) -> Desc {
  sapp_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Desc::unsafe_native_handle(self : Desc) -> @native.Handle {
  sapp_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Desc::unsafe_from_native(ptr : @native.Handle) -> Desc {
  sapp_desc_from_native(ptr)
}

///|
pub fn Desc::init_cb(self : Desc) -> @native.Handle {
  sapp_desc_get_init_cb(self)
}

///|
pub fn Desc::set_init_cb(self : Desc, value : @native.Handle) -> Desc {
  sapp_desc_set_init_cb(self, value)
  self
}

///|
pub fn Desc::frame_cb(self : Desc) -> @native.Handle {
  sapp_desc_get_frame_cb(self)
}

///|
pub fn Desc::set_frame_cb(self : Desc, value : @native.Handle) -> Desc {
  sapp_desc_set_frame_cb(self, value)
  self
}

///|
pub fn Desc::cleanup_cb(self : Desc) -> @native.Handle {
  sapp_desc_get_cleanup_cb(self)
}

///|
pub fn Desc::set_cleanup_cb(self : Desc, value : @native.Handle) -> Desc {
  sapp_desc_set_cleanup_cb(self, value)
  self
}

///|
pub fn Desc::event_cb(self : Desc) -> @native.Handle {
  sapp_desc_get_event_cb(self)
}

///|
pub fn Desc::set_event_cb(self : Desc, value : @native.Handle) -> Desc {
  sapp_desc_set_event_cb(self, value)
  self
}

///|
pub fn Desc::user_data(self : Desc) -> @native.Handle {
  sapp_desc_get_user_data(self)
}

///|
pub fn Desc::set_user_data(self : Desc, value : @native.Handle) -> Desc {
  sapp_desc_set_user_data(self, value)
  self
}

///|
pub fn Desc::init_userdata_cb(self : Desc) -> @native.Handle {
  sapp_desc_get_init_userdata_cb(self)
}

///|
pub fn Desc::set_init_userdata_cb(self : Desc, value : @native.Handle) -> Desc {
  sapp_desc_set_init_userdata_cb(self, value)
  self
}

///|
pub fn Desc::frame_userdata_cb(self : Desc) -> @native.Handle {
  sapp_desc_get_frame_userdata_cb(self)
}

///|
pub fn Desc::set_frame_userdata_cb(self : Desc, value : @native.Handle) -> Desc {
  sapp_desc_set_frame_userdata_cb(self, value)
  self
}

///|
pub fn Desc::cleanup_userdata_cb(self : Desc) -> @native.Handle {
  sapp_desc_get_cleanup_userdata_cb(self)
}

///|
pub fn Desc::set_cleanup_userdata_cb(
  self : Desc,
  value : @native.Handle,
) -> Desc {
  sapp_desc_set_cleanup_userdata_cb(self, value)
  self
}

///|
pub fn Desc::event_userdata_cb(self : Desc) -> @native.Handle {
  sapp_desc_get_event_userdata_cb(self)
}

///|
pub fn Desc::set_event_userdata_cb(self : Desc, value : @native.Handle) -> Desc {
  sapp_desc_set_event_userdata_cb(self, value)
  self
}

///|
pub fn Desc::width(self : Desc) -> Int32 {
  sapp_desc_get_width(self)
}

///|
pub fn Desc::set_width(self : Desc, value : Int32) -> Desc {
  sapp_desc_set_width(self, value)
  self
}

///|
pub fn Desc::height(self : Desc) -> Int32 {
  sapp_desc_get_height(self)
}

///|
pub fn Desc::set_height(self : Desc, value : Int32) -> Desc {
  sapp_desc_set_height(self, value)
  self
}

///|
pub fn Desc::depth_format(self : Desc) -> PixelFormat {
  sapp_desc_get_depth_format(self)
}

///|
pub fn Desc::set_depth_format(self : Desc, value : PixelFormat) -> Desc {
  sapp_desc_set_depth_format(self, value)
  self
}

///|
pub fn Desc::composite_mode(self : Desc) -> CompositeMode {
  sapp_desc_get_composite_mode(self)
}

///|
pub fn Desc::set_composite_mode(self : Desc, value : CompositeMode) -> Desc {
  sapp_desc_set_composite_mode(self, value)
  self
}

///|
pub fn Desc::sample_count(self : Desc) -> Int32 {
  sapp_desc_get_sample_count(self)
}

///|
pub fn Desc::set_sample_count(self : Desc, value : Int32) -> Desc {
  sapp_desc_set_sample_count(self, value)
  self
}

///|
pub fn Desc::swap_interval(self : Desc) -> Int32 {
  sapp_desc_get_swap_interval(self)
}

///|
pub fn Desc::set_swap_interval(self : Desc, value : Int32) -> Desc {
  sapp_desc_set_swap_interval(self, value)
  self
}

///|
pub fn Desc::srgb(self : Desc) -> Bool {
  sapp_desc_get_srgb(self)
}

///|
pub fn Desc::set_srgb(self : Desc, value : Bool) -> Desc {
  sapp_desc_set_srgb(self, value)
  self
}

///|
pub fn Desc::hdr(self : Desc) -> Bool {
  sapp_desc_get_hdr(self)
}

///|
pub fn Desc::set_hdr(self : Desc, value : Bool) -> Desc {
  sapp_desc_set_hdr(self, value)
  self
}

///|
pub fn Desc::disable_vsync(self : Desc) -> Bool {
  sapp_desc_get_disable_vsync(self)
}

///|
pub fn Desc::set_disable_vsync(self : Desc, value : Bool) -> Desc {
  sapp_desc_set_disable_vsync(self, value)
  self
}

///|
pub fn Desc::high_dpi(self : Desc) -> Bool {
  sapp_desc_get_high_dpi(self)
}

///|
pub fn Desc::set_high_dpi(self : Desc, value : Bool) -> Desc {
  sapp_desc_set_high_dpi(self, value)
  self
}

///|
pub fn Desc::fullscreen(self : Desc) -> Bool {
  sapp_desc_get_fullscreen(self)
}

///|
pub fn Desc::set_fullscreen(self : Desc, value : Bool) -> Desc {
  sapp_desc_set_fullscreen(self, value)
  self
}

///|
pub fn Desc::window_title(self : Desc) -> String {
  @utf8.decode_lossy(sapp_desc_get_window_title(self))
}

///|
pub fn Desc::set_window_title(self : Desc, value : String) -> Desc {
  sapp_desc_set_window_title(self, @native.cstring(value))
  self
}

///|
pub fn Desc::enable_clipboard(self : Desc) -> Bool {
  sapp_desc_get_enable_clipboard(self)
}

///|
pub fn Desc::set_enable_clipboard(self : Desc, value : Bool) -> Desc {
  sapp_desc_set_enable_clipboard(self, value)
  self
}

///|
pub fn Desc::clipboard_size(self : Desc) -> Int32 {
  sapp_desc_get_clipboard_size(self)
}

///|
pub fn Desc::set_clipboard_size(self : Desc, value : Int32) -> Desc {
  sapp_desc_set_clipboard_size(self, value)
  self
}

///|
pub fn Desc::enable_dragndrop(self : Desc) -> Bool {
  sapp_desc_get_enable_dragndrop(self)
}

///|
pub fn Desc::set_enable_dragndrop(self : Desc, value : Bool) -> Desc {
  sapp_desc_set_enable_dragndrop(self, value)
  self
}

///|
pub fn Desc::max_dropped_files(self : Desc) -> Int32 {
  sapp_desc_get_max_dropped_files(self)
}

///|
pub fn Desc::set_max_dropped_files(self : Desc, value : Int32) -> Desc {
  sapp_desc_set_max_dropped_files(self, value)
  self
}

///|
pub fn Desc::max_dropped_file_path_length(self : Desc) -> Int32 {
  sapp_desc_get_max_dropped_file_path_length(self)
}

///|
pub fn Desc::set_max_dropped_file_path_length(
  self : Desc,
  value : Int32,
) -> Desc {
  sapp_desc_set_max_dropped_file_path_length(self, value)
  self
}

///|
pub fn Desc::icon(self : Desc) -> IconDesc {
  sapp_desc_get_icon(self)
}

///|
pub fn Desc::set_icon(self : Desc, value : IconDesc) -> Desc {
  sapp_desc_set_icon(self, value)
  self
}

///|
pub fn Desc::allocator(self : Desc) -> Allocator {
  sapp_desc_get_allocator(self)
}

///|
pub fn Desc::set_allocator(self : Desc, value : Allocator) -> Desc {
  sapp_desc_set_allocator(self, value)
  self
}

///|
pub fn Desc::logger(self : Desc) -> Logger {
  sapp_desc_get_logger(self)
}

///|
pub fn Desc::set_logger(self : Desc, value : Logger) -> Desc {
  sapp_desc_set_logger(self, value)
  self
}

///|
pub fn Desc::gl(self : Desc) -> GlDesc {
  sapp_desc_get_gl(self)
}

///|
pub fn Desc::set_gl(self : Desc, value : GlDesc) -> Desc {
  sapp_desc_set_gl(self, value)
  self
}

///|
pub fn Desc::metal(self : Desc) -> MetalDesc {
  sapp_desc_get_metal(self)
}

///|
pub fn Desc::set_metal(self : Desc, value : MetalDesc) -> Desc {
  sapp_desc_set_metal(self, value)
  self
}

///|
pub fn Desc::win32(self : Desc) -> Win32Desc {
  sapp_desc_get_win32(self)
}

///|
pub fn Desc::set_win32(self : Desc, value : Win32Desc) -> Desc {
  sapp_desc_set_win32(self, value)
  self
}

///|
pub fn Desc::html5(self : Desc) -> Html5Desc {
  sapp_desc_get_html5(self)
}

///|
pub fn Desc::set_html5(self : Desc, value : Html5Desc) -> Desc {
  sapp_desc_set_html5(self, value)
  self
}

///|
pub fn Desc::ios(self : Desc) -> IosDesc {
  sapp_desc_get_ios(self)
}

///|
pub fn Desc::set_ios(self : Desc, value : IosDesc) -> Desc {
  sapp_desc_set_ios(self, value)
  self
}

///|
pub fn Desc::android(self : Desc) -> AndroidDesc {
  sapp_desc_get_android(self)
}

///|
pub fn Desc::set_android(self : Desc, value : AndroidDesc) -> Desc {
  sapp_desc_set_android(self, value)
  self
}

///|
#derive(Debug, Eq)
pub(all) enum Html5FetchError {
  NoError = 0
  BufferTooSmall = 1
  Other = 2
}

///|
pub extend Html5FetchError with Eq::{equal, not_equal}

///|
pub extend Html5FetchError with @debug.Debug::{to_repr}

///|
pub fn Html5FetchError::to_int(self : Html5FetchError) -> Int32 {
  sapp_html5_fetch_error_int(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Html5FetchResponse

///|
pub fn Html5FetchResponse::new() -> Html5FetchResponse {
  sapp_html5_fetch_response_new()
}

///|
pub fn Html5FetchResponse::copy(
  self : Html5FetchResponse,
) -> Html5FetchResponse {
  sapp_html5_fetch_response_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Html5FetchResponse::unsafe_native_handle(
  self : Html5FetchResponse,
) -> @native.Handle {
  sapp_html5_fetch_response_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Html5FetchResponse::unsafe_from_native(
  ptr : @native.Handle,
) -> Html5FetchResponse {
  sapp_html5_fetch_response_from_native(ptr)
}

///|
pub fn Html5FetchResponse::succeeded(self : Html5FetchResponse) -> Bool {
  sapp_html5_fetch_response_get_succeeded(self)
}

///|
pub fn Html5FetchResponse::set_succeeded(
  self : Html5FetchResponse,
  value : Bool,
) -> Html5FetchResponse {
  sapp_html5_fetch_response_set_succeeded(self, value)
  self
}

///|
pub fn Html5FetchResponse::error_code(
  self : Html5FetchResponse,
) -> Html5FetchError {
  sapp_html5_fetch_response_get_error_code(self)
}

///|
pub fn Html5FetchResponse::set_error_code(
  self : Html5FetchResponse,
  value : Html5FetchError,
) -> Html5FetchResponse {
  sapp_html5_fetch_response_set_error_code(self, value)
  self
}

///|
pub fn Html5FetchResponse::file_index(self : Html5FetchResponse) -> Int32 {
  sapp_html5_fetch_response_get_file_index(self)
}

///|
pub fn Html5FetchResponse::set_file_index(
  self : Html5FetchResponse,
  value : Int32,
) -> Html5FetchResponse {
  sapp_html5_fetch_response_set_file_index(self, value)
  self
}

///|
pub fn Html5FetchResponse::data(self : Html5FetchResponse) -> Range {
  sapp_html5_fetch_response_get_data(self)
}

///|
pub fn Html5FetchResponse::set_data(
  self : Html5FetchResponse,
  value : Range,
) -> Html5FetchResponse {
  sapp_html5_fetch_response_set_data(self, value)
  self
}

///|
pub fn Html5FetchResponse::buffer(self : Html5FetchResponse) -> Range {
  sapp_html5_fetch_response_get_buffer(self)
}

///|
pub fn Html5FetchResponse::set_buffer(
  self : Html5FetchResponse,
  value : Range,
) -> Html5FetchResponse {
  sapp_html5_fetch_response_set_buffer(self, value)
  self
}

///|
pub fn Html5FetchResponse::user_data(
  self : Html5FetchResponse,
) -> @native.Handle {
  sapp_html5_fetch_response_get_user_data(self)
}

///|
pub fn Html5FetchResponse::set_user_data(
  self : Html5FetchResponse,
  value : @native.Handle,
) -> Html5FetchResponse {
  sapp_html5_fetch_response_set_user_data(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Html5FetchRequest

///|
pub fn Html5FetchRequest::new() -> Html5FetchRequest {
  sapp_html5_fetch_request_new()
}

///|
pub fn Html5FetchRequest::copy(self : Html5FetchRequest) -> Html5FetchRequest {
  sapp_html5_fetch_request_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Html5FetchRequest::unsafe_native_handle(
  self : Html5FetchRequest,
) -> @native.Handle {
  sapp_html5_fetch_request_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Html5FetchRequest::unsafe_from_native(
  ptr : @native.Handle,
) -> Html5FetchRequest {
  sapp_html5_fetch_request_from_native(ptr)
}

///|
pub fn Html5FetchRequest::dropped_file_index(self : Html5FetchRequest) -> Int32 {
  sapp_html5_fetch_request_get_dropped_file_index(self)
}

///|
pub fn Html5FetchRequest::set_dropped_file_index(
  self : Html5FetchRequest,
  value : Int32,
) -> Html5FetchRequest {
  sapp_html5_fetch_request_set_dropped_file_index(self, value)
  self
}

///|
pub fn Html5FetchRequest::callback(self : Html5FetchRequest) -> @native.Handle {
  sapp_html5_fetch_request_get_callback(self)
}

///|
pub fn Html5FetchRequest::set_callback(
  self : Html5FetchRequest,
  value : @native.Handle,
) -> Html5FetchRequest {
  sapp_html5_fetch_request_set_callback(self, value)
  self
}

///|
pub fn Html5FetchRequest::buffer(self : Html5FetchRequest) -> Range {
  sapp_html5_fetch_request_get_buffer(self)
}

///|
pub fn Html5FetchRequest::set_buffer(
  self : Html5FetchRequest,
  value : Range,
) -> Html5FetchRequest {
  sapp_html5_fetch_request_set_buffer(self, value)
  self
}

///|
pub fn Html5FetchRequest::user_data(self : Html5FetchRequest) -> @native.Handle {
  sapp_html5_fetch_request_get_user_data(self)
}

///|
pub fn Html5FetchRequest::set_user_data(
  self : Html5FetchRequest,
  value : @native.Handle,
) -> Html5FetchRequest {
  sapp_html5_fetch_request_set_user_data(self, value)
  self
}

///|
#derive(Debug, Eq)
pub(all) enum MouseCursor {
  Default = 0
  Arrow = 1
  Ibeam = 2
  Crosshair = 3
  PointingHand = 4
  ResizeEw = 5
  ResizeNs = 6
  ResizeNwse = 7
  ResizeNesw = 8
  ResizeAll = 9
  NotAllowed = 10
  Custom0 = 11
  Custom1 = 12
  Custom2 = 13
  Custom3 = 14
  Custom4 = 15
  Custom5 = 16
  Custom6 = 17
  Custom7 = 18
  Custom8 = 19
  Custom9 = 20
  Custom10 = 21
  Custom11 = 22
  Custom12 = 23
  Custom13 = 24
  Custom14 = 25
  Custom15 = 26
}

///|
pub extend MouseCursor with Eq::{equal, not_equal}

///|
pub extend MouseCursor with @debug.Debug::{to_repr}

///|
pub fn MouseCursor::to_int(self : MouseCursor) -> Int32 {
  sapp_mouse_cursor_int(self)
}

///|
pub fn get_environment() -> Environment {
  sapp_get_environment()
}

///|
pub fn acquire_swapchain() -> Swapchain {
  sapp_acquire_swapchain()
}

///|
pub fn isvalid() -> Bool {
  sapp_isvalid()
}

///|
pub fn width() -> Int32 {
  sapp_width()
}

///|
pub fn widthf() -> Float {
  sapp_widthf()
}

///|
pub fn height() -> Int32 {
  sapp_height()
}

///|
pub fn heightf() -> Float {
  sapp_heightf()
}

///|
pub fn color_format() -> PixelFormat {
  sapp_color_format()
}

///|
pub fn depth_format() -> PixelFormat {
  sapp_depth_format()
}

///|
pub fn sample_count() -> Int32 {
  sapp_sample_count()
}

///|
pub fn high_dpi() -> Bool {
  sapp_high_dpi()
}

///|
pub fn dpi_scale() -> Float {
  sapp_dpi_scale()
}

///|
pub fn show_keyboard(show : Bool) -> Unit {
  sapp_show_keyboard(show)
}

///|
pub fn keyboard_shown() -> Bool {
  sapp_keyboard_shown()
}

///|
pub fn is_fullscreen() -> Bool {
  sapp_is_fullscreen()
}

///|
pub fn toggle_fullscreen() -> Unit {
  sapp_toggle_fullscreen()
}

///|
pub fn show_mouse(show : Bool) -> Unit {
  sapp_show_mouse(show)
}

///|
pub fn mouse_shown() -> Bool {
  sapp_mouse_shown()
}

///|
pub fn lock_mouse(lock : Bool) -> Unit {
  sapp_lock_mouse(lock)
}

///|
pub fn mouse_locked() -> Bool {
  sapp_mouse_locked()
}

///|
pub fn set_mouse_cursor(cursor : MouseCursor) -> Unit {
  sapp_set_mouse_cursor(cursor)
}

///|
pub fn get_mouse_cursor() -> MouseCursor {
  sapp_get_mouse_cursor()
}

///|
pub fn bind_mouse_cursor_image(
  cursor : MouseCursor,
  desc : ImageDesc,
) -> MouseCursor {
  sapp_bind_mouse_cursor_image(cursor, desc)
}

///|
pub fn unbind_mouse_cursor_image(cursor : MouseCursor) -> Unit {
  sapp_unbind_mouse_cursor_image(cursor)
}

///|
pub fn userdata() -> @native.Handle {
  sapp_userdata()
}

///|
pub fn query_desc() -> Desc {
  sapp_query_desc()
}

///|
pub fn request_quit() -> Unit {
  sapp_request_quit()
}

///|
pub fn cancel_quit() -> Unit {
  sapp_cancel_quit()
}

///|
pub fn quit() -> Unit {
  sapp_quit()
}

///|
pub fn consume_event() -> Unit {
  sapp_consume_event()
}

///|
pub fn frame_count() -> UInt64 {
  sapp_frame_count()
}

///|
pub fn frame_duration() -> Double {
  sapp_frame_duration()
}

///|
pub fn frame_duration_unfiltered() -> Double {
  sapp_frame_duration_unfiltered()
}

///|
pub fn set_clipboard_string(str : String) -> Unit {
  sapp_set_clipboard_string(@native.cstring(str))
}

///|
pub fn get_clipboard_string() -> String {
  @utf8.decode_lossy(sapp_get_clipboard_string())
}

///|
pub fn set_window_title(str : String) -> Unit {
  sapp_set_window_title(@native.cstring(str))
}

///|
pub fn set_icon(icon_desc : IconDesc) -> Unit {
  sapp_set_icon(icon_desc)
}

///|
pub fn get_num_dropped_files() -> Int32 {
  sapp_get_num_dropped_files()
}

///|
pub fn get_dropped_file_path(index : Int32) -> String {
  @utf8.decode_lossy(sapp_get_dropped_file_path(index))
}

///|
pub fn egl_get_display() -> @native.Handle {
  sapp_egl_get_display()
}

///|
pub fn egl_get_context() -> @native.Handle {
  sapp_egl_get_context()
}

///|
pub fn html5_ask_leave_site(ask : Bool) -> Unit {
  sapp_html5_ask_leave_site(ask)
}

///|
pub fn html5_get_dropped_file_size(index : Int32) -> UInt32 {
  sapp_html5_get_dropped_file_size(index)
}

///|
pub fn macos_get_window() -> @native.Handle {
  sapp_macos_get_window()
}

///|
pub fn ios_get_window() -> @native.Handle {
  sapp_ios_get_window()
}

///|
pub fn d3d11_get_swap_chain() -> @native.Handle {
  sapp_d3d11_get_swap_chain()
}

///|
pub fn win32_get_hwnd() -> @native.Handle {
  sapp_win32_get_hwnd()
}

///|
pub fn gl_get_major_version() -> Int32 {
  sapp_gl_get_major_version()
}

///|
pub fn gl_get_minor_version() -> Int32 {
  sapp_gl_get_minor_version()
}

///|
pub fn gl_is_gles() -> Bool {
  sapp_gl_is_gles()
}

///|
pub fn x11_get_window() -> @native.Handle {
  sapp_x11_get_window()
}

///|
pub fn x11_get_display() -> @native.Handle {
  sapp_x11_get_display()
}

///|
pub fn android_get_native_activity() -> @native.Handle {
  sapp_android_get_native_activity()
}

///|
pub fn android_get_native_window() -> @native.Handle {
  sapp_android_get_native_window()
}

///|
pub fn Logger::default() -> Logger {
  sapp_logger_default()
}
