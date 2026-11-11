// Private ABI declarations maintained by scripts/generate.py.

///|
extern "c" fn sapp_event_type_int(value : EventType) -> Int32 = "mb_sokol_enum_identity"

///|
extern "c" fn sapp_keycode_int(value : Keycode) -> Int32 = "mb_sokol_enum_identity"

///|
extern "c" fn sapp_android_tooltype_int(value : AndroidTooltype) -> Int32 = "mb_sokol_enum_identity"

///|
extern "c" fn sapp_touchpoint_new() -> Touchpoint = "mb_app_sapp_touchpoint_new"

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_copy(object_ : Touchpoint) -> Touchpoint = "mb_app_sapp_touchpoint_copy"

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_native(object_ : Touchpoint) -> @native.Handle = "mb_app_sapp_touchpoint_native"

///|
extern "c" fn sapp_touchpoint_from_native(ptr : @native.Handle) -> Touchpoint = "mb_app_sapp_touchpoint_from_native"

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_get_identifier(object_ : Touchpoint) -> UInt64 = "mb_app_sapp_touchpoint_get_identifier"

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_set_identifier(
  object_ : Touchpoint,
  value : UInt64,
) -> Unit = "mb_app_sapp_touchpoint_set_identifier"

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_get_pos_x(object_ : Touchpoint) -> Float = "mb_app_sapp_touchpoint_get_pos_x"

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_set_pos_x(
  object_ : Touchpoint,
  value : Float,
) -> Unit = "mb_app_sapp_touchpoint_set_pos_x"

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_get_pos_y(object_ : Touchpoint) -> Float = "mb_app_sapp_touchpoint_get_pos_y"

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_set_pos_y(
  object_ : Touchpoint,
  value : Float,
) -> Unit = "mb_app_sapp_touchpoint_set_pos_y"

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_get_android_tooltype(
  object_ : Touchpoint,
) -> AndroidTooltype = "mb_app_sapp_touchpoint_get_android_tooltype"

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_set_android_tooltype(
  object_ : Touchpoint,
  value : AndroidTooltype,
) -> Unit = "mb_app_sapp_touchpoint_set_android_tooltype"

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_get_changed(object_ : Touchpoint) -> Bool = "mb_app_sapp_touchpoint_get_changed"

///|
#borrow(object_)
extern "c" fn sapp_touchpoint_set_changed(
  object_ : Touchpoint,
  value : Bool,
) -> Unit = "mb_app_sapp_touchpoint_set_changed"

///|
extern "c" fn sapp_mousebutton_int(value : Mousebutton) -> Int32 = "mb_sokol_enum_identity"

///|
extern "c" fn sapp_event_new() -> Event = "mb_app_sapp_event_new"

///|
#borrow(object_)
extern "c" fn sapp_event_copy(object_ : Event) -> Event = "mb_app_sapp_event_copy"

///|
#borrow(object_)
extern "c" fn sapp_event_native(object_ : Event) -> @native.Handle = "mb_app_sapp_event_native"

///|
extern "c" fn sapp_event_from_native(ptr : @native.Handle) -> Event = "mb_app_sapp_event_from_native"

///|
#borrow(object_)
extern "c" fn sapp_event_get_frame_count(object_ : Event) -> UInt64 = "mb_app_sapp_event_get_frame_count"

///|
#borrow(object_)
extern "c" fn sapp_event_set_frame_count(
  object_ : Event,
  value : UInt64,
) -> Unit = "mb_app_sapp_event_set_frame_count"

///|
#borrow(object_)
extern "c" fn sapp_event_get_type(object_ : Event) -> EventType = "mb_app_sapp_event_get_type"

///|
#borrow(object_)
extern "c" fn sapp_event_set_type(object_ : Event, value : EventType) -> Unit = "mb_app_sapp_event_set_type"

///|
#borrow(object_)
extern "c" fn sapp_event_get_key_code(object_ : Event) -> Keycode = "mb_app_sapp_event_get_key_code"

///|
#borrow(object_)
extern "c" fn sapp_event_set_key_code(object_ : Event, value : Keycode) -> Unit = "mb_app_sapp_event_set_key_code"

///|
#borrow(object_)
extern "c" fn sapp_event_get_char_code(object_ : Event) -> UInt32 = "mb_app_sapp_event_get_char_code"

///|
#borrow(object_)
extern "c" fn sapp_event_set_char_code(object_ : Event, value : UInt32) -> Unit = "mb_app_sapp_event_set_char_code"

///|
#borrow(object_)
extern "c" fn sapp_event_get_key_repeat(object_ : Event) -> Bool = "mb_app_sapp_event_get_key_repeat"

///|
#borrow(object_)
extern "c" fn sapp_event_set_key_repeat(object_ : Event, value : Bool) -> Unit = "mb_app_sapp_event_set_key_repeat"

///|
#borrow(object_)
extern "c" fn sapp_event_get_modifiers(object_ : Event) -> UInt32 = "mb_app_sapp_event_get_modifiers"

///|
#borrow(object_)
extern "c" fn sapp_event_set_modifiers(object_ : Event, value : UInt32) -> Unit = "mb_app_sapp_event_set_modifiers"

///|
#borrow(object_)
extern "c" fn sapp_event_get_mouse_button(object_ : Event) -> Mousebutton = "mb_app_sapp_event_get_mouse_button"

///|
#borrow(object_)
extern "c" fn sapp_event_set_mouse_button(
  object_ : Event,
  value : Mousebutton,
) -> Unit = "mb_app_sapp_event_set_mouse_button"

///|
#borrow(object_)
extern "c" fn sapp_event_get_mouse_x(object_ : Event) -> Float = "mb_app_sapp_event_get_mouse_x"

///|
#borrow(object_)
extern "c" fn sapp_event_set_mouse_x(object_ : Event, value : Float) -> Unit = "mb_app_sapp_event_set_mouse_x"

///|
#borrow(object_)
extern "c" fn sapp_event_get_mouse_y(object_ : Event) -> Float = "mb_app_sapp_event_get_mouse_y"

///|
#borrow(object_)
extern "c" fn sapp_event_set_mouse_y(object_ : Event, value : Float) -> Unit = "mb_app_sapp_event_set_mouse_y"

///|
#borrow(object_)
extern "c" fn sapp_event_get_mouse_dx(object_ : Event) -> Float = "mb_app_sapp_event_get_mouse_dx"

///|
#borrow(object_)
extern "c" fn sapp_event_set_mouse_dx(object_ : Event, value : Float) -> Unit = "mb_app_sapp_event_set_mouse_dx"

///|
#borrow(object_)
extern "c" fn sapp_event_get_mouse_dy(object_ : Event) -> Float = "mb_app_sapp_event_get_mouse_dy"

///|
#borrow(object_)
extern "c" fn sapp_event_set_mouse_dy(object_ : Event, value : Float) -> Unit = "mb_app_sapp_event_set_mouse_dy"

///|
#borrow(object_)
extern "c" fn sapp_event_get_scroll_x(object_ : Event) -> Float = "mb_app_sapp_event_get_scroll_x"

///|
#borrow(object_)
extern "c" fn sapp_event_set_scroll_x(object_ : Event, value : Float) -> Unit = "mb_app_sapp_event_set_scroll_x"

///|
#borrow(object_)
extern "c" fn sapp_event_get_scroll_y(object_ : Event) -> Float = "mb_app_sapp_event_get_scroll_y"

///|
#borrow(object_)
extern "c" fn sapp_event_set_scroll_y(object_ : Event, value : Float) -> Unit = "mb_app_sapp_event_set_scroll_y"

///|
#borrow(object_)
extern "c" fn sapp_event_get_num_touches(object_ : Event) -> Int32 = "mb_app_sapp_event_get_num_touches"

///|
#borrow(object_)
extern "c" fn sapp_event_set_num_touches(
  object_ : Event,
  value : Int32,
) -> Unit = "mb_app_sapp_event_set_num_touches"

///|
#borrow(object_)
extern "c" fn sapp_event_get_touches(object_ : Event, i0 : Int32) -> Touchpoint = "mb_app_sapp_event_get_touches"

///|
#borrow(object_, value)
extern "c" fn sapp_event_set_touches(
  object_ : Event,
  i0 : Int32,
  value : Touchpoint,
) -> Unit = "mb_app_sapp_event_set_touches"

///|
#borrow(object_)
extern "c" fn sapp_event_get_window_width(object_ : Event) -> Int32 = "mb_app_sapp_event_get_window_width"

///|
#borrow(object_)
extern "c" fn sapp_event_set_window_width(
  object_ : Event,
  value : Int32,
) -> Unit = "mb_app_sapp_event_set_window_width"

///|
#borrow(object_)
extern "c" fn sapp_event_get_window_height(object_ : Event) -> Int32 = "mb_app_sapp_event_get_window_height"

///|
#borrow(object_)
extern "c" fn sapp_event_set_window_height(
  object_ : Event,
  value : Int32,
) -> Unit = "mb_app_sapp_event_set_window_height"

///|
#borrow(object_)
extern "c" fn sapp_event_get_framebuffer_width(object_ : Event) -> Int32 = "mb_app_sapp_event_get_framebuffer_width"

///|
#borrow(object_)
extern "c" fn sapp_event_set_framebuffer_width(
  object_ : Event,
  value : Int32,
) -> Unit = "mb_app_sapp_event_set_framebuffer_width"

