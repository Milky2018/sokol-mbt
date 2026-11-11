///|
/// Owned C value. copy() creates an independent copy.
pub type MetalSwapchain

///|
extern "c" fn sapp_metal_swapchain_new() -> MetalSwapchain = "mb_app_sapp_metal_swapchain_new"

///|
pub fn MetalSwapchain::new() -> MetalSwapchain {
  sapp_metal_swapchain_new()
}

///|
#borrow(object_)
extern "c" fn sapp_metal_swapchain_copy(
  object_ : MetalSwapchain,
) -> MetalSwapchain = "mb_app_sapp_metal_swapchain_copy"

///|
pub fn MetalSwapchain::copy(self : MetalSwapchain) -> MetalSwapchain {
  sapp_metal_swapchain_copy(self)
}

///|
#borrow(object_)
extern "c" fn sapp_metal_swapchain_native(
  object_ : MetalSwapchain,
) -> @native.Handle = "mb_app_sapp_metal_swapchain_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn MetalSwapchain::unsafe_native_handle(
  self : MetalSwapchain,
) -> @native.Handle {
  sapp_metal_swapchain_native(self)
}

///|
extern "c" fn sapp_metal_swapchain_from_native(
  ptr : @native.Handle,
) -> MetalSwapchain = "mb_app_sapp_metal_swapchain_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn MetalSwapchain::unsafe_from_native(
  ptr : @native.Handle,
) -> MetalSwapchain {
  sapp_metal_swapchain_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sapp_metal_swapchain_get_current_drawable(
  object_ : MetalSwapchain,
) -> @native.Handle = "mb_app_sapp_metal_swapchain_get_current_drawable"

///|
pub fn MetalSwapchain::current_drawable(
  self : MetalSwapchain,
) -> @native.Handle {
  sapp_metal_swapchain_get_current_drawable(self)
}

///|
#borrow(object_)
extern "c" fn sapp_metal_swapchain_set_current_drawable(
  object_ : MetalSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_app_sapp_metal_swapchain_set_current_drawable"

///|
pub fn MetalSwapchain::set_current_drawable(
  self : MetalSwapchain,
  value : @native.Handle,
) -> MetalSwapchain {
  sapp_metal_swapchain_set_current_drawable(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_metal_swapchain_get_depth_stencil_texture(
  object_ : MetalSwapchain,
) -> @native.Handle = "mb_app_sapp_metal_swapchain_get_depth_stencil_texture"

///|
pub fn MetalSwapchain::depth_stencil_texture(
  self : MetalSwapchain,
) -> @native.Handle {
  sapp_metal_swapchain_get_depth_stencil_texture(self)
}

///|
#borrow(object_)
extern "c" fn sapp_metal_swapchain_set_depth_stencil_texture(
  object_ : MetalSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_app_sapp_metal_swapchain_set_depth_stencil_texture"

///|
pub fn MetalSwapchain::set_depth_stencil_texture(
  self : MetalSwapchain,
  value : @native.Handle,
) -> MetalSwapchain {
  sapp_metal_swapchain_set_depth_stencil_texture(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_metal_swapchain_get_msaa_color_texture(
  object_ : MetalSwapchain,
) -> @native.Handle = "mb_app_sapp_metal_swapchain_get_msaa_color_texture"

///|
pub fn MetalSwapchain::msaa_color_texture(
  self : MetalSwapchain,
) -> @native.Handle {
  sapp_metal_swapchain_get_msaa_color_texture(self)
}

///|
#borrow(object_)
extern "c" fn sapp_metal_swapchain_set_msaa_color_texture(
  object_ : MetalSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_app_sapp_metal_swapchain_set_msaa_color_texture"

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
extern "c" fn sapp_d3d11_swapchain_new() -> D3d11Swapchain = "mb_app_sapp_d3d11_swapchain_new"

///|
pub fn D3d11Swapchain::new() -> D3d11Swapchain {
  sapp_d3d11_swapchain_new()
}

///|
#borrow(object_)
extern "c" fn sapp_d3d11_swapchain_copy(
  object_ : D3d11Swapchain,
) -> D3d11Swapchain = "mb_app_sapp_d3d11_swapchain_copy"

///|
pub fn D3d11Swapchain::copy(self : D3d11Swapchain) -> D3d11Swapchain {
  sapp_d3d11_swapchain_copy(self)
}

///|
#borrow(object_)
extern "c" fn sapp_d3d11_swapchain_native(
  object_ : D3d11Swapchain,
) -> @native.Handle = "mb_app_sapp_d3d11_swapchain_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn D3d11Swapchain::unsafe_native_handle(
  self : D3d11Swapchain,
) -> @native.Handle {
  sapp_d3d11_swapchain_native(self)
}

///|
extern "c" fn sapp_d3d11_swapchain_from_native(
  ptr : @native.Handle,
) -> D3d11Swapchain = "mb_app_sapp_d3d11_swapchain_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn D3d11Swapchain::unsafe_from_native(
  ptr : @native.Handle,
) -> D3d11Swapchain {
  sapp_d3d11_swapchain_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sapp_d3d11_swapchain_get_render_view(
  object_ : D3d11Swapchain,
) -> @native.Handle = "mb_app_sapp_d3d11_swapchain_get_render_view"

///|
pub fn D3d11Swapchain::render_view(self : D3d11Swapchain) -> @native.Handle {
  sapp_d3d11_swapchain_get_render_view(self)
}

///|
#borrow(object_)
extern "c" fn sapp_d3d11_swapchain_set_render_view(
  object_ : D3d11Swapchain,
  replacement : @native.Handle,
) -> Unit = "mb_app_sapp_d3d11_swapchain_set_render_view"

///|
pub fn D3d11Swapchain::set_render_view(
  self : D3d11Swapchain,
  value : @native.Handle,
) -> D3d11Swapchain {
  sapp_d3d11_swapchain_set_render_view(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_d3d11_swapchain_get_resolve_view(
  object_ : D3d11Swapchain,
) -> @native.Handle = "mb_app_sapp_d3d11_swapchain_get_resolve_view"

///|
pub fn D3d11Swapchain::resolve_view(self : D3d11Swapchain) -> @native.Handle {
  sapp_d3d11_swapchain_get_resolve_view(self)
}

///|
#borrow(object_)
extern "c" fn sapp_d3d11_swapchain_set_resolve_view(
  object_ : D3d11Swapchain,
  replacement : @native.Handle,
) -> Unit = "mb_app_sapp_d3d11_swapchain_set_resolve_view"

///|
pub fn D3d11Swapchain::set_resolve_view(
  self : D3d11Swapchain,
  value : @native.Handle,
) -> D3d11Swapchain {
  sapp_d3d11_swapchain_set_resolve_view(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_d3d11_swapchain_get_depth_stencil_view(
  object_ : D3d11Swapchain,
) -> @native.Handle = "mb_app_sapp_d3d11_swapchain_get_depth_stencil_view"

///|
pub fn D3d11Swapchain::depth_stencil_view(
  self : D3d11Swapchain,
) -> @native.Handle {
  sapp_d3d11_swapchain_get_depth_stencil_view(self)
}

///|
#borrow(object_)
extern "c" fn sapp_d3d11_swapchain_set_depth_stencil_view(
  object_ : D3d11Swapchain,
  replacement : @native.Handle,
) -> Unit = "mb_app_sapp_d3d11_swapchain_set_depth_stencil_view"

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
extern "c" fn sapp_wgpu_swapchain_new() -> WgpuSwapchain = "mb_app_sapp_wgpu_swapchain_new"

///|
pub fn WgpuSwapchain::new() -> WgpuSwapchain {
  sapp_wgpu_swapchain_new()
}

///|
#borrow(object_)
extern "c" fn sapp_wgpu_swapchain_copy(
  object_ : WgpuSwapchain,
) -> WgpuSwapchain = "mb_app_sapp_wgpu_swapchain_copy"

///|
pub fn WgpuSwapchain::copy(self : WgpuSwapchain) -> WgpuSwapchain {
  sapp_wgpu_swapchain_copy(self)
}

///|
#borrow(object_)
extern "c" fn sapp_wgpu_swapchain_native(
  object_ : WgpuSwapchain,
) -> @native.Handle = "mb_app_sapp_wgpu_swapchain_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WgpuSwapchain::unsafe_native_handle(
  self : WgpuSwapchain,
) -> @native.Handle {
  sapp_wgpu_swapchain_native(self)
}

///|
extern "c" fn sapp_wgpu_swapchain_from_native(
  ptr : @native.Handle,
) -> WgpuSwapchain = "mb_app_sapp_wgpu_swapchain_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WgpuSwapchain::unsafe_from_native(ptr : @native.Handle) -> WgpuSwapchain {
  sapp_wgpu_swapchain_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sapp_wgpu_swapchain_get_render_view(
  object_ : WgpuSwapchain,
) -> @native.Handle = "mb_app_sapp_wgpu_swapchain_get_render_view"

///|
pub fn WgpuSwapchain::render_view(self : WgpuSwapchain) -> @native.Handle {
  sapp_wgpu_swapchain_get_render_view(self)
}

///|
#borrow(object_)
extern "c" fn sapp_wgpu_swapchain_set_render_view(
  object_ : WgpuSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_app_sapp_wgpu_swapchain_set_render_view"

///|
pub fn WgpuSwapchain::set_render_view(
  self : WgpuSwapchain,
  value : @native.Handle,
) -> WgpuSwapchain {
  sapp_wgpu_swapchain_set_render_view(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_wgpu_swapchain_get_resolve_view(
  object_ : WgpuSwapchain,
) -> @native.Handle = "mb_app_sapp_wgpu_swapchain_get_resolve_view"

///|
pub fn WgpuSwapchain::resolve_view(self : WgpuSwapchain) -> @native.Handle {
  sapp_wgpu_swapchain_get_resolve_view(self)
}

///|
#borrow(object_)
extern "c" fn sapp_wgpu_swapchain_set_resolve_view(
  object_ : WgpuSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_app_sapp_wgpu_swapchain_set_resolve_view"

///|
pub fn WgpuSwapchain::set_resolve_view(
  self : WgpuSwapchain,
  value : @native.Handle,
) -> WgpuSwapchain {
  sapp_wgpu_swapchain_set_resolve_view(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_wgpu_swapchain_get_depth_stencil_view(
  object_ : WgpuSwapchain,
) -> @native.Handle = "mb_app_sapp_wgpu_swapchain_get_depth_stencil_view"

///|
pub fn WgpuSwapchain::depth_stencil_view(
  self : WgpuSwapchain,
) -> @native.Handle {
  sapp_wgpu_swapchain_get_depth_stencil_view(self)
}

///|
#borrow(object_)
extern "c" fn sapp_wgpu_swapchain_set_depth_stencil_view(
  object_ : WgpuSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_app_sapp_wgpu_swapchain_set_depth_stencil_view"

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
extern "c" fn sapp_vulkan_swapchain_new() -> VulkanSwapchain = "mb_app_sapp_vulkan_swapchain_new"

///|
pub fn VulkanSwapchain::new() -> VulkanSwapchain {
  sapp_vulkan_swapchain_new()
}

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_copy(
  object_ : VulkanSwapchain,
) -> VulkanSwapchain = "mb_app_sapp_vulkan_swapchain_copy"

///|
pub fn VulkanSwapchain::copy(self : VulkanSwapchain) -> VulkanSwapchain {
  sapp_vulkan_swapchain_copy(self)
}

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_native(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_app_sapp_vulkan_swapchain_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn VulkanSwapchain::unsafe_native_handle(
  self : VulkanSwapchain,
) -> @native.Handle {
  sapp_vulkan_swapchain_native(self)
}

///|
extern "c" fn sapp_vulkan_swapchain_from_native(
  ptr : @native.Handle,
) -> VulkanSwapchain = "mb_app_sapp_vulkan_swapchain_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn VulkanSwapchain::unsafe_from_native(
  ptr : @native.Handle,
) -> VulkanSwapchain {
  sapp_vulkan_swapchain_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_get_render_image(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_app_sapp_vulkan_swapchain_get_render_image"

///|
pub fn VulkanSwapchain::render_image(self : VulkanSwapchain) -> @native.Handle {
  sapp_vulkan_swapchain_get_render_image(self)
}

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_set_render_image(
  object_ : VulkanSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_app_sapp_vulkan_swapchain_set_render_image"

///|
pub fn VulkanSwapchain::set_render_image(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sapp_vulkan_swapchain_set_render_image(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_get_render_view(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_app_sapp_vulkan_swapchain_get_render_view"

///|
pub fn VulkanSwapchain::render_view(self : VulkanSwapchain) -> @native.Handle {
  sapp_vulkan_swapchain_get_render_view(self)
}

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_set_render_view(
  object_ : VulkanSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_app_sapp_vulkan_swapchain_set_render_view"

///|
pub fn VulkanSwapchain::set_render_view(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sapp_vulkan_swapchain_set_render_view(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_get_resolve_image(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_app_sapp_vulkan_swapchain_get_resolve_image"

///|
pub fn VulkanSwapchain::resolve_image(self : VulkanSwapchain) -> @native.Handle {
  sapp_vulkan_swapchain_get_resolve_image(self)
}

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_set_resolve_image(
  object_ : VulkanSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_app_sapp_vulkan_swapchain_set_resolve_image"

///|
pub fn VulkanSwapchain::set_resolve_image(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sapp_vulkan_swapchain_set_resolve_image(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_get_resolve_view(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_app_sapp_vulkan_swapchain_get_resolve_view"

///|
pub fn VulkanSwapchain::resolve_view(self : VulkanSwapchain) -> @native.Handle {
  sapp_vulkan_swapchain_get_resolve_view(self)
}

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_set_resolve_view(
  object_ : VulkanSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_app_sapp_vulkan_swapchain_set_resolve_view"

///|
pub fn VulkanSwapchain::set_resolve_view(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sapp_vulkan_swapchain_set_resolve_view(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_get_depth_stencil_image(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_app_sapp_vulkan_swapchain_get_depth_stencil_image"

///|
pub fn VulkanSwapchain::depth_stencil_image(
  self : VulkanSwapchain,
) -> @native.Handle {
  sapp_vulkan_swapchain_get_depth_stencil_image(self)
}

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_set_depth_stencil_image(
  object_ : VulkanSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_app_sapp_vulkan_swapchain_set_depth_stencil_image"

///|
pub fn VulkanSwapchain::set_depth_stencil_image(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sapp_vulkan_swapchain_set_depth_stencil_image(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_get_depth_stencil_view(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_app_sapp_vulkan_swapchain_get_depth_stencil_view"

///|
pub fn VulkanSwapchain::depth_stencil_view(
  self : VulkanSwapchain,
) -> @native.Handle {
  sapp_vulkan_swapchain_get_depth_stencil_view(self)
}

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_set_depth_stencil_view(
  object_ : VulkanSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_app_sapp_vulkan_swapchain_set_depth_stencil_view"

///|
pub fn VulkanSwapchain::set_depth_stencil_view(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sapp_vulkan_swapchain_set_depth_stencil_view(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_get_render_finished_semaphore(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_app_sapp_vulkan_swapchain_get_render_finished_semaphore"

///|
pub fn VulkanSwapchain::render_finished_semaphore(
  self : VulkanSwapchain,
) -> @native.Handle {
  sapp_vulkan_swapchain_get_render_finished_semaphore(self)
}

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_set_render_finished_semaphore(
  object_ : VulkanSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_app_sapp_vulkan_swapchain_set_render_finished_semaphore"

///|
pub fn VulkanSwapchain::set_render_finished_semaphore(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sapp_vulkan_swapchain_set_render_finished_semaphore(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_get_present_complete_semaphore(
  object_ : VulkanSwapchain,
) -> @native.Handle = "mb_app_sapp_vulkan_swapchain_get_present_complete_semaphore"

///|
pub fn VulkanSwapchain::present_complete_semaphore(
  self : VulkanSwapchain,
) -> @native.Handle {
  sapp_vulkan_swapchain_get_present_complete_semaphore(self)
}

///|
#borrow(object_)
extern "c" fn sapp_vulkan_swapchain_set_present_complete_semaphore(
  object_ : VulkanSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_app_sapp_vulkan_swapchain_set_present_complete_semaphore"

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
extern "c" fn sapp_gl_swapchain_new() -> GlSwapchain = "mb_app_sapp_gl_swapchain_new"

///|
pub fn GlSwapchain::new() -> GlSwapchain {
  sapp_gl_swapchain_new()
}

///|
#borrow(object_)
extern "c" fn sapp_gl_swapchain_copy(object_ : GlSwapchain) -> GlSwapchain = "mb_app_sapp_gl_swapchain_copy"

///|
pub fn GlSwapchain::copy(self : GlSwapchain) -> GlSwapchain {
  sapp_gl_swapchain_copy(self)
}

///|
#borrow(object_)
extern "c" fn sapp_gl_swapchain_native(object_ : GlSwapchain) -> @native.Handle = "mb_app_sapp_gl_swapchain_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn GlSwapchain::unsafe_native_handle(self : GlSwapchain) -> @native.Handle {
  sapp_gl_swapchain_native(self)
}

///|
extern "c" fn sapp_gl_swapchain_from_native(
  ptr : @native.Handle,
) -> GlSwapchain = "mb_app_sapp_gl_swapchain_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn GlSwapchain::unsafe_from_native(ptr : @native.Handle) -> GlSwapchain {
  sapp_gl_swapchain_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sapp_gl_swapchain_get_framebuffer(
  object_ : GlSwapchain,
) -> UInt32 = "mb_app_sapp_gl_swapchain_get_framebuffer"

///|
pub fn GlSwapchain::framebuffer(self : GlSwapchain) -> UInt32 {
  sapp_gl_swapchain_get_framebuffer(self)
}

///|
#borrow(object_)
extern "c" fn sapp_gl_swapchain_set_framebuffer(
  object_ : GlSwapchain,
  replacement : UInt32,
) -> Unit = "mb_app_sapp_gl_swapchain_set_framebuffer"

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
extern "c" fn sapp_swapchain_new() -> Swapchain = "mb_app_sapp_swapchain_new"

///|
pub fn Swapchain::new() -> Swapchain {
  sapp_swapchain_new()
}

///|
#borrow(object_)
extern "c" fn sapp_swapchain_copy(object_ : Swapchain) -> Swapchain = "mb_app_sapp_swapchain_copy"

///|
pub fn Swapchain::copy(self : Swapchain) -> Swapchain {
  sapp_swapchain_copy(self)
}

///|
#borrow(object_)
extern "c" fn sapp_swapchain_native(object_ : Swapchain) -> @native.Handle = "mb_app_sapp_swapchain_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Swapchain::unsafe_native_handle(self : Swapchain) -> @native.Handle {
  sapp_swapchain_native(self)
}

///|
extern "c" fn sapp_swapchain_from_native(ptr : @native.Handle) -> Swapchain = "mb_app_sapp_swapchain_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Swapchain::unsafe_from_native(ptr : @native.Handle) -> Swapchain {
  sapp_swapchain_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sapp_swapchain_get_invalid(object_ : Swapchain) -> Bool = "mb_app_sapp_swapchain_get_invalid"

///|
pub fn Swapchain::invalid(self : Swapchain) -> Bool {
  sapp_swapchain_get_invalid(self)
}

///|
#borrow(object_)
extern "c" fn sapp_swapchain_set_invalid(
  object_ : Swapchain,
  replacement : Bool,
) -> Unit = "mb_app_sapp_swapchain_set_invalid"

///|
pub fn Swapchain::set_invalid(self : Swapchain, value : Bool) -> Swapchain {
  sapp_swapchain_set_invalid(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_swapchain_get_width(object_ : Swapchain) -> Int32 = "mb_app_sapp_swapchain_get_width"

///|
pub fn Swapchain::width(self : Swapchain) -> Int32 {
  sapp_swapchain_get_width(self)
}

///|
#borrow(object_)
extern "c" fn sapp_swapchain_set_width(
  object_ : Swapchain,
  replacement : Int32,
) -> Unit = "mb_app_sapp_swapchain_set_width"

///|
pub fn Swapchain::set_width(self : Swapchain, value : Int32) -> Swapchain {
  sapp_swapchain_set_width(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_swapchain_get_height(object_ : Swapchain) -> Int32 = "mb_app_sapp_swapchain_get_height"

///|
pub fn Swapchain::height(self : Swapchain) -> Int32 {
  sapp_swapchain_get_height(self)
}

///|
#borrow(object_)
extern "c" fn sapp_swapchain_set_height(
  object_ : Swapchain,
  replacement : Int32,
) -> Unit = "mb_app_sapp_swapchain_set_height"

///|
pub fn Swapchain::set_height(self : Swapchain, value : Int32) -> Swapchain {
  sapp_swapchain_set_height(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_swapchain_get_sample_count(object_ : Swapchain) -> Int32 = "mb_app_sapp_swapchain_get_sample_count"

///|
pub fn Swapchain::sample_count(self : Swapchain) -> Int32 {
  sapp_swapchain_get_sample_count(self)
}

///|
#borrow(object_)
extern "c" fn sapp_swapchain_set_sample_count(
  object_ : Swapchain,
  replacement : Int32,
) -> Unit = "mb_app_sapp_swapchain_set_sample_count"

///|
pub fn Swapchain::set_sample_count(
  self : Swapchain,
  value : Int32,
) -> Swapchain {
  sapp_swapchain_set_sample_count(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_swapchain_get_color_format(
  object_ : Swapchain,
) -> PixelFormat = "mb_app_sapp_swapchain_get_color_format"

///|
pub fn Swapchain::color_format(self : Swapchain) -> PixelFormat {
  sapp_swapchain_get_color_format(self)
}

///|
#borrow(object_)
extern "c" fn sapp_swapchain_set_color_format(
  object_ : Swapchain,
  replacement : PixelFormat,
) -> Unit = "mb_app_sapp_swapchain_set_color_format"

///|
pub fn Swapchain::set_color_format(
  self : Swapchain,
  value : PixelFormat,
) -> Swapchain {
  sapp_swapchain_set_color_format(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_swapchain_get_depth_format(
  object_ : Swapchain,
) -> PixelFormat = "mb_app_sapp_swapchain_get_depth_format"

///|
pub fn Swapchain::depth_format(self : Swapchain) -> PixelFormat {
  sapp_swapchain_get_depth_format(self)
}

///|
#borrow(object_)
extern "c" fn sapp_swapchain_set_depth_format(
  object_ : Swapchain,
  replacement : PixelFormat,
) -> Unit = "mb_app_sapp_swapchain_set_depth_format"

///|
pub fn Swapchain::set_depth_format(
  self : Swapchain,
  value : PixelFormat,
) -> Swapchain {
  sapp_swapchain_set_depth_format(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_swapchain_get_metal(object_ : Swapchain) -> MetalSwapchain = "mb_app_sapp_swapchain_get_metal"

///|
pub fn Swapchain::metal(self : Swapchain) -> MetalSwapchain {
  sapp_swapchain_get_metal(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sapp_swapchain_set_metal(
  object_ : Swapchain,
  replacement : MetalSwapchain,
) -> Unit = "mb_app_sapp_swapchain_set_metal"

///|
pub fn Swapchain::set_metal(
  self : Swapchain,
  value : MetalSwapchain,
) -> Swapchain {
  sapp_swapchain_set_metal(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_swapchain_get_d3d11(object_ : Swapchain) -> D3d11Swapchain = "mb_app_sapp_swapchain_get_d3d11"

///|
pub fn Swapchain::d3d11(self : Swapchain) -> D3d11Swapchain {
  sapp_swapchain_get_d3d11(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sapp_swapchain_set_d3d11(
  object_ : Swapchain,
  replacement : D3d11Swapchain,
) -> Unit = "mb_app_sapp_swapchain_set_d3d11"

///|
pub fn Swapchain::set_d3d11(
  self : Swapchain,
  value : D3d11Swapchain,
) -> Swapchain {
  sapp_swapchain_set_d3d11(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_swapchain_get_wgpu(object_ : Swapchain) -> WgpuSwapchain = "mb_app_sapp_swapchain_get_wgpu"

///|
pub fn Swapchain::wgpu(self : Swapchain) -> WgpuSwapchain {
  sapp_swapchain_get_wgpu(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sapp_swapchain_set_wgpu(
  object_ : Swapchain,
  replacement : WgpuSwapchain,
) -> Unit = "mb_app_sapp_swapchain_set_wgpu"

///|
pub fn Swapchain::set_wgpu(
  self : Swapchain,
  value : WgpuSwapchain,
) -> Swapchain {
  sapp_swapchain_set_wgpu(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_swapchain_get_vulkan(object_ : Swapchain) -> VulkanSwapchain = "mb_app_sapp_swapchain_get_vulkan"

///|
pub fn Swapchain::vulkan(self : Swapchain) -> VulkanSwapchain {
  sapp_swapchain_get_vulkan(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sapp_swapchain_set_vulkan(
  object_ : Swapchain,
  replacement : VulkanSwapchain,
) -> Unit = "mb_app_sapp_swapchain_set_vulkan"

///|
pub fn Swapchain::set_vulkan(
  self : Swapchain,
  value : VulkanSwapchain,
) -> Swapchain {
  sapp_swapchain_set_vulkan(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sapp_swapchain_get_gl(object_ : Swapchain) -> GlSwapchain = "mb_app_sapp_swapchain_get_gl"

///|
pub fn Swapchain::gl(self : Swapchain) -> GlSwapchain {
  sapp_swapchain_get_gl(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sapp_swapchain_set_gl(
  object_ : Swapchain,
  replacement : GlSwapchain,
) -> Unit = "mb_app_sapp_swapchain_set_gl"

///|
pub fn Swapchain::set_gl(self : Swapchain, value : GlSwapchain) -> Swapchain {
  sapp_swapchain_set_gl(self, value)
  self
}

///|
extern "c" fn sapp_acquire_swapchain() -> Swapchain = "mb_app_sapp_acquire_swapchain"

///|
pub fn acquire_swapchain() -> Swapchain {
  sapp_acquire_swapchain()
}
