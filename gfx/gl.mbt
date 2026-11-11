///|
/// Owned C value. copy() creates an independent copy.
pub type GlSwapchain

///|
extern "c" fn sg_gl_swapchain_new() -> GlSwapchain = "mb_gfx_sg_gl_swapchain_new"

///|
pub fn GlSwapchain::new() -> GlSwapchain {
  sg_gl_swapchain_new()
}

///|
#borrow(object_)
extern "c" fn sg_gl_swapchain_copy(object_ : GlSwapchain) -> GlSwapchain = "mb_gfx_sg_gl_swapchain_copy"

///|
pub fn GlSwapchain::copy(self : GlSwapchain) -> GlSwapchain {
  sg_gl_swapchain_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_gl_swapchain_native(object_ : GlSwapchain) -> @native.Handle = "mb_gfx_sg_gl_swapchain_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn GlSwapchain::unsafe_native_handle(self : GlSwapchain) -> @native.Handle {
  sg_gl_swapchain_native(self)
}

///|
extern "c" fn sg_gl_swapchain_from_native(ptr : @native.Handle) -> GlSwapchain = "mb_gfx_sg_gl_swapchain_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn GlSwapchain::unsafe_from_native(ptr : @native.Handle) -> GlSwapchain {
  sg_gl_swapchain_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_gl_swapchain_get_framebuffer(object_ : GlSwapchain) -> UInt32 = "mb_gfx_sg_gl_swapchain_get_framebuffer"

