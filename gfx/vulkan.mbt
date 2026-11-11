///|
/// Owned C value. copy() creates an independent copy.
pub type VulkanSwapchain

///|
extern "c" fn sg_vulkan_swapchain_new() -> VulkanSwapchain = "mb_gfx_sg_vulkan_swapchain_new"

///|
pub fn VulkanSwapchain::new() -> VulkanSwapchain {
  sg_vulkan_swapchain_new()
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_swapchain_copy(
  object_ : VulkanSwapchain,
) -> VulkanSwapchain = "mb_gfx_sg_vulkan_swapchain_copy"

///|
pub fn VulkanSwapchain::copy(self : VulkanSwapchain) -> VulkanSwapchain {
  sg_vulkan_swapchain_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_swapchain_native(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_gfx_sg_vulkan_swapchain_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn VulkanSwapchain::unsafe_native_handle(
  self : VulkanSwapchain,
) -> @native.Handle {
  sg_vulkan_swapchain_native(self)
}

///|
extern "c" fn sg_vulkan_swapchain_from_native(
  ptr : @native.Handle,
) -> VulkanSwapchain = "mb_gfx_sg_vulkan_swapchain_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn VulkanSwapchain::unsafe_from_native(
  ptr : @native.Handle,
) -> VulkanSwapchain {
  sg_vulkan_swapchain_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_swapchain_get_render_image(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_gfx_sg_vulkan_swapchain_get_render_image"

///|
pub fn VulkanSwapchain::render_image(self : VulkanSwapchain) -> @native.Handle {
  sg_vulkan_swapchain_get_render_image(self)
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_swapchain_set_render_image(
  object_ : VulkanSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_vulkan_swapchain_set_render_image"

///|
pub fn VulkanSwapchain::set_render_image(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sg_vulkan_swapchain_set_render_image(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_swapchain_get_render_view(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_gfx_sg_vulkan_swapchain_get_render_view"

///|
pub fn VulkanSwapchain::render_view(self : VulkanSwapchain) -> @native.Handle {
  sg_vulkan_swapchain_get_render_view(self)
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_swapchain_set_render_view(
  object_ : VulkanSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_vulkan_swapchain_set_render_view"

///|
pub fn VulkanSwapchain::set_render_view(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sg_vulkan_swapchain_set_render_view(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_swapchain_get_resolve_image(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_gfx_sg_vulkan_swapchain_get_resolve_image"

///|
pub fn VulkanSwapchain::resolve_image(self : VulkanSwapchain) -> @native.Handle {
  sg_vulkan_swapchain_get_resolve_image(self)
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_swapchain_set_resolve_image(
  object_ : VulkanSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_vulkan_swapchain_set_resolve_image"

///|
pub fn VulkanSwapchain::set_resolve_image(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sg_vulkan_swapchain_set_resolve_image(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_swapchain_get_resolve_view(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_gfx_sg_vulkan_swapchain_get_resolve_view"

///|
pub fn VulkanSwapchain::resolve_view(self : VulkanSwapchain) -> @native.Handle {
  sg_vulkan_swapchain_get_resolve_view(self)
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_swapchain_set_resolve_view(
  object_ : VulkanSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_vulkan_swapchain_set_resolve_view"

///|
pub fn VulkanSwapchain::set_resolve_view(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sg_vulkan_swapchain_set_resolve_view(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_swapchain_get_depth_stencil_image(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_gfx_sg_vulkan_swapchain_get_depth_stencil_image"

///|
pub fn VulkanSwapchain::depth_stencil_image(
  self : VulkanSwapchain,
) -> @native.Handle {
  sg_vulkan_swapchain_get_depth_stencil_image(self)
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_swapchain_set_depth_stencil_image(
  object_ : VulkanSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_vulkan_swapchain_set_depth_stencil_image"

///|
pub fn VulkanSwapchain::set_depth_stencil_image(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sg_vulkan_swapchain_set_depth_stencil_image(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_swapchain_get_depth_stencil_view(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_gfx_sg_vulkan_swapchain_get_depth_stencil_view"

///|
pub fn VulkanSwapchain::depth_stencil_view(
  self : VulkanSwapchain,
) -> @native.Handle {
  sg_vulkan_swapchain_get_depth_stencil_view(self)
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_swapchain_set_depth_stencil_view(
  object_ : VulkanSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_vulkan_swapchain_set_depth_stencil_view"

///|
pub fn VulkanSwapchain::set_depth_stencil_view(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sg_vulkan_swapchain_set_depth_stencil_view(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_swapchain_get_render_finished_semaphore(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_gfx_sg_vulkan_swapchain_get_render_finished_semaphore"

///|
pub fn VulkanSwapchain::render_finished_semaphore(
  self : VulkanSwapchain,
) -> @native.Handle {
  sg_vulkan_swapchain_get_render_finished_semaphore(self)
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_swapchain_set_render_finished_semaphore(
  object_ : VulkanSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_vulkan_swapchain_set_render_finished_semaphore"

///|
pub fn VulkanSwapchain::set_render_finished_semaphore(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sg_vulkan_swapchain_set_render_finished_semaphore(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_swapchain_get_present_complete_semaphore(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_gfx_sg_vulkan_swapchain_get_present_complete_semaphore"

///|
pub fn VulkanSwapchain::present_complete_semaphore(
  self : VulkanSwapchain,
) -> @native.Handle {
  sg_vulkan_swapchain_get_present_complete_semaphore(self)
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_swapchain_set_present_complete_semaphore(
  object_ : VulkanSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_vulkan_swapchain_set_present_complete_semaphore"

///|
pub fn VulkanSwapchain::set_present_complete_semaphore(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sg_vulkan_swapchain_set_present_complete_semaphore(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type FrameStatsVk

///|
extern "c" fn sg_frame_stats_vk_new() -> FrameStatsVk = "mb_gfx_sg_frame_stats_vk_new"

///|
pub fn FrameStatsVk::new() -> FrameStatsVk {
  sg_frame_stats_vk_new()
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_copy(object_ : FrameStatsVk) -> FrameStatsVk = "mb_gfx_sg_frame_stats_vk_copy"

///|
pub fn FrameStatsVk::copy(self : FrameStatsVk) -> FrameStatsVk {
  sg_frame_stats_vk_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_native(
  object_ : FrameStatsVk,
) -> @native.Handle = "mb_gfx_sg_frame_stats_vk_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsVk::unsafe_native_handle(
  self : FrameStatsVk,
) -> @native.Handle {
  sg_frame_stats_vk_native(self)
}

///|
extern "c" fn sg_frame_stats_vk_from_native(
  ptr : @native.Handle,
) -> FrameStatsVk = "mb_gfx_sg_frame_stats_vk_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsVk::unsafe_from_native(ptr : @native.Handle) -> FrameStatsVk {
  sg_frame_stats_vk_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_get_num_cmd_pipeline_barrier(
  object_ : FrameStatsVk,
) -> UInt32 = "mb_gfx_sg_frame_stats_vk_get_num_cmd_pipeline_barrier"

///|
pub fn FrameStatsVk::num_cmd_pipeline_barrier(self : FrameStatsVk) -> UInt32 {
  sg_frame_stats_vk_get_num_cmd_pipeline_barrier(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_set_num_cmd_pipeline_barrier(
  object_ : FrameStatsVk,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_vk_set_num_cmd_pipeline_barrier"

///|
pub fn FrameStatsVk::set_num_cmd_pipeline_barrier(
  self : FrameStatsVk,
  value : UInt32,
) -> FrameStatsVk {
  sg_frame_stats_vk_set_num_cmd_pipeline_barrier(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_get_num_allocate_memory(
  object_ : FrameStatsVk,
) -> UInt32 = "mb_gfx_sg_frame_stats_vk_get_num_allocate_memory"

///|
pub fn FrameStatsVk::num_allocate_memory(self : FrameStatsVk) -> UInt32 {
  sg_frame_stats_vk_get_num_allocate_memory(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_set_num_allocate_memory(
  object_ : FrameStatsVk,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_vk_set_num_allocate_memory"

///|
pub fn FrameStatsVk::set_num_allocate_memory(
  self : FrameStatsVk,
  value : UInt32,
) -> FrameStatsVk {
  sg_frame_stats_vk_set_num_allocate_memory(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_get_num_free_memory(
  object_ : FrameStatsVk,
) -> UInt32 = "mb_gfx_sg_frame_stats_vk_get_num_free_memory"

///|
pub fn FrameStatsVk::num_free_memory(self : FrameStatsVk) -> UInt32 {
  sg_frame_stats_vk_get_num_free_memory(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_set_num_free_memory(
  object_ : FrameStatsVk,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_vk_set_num_free_memory"

///|
pub fn FrameStatsVk::set_num_free_memory(
  self : FrameStatsVk,
  value : UInt32,
) -> FrameStatsVk {
  sg_frame_stats_vk_set_num_free_memory(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_get_size_allocate_memory(
  object_ : FrameStatsVk,
) -> UInt32 = "mb_gfx_sg_frame_stats_vk_get_size_allocate_memory"

///|
pub fn FrameStatsVk::size_allocate_memory(self : FrameStatsVk) -> UInt32 {
  sg_frame_stats_vk_get_size_allocate_memory(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_set_size_allocate_memory(
  object_ : FrameStatsVk,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_vk_set_size_allocate_memory"

///|
pub fn FrameStatsVk::set_size_allocate_memory(
  self : FrameStatsVk,
  value : UInt32,
) -> FrameStatsVk {
  sg_frame_stats_vk_set_size_allocate_memory(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_get_num_delete_queue_added(
  object_ : FrameStatsVk,
) -> UInt32 = "mb_gfx_sg_frame_stats_vk_get_num_delete_queue_added"

///|
pub fn FrameStatsVk::num_delete_queue_added(self : FrameStatsVk) -> UInt32 {
  sg_frame_stats_vk_get_num_delete_queue_added(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_set_num_delete_queue_added(
  object_ : FrameStatsVk,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_vk_set_num_delete_queue_added"

///|
pub fn FrameStatsVk::set_num_delete_queue_added(
  self : FrameStatsVk,
  value : UInt32,
) -> FrameStatsVk {
  sg_frame_stats_vk_set_num_delete_queue_added(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_get_num_delete_queue_collected(
  object_ : FrameStatsVk,
) -> UInt32 = "mb_gfx_sg_frame_stats_vk_get_num_delete_queue_collected"

///|
pub fn FrameStatsVk::num_delete_queue_collected(self : FrameStatsVk) -> UInt32 {
  sg_frame_stats_vk_get_num_delete_queue_collected(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_set_num_delete_queue_collected(
  object_ : FrameStatsVk,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_vk_set_num_delete_queue_collected"

///|
pub fn FrameStatsVk::set_num_delete_queue_collected(
  self : FrameStatsVk,
  value : UInt32,
) -> FrameStatsVk {
  sg_frame_stats_vk_set_num_delete_queue_collected(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_get_num_cmd_copy_buffer(
  object_ : FrameStatsVk,
) -> UInt32 = "mb_gfx_sg_frame_stats_vk_get_num_cmd_copy_buffer"

///|
pub fn FrameStatsVk::num_cmd_copy_buffer(self : FrameStatsVk) -> UInt32 {
  sg_frame_stats_vk_get_num_cmd_copy_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_set_num_cmd_copy_buffer(
  object_ : FrameStatsVk,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_vk_set_num_cmd_copy_buffer"

///|
pub fn FrameStatsVk::set_num_cmd_copy_buffer(
  self : FrameStatsVk,
  value : UInt32,
) -> FrameStatsVk {
  sg_frame_stats_vk_set_num_cmd_copy_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_get_num_cmd_copy_buffer_to_image(
  object_ : FrameStatsVk,
) -> UInt32 = "mb_gfx_sg_frame_stats_vk_get_num_cmd_copy_buffer_to_image"

///|
pub fn FrameStatsVk::num_cmd_copy_buffer_to_image(
  self : FrameStatsVk,
) -> UInt32 {
  sg_frame_stats_vk_get_num_cmd_copy_buffer_to_image(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_set_num_cmd_copy_buffer_to_image(
  object_ : FrameStatsVk,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_vk_set_num_cmd_copy_buffer_to_image"

///|
pub fn FrameStatsVk::set_num_cmd_copy_buffer_to_image(
  self : FrameStatsVk,
  value : UInt32,
) -> FrameStatsVk {
  sg_frame_stats_vk_set_num_cmd_copy_buffer_to_image(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_get_num_cmd_copy_image(
  object_ : FrameStatsVk,
) -> UInt32 = "mb_gfx_sg_frame_stats_vk_get_num_cmd_copy_image"

///|
pub fn FrameStatsVk::num_cmd_copy_image(self : FrameStatsVk) -> UInt32 {
  sg_frame_stats_vk_get_num_cmd_copy_image(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_set_num_cmd_copy_image(
  object_ : FrameStatsVk,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_vk_set_num_cmd_copy_image"

///|
pub fn FrameStatsVk::set_num_cmd_copy_image(
  self : FrameStatsVk,
  value : UInt32,
) -> FrameStatsVk {
  sg_frame_stats_vk_set_num_cmd_copy_image(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_get_num_cmd_set_descriptor_buffer_offsets(
  object_ : FrameStatsVk,
) -> UInt32 = "mb_gfx_sg_frame_stats_vk_get_num_cmd_set_descriptor_buffer_offsets"

///|
pub fn FrameStatsVk::num_cmd_set_descriptor_buffer_offsets(
  self : FrameStatsVk,
) -> UInt32 {
  sg_frame_stats_vk_get_num_cmd_set_descriptor_buffer_offsets(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_set_num_cmd_set_descriptor_buffer_offsets(
  object_ : FrameStatsVk,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_vk_set_num_cmd_set_descriptor_buffer_offsets"

///|
pub fn FrameStatsVk::set_num_cmd_set_descriptor_buffer_offsets(
  self : FrameStatsVk,
  value : UInt32,
) -> FrameStatsVk {
  sg_frame_stats_vk_set_num_cmd_set_descriptor_buffer_offsets(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_get_size_descriptor_buffer_writes(
  object_ : FrameStatsVk,
) -> UInt32 = "mb_gfx_sg_frame_stats_vk_get_size_descriptor_buffer_writes"

///|
pub fn FrameStatsVk::size_descriptor_buffer_writes(
  self : FrameStatsVk,
) -> UInt32 {
  sg_frame_stats_vk_get_size_descriptor_buffer_writes(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_vk_set_size_descriptor_buffer_writes(
  object_ : FrameStatsVk,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_vk_set_size_descriptor_buffer_writes"

///|
pub fn FrameStatsVk::set_size_descriptor_buffer_writes(
  self : FrameStatsVk,
  value : UInt32,
) -> FrameStatsVk {
  sg_frame_stats_vk_set_size_descriptor_buffer_writes(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type VulkanEnvironment

///|
extern "c" fn sg_vulkan_environment_new() -> VulkanEnvironment = "mb_gfx_sg_vulkan_environment_new"

///|
pub fn VulkanEnvironment::new() -> VulkanEnvironment {
  sg_vulkan_environment_new()
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_environment_copy(
  object_ : VulkanEnvironment,
) -> VulkanEnvironment = "mb_gfx_sg_vulkan_environment_copy"

///|
pub fn VulkanEnvironment::copy(self : VulkanEnvironment) -> VulkanEnvironment {
  sg_vulkan_environment_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_environment_native(
  object_ : VulkanEnvironment,
) -> @native.Handle = "mb_gfx_sg_vulkan_environment_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn VulkanEnvironment::unsafe_native_handle(
  self : VulkanEnvironment,
) -> @native.Handle {
  sg_vulkan_environment_native(self)
}

///|
extern "c" fn sg_vulkan_environment_from_native(
  ptr : @native.Handle,
) -> VulkanEnvironment = "mb_gfx_sg_vulkan_environment_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn VulkanEnvironment::unsafe_from_native(
  ptr : @native.Handle,
) -> VulkanEnvironment {
  sg_vulkan_environment_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_environment_get_instance(
  object_ : VulkanEnvironment,
) -> @native.Handle = "mb_gfx_sg_vulkan_environment_get_instance"

///|
pub fn VulkanEnvironment::instance(self : VulkanEnvironment) -> @native.Handle {
  sg_vulkan_environment_get_instance(self)
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_environment_set_instance(
  object_ : VulkanEnvironment,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_vulkan_environment_set_instance"

///|
pub fn VulkanEnvironment::set_instance(
  self : VulkanEnvironment,
  value : @native.Handle,
) -> VulkanEnvironment {
  sg_vulkan_environment_set_instance(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_environment_get_physical_device(
  object_ : VulkanEnvironment,
) -> @native.Handle = "mb_gfx_sg_vulkan_environment_get_physical_device"

///|
pub fn VulkanEnvironment::physical_device(
  self : VulkanEnvironment,
) -> @native.Handle {
  sg_vulkan_environment_get_physical_device(self)
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_environment_set_physical_device(
  object_ : VulkanEnvironment,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_vulkan_environment_set_physical_device"

///|
pub fn VulkanEnvironment::set_physical_device(
  self : VulkanEnvironment,
  value : @native.Handle,
) -> VulkanEnvironment {
  sg_vulkan_environment_set_physical_device(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_environment_get_device(
  object_ : VulkanEnvironment,
) -> @native.Handle = "mb_gfx_sg_vulkan_environment_get_device"

///|
pub fn VulkanEnvironment::device(self : VulkanEnvironment) -> @native.Handle {
  sg_vulkan_environment_get_device(self)
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_environment_set_device(
  object_ : VulkanEnvironment,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_vulkan_environment_set_device"

///|
pub fn VulkanEnvironment::set_device(
  self : VulkanEnvironment,
  value : @native.Handle,
) -> VulkanEnvironment {
  sg_vulkan_environment_set_device(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_environment_get_queue(
  object_ : VulkanEnvironment,
) -> @native.Handle = "mb_gfx_sg_vulkan_environment_get_queue"

///|
pub fn VulkanEnvironment::queue(self : VulkanEnvironment) -> @native.Handle {
  sg_vulkan_environment_get_queue(self)
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_environment_set_queue(
  object_ : VulkanEnvironment,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_vulkan_environment_set_queue"

///|
pub fn VulkanEnvironment::set_queue(
  self : VulkanEnvironment,
  value : @native.Handle,
) -> VulkanEnvironment {
  sg_vulkan_environment_set_queue(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_environment_get_queue_family_index(
  object_ : VulkanEnvironment,
) -> UInt32 = "mb_gfx_sg_vulkan_environment_get_queue_family_index"

///|
pub fn VulkanEnvironment::queue_family_index(
  self : VulkanEnvironment,
) -> UInt32 {
  sg_vulkan_environment_get_queue_family_index(self)
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_environment_set_queue_family_index(
  object_ : VulkanEnvironment,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_vulkan_environment_set_queue_family_index"

///|
pub fn VulkanEnvironment::set_queue_family_index(
  self : VulkanEnvironment,
  value : UInt32,
) -> VulkanEnvironment {
  sg_vulkan_environment_set_queue_family_index(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type VulkanDesc

///|
extern "c" fn sg_vulkan_desc_new() -> VulkanDesc = "mb_gfx_sg_vulkan_desc_new"

///|
pub fn VulkanDesc::new() -> VulkanDesc {
  sg_vulkan_desc_new()
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_desc_copy(object_ : VulkanDesc) -> VulkanDesc = "mb_gfx_sg_vulkan_desc_copy"

///|
pub fn VulkanDesc::copy(self : VulkanDesc) -> VulkanDesc {
  sg_vulkan_desc_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_desc_native(object_ : VulkanDesc) -> @native.Handle = "mb_gfx_sg_vulkan_desc_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn VulkanDesc::unsafe_native_handle(self : VulkanDesc) -> @native.Handle {
  sg_vulkan_desc_native(self)
}

///|
extern "c" fn sg_vulkan_desc_from_native(ptr : @native.Handle) -> VulkanDesc = "mb_gfx_sg_vulkan_desc_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn VulkanDesc::unsafe_from_native(ptr : @native.Handle) -> VulkanDesc {
  sg_vulkan_desc_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_desc_get_copy_staging_buffer_size(
  object_ : VulkanDesc,
) -> Int32 = "mb_gfx_sg_vulkan_desc_get_copy_staging_buffer_size"

///|
pub fn VulkanDesc::copy_staging_buffer_size(self : VulkanDesc) -> Int32 {
  sg_vulkan_desc_get_copy_staging_buffer_size(self)
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_desc_set_copy_staging_buffer_size(
  object_ : VulkanDesc,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_vulkan_desc_set_copy_staging_buffer_size"

///|
pub fn VulkanDesc::set_copy_staging_buffer_size(
  self : VulkanDesc,
  value : Int32,
) -> VulkanDesc {
  sg_vulkan_desc_set_copy_staging_buffer_size(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_desc_get_transient_staging_buffer_size(
  object_ : VulkanDesc,
) -> Int32 = "mb_gfx_sg_vulkan_desc_get_transient_staging_buffer_size"

///|
pub fn VulkanDesc::transient_staging_buffer_size(self : VulkanDesc) -> Int32 {
  sg_vulkan_desc_get_transient_staging_buffer_size(self)
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_desc_set_transient_staging_buffer_size(
  object_ : VulkanDesc,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_vulkan_desc_set_transient_staging_buffer_size"

///|
pub fn VulkanDesc::set_transient_staging_buffer_size(
  self : VulkanDesc,
  value : Int32,
) -> VulkanDesc {
  sg_vulkan_desc_set_transient_staging_buffer_size(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_desc_get_descriptor_buffer_size(
  object_ : VulkanDesc,
) -> Int32 = "mb_gfx_sg_vulkan_desc_get_descriptor_buffer_size"

///|
pub fn VulkanDesc::descriptor_buffer_size(self : VulkanDesc) -> Int32 {
  sg_vulkan_desc_get_descriptor_buffer_size(self)
}

///|
#borrow(object_)
extern "c" fn sg_vulkan_desc_set_descriptor_buffer_size(
  object_ : VulkanDesc,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_vulkan_desc_set_descriptor_buffer_size"

///|
pub fn VulkanDesc::set_descriptor_buffer_size(
  self : VulkanDesc,
  value : Int32,
) -> VulkanDesc {
  sg_vulkan_desc_set_descriptor_buffer_size(self, value)
  self
}