///|
#borrow(object_)
extern "c" fn sapp_event_get_framebuffer_height(object_ : Event) -> Int32 = "mb_app_sapp_event_get_framebuffer_height"

///|
#borrow(object_)
extern "c" fn sapp_event_set_framebuffer_height(
  object_ : Event,
  value : Int32,
) -> Unit = "mb_app_sapp_event_set_framebuffer_height"

///|
extern "c" fn sapp_range_new() -> Range = "mb_app_sapp_range_new"

///|
#borrow(object_)
extern "c" fn sapp_range_copy(object_ : Range) -> Range = "mb_app_sapp_range_copy"

///|
#borrow(object_)
extern "c" fn sapp_range_native(object_ : Range) -> @native.Handle = "mb_app_sapp_range_native"

///|
extern "c" fn sapp_range_from_native(ptr : @native.Handle) -> Range = "mb_app_sapp_range_from_native"

///|
#borrow(object_)
extern "c" fn sapp_range_bytes(object_ : Range) -> Bytes = "mb_app_sapp_range_bytes"

///|
#borrow(data)
extern "c" fn sapp_range_data(data : Bytes) -> Range = "mb_app_sapp_range_data"

///|
#borrow(object_)
extern "c" fn sapp_range_get_size(object_ : Range) -> UInt64 = "mb_app_sapp_range_get_size"

///|
extern "c" fn sapp_image_desc_new() -> ImageDesc = "mb_app_sapp_image_desc_new"

///|
#borrow(object_)
extern "c" fn sapp_image_desc_copy(object_ : ImageDesc) -> ImageDesc = "mb_app_sapp_image_desc_copy"

///|
#borrow(object_)
extern "c" fn sapp_image_desc_native(object_ : ImageDesc) -> @native.Handle = "mb_app_sapp_image_desc_native"

///|
extern "c" fn sapp_image_desc_from_native(ptr : @native.Handle) -> ImageDesc = "mb_app_sapp_image_desc_from_native"

///|
#borrow(object_)
extern "c" fn sapp_image_desc_get_width(object_ : ImageDesc) -> Int32 = "mb_app_sapp_image_desc_get_width"

///|
#borrow(object_)
extern "c" fn sapp_image_desc_set_width(
  object_ : ImageDesc,
  value : Int32,
) -> Unit = "mb_app_sapp_image_desc_set_width"

///|
#borrow(object_)
extern "c" fn sapp_image_desc_get_height(object_ : ImageDesc) -> Int32 = "mb_app_sapp_image_desc_get_height"

///|
#borrow(object_)
extern "c" fn sapp_image_desc_set_height(
  object_ : ImageDesc,
  value : Int32,
) -> Unit = "mb_app_sapp_image_desc_set_height"

///|
#borrow(object_)
extern "c" fn sapp_image_desc_get_cursor_hotspot_x(
  object_ : ImageDesc,
) -> Int32 = "mb_app_sapp_image_desc_get_cursor_hotspot_x"

///|
#borrow(object_)
extern "c" fn sapp_image_desc_set_cursor_hotspot_x(
  object_ : ImageDesc,
  value : Int32,
) -> Unit = "mb_app_sapp_image_desc_set_cursor_hotspot_x"

///|
#borrow(object_)
extern "c" fn sapp_image_desc_get_cursor_hotspot_y(
  object_ : ImageDesc,
) -> Int32 = "mb_app_sapp_image_desc_get_cursor_hotspot_y"

///|
#borrow(object_)
extern "c" fn sapp_image_desc_set_cursor_hotspot_y(
  object_ : ImageDesc,
  value : Int32,
) -> Unit = "mb_app_sapp_image_desc_set_cursor_hotspot_y"

///|
#borrow(object_)
extern "c" fn sapp_image_desc_get_pixels(object_ : ImageDesc) -> Range = "mb_app_sapp_image_desc_get_pixels"

///|
#borrow(object_, value)
extern "c" fn sapp_image_desc_set_pixels(
  object_ : ImageDesc,
  value : Range,
) -> Unit = "mb_app_sapp_image_desc_set_pixels"

///|
extern "c" fn sapp_icon_desc_new() -> IconDesc = "mb_app_sapp_icon_desc_new"

///|
#borrow(object_)
extern "c" fn sapp_icon_desc_copy(object_ : IconDesc) -> IconDesc = "mb_app_sapp_icon_desc_copy"

///|
#borrow(object_)
extern "c" fn sapp_icon_desc_native(object_ : IconDesc) -> @native.Handle = "mb_app_sapp_icon_desc_native"

///|
extern "c" fn sapp_icon_desc_from_native(ptr : @native.Handle) -> IconDesc = "mb_app_sapp_icon_desc_from_native"

///|
#borrow(object_)
extern "c" fn sapp_icon_desc_get_sokol_default(object_ : IconDesc) -> Bool = "mb_app_sapp_icon_desc_get_sokol_default"

///|
#borrow(object_)
extern "c" fn sapp_icon_desc_set_sokol_default(
  object_ : IconDesc,
  value : Bool,
) -> Unit = "mb_app_sapp_icon_desc_set_sokol_default"

///|
#borrow(object_)
extern "c" fn sapp_icon_desc_get_images(
  object_ : IconDesc,
  i0 : Int32,
) -> ImageDesc = "mb_app_sapp_icon_desc_get_images"

///|
#borrow(object_, value)
extern "c" fn sapp_icon_desc_set_images(
  object_ : IconDesc,
  i0 : Int32,
  value : ImageDesc,
) -> Unit = "mb_app_sapp_icon_desc_set_images"

///|
extern "c" fn sapp_allocator_new() -> Allocator = "mb_app_sapp_allocator_new"

///|
#borrow(object_)
extern "c" fn sapp_allocator_copy(object_ : Allocator) -> Allocator = "mb_app_sapp_allocator_copy"

///|
#borrow(object_)
extern "c" fn sapp_allocator_native(object_ : Allocator) -> @native.Handle = "mb_app_sapp_allocator_native"

///|
extern "c" fn sapp_allocator_from_native(ptr : @native.Handle) -> Allocator = "mb_app_sapp_allocator_from_native"

///|
#borrow(object_)
extern "c" fn sapp_allocator_get_alloc_fn(
  object_ : Allocator,
) -> @native.Handle = "mb_app_sapp_allocator_get_alloc_fn"

