///|
/// Owned C value. copy() creates an independent copy.
pub type WgpuSwapchain

///|
extern "c" fn sg_wgpu_swapchain_new() -> WgpuSwapchain = "mb_gfx_sg_wgpu_swapchain_new"

///|
pub fn WgpuSwapchain::new() -> WgpuSwapchain {
  sg_wgpu_swapchain_new()
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_swapchain_copy(object_ : WgpuSwapchain) -> WgpuSwapchain = "mb_gfx_sg_wgpu_swapchain_copy"

///|
pub fn WgpuSwapchain::copy(self : WgpuSwapchain) -> WgpuSwapchain {
  sg_wgpu_swapchain_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_swapchain_native(
  object_ : WgpuSwapchain,
) -> @native.Handle = "mb_gfx_sg_wgpu_swapchain_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WgpuSwapchain::unsafe_native_handle(
  self : WgpuSwapchain,
) -> @native.Handle {
  sg_wgpu_swapchain_native(self)
}

///|
extern "c" fn sg_wgpu_swapchain_from_native(
  ptr : @native.Handle,
) -> WgpuSwapchain = "mb_gfx_sg_wgpu_swapchain_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WgpuSwapchain::unsafe_from_native(ptr : @native.Handle) -> WgpuSwapchain {
  sg_wgpu_swapchain_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_swapchain_get_render_view(
  object_ : WgpuSwapchain,
) -> @native.Handle = "mb_gfx_sg_wgpu_swapchain_get_render_view"

///|
pub fn WgpuSwapchain::render_view(self : WgpuSwapchain) -> @native.Handle {
  sg_wgpu_swapchain_get_render_view(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_swapchain_set_render_view(
  object_ : WgpuSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_wgpu_swapchain_set_render_view"

///|
pub fn WgpuSwapchain::set_render_view(
  self : WgpuSwapchain,
  value : @native.Handle,
) -> WgpuSwapchain {
  sg_wgpu_swapchain_set_render_view(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_swapchain_get_resolve_view(
  object_ : WgpuSwapchain,
) -> @native.Handle = "mb_gfx_sg_wgpu_swapchain_get_resolve_view"

///|
pub fn WgpuSwapchain::resolve_view(self : WgpuSwapchain) -> @native.Handle {
  sg_wgpu_swapchain_get_resolve_view(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_swapchain_set_resolve_view(
  object_ : WgpuSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_wgpu_swapchain_set_resolve_view"

///|
pub fn WgpuSwapchain::set_resolve_view(
  self : WgpuSwapchain,
  value : @native.Handle,
) -> WgpuSwapchain {
  sg_wgpu_swapchain_set_resolve_view(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_swapchain_get_depth_stencil_view(
  object_ : WgpuSwapchain,
) -> @native.Handle = "mb_gfx_sg_wgpu_swapchain_get_depth_stencil_view"

///|
pub fn WgpuSwapchain::depth_stencil_view(
  self : WgpuSwapchain,
) -> @native.Handle {
  sg_wgpu_swapchain_get_depth_stencil_view(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_swapchain_set_depth_stencil_view(
  object_ : WgpuSwapchain,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_wgpu_swapchain_set_depth_stencil_view"

///|
pub fn WgpuSwapchain::set_depth_stencil_view(
  self : WgpuSwapchain,
  value : @native.Handle,
) -> WgpuSwapchain {
  sg_wgpu_swapchain_set_depth_stencil_view(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type WgpuEnvironment

///|
extern "c" fn sg_wgpu_environment_new() -> WgpuEnvironment = "mb_gfx_sg_wgpu_environment_new"

///|
pub fn WgpuEnvironment::new() -> WgpuEnvironment {
  sg_wgpu_environment_new()
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_environment_copy(
  object_ : WgpuEnvironment,
) -> WgpuEnvironment = "mb_gfx_sg_wgpu_environment_copy"

///|
pub fn WgpuEnvironment::copy(self : WgpuEnvironment) -> WgpuEnvironment {
  sg_wgpu_environment_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_environment_native(
  object_ : WgpuEnvironment,
) -> @native.Handle = "mb_gfx_sg_wgpu_environment_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WgpuEnvironment::unsafe_native_handle(
  self : WgpuEnvironment,
) -> @native.Handle {
  sg_wgpu_environment_native(self)
}

///|
extern "c" fn sg_wgpu_environment_from_native(
  ptr : @native.Handle,
) -> WgpuEnvironment = "mb_gfx_sg_wgpu_environment_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WgpuEnvironment::unsafe_from_native(
  ptr : @native.Handle,
) -> WgpuEnvironment {
  sg_wgpu_environment_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_environment_get_device(
  object_ : WgpuEnvironment,
) -> @native.Handle = "mb_gfx_sg_wgpu_environment_get_device"

///|
pub fn WgpuEnvironment::device(self : WgpuEnvironment) -> @native.Handle {
  sg_wgpu_environment_get_device(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_environment_set_device(
  object_ : WgpuEnvironment,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_wgpu_environment_set_device"

///|
pub fn WgpuEnvironment::set_device(
  self : WgpuEnvironment,
  value : @native.Handle,
) -> WgpuEnvironment {
  sg_wgpu_environment_set_device(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type WgpuDesc

///|
extern "c" fn sg_wgpu_desc_new() -> WgpuDesc = "mb_gfx_sg_wgpu_desc_new"

///|
pub fn WgpuDesc::new() -> WgpuDesc {
  sg_wgpu_desc_new()
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_desc_copy(object_ : WgpuDesc) -> WgpuDesc = "mb_gfx_sg_wgpu_desc_copy"

///|
pub fn WgpuDesc::copy(self : WgpuDesc) -> WgpuDesc {
  sg_wgpu_desc_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_desc_native(object_ : WgpuDesc) -> @native.Handle = "mb_gfx_sg_wgpu_desc_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WgpuDesc::unsafe_native_handle(self : WgpuDesc) -> @native.Handle {
  sg_wgpu_desc_native(self)
}

///|
extern "c" fn sg_wgpu_desc_from_native(ptr : @native.Handle) -> WgpuDesc = "mb_gfx_sg_wgpu_desc_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WgpuDesc::unsafe_from_native(ptr : @native.Handle) -> WgpuDesc {
  sg_wgpu_desc_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_desc_get_disable_bindgroups_cache(
  object_ : WgpuDesc,
) -> Bool = "mb_gfx_sg_wgpu_desc_get_disable_bindgroups_cache"

///|
pub fn WgpuDesc::disable_bindgroups_cache(self : WgpuDesc) -> Bool {
  sg_wgpu_desc_get_disable_bindgroups_cache(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_desc_set_disable_bindgroups_cache(
  object_ : WgpuDesc,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_wgpu_desc_set_disable_bindgroups_cache"

///|
pub fn WgpuDesc::set_disable_bindgroups_cache(
  self : WgpuDesc,
  value : Bool,
) -> WgpuDesc {
  sg_wgpu_desc_set_disable_bindgroups_cache(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_desc_get_bindgroups_cache_size(
  object_ : WgpuDesc,
) -> Int32 = "mb_gfx_sg_wgpu_desc_get_bindgroups_cache_size"

///|
pub fn WgpuDesc::bindgroups_cache_size(self : WgpuDesc) -> Int32 {
  sg_wgpu_desc_get_bindgroups_cache_size(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_desc_set_bindgroups_cache_size(
  object_ : WgpuDesc,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_wgpu_desc_set_bindgroups_cache_size"

///|
pub fn WgpuDesc::set_bindgroups_cache_size(
  self : WgpuDesc,
  value : Int32,
) -> WgpuDesc {
  sg_wgpu_desc_set_bindgroups_cache_size(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type WgpuBufferInfo

///|
extern "c" fn sg_wgpu_buffer_info_new() -> WgpuBufferInfo = "mb_gfx_sg_wgpu_buffer_info_new"

///|
pub fn WgpuBufferInfo::new() -> WgpuBufferInfo {
  sg_wgpu_buffer_info_new()
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_buffer_info_copy(
  object_ : WgpuBufferInfo,
) -> WgpuBufferInfo = "mb_gfx_sg_wgpu_buffer_info_copy"

///|
pub fn WgpuBufferInfo::copy(self : WgpuBufferInfo) -> WgpuBufferInfo {
  sg_wgpu_buffer_info_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_buffer_info_native(
  object_ : WgpuBufferInfo,
) -> @native.Handle = "mb_gfx_sg_wgpu_buffer_info_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WgpuBufferInfo::unsafe_native_handle(
  self : WgpuBufferInfo,
) -> @native.Handle {
  sg_wgpu_buffer_info_native(self)
}

///|
extern "c" fn sg_wgpu_buffer_info_from_native(
  ptr : @native.Handle,
) -> WgpuBufferInfo = "mb_gfx_sg_wgpu_buffer_info_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WgpuBufferInfo::unsafe_from_native(
  ptr : @native.Handle,
) -> WgpuBufferInfo {
  sg_wgpu_buffer_info_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_buffer_info_get_buf(
  object_ : WgpuBufferInfo,
) -> @native.Handle = "mb_gfx_sg_wgpu_buffer_info_get_buf"

///|
pub fn WgpuBufferInfo::buf(self : WgpuBufferInfo) -> @native.Handle {
  sg_wgpu_buffer_info_get_buf(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_buffer_info_set_buf(
  object_ : WgpuBufferInfo,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_wgpu_buffer_info_set_buf"

///|
pub fn WgpuBufferInfo::set_buf(
  self : WgpuBufferInfo,
  value : @native.Handle,
) -> WgpuBufferInfo {
  sg_wgpu_buffer_info_set_buf(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type WgpuImageInfo

///|
extern "c" fn sg_wgpu_image_info_new() -> WgpuImageInfo = "mb_gfx_sg_wgpu_image_info_new"

///|
pub fn WgpuImageInfo::new() -> WgpuImageInfo {
  sg_wgpu_image_info_new()
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_image_info_copy(object_ : WgpuImageInfo) -> WgpuImageInfo = "mb_gfx_sg_wgpu_image_info_copy"

///|
pub fn WgpuImageInfo::copy(self : WgpuImageInfo) -> WgpuImageInfo {
  sg_wgpu_image_info_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_image_info_native(
  object_ : WgpuImageInfo,
) -> @native.Handle = "mb_gfx_sg_wgpu_image_info_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WgpuImageInfo::unsafe_native_handle(
  self : WgpuImageInfo,
) -> @native.Handle {
  sg_wgpu_image_info_native(self)
}

///|
extern "c" fn sg_wgpu_image_info_from_native(
  ptr : @native.Handle,
) -> WgpuImageInfo = "mb_gfx_sg_wgpu_image_info_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WgpuImageInfo::unsafe_from_native(ptr : @native.Handle) -> WgpuImageInfo {
  sg_wgpu_image_info_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_image_info_get_tex(
  object_ : WgpuImageInfo,
) -> @native.Handle = "mb_gfx_sg_wgpu_image_info_get_tex"

///|
pub fn WgpuImageInfo::tex(self : WgpuImageInfo) -> @native.Handle {
  sg_wgpu_image_info_get_tex(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_image_info_set_tex(
  object_ : WgpuImageInfo,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_wgpu_image_info_set_tex"

///|
pub fn WgpuImageInfo::set_tex(
  self : WgpuImageInfo,
  value : @native.Handle,
) -> WgpuImageInfo {
  sg_wgpu_image_info_set_tex(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type WgpuSamplerInfo

///|
extern "c" fn sg_wgpu_sampler_info_new() -> WgpuSamplerInfo = "mb_gfx_sg_wgpu_sampler_info_new"

///|
pub fn WgpuSamplerInfo::new() -> WgpuSamplerInfo {
  sg_wgpu_sampler_info_new()
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_sampler_info_copy(
  object_ : WgpuSamplerInfo,
) -> WgpuSamplerInfo = "mb_gfx_sg_wgpu_sampler_info_copy"

///|
pub fn WgpuSamplerInfo::copy(self : WgpuSamplerInfo) -> WgpuSamplerInfo {
  sg_wgpu_sampler_info_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_sampler_info_native(
  object_ : WgpuSamplerInfo,
) -> @native.Handle = "mb_gfx_sg_wgpu_sampler_info_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WgpuSamplerInfo::unsafe_native_handle(
  self : WgpuSamplerInfo,
) -> @native.Handle {
  sg_wgpu_sampler_info_native(self)
}

///|
extern "c" fn sg_wgpu_sampler_info_from_native(
  ptr : @native.Handle,
) -> WgpuSamplerInfo = "mb_gfx_sg_wgpu_sampler_info_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WgpuSamplerInfo::unsafe_from_native(
  ptr : @native.Handle,
) -> WgpuSamplerInfo {
  sg_wgpu_sampler_info_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_sampler_info_get_smp(
  object_ : WgpuSamplerInfo,
) -> @native.Handle = "mb_gfx_sg_wgpu_sampler_info_get_smp"

///|
pub fn WgpuSamplerInfo::smp(self : WgpuSamplerInfo) -> @native.Handle {
  sg_wgpu_sampler_info_get_smp(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_sampler_info_set_smp(
  object_ : WgpuSamplerInfo,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_wgpu_sampler_info_set_smp"

///|
pub fn WgpuSamplerInfo::set_smp(
  self : WgpuSamplerInfo,
  value : @native.Handle,
) -> WgpuSamplerInfo {
  sg_wgpu_sampler_info_set_smp(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type WgpuShaderInfo

///|
extern "c" fn sg_wgpu_shader_info_new() -> WgpuShaderInfo = "mb_gfx_sg_wgpu_shader_info_new"

///|
pub fn WgpuShaderInfo::new() -> WgpuShaderInfo {
  sg_wgpu_shader_info_new()
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_shader_info_copy(
  object_ : WgpuShaderInfo,
) -> WgpuShaderInfo = "mb_gfx_sg_wgpu_shader_info_copy"

///|
pub fn WgpuShaderInfo::copy(self : WgpuShaderInfo) -> WgpuShaderInfo {
  sg_wgpu_shader_info_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_shader_info_native(
  object_ : WgpuShaderInfo,
) -> @native.Handle = "mb_gfx_sg_wgpu_shader_info_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WgpuShaderInfo::unsafe_native_handle(
  self : WgpuShaderInfo,
) -> @native.Handle {
  sg_wgpu_shader_info_native(self)
}

///|
extern "c" fn sg_wgpu_shader_info_from_native(
  ptr : @native.Handle,
) -> WgpuShaderInfo = "mb_gfx_sg_wgpu_shader_info_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WgpuShaderInfo::unsafe_from_native(
  ptr : @native.Handle,
) -> WgpuShaderInfo {
  sg_wgpu_shader_info_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_shader_info_get_vs_mod(
  object_ : WgpuShaderInfo,
) -> @native.Handle = "mb_gfx_sg_wgpu_shader_info_get_vs_mod"

///|
pub fn WgpuShaderInfo::vs_mod(self : WgpuShaderInfo) -> @native.Handle {
  sg_wgpu_shader_info_get_vs_mod(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_shader_info_set_vs_mod(
  object_ : WgpuShaderInfo,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_wgpu_shader_info_set_vs_mod"

///|
pub fn WgpuShaderInfo::set_vs_mod(
  self : WgpuShaderInfo,
  value : @native.Handle,
) -> WgpuShaderInfo {
  sg_wgpu_shader_info_set_vs_mod(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_shader_info_get_fs_mod(
  object_ : WgpuShaderInfo,
) -> @native.Handle = "mb_gfx_sg_wgpu_shader_info_get_fs_mod"

///|
pub fn WgpuShaderInfo::fs_mod(self : WgpuShaderInfo) -> @native.Handle {
  sg_wgpu_shader_info_get_fs_mod(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_shader_info_set_fs_mod(
  object_ : WgpuShaderInfo,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_wgpu_shader_info_set_fs_mod"

///|
pub fn WgpuShaderInfo::set_fs_mod(
  self : WgpuShaderInfo,
  value : @native.Handle,
) -> WgpuShaderInfo {
  sg_wgpu_shader_info_set_fs_mod(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_shader_info_get_bgl(
  object_ : WgpuShaderInfo,
) -> @native.Handle = "mb_gfx_sg_wgpu_shader_info_get_bgl"

///|
pub fn WgpuShaderInfo::bgl(self : WgpuShaderInfo) -> @native.Handle {
  sg_wgpu_shader_info_get_bgl(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_shader_info_set_bgl(
  object_ : WgpuShaderInfo,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_wgpu_shader_info_set_bgl"

///|
pub fn WgpuShaderInfo::set_bgl(
  self : WgpuShaderInfo,
  value : @native.Handle,
) -> WgpuShaderInfo {
  sg_wgpu_shader_info_set_bgl(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type WgpuPipelineInfo

///|
extern "c" fn sg_wgpu_pipeline_info_new() -> WgpuPipelineInfo = "mb_gfx_sg_wgpu_pipeline_info_new"

///|
pub fn WgpuPipelineInfo::new() -> WgpuPipelineInfo {
  sg_wgpu_pipeline_info_new()
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_pipeline_info_copy(
  object_ : WgpuPipelineInfo,
) -> WgpuPipelineInfo = "mb_gfx_sg_wgpu_pipeline_info_copy"

///|
pub fn WgpuPipelineInfo::copy(self : WgpuPipelineInfo) -> WgpuPipelineInfo {
  sg_wgpu_pipeline_info_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_pipeline_info_native(
  object_ : WgpuPipelineInfo,
) -> @native.Handle = "mb_gfx_sg_wgpu_pipeline_info_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WgpuPipelineInfo::unsafe_native_handle(
  self : WgpuPipelineInfo,
) -> @native.Handle {
  sg_wgpu_pipeline_info_native(self)
}

///|
extern "c" fn sg_wgpu_pipeline_info_from_native(
  ptr : @native.Handle,
) -> WgpuPipelineInfo = "mb_gfx_sg_wgpu_pipeline_info_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WgpuPipelineInfo::unsafe_from_native(
  ptr : @native.Handle,
) -> WgpuPipelineInfo {
  sg_wgpu_pipeline_info_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_pipeline_info_get_render_pipeline(
  object_ : WgpuPipelineInfo,
) -> @native.Handle = "mb_gfx_sg_wgpu_pipeline_info_get_render_pipeline"

///|
pub fn WgpuPipelineInfo::render_pipeline(
  self : WgpuPipelineInfo,
) -> @native.Handle {
  sg_wgpu_pipeline_info_get_render_pipeline(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_pipeline_info_set_render_pipeline(
  object_ : WgpuPipelineInfo,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_wgpu_pipeline_info_set_render_pipeline"

///|
pub fn WgpuPipelineInfo::set_render_pipeline(
  self : WgpuPipelineInfo,
  value : @native.Handle,
) -> WgpuPipelineInfo {
  sg_wgpu_pipeline_info_set_render_pipeline(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_pipeline_info_get_compute_pipeline(
  object_ : WgpuPipelineInfo,
) -> @native.Handle = "mb_gfx_sg_wgpu_pipeline_info_get_compute_pipeline"

///|
pub fn WgpuPipelineInfo::compute_pipeline(
  self : WgpuPipelineInfo,
) -> @native.Handle {
  sg_wgpu_pipeline_info_get_compute_pipeline(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_pipeline_info_set_compute_pipeline(
  object_ : WgpuPipelineInfo,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_wgpu_pipeline_info_set_compute_pipeline"

///|
pub fn WgpuPipelineInfo::set_compute_pipeline(
  self : WgpuPipelineInfo,
  value : @native.Handle,
) -> WgpuPipelineInfo {
  sg_wgpu_pipeline_info_set_compute_pipeline(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type WgpuViewInfo

///|
extern "c" fn sg_wgpu_view_info_new() -> WgpuViewInfo = "mb_gfx_sg_wgpu_view_info_new"

///|
pub fn WgpuViewInfo::new() -> WgpuViewInfo {
  sg_wgpu_view_info_new()
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_view_info_copy(object_ : WgpuViewInfo) -> WgpuViewInfo = "mb_gfx_sg_wgpu_view_info_copy"

///|
pub fn WgpuViewInfo::copy(self : WgpuViewInfo) -> WgpuViewInfo {
  sg_wgpu_view_info_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_view_info_native(
  object_ : WgpuViewInfo,
) -> @native.Handle = "mb_gfx_sg_wgpu_view_info_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WgpuViewInfo::unsafe_native_handle(
  self : WgpuViewInfo,
) -> @native.Handle {
  sg_wgpu_view_info_native(self)
}

///|
extern "c" fn sg_wgpu_view_info_from_native(
  ptr : @native.Handle,
) -> WgpuViewInfo = "mb_gfx_sg_wgpu_view_info_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WgpuViewInfo::unsafe_from_native(ptr : @native.Handle) -> WgpuViewInfo {
  sg_wgpu_view_info_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_view_info_get_view(
  object_ : WgpuViewInfo,
) -> @native.Handle = "mb_gfx_sg_wgpu_view_info_get_view"

///|
pub fn WgpuViewInfo::view(self : WgpuViewInfo) -> @native.Handle {
  sg_wgpu_view_info_get_view(self)
}

///|
#borrow(object_)
extern "c" fn sg_wgpu_view_info_set_view(
  object_ : WgpuViewInfo,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_wgpu_view_info_set_view"

///|
pub fn WgpuViewInfo::set_view(
  self : WgpuViewInfo,
  value : @native.Handle,
) -> WgpuViewInfo {
  sg_wgpu_view_info_set_view(self, value)
  self
}

///|
extern "c" fn sg_wgpu_device() -> @native.Handle = "sg_wgpu_device"

///|
pub fn wgpu_device() -> @native.Handle {
  sg_wgpu_device()
}

///|
extern "c" fn sg_wgpu_queue() -> @native.Handle = "sg_wgpu_queue"

///|
pub fn wgpu_queue() -> @native.Handle {
  sg_wgpu_queue()
}

///|
extern "c" fn sg_wgpu_command_encoder() -> @native.Handle = "sg_wgpu_command_encoder"

///|
pub fn wgpu_command_encoder() -> @native.Handle {
  sg_wgpu_command_encoder()
}

///|
extern "c" fn sg_wgpu_render_pass_encoder() -> @native.Handle = "sg_wgpu_render_pass_encoder"

///|
pub fn wgpu_render_pass_encoder() -> @native.Handle {
  sg_wgpu_render_pass_encoder()
}

///|
extern "c" fn sg_wgpu_compute_pass_encoder() -> @native.Handle = "sg_wgpu_compute_pass_encoder"

///|
pub fn wgpu_compute_pass_encoder() -> @native.Handle {
  sg_wgpu_compute_pass_encoder()
}

///|
extern "c" fn sg_wgpu_query_buffer_info(buf : UInt32) -> WgpuBufferInfo = "mb_gfx_sg_wgpu_query_buffer_info"

///|
pub fn wgpu_query_buffer_info(buf : Buffer) -> WgpuBufferInfo {
  sg_wgpu_query_buffer_info(buf.0)
}

///|
extern "c" fn sg_wgpu_query_image_info(img : UInt32) -> WgpuImageInfo = "mb_gfx_sg_wgpu_query_image_info"

///|
pub fn wgpu_query_image_info(img : Image) -> WgpuImageInfo {
  sg_wgpu_query_image_info(img.0)
}

///|
extern "c" fn sg_wgpu_query_sampler_info(smp : UInt32) -> WgpuSamplerInfo = "mb_gfx_sg_wgpu_query_sampler_info"

///|
pub fn wgpu_query_sampler_info(smp : Sampler) -> WgpuSamplerInfo {
  sg_wgpu_query_sampler_info(smp.0)
}

///|
extern "c" fn sg_wgpu_query_shader_info(shd : UInt32) -> WgpuShaderInfo = "mb_gfx_sg_wgpu_query_shader_info"

///|
pub fn wgpu_query_shader_info(shd : Shader) -> WgpuShaderInfo {
  sg_wgpu_query_shader_info(shd.0)
}

///|
extern "c" fn sg_wgpu_query_pipeline_info(pip : UInt32) -> WgpuPipelineInfo = "mb_gfx_sg_wgpu_query_pipeline_info"

///|
pub fn wgpu_query_pipeline_info(pip : Pipeline) -> WgpuPipelineInfo {
  sg_wgpu_query_pipeline_info(pip.0)
}

///|
extern "c" fn sg_wgpu_query_view_info(view : UInt32) -> WgpuViewInfo = "mb_gfx_sg_wgpu_query_view_info"

///|
pub fn wgpu_query_view_info(view : View) -> WgpuViewInfo {
  sg_wgpu_query_view_info(view.0)
}