///|
pub fn GlSwapchain::framebuffer(self : GlSwapchain) -> UInt32 {
  sg_gl_swapchain_get_framebuffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_gl_swapchain_set_framebuffer(
  object_ : GlSwapchain,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_gl_swapchain_set_framebuffer"

///|
pub fn GlSwapchain::set_framebuffer(
  self : GlSwapchain,
  value : UInt32,
) -> GlSwapchain {
  sg_gl_swapchain_set_framebuffer(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type FrameStatsGl

///|
extern "c" fn sg_frame_stats_gl_new() -> FrameStatsGl = "mb_gfx_sg_frame_stats_gl_new"

///|
pub fn FrameStatsGl::new() -> FrameStatsGl {
  sg_frame_stats_gl_new()
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_copy(object_ : FrameStatsGl) -> FrameStatsGl = "mb_gfx_sg_frame_stats_gl_copy"

///|
pub fn FrameStatsGl::copy(self : FrameStatsGl) -> FrameStatsGl {
  sg_frame_stats_gl_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_native(
  object_ : FrameStatsGl,
) -> @native.Handle = "mb_gfx_sg_frame_stats_gl_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsGl::unsafe_native_handle(
  self : FrameStatsGl,
) -> @native.Handle {
  sg_frame_stats_gl_native(self)
}

///|
extern "c" fn sg_frame_stats_gl_from_native(
  ptr : @native.Handle,
) -> FrameStatsGl = "mb_gfx_sg_frame_stats_gl_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsGl::unsafe_from_native(ptr : @native.Handle) -> FrameStatsGl {
  sg_frame_stats_gl_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_get_num_bind_buffer(
  object_ : FrameStatsGl,
) -> UInt32 = "mb_gfx_sg_frame_stats_gl_get_num_bind_buffer"

///|
pub fn FrameStatsGl::num_bind_buffer(self : FrameStatsGl) -> UInt32 {
  sg_frame_stats_gl_get_num_bind_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_set_num_bind_buffer(
  object_ : FrameStatsGl,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_gl_set_num_bind_buffer"

///|
pub fn FrameStatsGl::set_num_bind_buffer(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_bind_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_get_num_active_texture(
  object_ : FrameStatsGl,
) -> UInt32 = "mb_gfx_sg_frame_stats_gl_get_num_active_texture"

///|
pub fn FrameStatsGl::num_active_texture(self : FrameStatsGl) -> UInt32 {
  sg_frame_stats_gl_get_num_active_texture(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_set_num_active_texture(
  object_ : FrameStatsGl,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_gl_set_num_active_texture"

///|
pub fn FrameStatsGl::set_num_active_texture(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_active_texture(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_get_num_bind_texture(
  object_ : FrameStatsGl,
) -> UInt32 = "mb_gfx_sg_frame_stats_gl_get_num_bind_texture"

///|
pub fn FrameStatsGl::num_bind_texture(self : FrameStatsGl) -> UInt32 {
  sg_frame_stats_gl_get_num_bind_texture(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_set_num_bind_texture(
  object_ : FrameStatsGl,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_gl_set_num_bind_texture"

///|
pub fn FrameStatsGl::set_num_bind_texture(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_bind_texture(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_get_num_bind_sampler(
  object_ : FrameStatsGl,
) -> UInt32 = "mb_gfx_sg_frame_stats_gl_get_num_bind_sampler"

///|
pub fn FrameStatsGl::num_bind_sampler(self : FrameStatsGl) -> UInt32 {
  sg_frame_stats_gl_get_num_bind_sampler(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_set_num_bind_sampler(
  object_ : FrameStatsGl,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_gl_set_num_bind_sampler"

///|
pub fn FrameStatsGl::set_num_bind_sampler(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_bind_sampler(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_get_num_bind_image_texture(
  object_ : FrameStatsGl,
) -> UInt32 = "mb_gfx_sg_frame_stats_gl_get_num_bind_image_texture"

///|
pub fn FrameStatsGl::num_bind_image_texture(self : FrameStatsGl) -> UInt32 {
  sg_frame_stats_gl_get_num_bind_image_texture(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_set_num_bind_image_texture(
  object_ : FrameStatsGl,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_gl_set_num_bind_image_texture"

///|
pub fn FrameStatsGl::set_num_bind_image_texture(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_bind_image_texture(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_get_num_use_program(
  object_ : FrameStatsGl,
) -> UInt32 = "mb_gfx_sg_frame_stats_gl_get_num_use_program"

///|
pub fn FrameStatsGl::num_use_program(self : FrameStatsGl) -> UInt32 {
  sg_frame_stats_gl_get_num_use_program(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_set_num_use_program(
  object_ : FrameStatsGl,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_gl_set_num_use_program"

///|
pub fn FrameStatsGl::set_num_use_program(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_use_program(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_get_num_render_state(
  object_ : FrameStatsGl,
) -> UInt32 = "mb_gfx_sg_frame_stats_gl_get_num_render_state"

///|
pub fn FrameStatsGl::num_render_state(self : FrameStatsGl) -> UInt32 {
  sg_frame_stats_gl_get_num_render_state(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_set_num_render_state(
  object_ : FrameStatsGl,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_gl_set_num_render_state"

///|
pub fn FrameStatsGl::set_num_render_state(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_render_state(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_get_num_vertex_attrib_pointer(
  object_ : FrameStatsGl,
) -> UInt32 = "mb_gfx_sg_frame_stats_gl_get_num_vertex_attrib_pointer"

///|
pub fn FrameStatsGl::num_vertex_attrib_pointer(self : FrameStatsGl) -> UInt32 {
  sg_frame_stats_gl_get_num_vertex_attrib_pointer(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_set_num_vertex_attrib_pointer(
  object_ : FrameStatsGl,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_gl_set_num_vertex_attrib_pointer"

///|
pub fn FrameStatsGl::set_num_vertex_attrib_pointer(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_vertex_attrib_pointer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_get_num_vertex_attrib_divisor(
  object_ : FrameStatsGl,
) -> UInt32 = "mb_gfx_sg_frame_stats_gl_get_num_vertex_attrib_divisor"

///|
pub fn FrameStatsGl::num_vertex_attrib_divisor(self : FrameStatsGl) -> UInt32 {
  sg_frame_stats_gl_get_num_vertex_attrib_divisor(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_set_num_vertex_attrib_divisor(
  object_ : FrameStatsGl,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_gl_set_num_vertex_attrib_divisor"

///|
pub fn FrameStatsGl::set_num_vertex_attrib_divisor(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_vertex_attrib_divisor(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_get_num_enable_vertex_attrib_array(
  object_ : FrameStatsGl,
) -> UInt32 = "mb_gfx_sg_frame_stats_gl_get_num_enable_vertex_attrib_array"

///|
pub fn FrameStatsGl::num_enable_vertex_attrib_array(
  self : FrameStatsGl,
) -> UInt32 {
  sg_frame_stats_gl_get_num_enable_vertex_attrib_array(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_set_num_enable_vertex_attrib_array(
  object_ : FrameStatsGl,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_gl_set_num_enable_vertex_attrib_array"

///|
pub fn FrameStatsGl::set_num_enable_vertex_attrib_array(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_enable_vertex_attrib_array(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_get_num_disable_vertex_attrib_array(
  object_ : FrameStatsGl,
) -> UInt32 = "mb_gfx_sg_frame_stats_gl_get_num_disable_vertex_attrib_array"

///|
pub fn FrameStatsGl::num_disable_vertex_attrib_array(
  self : FrameStatsGl,
) -> UInt32 {
  sg_frame_stats_gl_get_num_disable_vertex_attrib_array(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_set_num_disable_vertex_attrib_array(
  object_ : FrameStatsGl,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_gl_set_num_disable_vertex_attrib_array"

///|
pub fn FrameStatsGl::set_num_disable_vertex_attrib_array(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_disable_vertex_attrib_array(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_get_num_uniform(
  object_ : FrameStatsGl,
) -> UInt32 = "mb_gfx_sg_frame_stats_gl_get_num_uniform"

///|
pub fn FrameStatsGl::num_uniform(self : FrameStatsGl) -> UInt32 {
  sg_frame_stats_gl_get_num_uniform(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_set_num_uniform(
  object_ : FrameStatsGl,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_gl_set_num_uniform"

///|
pub fn FrameStatsGl::set_num_uniform(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_uniform(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_get_num_memory_barriers(
  object_ : FrameStatsGl,
) -> UInt32 = "mb_gfx_sg_frame_stats_gl_get_num_memory_barriers"

///|
pub fn FrameStatsGl::num_memory_barriers(self : FrameStatsGl) -> UInt32 {
  sg_frame_stats_gl_get_num_memory_barriers(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_gl_set_num_memory_barriers(
  object_ : FrameStatsGl,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_gl_set_num_memory_barriers"

///|
pub fn FrameStatsGl::set_num_memory_barriers(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_memory_barriers(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type GlBufferInfo

///|
extern "c" fn sg_gl_buffer_info_new() -> GlBufferInfo = "mb_gfx_sg_gl_buffer_info_new"

///|
pub fn GlBufferInfo::new() -> GlBufferInfo {
  sg_gl_buffer_info_new()
}

///|
#borrow(object_)
extern "c" fn sg_gl_buffer_info_copy(object_ : GlBufferInfo) -> GlBufferInfo = "mb_gfx_sg_gl_buffer_info_copy"

///|
pub fn GlBufferInfo::copy(self : GlBufferInfo) -> GlBufferInfo {
  sg_gl_buffer_info_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_gl_buffer_info_native(
  object_ : GlBufferInfo,
) -> @native.Handle = "mb_gfx_sg_gl_buffer_info_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn GlBufferInfo::unsafe_native_handle(
  self : GlBufferInfo,
) -> @native.Handle {
  sg_gl_buffer_info_native(self)
}

///|
extern "c" fn sg_gl_buffer_info_from_native(
  ptr : @native.Handle,
) -> GlBufferInfo = "mb_gfx_sg_gl_buffer_info_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn GlBufferInfo::unsafe_from_native(ptr : @native.Handle) -> GlBufferInfo {
  sg_gl_buffer_info_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_gl_buffer_info_get_buf(
  object_ : GlBufferInfo,
  i0 : Int32,
) -> UInt32 = "mb_gfx_sg_gl_buffer_info_get_buf"

///|
pub fn GlBufferInfo::buf(self : GlBufferInfo, i0 : Int32) -> UInt32 {
  guard i0 >= 0 && i0 < 2 else { abort("descriptor array index out of bounds") }
  sg_gl_buffer_info_get_buf(self, i0)
}

///|
#borrow(object_)
extern "c" fn sg_gl_buffer_info_set_buf(
  object_ : GlBufferInfo,
  i0 : Int32,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_gl_buffer_info_set_buf"

///|
pub fn GlBufferInfo::set_buf(
  self : GlBufferInfo,
  i0 : Int32,
  value : UInt32,
) -> GlBufferInfo {
  guard i0 >= 0 && i0 < 2 else { abort("descriptor array index out of bounds") }
  sg_gl_buffer_info_set_buf(self, i0, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_gl_buffer_info_get_active_slot(
  object_ : GlBufferInfo,
) -> Int32 = "mb_gfx_sg_gl_buffer_info_get_active_slot"

///|
pub fn GlBufferInfo::active_slot(self : GlBufferInfo) -> Int32 {
  sg_gl_buffer_info_get_active_slot(self)
}

///|
#borrow(object_)
extern "c" fn sg_gl_buffer_info_set_active_slot(
  object_ : GlBufferInfo,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_gl_buffer_info_set_active_slot"

///|
pub fn GlBufferInfo::set_active_slot(
  self : GlBufferInfo,
  value : Int32,
) -> GlBufferInfo {
  sg_gl_buffer_info_set_active_slot(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type GlImageInfo

///|
extern "c" fn sg_gl_image_info_new() -> GlImageInfo = "mb_gfx_sg_gl_image_info_new"

///|
pub fn GlImageInfo::new() -> GlImageInfo {
  sg_gl_image_info_new()
}

///|
#borrow(object_)
extern "c" fn sg_gl_image_info_copy(object_ : GlImageInfo) -> GlImageInfo = "mb_gfx_sg_gl_image_info_copy"

///|
pub fn GlImageInfo::copy(self : GlImageInfo) -> GlImageInfo {
  sg_gl_image_info_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_gl_image_info_native(object_ : GlImageInfo) -> @native.Handle = "mb_gfx_sg_gl_image_info_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn GlImageInfo::unsafe_native_handle(self : GlImageInfo) -> @native.Handle {
  sg_gl_image_info_native(self)
}

///|
extern "c" fn sg_gl_image_info_from_native(ptr : @native.Handle) -> GlImageInfo = "mb_gfx_sg_gl_image_info_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn GlImageInfo::unsafe_from_native(ptr : @native.Handle) -> GlImageInfo {
  sg_gl_image_info_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_gl_image_info_get_tex(
  object_ : GlImageInfo,
  i0 : Int32,
) -> UInt32 = "mb_gfx_sg_gl_image_info_get_tex"

///|
pub fn GlImageInfo::tex(self : GlImageInfo, i0 : Int32) -> UInt32 {
  guard i0 >= 0 && i0 < 2 else { abort("descriptor array index out of bounds") }
  sg_gl_image_info_get_tex(self, i0)
}

///|
#borrow(object_)
extern "c" fn sg_gl_image_info_set_tex(
  object_ : GlImageInfo,
  i0 : Int32,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_gl_image_info_set_tex"

///|
pub fn GlImageInfo::set_tex(
  self : GlImageInfo,
  i0 : Int32,
  value : UInt32,
) -> GlImageInfo {
  guard i0 >= 0 && i0 < 2 else { abort("descriptor array index out of bounds") }
  sg_gl_image_info_set_tex(self, i0, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_gl_image_info_get_tex_target(object_ : GlImageInfo) -> UInt32 = "mb_gfx_sg_gl_image_info_get_tex_target"

///|
pub fn GlImageInfo::tex_target(self : GlImageInfo) -> UInt32 {
  sg_gl_image_info_get_tex_target(self)
}

///|
#borrow(object_)
extern "c" fn sg_gl_image_info_set_tex_target(
  object_ : GlImageInfo,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_gl_image_info_set_tex_target"

///|
pub fn GlImageInfo::set_tex_target(
  self : GlImageInfo,
  value : UInt32,
) -> GlImageInfo {
  sg_gl_image_info_set_tex_target(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_gl_image_info_get_active_slot(object_ : GlImageInfo) -> Int32 = "mb_gfx_sg_gl_image_info_get_active_slot"

///|
pub fn GlImageInfo::active_slot(self : GlImageInfo) -> Int32 {
  sg_gl_image_info_get_active_slot(self)
}

///|
#borrow(object_)
extern "c" fn sg_gl_image_info_set_active_slot(
  object_ : GlImageInfo,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_gl_image_info_set_active_slot"

///|
pub fn GlImageInfo::set_active_slot(
  self : GlImageInfo,
  value : Int32,
) -> GlImageInfo {
  sg_gl_image_info_set_active_slot(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type GlSamplerInfo

///|
extern "c" fn sg_gl_sampler_info_new() -> GlSamplerInfo = "mb_gfx_sg_gl_sampler_info_new"

///|
pub fn GlSamplerInfo::new() -> GlSamplerInfo {
  sg_gl_sampler_info_new()
}

///|
#borrow(object_)
extern "c" fn sg_gl_sampler_info_copy(object_ : GlSamplerInfo) -> GlSamplerInfo = "mb_gfx_sg_gl_sampler_info_copy"

///|
pub fn GlSamplerInfo::copy(self : GlSamplerInfo) -> GlSamplerInfo {
  sg_gl_sampler_info_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_gl_sampler_info_native(
  object_ : GlSamplerInfo,
) -> @native.Handle = "mb_gfx_sg_gl_sampler_info_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn GlSamplerInfo::unsafe_native_handle(
  self : GlSamplerInfo,
) -> @native.Handle {
  sg_gl_sampler_info_native(self)
}

///|
extern "c" fn sg_gl_sampler_info_from_native(
  ptr : @native.Handle,
) -> GlSamplerInfo = "mb_gfx_sg_gl_sampler_info_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn GlSamplerInfo::unsafe_from_native(ptr : @native.Handle) -> GlSamplerInfo {
  sg_gl_sampler_info_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_gl_sampler_info_get_smp(object_ : GlSamplerInfo) -> UInt32 = "mb_gfx_sg_gl_sampler_info_get_smp"

///|
pub fn GlSamplerInfo::smp(self : GlSamplerInfo) -> UInt32 {
  sg_gl_sampler_info_get_smp(self)
}

///|
#borrow(object_)
extern "c" fn sg_gl_sampler_info_set_smp(
  object_ : GlSamplerInfo,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_gl_sampler_info_set_smp"

///|
pub fn GlSamplerInfo::set_smp(
  self : GlSamplerInfo,
  value : UInt32,
) -> GlSamplerInfo {
  sg_gl_sampler_info_set_smp(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type GlShaderInfo

///|
extern "c" fn sg_gl_shader_info_new() -> GlShaderInfo = "mb_gfx_sg_gl_shader_info_new"

///|
pub fn GlShaderInfo::new() -> GlShaderInfo {
  sg_gl_shader_info_new()
}

///|
#borrow(object_)
extern "c" fn sg_gl_shader_info_copy(object_ : GlShaderInfo) -> GlShaderInfo = "mb_gfx_sg_gl_shader_info_copy"

///|
pub fn GlShaderInfo::copy(self : GlShaderInfo) -> GlShaderInfo {
  sg_gl_shader_info_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_gl_shader_info_native(
  object_ : GlShaderInfo,
) -> @native.Handle = "mb_gfx_sg_gl_shader_info_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn GlShaderInfo::unsafe_native_handle(
  self : GlShaderInfo,
) -> @native.Handle {
  sg_gl_shader_info_native(self)
}

///|
extern "c" fn sg_gl_shader_info_from_native(
  ptr : @native.Handle,
) -> GlShaderInfo = "mb_gfx_sg_gl_shader_info_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn GlShaderInfo::unsafe_from_native(ptr : @native.Handle) -> GlShaderInfo {
  sg_gl_shader_info_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_gl_shader_info_get_prog(object_ : GlShaderInfo) -> UInt32 = "mb_gfx_sg_gl_shader_info_get_prog"

///|
pub fn GlShaderInfo::prog(self : GlShaderInfo) -> UInt32 {
  sg_gl_shader_info_get_prog(self)
}

///|
#borrow(object_)
extern "c" fn sg_gl_shader_info_set_prog(
  object_ : GlShaderInfo,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_gl_shader_info_set_prog"

///|
pub fn GlShaderInfo::set_prog(
  self : GlShaderInfo,
  value : UInt32,
) -> GlShaderInfo {
  sg_gl_shader_info_set_prog(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type GlViewInfo

///|
extern "c" fn sg_gl_view_info_new() -> GlViewInfo = "mb_gfx_sg_gl_view_info_new"

///|
pub fn GlViewInfo::new() -> GlViewInfo {
  sg_gl_view_info_new()
}

///|
#borrow(object_)
extern "c" fn sg_gl_view_info_copy(object_ : GlViewInfo) -> GlViewInfo = "mb_gfx_sg_gl_view_info_copy"

///|
pub fn GlViewInfo::copy(self : GlViewInfo) -> GlViewInfo {
  sg_gl_view_info_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_gl_view_info_native(object_ : GlViewInfo) -> @native.Handle = "mb_gfx_sg_gl_view_info_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn GlViewInfo::unsafe_native_handle(self : GlViewInfo) -> @native.Handle {
  sg_gl_view_info_native(self)
}

///|
extern "c" fn sg_gl_view_info_from_native(ptr : @native.Handle) -> GlViewInfo = "mb_gfx_sg_gl_view_info_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn GlViewInfo::unsafe_from_native(ptr : @native.Handle) -> GlViewInfo {
  sg_gl_view_info_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_gl_view_info_get_tex_view(
  object_ : GlViewInfo,
  i0 : Int32,
) -> UInt32 = "mb_gfx_sg_gl_view_info_get_tex_view"

///|
pub fn GlViewInfo::tex_view(self : GlViewInfo, i0 : Int32) -> UInt32 {
  guard i0 >= 0 && i0 < 2 else { abort("descriptor array index out of bounds") }
  sg_gl_view_info_get_tex_view(self, i0)
}

///|
#borrow(object_)
extern "c" fn sg_gl_view_info_set_tex_view(
  object_ : GlViewInfo,
  i0 : Int32,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_gl_view_info_set_tex_view"

///|
pub fn GlViewInfo::set_tex_view(
  self : GlViewInfo,
  i0 : Int32,
  value : UInt32,
) -> GlViewInfo {
  guard i0 >= 0 && i0 < 2 else { abort("descriptor array index out of bounds") }
  sg_gl_view_info_set_tex_view(self, i0, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_gl_view_info_get_msaa_render_buffer(
  object_ : GlViewInfo,
) -> UInt32 = "mb_gfx_sg_gl_view_info_get_msaa_render_buffer"

///|
pub fn GlViewInfo::msaa_render_buffer(self : GlViewInfo) -> UInt32 {
  sg_gl_view_info_get_msaa_render_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_gl_view_info_set_msaa_render_buffer(
  object_ : GlViewInfo,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_gl_view_info_set_msaa_render_buffer"

///|
pub fn GlViewInfo::set_msaa_render_buffer(
  self : GlViewInfo,
  value : UInt32,
) -> GlViewInfo {
  sg_gl_view_info_set_msaa_render_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_gl_view_info_get_msaa_resolve_frame_buffer(
  object_ : GlViewInfo,
) -> UInt32 = "mb_gfx_sg_gl_view_info_get_msaa_resolve_frame_buffer"

///|
pub fn GlViewInfo::msaa_resolve_frame_buffer(self : GlViewInfo) -> UInt32 {
  sg_gl_view_info_get_msaa_resolve_frame_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_gl_view_info_set_msaa_resolve_frame_buffer(
  object_ : GlViewInfo,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_gl_view_info_set_msaa_resolve_frame_buffer"

///|
pub fn GlViewInfo::set_msaa_resolve_frame_buffer(
  self : GlViewInfo,
  value : UInt32,
) -> GlViewInfo {
  sg_gl_view_info_set_msaa_resolve_frame_buffer(self, value)
  self
}

///|
extern "c" fn sg_gl_query_buffer_info(buf : UInt32) -> GlBufferInfo = "mb_gfx_sg_gl_query_buffer_info"

///|
pub fn gl_query_buffer_info(buf : Buffer) -> GlBufferInfo {
  sg_gl_query_buffer_info(buf.0)
}

///|
extern "c" fn sg_gl_query_image_info(img : UInt32) -> GlImageInfo = "mb_gfx_sg_gl_query_image_info"

///|
pub fn gl_query_image_info(img : Image) -> GlImageInfo {
  sg_gl_query_image_info(img.0)
}

///|
extern "c" fn sg_gl_query_sampler_info(smp : UInt32) -> GlSamplerInfo = "mb_gfx_sg_gl_query_sampler_info"

///|
pub fn gl_query_sampler_info(smp : Sampler) -> GlSamplerInfo {
  sg_gl_query_sampler_info(smp.0)
}

///|
extern "c" fn sg_gl_query_shader_info(shd : UInt32) -> GlShaderInfo = "mb_gfx_sg_gl_query_shader_info"

///|
pub fn gl_query_shader_info(shd : Shader) -> GlShaderInfo {
  sg_gl_query_shader_info(shd.0)
}

///|
extern "c" fn sg_gl_query_view_info(view : UInt32) -> GlViewInfo = "mb_gfx_sg_gl_query_view_info"

///|
pub fn gl_query_view_info(view : View) -> GlViewInfo {
  sg_gl_query_view_info(view.0)
}