///|
#borrow(object_)
extern "c" fn sapp_allocator_set_alloc_fn(
  object_ : Allocator,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_allocator_set_alloc_fn"

///|
#borrow(object_)
extern "c" fn sapp_allocator_get_free_fn(object_ : Allocator) -> @native.Handle = "mb_app_sapp_allocator_get_free_fn"

///|
#borrow(object_)
extern "c" fn sapp_allocator_set_free_fn(
  object_ : Allocator,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_allocator_set_free_fn"

///|
#borrow(object_)
extern "c" fn sapp_allocator_get_user_data(
  object_ : Allocator,
) -> @native.Handle = "mb_app_sapp_allocator_get_user_data"

///|
#borrow(object_)
extern "c" fn sapp_allocator_set_user_data(
  object_ : Allocator,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_allocator_set_user_data"

///|
extern "c" fn sapp_log_item_int(value : LogItem) -> Int32 = "mb_sokol_enum_identity"

///|
extern "c" fn sapp_pixel_format_int(value : PixelFormat) -> Int32 = "mb_sokol_enum_identity"

///|
extern "c" fn sapp_environment_defaults_new() -> EnvironmentDefaults = "mb_app_sapp_environment_defaults_new"

///|
#borrow(object_)
extern "c" fn sapp_environment_defaults_copy(
  object_ : EnvironmentDefaults,
) -> EnvironmentDefaults = "mb_app_sapp_environment_defaults_copy"

///|
#borrow(object_)
extern "c" fn sapp_environment_defaults_native(
  object_ : EnvironmentDefaults,
) -> @native.Handle = "mb_app_sapp_environment_defaults_native"

///|
extern "c" fn sapp_environment_defaults_from_native(
  ptr : @native.Handle,
) -> EnvironmentDefaults = "mb_app_sapp_environment_defaults_from_native"

///|
#borrow(object_)
extern "c" fn sapp_environment_defaults_get_color_format(
  object_ : EnvironmentDefaults,
) -> PixelFormat = "mb_app_sapp_environment_defaults_get_color_format"

///|
#borrow(object_)
extern "c" fn sapp_environment_defaults_set_color_format(
  object_ : EnvironmentDefaults,
  value : PixelFormat,
) -> Unit = "mb_app_sapp_environment_defaults_set_color_format"

///|
#borrow(object_)
extern "c" fn sapp_environment_defaults_get_depth_format(
  object_ : EnvironmentDefaults,
) -> PixelFormat = "mb_app_sapp_environment_defaults_get_depth_format"

///|
#borrow(object_)
extern "c" fn sapp_environment_defaults_set_depth_format(
  object_ : EnvironmentDefaults,
  value : PixelFormat,
) -> Unit = "mb_app_sapp_environment_defaults_set_depth_format"

///|
#borrow(object_)
extern "c" fn sapp_environment_defaults_get_sample_count(
  object_ : EnvironmentDefaults,
) -> Int32 = "mb_app_sapp_environment_defaults_get_sample_count"

///|
#borrow(object_)
extern "c" fn sapp_environment_defaults_set_sample_count(
  object_ : EnvironmentDefaults,
  value : Int32,
) -> Unit = "mb_app_sapp_environment_defaults_set_sample_count"

///|
extern "c" fn sapp_metal_environment_new() -> MetalEnvironment = "mb_app_sapp_metal_environment_new"

///|
#borrow(object_)
extern "c" fn sapp_metal_environment_copy(
  object_ : MetalEnvironment,
) -> MetalEnvironment = "mb_app_sapp_metal_environment_copy"

///|
#borrow(object_)
extern "c" fn sapp_metal_environment_native(
  object_ : MetalEnvironment,
) -> @native.Handle = "mb_app_sapp_metal_environment_native"

///|
extern "c" fn sapp_metal_environment_from_native(
  ptr : @native.Handle,
) -> MetalEnvironment = "mb_app_sapp_metal_environment_from_native"

///|
#borrow(object_)
extern "c" fn sapp_metal_environment_get_device(
  object_ : MetalEnvironment,
) -> @native.Handle = "mb_app_sapp_metal_environment_get_device"

///|
#borrow(object_)
extern "c" fn sapp_metal_environment_set_device(
  object_ : MetalEnvironment,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_metal_environment_set_device"

///|
extern "c" fn sapp_d3d11_environment_new() -> D3d11Environment = "mb_app_sapp_d3d11_environment_new"

///|
#borrow(object_)
extern "c" fn sapp_d3d11_environment_copy(
  object_ : D3d11Environment,
) -> D3d11Environment = "mb_app_sapp_d3d11_environment_copy"

///|
#borrow(object_)
extern "c" fn sapp_d3d11_environment_native(
  object_ : D3d11Environment,
) -> @native.Handle = "mb_app_sapp_d3d11_environment_native"

///|
extern "c" fn sapp_d3d11_environment_from_native(
  ptr : @native.Handle,
) -> D3d11Environment = "mb_app_sapp_d3d11_environment_from_native"

///|
#borrow(object_)
extern "c" fn sapp_d3d11_environment_get_device(
  object_ : D3d11Environment,
) -> @native.Handle = "mb_app_sapp_d3d11_environment_get_device"

///|
#borrow(object_)
extern "c" fn sapp_d3d11_environment_set_device(
  object_ : D3d11Environment,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_d3d11_environment_set_device"

///|
#borrow(object_)
extern "c" fn sapp_d3d11_environment_get_device_context(
  object_ : D3d11Environment,
) -> @native.Handle = "mb_app_sapp_d3d11_environment_get_device_context"

///|
#borrow(object_)
extern "c" fn sapp_d3d11_environment_set_device_context(
  object_ : D3d11Environment,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_d3d11_environment_set_device_context"

///|
extern "c" fn sapp_wgpu_environment_new() -> WgpuEnvironment = "mb_app_sapp_wgpu_environment_new"

///|
#borrow(object_)
extern "c" fn sapp_wgpu_environment_copy(
  object_ : WgpuEnvironment,
) -> WgpuEnvironment = "mb_app_sapp_wgpu_environment_copy"

///|
#borrow(object_)
extern "c" fn sapp_wgpu_environment_native(
  object_ : WgpuEnvironment,
) -> @native.Handle = "mb_app_sapp_wgpu_environment_native"

///|
extern "c" fn sapp_wgpu_environment_from_native(
  ptr : @native.Handle,
) -> WgpuEnvironment = "mb_app_sapp_wgpu_environment_from_native"

///|
#borrow(object_)
extern "c" fn sapp_wgpu_environment_get_device(
  object_ : WgpuEnvironment,
) -> @native.Handle = "mb_app_sapp_wgpu_environment_get_device"

///|
#borrow(object_)
extern "c" fn sapp_wgpu_environment_set_device(
  object_ : WgpuEnvironment,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_wgpu_environment_set_device"

///|
extern "c" fn sapp_vulkan_environment_new() -> VulkanEnvironment = "mb_app_sapp_vulkan_environment_new"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_environment_copy(
  object_ : VulkanEnvironment,
) -> VulkanEnvironment = "mb_app_sapp_vulkan_environment_copy"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_environment_native(
  object_ : VulkanEnvironment,
) -> @native.Handle = "mb_app_sapp_vulkan_environment_native"

///|
extern "c" fn sapp_vulkan_environment_from_native(
  ptr : @native.Handle,
) -> VulkanEnvironment = "mb_app_sapp_vulkan_environment_from_native"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_environment_get_instance(
  object_ : VulkanEnvironment,
) -> @native.Handle = "mb_app_sapp_vulkan_environment_get_instance"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_environment_set_instance(
  object_ : VulkanEnvironment,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_vulkan_environment_set_instance"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_environment_get_physical_device(
  object_ : VulkanEnvironment,
) -> @native.Handle = "mb_app_sapp_vulkan_environment_get_physical_device"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_environment_set_physical_device(
  object_ : VulkanEnvironment,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_vulkan_environment_set_physical_device"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_environment_get_device(
  object_ : VulkanEnvironment,
) -> @native.Handle = "mb_app_sapp_vulkan_environment_get_device"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_environment_set_device(
  object_ : VulkanEnvironment,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_vulkan_environment_set_device"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_environment_get_queue(
  object_ : VulkanEnvironment,
) -> @native.Handle = "mb_app_sapp_vulkan_environment_get_queue"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_environment_set_queue(
  object_ : VulkanEnvironment,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_vulkan_environment_set_queue"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_environment_get_queue_family_index(
  object_ : VulkanEnvironment,
) -> UInt32 = "mb_app_sapp_vulkan_environment_get_queue_family_index"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_environment_set_queue_family_index(
  object_ : VulkanEnvironment,
  value : UInt32,
) -> Unit = "mb_app_sapp_vulkan_environment_set_queue_family_index"

///|
extern "c" fn sapp_environment_new() -> Environment = "mb_app_sapp_environment_new"

///|
#borrow(object_)
extern "c" fn sapp_environment_copy(object_ : Environment) -> Environment = "mb_app_sapp_environment_copy"

///|
#borrow(object_)
extern "c" fn sapp_environment_native(object_ : Environment) -> @native.Handle = "mb_app_sapp_environment_native"

///|
extern "c" fn sapp_environment_from_native(ptr : @native.Handle) -> Environment = "mb_app_sapp_environment_from_native"

///|
#borrow(object_)
extern "c" fn sapp_environment_get_defaults(
  object_ : Environment,
) -> EnvironmentDefaults = "mb_app_sapp_environment_get_defaults"

///|
#borrow(object_, value)
extern "c" fn sapp_environment_set_defaults(
  object_ : Environment,
  value : EnvironmentDefaults,
) -> Unit = "mb_app_sapp_environment_set_defaults"

///|
#borrow(object_)
extern "c" fn sapp_environment_get_metal(
  object_ : Environment,
) -> MetalEnvironment = "mb_app_sapp_environment_get_metal"

///|
#borrow(object_, value)
extern "c" fn sapp_environment_set_metal(
  object_ : Environment,
  value : MetalEnvironment,
) -> Unit = "mb_app_sapp_environment_set_metal"

///|
#borrow(object_)
extern "c" fn sapp_environment_get_d3d11(
  object_ : Environment,
) -> D3d11Environment = "mb_app_sapp_environment_get_d3d11"

///|
#borrow(object_, value)
extern "c" fn sapp_environment_set_d3d11(
  object_ : Environment,
  value : D3d11Environment,
) -> Unit = "mb_app_sapp_environment_set_d3d11"

///|
#borrow(object_)
extern "c" fn sapp_environment_get_wgpu(
  object_ : Environment,
) -> WgpuEnvironment = "mb_app_sapp_environment_get_wgpu"

///|
#borrow(object_, value)
extern "c" fn sapp_environment_set_wgpu(
  object_ : Environment,
  value : WgpuEnvironment,
) -> Unit = "mb_app_sapp_environment_set_wgpu"

///|
#borrow(object_)
extern "c" fn sapp_environment_get_vulkan(
  object_ : Environment,
) -> VulkanEnvironment = "mb_app_sapp_environment_get_vulkan"

///|
#borrow(object_, value)
extern "c" fn sapp_environment_set_vulkan(
  object_ : Environment,
  value : VulkanEnvironment,
) -> Unit = "mb_app_sapp_environment_set_vulkan"

///|
extern "c" fn sapp_metal_swapchain_new() -> MetalSwapchain = "mb_app_sapp_metal_swapchain_new"

///|
#borrow(object_)
extern "c" fn sapp_metal_swapchain_copy(
  object_ : MetalSwapchain,
) -> MetalSwapchain = "mb_app_sapp_metal_swapchain_copy"

///|
#borrow(object_)
extern "c" fn sapp_metal_swapchain_native(
  object_ : MetalSwapchain,
) -> @native.Handle = "mb_app_sapp_metal_swapchain_native"

///|
extern "c" fn sapp_metal_swapchain_from_native(
  ptr : @native.Handle,
) -> MetalSwapchain = "mb_app_sapp_metal_swapchain_from_native"

///|
#borrow(object_)
extern "c" fn sapp_metal_swapchain_get_current_drawable(
  object_ : MetalSwapchain,
) -> @native.Handle = "mb_app_sapp_metal_swapchain_get_current_drawable"

///|
#borrow(object_)
extern "c" fn sapp_metal_swapchain_set_current_drawable(
  object_ : MetalSwapchain,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_metal_swapchain_set_current_drawable"

///|
#borrow(object_)
extern "c" fn sapp_metal_swapchain_get_depth_stencil_texture(
  object_ : MetalSwapchain,
) -> @native.Handle = "mb_app_sapp_metal_swapchain_get_depth_stencil_texture"

///|
#borrow(object_)
extern "c" fn sapp_metal_swapchain_set_depth_stencil_texture(
  object_ : MetalSwapchain,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_metal_swapchain_set_depth_stencil_texture"

///|
#borrow(object_)
extern "c" fn sapp_metal_swapchain_get_msaa_color_texture(
  object_ : MetalSwapchain,
) -> @native.Handle = "mb_app_sapp_metal_swapchain_get_msaa_color_texture"

///|
#borrow(object_)
extern "c" fn sapp_metal_swapchain_set_msaa_color_texture(
  object_ : MetalSwapchain,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_metal_swapchain_set_msaa_color_texture"

///|
extern "c" fn sapp_d3d11_swapchain_new() -> D3d11Swapchain = "mb_app_sapp_d3d11_swapchain_new"

///|
#borrow(object_)
extern "c" fn sapp_d3d11_swapchain_copy(
  object_ : D3d11Swapchain,
) -> D3d11Swapchain = "mb_app_sapp_d3d11_swapchain_copy"

///|
#borrow(object_)
extern "c" fn sapp_d3d11_swapchain_native(
  object_ : D3d11Swapchain,
) -> @native.Handle = "mb_app_sapp_d3d11_swapchain_native"

///|
extern "c" fn sapp_d3d11_swapchain_from_native(
  ptr : @native.Handle,
) -> D3d11Swapchain = "mb_app_sapp_d3d11_swapchain_from_native"

///|
#borrow(object_)
extern "c" fn sapp_d3d11_swapchain_get_render_view(
  object_ : D3d11Swapchain,
) -> @native.Handle = "mb_app_sapp_d3d11_swapchain_get_render_view"

///|
#borrow(object_)
extern "c" fn sapp_d3d11_swapchain_set_render_view(
  object_ : D3d11Swapchain,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_d3d11_swapchain_set_render_view"

///|
#borrow(object_)
extern "c" fn sapp_d3d11_swapchain_get_resolve_view(
  object_ : D3d11Swapchain,
) -> @native.Handle = "mb_app_sapp_d3d11_swapchain_get_resolve_view"

///|
#borrow(object_)
extern "c" fn sapp_d3d11_swapchain_set_resolve_view(
  object_ : D3d11Swapchain,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_d3d11_swapchain_set_resolve_view"

///|
#borrow(object_)
extern "c" fn sapp_d3d11_swapchain_get_depth_stencil_view(
  object_ : D3d11Swapchain,
) -> @native.Handle = "mb_app_sapp_d3d11_swapchain_get_depth_stencil_view"

///|
#borrow(object_)
extern "c" fn sapp_d3d11_swapchain_set_depth_stencil_view(
  object_ : D3d11Swapchain,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_d3d11_swapchain_set_depth_stencil_view"

///|
extern "c" fn sapp_wgpu_swapchain_new() -> WgpuSwapchain = "mb_app_sapp_wgpu_swapchain_new"

///|
#borrow(object_)
extern "c" fn sapp_wgpu_swapchain_copy(
  object_ : WgpuSwapchain,
) -> WgpuSwapchain = "mb_app_sapp_wgpu_swapchain_copy"

///|
#borrow(object_)
extern "c" fn sapp_wgpu_swapchain_native(
  object_ : WgpuSwapchain,
) -> @native.Handle = "mb_app_sapp_wgpu_swapchain_native"

///|
extern "c" fn sapp_wgpu_swapchain_from_native(
  ptr : @native.Handle,
) -> WgpuSwapchain = "mb_app_sapp_wgpu_swapchain_from_native"

///|
#borrow(object_)
extern "c" fn sapp_wgpu_swapchain_get_render_view(
  object_ : WgpuSwapchain,
) -> @native.Handle = "mb_app_sapp_wgpu_swapchain_get_render_view"

///|
#borrow(object_)
extern "c" fn sapp_wgpu_swapchain_set_render_view(
  object_ : WgpuSwapchain,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_wgpu_swapchain_set_render_view"

///|
#borrow(object_)
extern "c" fn sapp_wgpu_swapchain_get_resolve_view(
  object_ : WgpuSwapchain,
) -> @native.Handle = "mb_app_sapp_wgpu_swapchain_get_resolve_view"

///|
#borrow(object_)
extern "c" fn sapp_wgpu_swapchain_set_resolve_view(
  object_ : WgpuSwapchain,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_wgpu_swapchain_set_resolve_view"

///|
#borrow(object_)
extern "c" fn sapp_wgpu_swapchain_get_depth_stencil_view(
  object_ : WgpuSwapchain,
) -> @native.Handle = "mb_app_sapp_wgpu_swapchain_get_depth_stencil_view"

///|
#borrow(object_)
extern "c" fn sapp_wgpu_swapchain_set_depth_stencil_view(
  object_ : WgpuSwapchain,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_wgpu_swapchain_set_depth_stencil_view"

///|
extern "c" fn sapp_vulkan_swapchain_new() -> VulkanSwapchain = "mb_app_sapp_vulkan_swapchain_new"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_copy(
  object_ : VulkanSwapchain,
) -> VulkanSwapchain = "mb_app_sapp_vulkan_swapchain_copy"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_native(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_app_sapp_vulkan_swapchain_native"

///|
extern "c" fn sapp_vulkan_swapchain_from_native(
  ptr : @native.Handle,
) -> VulkanSwapchain = "mb_app_sapp_vulkan_swapchain_from_native"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_get_render_image(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_app_sapp_vulkan_swapchain_get_render_image"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_set_render_image(
  object_ : VulkanSwapchain,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_vulkan_swapchain_set_render_image"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_get_render_view(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_app_sapp_vulkan_swapchain_get_render_view"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_set_render_view(
  object_ : VulkanSwapchain,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_vulkan_swapchain_set_render_view"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_get_resolve_image(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_app_sapp_vulkan_swapchain_get_resolve_image"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_set_resolve_image(
  object_ : VulkanSwapchain,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_vulkan_swapchain_set_resolve_image"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_get_resolve_view(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_app_sapp_vulkan_swapchain_get_resolve_view"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_set_resolve_view(
  object_ : VulkanSwapchain,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_vulkan_swapchain_set_resolve_view"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_get_depth_stencil_image(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_app_sapp_vulkan_swapchain_get_depth_stencil_image"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_set_depth_stencil_image(
  object_ : VulkanSwapchain,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_vulkan_swapchain_set_depth_stencil_image"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_get_depth_stencil_view(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_app_sapp_vulkan_swapchain_get_depth_stencil_view"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_set_depth_stencil_view(
  object_ : VulkanSwapchain,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_vulkan_swapchain_set_depth_stencil_view"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_get_render_finished_semaphore(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_app_sapp_vulkan_swapchain_get_render_finished_semaphore"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_set_render_finished_semaphore(
  object_ : VulkanSwapchain,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_vulkan_swapchain_set_render_finished_semaphore"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_get_present_complete_semaphore(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_app_sapp_vulkan_swapchain_get_present_complete_semaphore"

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_set_present_complete_semaphore(
  object_ : VulkanSwapchain,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_vulkan_swapchain_set_present_complete_semaphore"

///|
extern "c" fn sapp_gl_swapchain_new() -> GlSwapchain = "mb_app_sapp_gl_swapchain_new"

///|
#borrow(object_)
extern "c" fn sapp_gl_swapchain_copy(object_ : GlSwapchain) -> GlSwapchain = "mb_app_sapp_gl_swapchain_copy"

///|
#borrow(object_)
extern "c" fn sapp_gl_swapchain_native(object_ : GlSwapchain) -> @native.Handle = "mb_app_sapp_gl_swapchain_native"

///|
extern "c" fn sapp_gl_swapchain_from_native(
  ptr : @native.Handle,
) -> GlSwapchain = "mb_app_sapp_gl_swapchain_from_native"

///|
#borrow(object_)
extern "c" fn sapp_gl_swapchain_get_framebuffer(
  object_ : GlSwapchain,
) -> UInt32 = "mb_app_sapp_gl_swapchain_get_framebuffer"

///|
#borrow(object_)
extern "c" fn sapp_gl_swapchain_set_framebuffer(
  object_ : GlSwapchain,
  value : UInt32,
) -> Unit = "mb_app_sapp_gl_swapchain_set_framebuffer"

///|
extern "c" fn sapp_swapchain_new() -> Swapchain = "mb_app_sapp_swapchain_new"

///|
#borrow(object_)
extern "c" fn sapp_swapchain_copy(object_ : Swapchain) -> Swapchain = "mb_app_sapp_swapchain_copy"

///|
#borrow(object_)
extern "c" fn sapp_swapchain_native(object_ : Swapchain) -> @native.Handle = "mb_app_sapp_swapchain_native"

///|
extern "c" fn sapp_swapchain_from_native(ptr : @native.Handle) -> Swapchain = "mb_app_sapp_swapchain_from_native"

///|
#borrow(object_)
extern "c" fn sapp_swapchain_get_invalid(object_ : Swapchain) -> Bool = "mb_app_sapp_swapchain_get_invalid"

///|
#borrow(object_)
extern "c" fn sapp_swapchain_set_invalid(
  object_ : Swapchain,
  value : Bool,
) -> Unit = "mb_app_sapp_swapchain_set_invalid"

///|
#borrow(object_)
extern "c" fn sapp_swapchain_get_width(object_ : Swapchain) -> Int32 = "mb_app_sapp_swapchain_get_width"

///|
#borrow(object_)
extern "c" fn sapp_swapchain_set_width(
  object_ : Swapchain,
  value : Int32,
) -> Unit = "mb_app_sapp_swapchain_set_width"

///|
#borrow(object_)
extern "c" fn sapp_swapchain_get_height(object_ : Swapchain) -> Int32 = "mb_app_sapp_swapchain_get_height"

///|
#borrow(object_)
extern "c" fn sapp_swapchain_set_height(
  object_ : Swapchain,
  value : Int32,
) -> Unit = "mb_app_sapp_swapchain_set_height"

///|
#borrow(object_)
extern "c" fn sapp_swapchain_get_sample_count(object_ : Swapchain) -> Int32 = "mb_app_sapp_swapchain_get_sample_count"

///|
#borrow(object_)
extern "c" fn sapp_swapchain_set_sample_count(
  object_ : Swapchain,
  value : Int32,
) -> Unit = "mb_app_sapp_swapchain_set_sample_count"

///|
#borrow(object_)
extern "c" fn sapp_swapchain_get_color_format(
  object_ : Swapchain,
) -> PixelFormat = "mb_app_sapp_swapchain_get_color_format"

///|
#borrow(object_)
extern "c" fn sapp_swapchain_set_color_format(
  object_ : Swapchain,
  value : PixelFormat,
) -> Unit = "mb_app_sapp_swapchain_set_color_format"

///|
#borrow(object_)
extern "c" fn sapp_swapchain_get_depth_format(
  object_ : Swapchain,
) -> PixelFormat = "mb_app_sapp_swapchain_get_depth_format"

///|
#borrow(object_)
extern "c" fn sapp_swapchain_set_depth_format(
  object_ : Swapchain,
  value : PixelFormat,
) -> Unit = "mb_app_sapp_swapchain_set_depth_format"

///|
#borrow(object_)
extern "c" fn sapp_swapchain_get_metal(object_ : Swapchain) -> MetalSwapchain = "mb_app_sapp_swapchain_get_metal"

///|
#borrow(object_, value)
extern "c" fn sapp_swapchain_set_metal(
  object_ : Swapchain,
  value : MetalSwapchain,
) -> Unit = "mb_app_sapp_swapchain_set_metal"

///|
#borrow(object_)
extern "c" fn sapp_swapchain_get_d3d11(object_ : Swapchain) -> D3d11Swapchain = "mb_app_sapp_swapchain_get_d3d11"

///|
#borrow(object_, value)
extern "c" fn sapp_swapchain_set_d3d11(
  object_ : Swapchain,
  value : D3d11Swapchain,
) -> Unit = "mb_app_sapp_swapchain_set_d3d11"

///|
#borrow(object_)
extern "c" fn sapp_swapchain_get_wgpu(object_ : Swapchain) -> WgpuSwapchain = "mb_app_sapp_swapchain_get_wgpu"

///|
#borrow(object_, value)
extern "c" fn sapp_swapchain_set_wgpu(
  object_ : Swapchain,
  value : WgpuSwapchain,
) -> Unit = "mb_app_sapp_swapchain_set_wgpu"

///|
#borrow(object_)
extern "c" fn sapp_swapchain_get_vulkan(object_ : Swapchain) -> VulkanSwapchain = "mb_app_sapp_swapchain_get_vulkan"

///|
#borrow(object_, value)
extern "c" fn sapp_swapchain_set_vulkan(
  object_ : Swapchain,
  value : VulkanSwapchain,
) -> Unit = "mb_app_sapp_swapchain_set_vulkan"

///|
#borrow(object_)
extern "c" fn sapp_swapchain_get_gl(object_ : Swapchain) -> GlSwapchain = "mb_app_sapp_swapchain_get_gl"

///|
#borrow(object_, value)
extern "c" fn sapp_swapchain_set_gl(
  object_ : Swapchain,
  value : GlSwapchain,
) -> Unit = "mb_app_sapp_swapchain_set_gl"

///|
extern "c" fn sapp_composite_mode_int(value : CompositeMode) -> Int32 = "mb_sokol_enum_identity"

///|
extern "c" fn sapp_logger_new() -> Logger = "mb_app_sapp_logger_new"

///|
#borrow(object_)
extern "c" fn sapp_logger_copy(object_ : Logger) -> Logger = "mb_app_sapp_logger_copy"

///|
#borrow(object_)
extern "c" fn sapp_logger_native(object_ : Logger) -> @native.Handle = "mb_app_sapp_logger_native"

///|
extern "c" fn sapp_logger_from_native(ptr : @native.Handle) -> Logger = "mb_app_sapp_logger_from_native"

///|
#borrow(object_)
extern "c" fn sapp_logger_get_func(object_ : Logger) -> @native.Handle = "mb_app_sapp_logger_get_func"

///|
#borrow(object_)
extern "c" fn sapp_logger_set_func(
  object_ : Logger,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_logger_set_func"

///|
#borrow(object_)
extern "c" fn sapp_logger_get_user_data(object_ : Logger) -> @native.Handle = "mb_app_sapp_logger_get_user_data"

///|
#borrow(object_)
extern "c" fn sapp_logger_set_user_data(
  object_ : Logger,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_logger_set_user_data"

///|
extern "c" fn sapp_gl_desc_new() -> GlDesc = "mb_app_sapp_gl_desc_new"

///|
#borrow(object_)
extern "c" fn sapp_gl_desc_copy(object_ : GlDesc) -> GlDesc = "mb_app_sapp_gl_desc_copy"

///|
#borrow(object_)
extern "c" fn sapp_gl_desc_native(object_ : GlDesc) -> @native.Handle = "mb_app_sapp_gl_desc_native"

///|
extern "c" fn sapp_gl_desc_from_native(ptr : @native.Handle) -> GlDesc = "mb_app_sapp_gl_desc_from_native"

///|
#borrow(object_)
extern "c" fn sapp_gl_desc_get_major_version(object_ : GlDesc) -> Int32 = "mb_app_sapp_gl_desc_get_major_version"

///|
#borrow(object_)
extern "c" fn sapp_gl_desc_set_major_version(
  object_ : GlDesc,
  value : Int32,
) -> Unit = "mb_app_sapp_gl_desc_set_major_version"

///|
#borrow(object_)
extern "c" fn sapp_gl_desc_get_minor_version(object_ : GlDesc) -> Int32 = "mb_app_sapp_gl_desc_get_minor_version"

///|
#borrow(object_)
extern "c" fn sapp_gl_desc_set_minor_version(
  object_ : GlDesc,
  value : Int32,
) -> Unit = "mb_app_sapp_gl_desc_set_minor_version"

///|
extern "c" fn sapp_win32_desc_new() -> Win32Desc = "mb_app_sapp_win32_desc_new"

///|
#borrow(object_)
extern "c" fn sapp_win32_desc_copy(object_ : Win32Desc) -> Win32Desc = "mb_app_sapp_win32_desc_copy"

///|
#borrow(object_)
extern "c" fn sapp_win32_desc_native(object_ : Win32Desc) -> @native.Handle = "mb_app_sapp_win32_desc_native"

///|
extern "c" fn sapp_win32_desc_from_native(ptr : @native.Handle) -> Win32Desc = "mb_app_sapp_win32_desc_from_native"

///|
#borrow(object_)
extern "c" fn sapp_win32_desc_get_console_utf8(object_ : Win32Desc) -> Bool = "mb_app_sapp_win32_desc_get_console_utf8"

///|
#borrow(object_)
extern "c" fn sapp_win32_desc_set_console_utf8(
  object_ : Win32Desc,
  value : Bool,
) -> Unit = "mb_app_sapp_win32_desc_set_console_utf8"

///|
#borrow(object_)
extern "c" fn sapp_win32_desc_get_console_create(object_ : Win32Desc) -> Bool = "mb_app_sapp_win32_desc_get_console_create"

///|
#borrow(object_)
extern "c" fn sapp_win32_desc_set_console_create(
  object_ : Win32Desc,
  value : Bool,
) -> Unit = "mb_app_sapp_win32_desc_set_console_create"

///|
#borrow(object_)
extern "c" fn sapp_win32_desc_get_console_attach(object_ : Win32Desc) -> Bool = "mb_app_sapp_win32_desc_get_console_attach"

///|
#borrow(object_)
extern "c" fn sapp_win32_desc_set_console_attach(
  object_ : Win32Desc,
  value : Bool,
) -> Unit = "mb_app_sapp_win32_desc_set_console_attach"

///|
extern "c" fn sapp_html5_desc_new() -> Html5Desc = "mb_app_sapp_html5_desc_new"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_copy(object_ : Html5Desc) -> Html5Desc = "mb_app_sapp_html5_desc_copy"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_native(object_ : Html5Desc) -> @native.Handle = "mb_app_sapp_html5_desc_native"

///|
extern "c" fn sapp_html5_desc_from_native(ptr : @native.Handle) -> Html5Desc = "mb_app_sapp_html5_desc_from_native"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_get_canvas_selector(object_ : Html5Desc) -> Bytes = "mb_app_sapp_html5_desc_get_canvas_selector"

///|
#borrow(object_, value)
extern "c" fn sapp_html5_desc_set_canvas_selector(
  object_ : Html5Desc,
  value : Bytes,
) -> Unit = "mb_app_sapp_html5_desc_set_canvas_selector"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_get_canvas_resize(object_ : Html5Desc) -> Bool = "mb_app_sapp_html5_desc_get_canvas_resize"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_set_canvas_resize(
  object_ : Html5Desc,
  value : Bool,
) -> Unit = "mb_app_sapp_html5_desc_set_canvas_resize"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_get_preserve_drawing_buffer(
  object_ : Html5Desc,
) -> Bool = "mb_app_sapp_html5_desc_get_preserve_drawing_buffer"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_set_preserve_drawing_buffer(
  object_ : Html5Desc,
  value : Bool,
) -> Unit = "mb_app_sapp_html5_desc_set_preserve_drawing_buffer"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_get_ask_leave_site(object_ : Html5Desc) -> Bool = "mb_app_sapp_html5_desc_get_ask_leave_site"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_set_ask_leave_site(
  object_ : Html5Desc,
  value : Bool,
) -> Unit = "mb_app_sapp_html5_desc_set_ask_leave_site"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_get_update_document_title(
  object_ : Html5Desc,
) -> Bool = "mb_app_sapp_html5_desc_get_update_document_title"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_set_update_document_title(
  object_ : Html5Desc,
  value : Bool,
) -> Unit = "mb_app_sapp_html5_desc_set_update_document_title"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_get_bubble_mouse_events(
  object_ : Html5Desc,
) -> Bool = "mb_app_sapp_html5_desc_get_bubble_mouse_events"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_set_bubble_mouse_events(
  object_ : Html5Desc,
  value : Bool,
) -> Unit = "mb_app_sapp_html5_desc_set_bubble_mouse_events"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_get_bubble_touch_events(
  object_ : Html5Desc,
) -> Bool = "mb_app_sapp_html5_desc_get_bubble_touch_events"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_set_bubble_touch_events(
  object_ : Html5Desc,
  value : Bool,
) -> Unit = "mb_app_sapp_html5_desc_set_bubble_touch_events"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_get_bubble_wheel_events(
  object_ : Html5Desc,
) -> Bool = "mb_app_sapp_html5_desc_get_bubble_wheel_events"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_set_bubble_wheel_events(
  object_ : Html5Desc,
  value : Bool,
) -> Unit = "mb_app_sapp_html5_desc_set_bubble_wheel_events"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_get_bubble_key_events(
  object_ : Html5Desc,
) -> Bool = "mb_app_sapp_html5_desc_get_bubble_key_events"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_set_bubble_key_events(
  object_ : Html5Desc,
  value : Bool,
) -> Unit = "mb_app_sapp_html5_desc_set_bubble_key_events"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_get_bubble_char_events(
  object_ : Html5Desc,
) -> Bool = "mb_app_sapp_html5_desc_get_bubble_char_events"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_set_bubble_char_events(
  object_ : Html5Desc,
  value : Bool,
) -> Unit = "mb_app_sapp_html5_desc_set_bubble_char_events"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_get_use_emsc_set_main_loop(
  object_ : Html5Desc,
) -> Bool = "mb_app_sapp_html5_desc_get_use_emsc_set_main_loop"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_set_use_emsc_set_main_loop(
  object_ : Html5Desc,
  value : Bool,
) -> Unit = "mb_app_sapp_html5_desc_set_use_emsc_set_main_loop"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_get_emsc_set_main_loop_simulate_infinite_loop(
  object_ : Html5Desc,
) -> Bool = "mb_app_sapp_html5_desc_get_emsc_set_main_loop_simulate_infinite_loop"

///|
#borrow(object_)
extern "c" fn sapp_html5_desc_set_emsc_set_main_loop_simulate_infinite_loop(
  object_ : Html5Desc,
  value : Bool,
) -> Unit = "mb_app_sapp_html5_desc_set_emsc_set_main_loop_simulate_infinite_loop"

///|
extern "c" fn sapp_ios_desc_new() -> IosDesc = "mb_app_sapp_ios_desc_new"

///|
#borrow(object_)
extern "c" fn sapp_ios_desc_copy(object_ : IosDesc) -> IosDesc = "mb_app_sapp_ios_desc_copy"

///|
#borrow(object_)
extern "c" fn sapp_ios_desc_native(object_ : IosDesc) -> @native.Handle = "mb_app_sapp_ios_desc_native"

///|
extern "c" fn sapp_ios_desc_from_native(ptr : @native.Handle) -> IosDesc = "mb_app_sapp_ios_desc_from_native"

///|
#borrow(object_)
extern "c" fn sapp_ios_desc_get_keyboard_resizes_canvas(
  object_ : IosDesc,
) -> Bool = "mb_app_sapp_ios_desc_get_keyboard_resizes_canvas"

///|
#borrow(object_)
extern "c" fn sapp_ios_desc_set_keyboard_resizes_canvas(
  object_ : IosDesc,
  value : Bool,
) -> Unit = "mb_app_sapp_ios_desc_set_keyboard_resizes_canvas"

///|
extern "c" fn sapp_metal_desc_new() -> MetalDesc = "mb_app_sapp_metal_desc_new"

///|
#borrow(object_)
extern "c" fn sapp_metal_desc_copy(object_ : MetalDesc) -> MetalDesc = "mb_app_sapp_metal_desc_copy"

///|
#borrow(object_)
extern "c" fn sapp_metal_desc_native(object_ : MetalDesc) -> @native.Handle = "mb_app_sapp_metal_desc_native"

///|
extern "c" fn sapp_metal_desc_from_native(ptr : @native.Handle) -> MetalDesc = "mb_app_sapp_metal_desc_from_native"

///|
#borrow(object_)
extern "c" fn sapp_metal_desc_get_disable_display_sync(
  object_ : MetalDesc,
) -> Bool = "mb_app_sapp_metal_desc_get_disable_display_sync"

///|
#borrow(object_)
extern "c" fn sapp_metal_desc_set_disable_display_sync(
  object_ : MetalDesc,
  value : Bool,
) -> Unit = "mb_app_sapp_metal_desc_set_disable_display_sync"

///|
extern "c" fn sapp_android_desc_new() -> AndroidDesc = "mb_app_sapp_android_desc_new"

///|
#borrow(object_)
extern "c" fn sapp_android_desc_copy(object_ : AndroidDesc) -> AndroidDesc = "mb_app_sapp_android_desc_copy"

///|
#borrow(object_)
extern "c" fn sapp_android_desc_native(object_ : AndroidDesc) -> @native.Handle = "mb_app_sapp_android_desc_native"

///|
extern "c" fn sapp_android_desc_from_native(
  ptr : @native.Handle,
) -> AndroidDesc = "mb_app_sapp_android_desc_from_native"

///|
#borrow(object_)
extern "c" fn sapp_android_desc_get_native_event_cb(
  object_ : AndroidDesc,
) -> @native.Handle = "mb_app_sapp_android_desc_get_native_event_cb"

///|
#borrow(object_)
extern "c" fn sapp_android_desc_set_native_event_cb(
  object_ : AndroidDesc,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_android_desc_set_native_event_cb"

///|
extern "c" fn sapp_desc_new() -> Desc = "mb_app_sapp_desc_new"

///|
#borrow(object_)
extern "c" fn sapp_desc_copy(object_ : Desc) -> Desc = "mb_app_sapp_desc_copy"

///|
#borrow(object_)
extern "c" fn sapp_desc_native(object_ : Desc) -> @native.Handle = "mb_app_sapp_desc_native"

///|
extern "c" fn sapp_desc_from_native(ptr : @native.Handle) -> Desc = "mb_app_sapp_desc_from_native"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_init_cb(object_ : Desc) -> @native.Handle = "mb_app_sapp_desc_get_init_cb"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_init_cb(
  object_ : Desc,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_desc_set_init_cb"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_frame_cb(object_ : Desc) -> @native.Handle = "mb_app_sapp_desc_get_frame_cb"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_frame_cb(
  object_ : Desc,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_desc_set_frame_cb"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_cleanup_cb(object_ : Desc) -> @native.Handle = "mb_app_sapp_desc_get_cleanup_cb"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_cleanup_cb(
  object_ : Desc,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_desc_set_cleanup_cb"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_event_cb(object_ : Desc) -> @native.Handle = "mb_app_sapp_desc_get_event_cb"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_event_cb(
  object_ : Desc,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_desc_set_event_cb"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_user_data(object_ : Desc) -> @native.Handle = "mb_app_sapp_desc_get_user_data"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_user_data(
  object_ : Desc,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_desc_set_user_data"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_init_userdata_cb(object_ : Desc) -> @native.Handle = "mb_app_sapp_desc_get_init_userdata_cb"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_init_userdata_cb(
  object_ : Desc,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_desc_set_init_userdata_cb"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_frame_userdata_cb(object_ : Desc) -> @native.Handle = "mb_app_sapp_desc_get_frame_userdata_cb"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_frame_userdata_cb(
  object_ : Desc,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_desc_set_frame_userdata_cb"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_cleanup_userdata_cb(
  object_ : Desc,
) -> @native.Handle = "mb_app_sapp_desc_get_cleanup_userdata_cb"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_cleanup_userdata_cb(
  object_ : Desc,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_desc_set_cleanup_userdata_cb"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_event_userdata_cb(object_ : Desc) -> @native.Handle = "mb_app_sapp_desc_get_event_userdata_cb"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_event_userdata_cb(
  object_ : Desc,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_desc_set_event_userdata_cb"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_width(object_ : Desc) -> Int32 = "mb_app_sapp_desc_get_width"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_width(object_ : Desc, value : Int32) -> Unit = "mb_app_sapp_desc_set_width"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_height(object_ : Desc) -> Int32 = "mb_app_sapp_desc_get_height"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_height(object_ : Desc, value : Int32) -> Unit = "mb_app_sapp_desc_set_height"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_depth_format(object_ : Desc) -> PixelFormat = "mb_app_sapp_desc_get_depth_format"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_depth_format(
  object_ : Desc,
  value : PixelFormat,
) -> Unit = "mb_app_sapp_desc_set_depth_format"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_composite_mode(object_ : Desc) -> CompositeMode = "mb_app_sapp_desc_get_composite_mode"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_composite_mode(
  object_ : Desc,
  value : CompositeMode,
) -> Unit = "mb_app_sapp_desc_set_composite_mode"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_sample_count(object_ : Desc) -> Int32 = "mb_app_sapp_desc_get_sample_count"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_sample_count(object_ : Desc, value : Int32) -> Unit = "mb_app_sapp_desc_set_sample_count"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_swap_interval(object_ : Desc) -> Int32 = "mb_app_sapp_desc_get_swap_interval"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_swap_interval(
  object_ : Desc,
  value : Int32,
) -> Unit = "mb_app_sapp_desc_set_swap_interval"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_srgb(object_ : Desc) -> Bool = "mb_app_sapp_desc_get_srgb"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_srgb(object_ : Desc, value : Bool) -> Unit = "mb_app_sapp_desc_set_srgb"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_hdr(object_ : Desc) -> Bool = "mb_app_sapp_desc_get_hdr"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_hdr(object_ : Desc, value : Bool) -> Unit = "mb_app_sapp_desc_set_hdr"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_disable_vsync(object_ : Desc) -> Bool = "mb_app_sapp_desc_get_disable_vsync"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_disable_vsync(object_ : Desc, value : Bool) -> Unit = "mb_app_sapp_desc_set_disable_vsync"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_high_dpi(object_ : Desc) -> Bool = "mb_app_sapp_desc_get_high_dpi"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_high_dpi(object_ : Desc, value : Bool) -> Unit = "mb_app_sapp_desc_set_high_dpi"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_fullscreen(object_ : Desc) -> Bool = "mb_app_sapp_desc_get_fullscreen"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_fullscreen(object_ : Desc, value : Bool) -> Unit = "mb_app_sapp_desc_set_fullscreen"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_window_title(object_ : Desc) -> Bytes = "mb_app_sapp_desc_get_window_title"

///|
#borrow(object_, value)
extern "c" fn sapp_desc_set_window_title(object_ : Desc, value : Bytes) -> Unit = "mb_app_sapp_desc_set_window_title"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_enable_clipboard(object_ : Desc) -> Bool = "mb_app_sapp_desc_get_enable_clipboard"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_enable_clipboard(
  object_ : Desc,
  value : Bool,
) -> Unit = "mb_app_sapp_desc_set_enable_clipboard"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_clipboard_size(object_ : Desc) -> Int32 = "mb_app_sapp_desc_get_clipboard_size"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_clipboard_size(
  object_ : Desc,
  value : Int32,
) -> Unit = "mb_app_sapp_desc_set_clipboard_size"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_enable_dragndrop(object_ : Desc) -> Bool = "mb_app_sapp_desc_get_enable_dragndrop"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_enable_dragndrop(
  object_ : Desc,
  value : Bool,
) -> Unit = "mb_app_sapp_desc_set_enable_dragndrop"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_max_dropped_files(object_ : Desc) -> Int32 = "mb_app_sapp_desc_get_max_dropped_files"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_max_dropped_files(
  object_ : Desc,
  value : Int32,
) -> Unit = "mb_app_sapp_desc_set_max_dropped_files"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_max_dropped_file_path_length(
  object_ : Desc,
) -> Int32 = "mb_app_sapp_desc_get_max_dropped_file_path_length"

///|
#borrow(object_)
extern "c" fn sapp_desc_set_max_dropped_file_path_length(
  object_ : Desc,
  value : Int32,
) -> Unit = "mb_app_sapp_desc_set_max_dropped_file_path_length"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_icon(object_ : Desc) -> IconDesc = "mb_app_sapp_desc_get_icon"

///|
#borrow(object_, value)
extern "c" fn sapp_desc_set_icon(object_ : Desc, value : IconDesc) -> Unit = "mb_app_sapp_desc_set_icon"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_allocator(object_ : Desc) -> Allocator = "mb_app_sapp_desc_get_allocator"

///|
#borrow(object_, value)
extern "c" fn sapp_desc_set_allocator(
  object_ : Desc,
  value : Allocator,
) -> Unit = "mb_app_sapp_desc_set_allocator"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_logger(object_ : Desc) -> Logger = "mb_app_sapp_desc_get_logger"

///|
#borrow(object_, value)
extern "c" fn sapp_desc_set_logger(object_ : Desc, value : Logger) -> Unit = "mb_app_sapp_desc_set_logger"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_gl(object_ : Desc) -> GlDesc = "mb_app_sapp_desc_get_gl"

///|
#borrow(object_, value)
extern "c" fn sapp_desc_set_gl(object_ : Desc, value : GlDesc) -> Unit = "mb_app_sapp_desc_set_gl"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_metal(object_ : Desc) -> MetalDesc = "mb_app_sapp_desc_get_metal"

///|
#borrow(object_, value)
extern "c" fn sapp_desc_set_metal(object_ : Desc, value : MetalDesc) -> Unit = "mb_app_sapp_desc_set_metal"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_win32(object_ : Desc) -> Win32Desc = "mb_app_sapp_desc_get_win32"

///|
#borrow(object_, value)
extern "c" fn sapp_desc_set_win32(object_ : Desc, value : Win32Desc) -> Unit = "mb_app_sapp_desc_set_win32"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_html5(object_ : Desc) -> Html5Desc = "mb_app_sapp_desc_get_html5"

///|
#borrow(object_, value)
extern "c" fn sapp_desc_set_html5(object_ : Desc, value : Html5Desc) -> Unit = "mb_app_sapp_desc_set_html5"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_ios(object_ : Desc) -> IosDesc = "mb_app_sapp_desc_get_ios"

///|
#borrow(object_, value)
extern "c" fn sapp_desc_set_ios(object_ : Desc, value : IosDesc) -> Unit = "mb_app_sapp_desc_set_ios"

///|
#borrow(object_)
extern "c" fn sapp_desc_get_android(object_ : Desc) -> AndroidDesc = "mb_app_sapp_desc_get_android"

///|
#borrow(object_, value)
extern "c" fn sapp_desc_set_android(
  object_ : Desc,
  value : AndroidDesc,
) -> Unit = "mb_app_sapp_desc_set_android"

///|
extern "c" fn sapp_html5_fetch_error_int(value : Html5FetchError) -> Int32 = "mb_sokol_enum_identity"

///|
extern "c" fn sapp_html5_fetch_response_new() -> Html5FetchResponse = "mb_app_sapp_html5_fetch_response_new"

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_copy(
  object_ : Html5FetchResponse,
) -> Html5FetchResponse = "mb_app_sapp_html5_fetch_response_copy"

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_native(
  object_ : Html5FetchResponse,
) -> @native.Handle = "mb_app_sapp_html5_fetch_response_native"

///|
extern "c" fn sapp_html5_fetch_response_from_native(
  ptr : @native.Handle,
) -> Html5FetchResponse = "mb_app_sapp_html5_fetch_response_from_native"

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_get_succeeded(
  object_ : Html5FetchResponse,
) -> Bool = "mb_app_sapp_html5_fetch_response_get_succeeded"

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_set_succeeded(
  object_ : Html5FetchResponse,
  value : Bool,
) -> Unit = "mb_app_sapp_html5_fetch_response_set_succeeded"

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_get_error_code(
  object_ : Html5FetchResponse,
) -> Html5FetchError = "mb_app_sapp_html5_fetch_response_get_error_code"

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_set_error_code(
  object_ : Html5FetchResponse,
  value : Html5FetchError,
) -> Unit = "mb_app_sapp_html5_fetch_response_set_error_code"

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_get_file_index(
  object_ : Html5FetchResponse,
) -> Int32 = "mb_app_sapp_html5_fetch_response_get_file_index"

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_set_file_index(
  object_ : Html5FetchResponse,
  value : Int32,
) -> Unit = "mb_app_sapp_html5_fetch_response_set_file_index"

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_get_data(
  object_ : Html5FetchResponse,
) -> Range = "mb_app_sapp_html5_fetch_response_get_data"

///|
#borrow(object_, value)
extern "c" fn sapp_html5_fetch_response_set_data(
  object_ : Html5FetchResponse,
  value : Range,
) -> Unit = "mb_app_sapp_html5_fetch_response_set_data"

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_get_buffer(
  object_ : Html5FetchResponse,
) -> Range = "mb_app_sapp_html5_fetch_response_get_buffer"

///|
#borrow(object_, value)
extern "c" fn sapp_html5_fetch_response_set_buffer(
  object_ : Html5FetchResponse,
  value : Range,
) -> Unit = "mb_app_sapp_html5_fetch_response_set_buffer"

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_get_user_data(
  object_ : Html5FetchResponse,
) -> @native.Handle = "mb_app_sapp_html5_fetch_response_get_user_data"

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_response_set_user_data(
  object_ : Html5FetchResponse,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_html5_fetch_response_set_user_data"

///|
extern "c" fn sapp_html5_fetch_request_new() -> Html5FetchRequest = "mb_app_sapp_html5_fetch_request_new"

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_request_copy(
  object_ : Html5FetchRequest,
) -> Html5FetchRequest = "mb_app_sapp_html5_fetch_request_copy"

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_request_native(
  object_ : Html5FetchRequest,
) -> @native.Handle = "mb_app_sapp_html5_fetch_request_native"

///|
extern "c" fn sapp_html5_fetch_request_from_native(
  ptr : @native.Handle,
) -> Html5FetchRequest = "mb_app_sapp_html5_fetch_request_from_native"

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_request_get_dropped_file_index(
  object_ : Html5FetchRequest,
) -> Int32 = "mb_app_sapp_html5_fetch_request_get_dropped_file_index"

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_request_set_dropped_file_index(
  object_ : Html5FetchRequest,
  value : Int32,
) -> Unit = "mb_app_sapp_html5_fetch_request_set_dropped_file_index"

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_request_get_callback(
  object_ : Html5FetchRequest,
) -> @native.Handle = "mb_app_sapp_html5_fetch_request_get_callback"

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_request_set_callback(
  object_ : Html5FetchRequest,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_html5_fetch_request_set_callback"

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_request_get_buffer(
  object_ : Html5FetchRequest,
) -> Range = "mb_app_sapp_html5_fetch_request_get_buffer"

///|
#borrow(object_, value)
extern "c" fn sapp_html5_fetch_request_set_buffer(
  object_ : Html5FetchRequest,
  value : Range,
) -> Unit = "mb_app_sapp_html5_fetch_request_set_buffer"

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_request_get_user_data(
  object_ : Html5FetchRequest,
) -> @native.Handle = "mb_app_sapp_html5_fetch_request_get_user_data"

///|
#borrow(object_)
extern "c" fn sapp_html5_fetch_request_set_user_data(
  object_ : Html5FetchRequest,
  value : @native.Handle,
) -> Unit = "mb_app_sapp_html5_fetch_request_set_user_data"

///|
extern "c" fn sapp_mouse_cursor_int(value : MouseCursor) -> Int32 = "mb_sokol_enum_identity"

///|
extern "c" fn sapp_get_environment() -> Environment = "mb_app_sapp_get_environment"

///|
extern "c" fn sapp_acquire_swapchain() -> Swapchain = "mb_app_sapp_acquire_swapchain"

///|
extern "c" fn sapp_isvalid() -> Bool = "mb_app_sapp_isvalid"

///|
extern "c" fn sapp_width() -> Int32 = "sapp_width"

///|
extern "c" fn sapp_widthf() -> Float = "sapp_widthf"

///|
extern "c" fn sapp_height() -> Int32 = "sapp_height"

///|
extern "c" fn sapp_heightf() -> Float = "sapp_heightf"

///|
extern "c" fn sapp_color_format() -> PixelFormat = "sapp_color_format"

///|
extern "c" fn sapp_depth_format() -> PixelFormat = "sapp_depth_format"

///|
extern "c" fn sapp_sample_count() -> Int32 = "sapp_sample_count"

///|
extern "c" fn sapp_high_dpi() -> Bool = "mb_app_sapp_high_dpi"

///|
extern "c" fn sapp_dpi_scale() -> Float = "sapp_dpi_scale"

///|
extern "c" fn sapp_show_keyboard(show : Bool) -> Unit = "mb_app_sapp_show_keyboard"

///|
extern "c" fn sapp_keyboard_shown() -> Bool = "mb_app_sapp_keyboard_shown"

///|
extern "c" fn sapp_is_fullscreen() -> Bool = "mb_app_sapp_is_fullscreen"

///|
extern "c" fn sapp_toggle_fullscreen() -> Unit = "sapp_toggle_fullscreen"

///|
extern "c" fn sapp_show_mouse(show : Bool) -> Unit = "mb_app_sapp_show_mouse"

///|
extern "c" fn sapp_mouse_shown() -> Bool = "mb_app_sapp_mouse_shown"

///|
extern "c" fn sapp_lock_mouse(lock : Bool) -> Unit = "mb_app_sapp_lock_mouse"

///|
extern "c" fn sapp_mouse_locked() -> Bool = "mb_app_sapp_mouse_locked"

///|
extern "c" fn sapp_set_mouse_cursor(cursor : MouseCursor) -> Unit = "sapp_set_mouse_cursor"

///|
extern "c" fn sapp_get_mouse_cursor() -> MouseCursor = "sapp_get_mouse_cursor"

///|
#borrow(desc)
extern "c" fn sapp_bind_mouse_cursor_image(
  cursor : MouseCursor,
  desc : ImageDesc,
) -> MouseCursor = "mb_app_sapp_bind_mouse_cursor_image"

///|
extern "c" fn sapp_unbind_mouse_cursor_image(cursor : MouseCursor) -> Unit = "sapp_unbind_mouse_cursor_image"

///|
extern "c" fn sapp_userdata() -> @native.Handle = "sapp_userdata"

///|
extern "c" fn sapp_query_desc() -> Desc = "mb_app_sapp_query_desc"

///|
extern "c" fn sapp_request_quit() -> Unit = "sapp_request_quit"

///|
extern "c" fn sapp_cancel_quit() -> Unit = "sapp_cancel_quit"

///|
extern "c" fn sapp_quit() -> Unit = "sapp_quit"

///|
extern "c" fn sapp_consume_event() -> Unit = "sapp_consume_event"

///|
extern "c" fn sapp_frame_count() -> UInt64 = "sapp_frame_count"

///|
extern "c" fn sapp_frame_duration() -> Double = "sapp_frame_duration"

///|
extern "c" fn sapp_frame_duration_unfiltered() -> Double = "sapp_frame_duration_unfiltered"

///|
#borrow(str)
extern "c" fn sapp_set_clipboard_string(str : Bytes) -> Unit = "sapp_set_clipboard_string"

///|
extern "c" fn sapp_get_clipboard_string() -> Bytes = "mb_app_sapp_get_clipboard_string"

///|
#borrow(str)
extern "c" fn sapp_set_window_title(str : Bytes) -> Unit = "sapp_set_window_title"

///|
#borrow(icon_desc)
extern "c" fn sapp_set_icon(icon_desc : IconDesc) -> Unit = "mb_app_sapp_set_icon"

///|
extern "c" fn sapp_get_num_dropped_files() -> Int32 = "sapp_get_num_dropped_files"

///|
extern "c" fn sapp_get_dropped_file_path(index : Int32) -> Bytes = "mb_app_sapp_get_dropped_file_path"

///|
extern "c" fn sapp_egl_get_display() -> @native.Handle = "sapp_egl_get_display"

///|
extern "c" fn sapp_egl_get_context() -> @native.Handle = "sapp_egl_get_context"

///|
extern "c" fn sapp_html5_ask_leave_site(ask : Bool) -> Unit = "mb_app_sapp_html5_ask_leave_site"

///|
extern "c" fn sapp_html5_get_dropped_file_size(index : Int32) -> UInt32 = "sapp_html5_get_dropped_file_size"

///|
extern "c" fn sapp_macos_get_window() -> @native.Handle = "sapp_macos_get_window"

///|
extern "c" fn sapp_ios_get_window() -> @native.Handle = "sapp_ios_get_window"

///|
extern "c" fn sapp_d3d11_get_swap_chain() -> @native.Handle = "sapp_d3d11_get_swap_chain"

///|
extern "c" fn sapp_win32_get_hwnd() -> @native.Handle = "sapp_win32_get_hwnd"

///|
extern "c" fn sapp_gl_get_major_version() -> Int32 = "sapp_gl_get_major_version"

///|
extern "c" fn sapp_gl_get_minor_version() -> Int32 = "sapp_gl_get_minor_version"

///|
extern "c" fn sapp_gl_is_gles() -> Bool = "mb_app_sapp_gl_is_gles"

///|
extern "c" fn sapp_x11_get_window() -> @native.Handle = "sapp_x11_get_window"

///|
extern "c" fn sapp_x11_get_display() -> @native.Handle = "sapp_x11_get_display"

///|
extern "c" fn sapp_android_get_native_activity() -> @native.Handle = "sapp_android_get_native_activity"

///|
extern "c" fn sapp_android_get_native_window() -> @native.Handle = "sapp_android_get_native_window"

///|
extern "c" fn sapp_logger_default() -> Logger = "mb_app_sapp_logger_default"
