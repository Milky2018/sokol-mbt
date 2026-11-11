///|
/// Owned C value. copy() creates an independent copy.
pub type FrameStatsD3d11Pass

///|
extern "c" fn sg_frame_stats_d3d11_pass_new() -> FrameStatsD3d11Pass = "mb_gfx_sg_frame_stats_d3d11_pass_new"

///|
pub fn FrameStatsD3d11Pass::new() -> FrameStatsD3d11Pass {
  sg_frame_stats_d3d11_pass_new()
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pass_copy(
  object_ : FrameStatsD3d11Pass,
) -> FrameStatsD3d11Pass = "mb_gfx_sg_frame_stats_d3d11_pass_copy"

///|
pub fn FrameStatsD3d11Pass::copy(
  self : FrameStatsD3d11Pass,
) -> FrameStatsD3d11Pass {
  sg_frame_stats_d3d11_pass_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pass_native(
  object_ : FrameStatsD3d11Pass,
) -> @native.Handle = "mb_gfx_sg_frame_stats_d3d11_pass_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsD3d11Pass::unsafe_native_handle(
  self : FrameStatsD3d11Pass,
) -> @native.Handle {
  sg_frame_stats_d3d11_pass_native(self)
}

///|
extern "c" fn sg_frame_stats_d3d11_pass_from_native(
  ptr : @native.Handle,
) -> FrameStatsD3d11Pass = "mb_gfx_sg_frame_stats_d3d11_pass_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsD3d11Pass::unsafe_from_native(
  ptr : @native.Handle,
) -> FrameStatsD3d11Pass {
  sg_frame_stats_d3d11_pass_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pass_get_num_om_set_render_targets(
  object_ : FrameStatsD3d11Pass,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_pass_get_num_om_set_render_targets"

///|
pub fn FrameStatsD3d11Pass::num_om_set_render_targets(
  self : FrameStatsD3d11Pass,
) -> UInt32 {
  sg_frame_stats_d3d11_pass_get_num_om_set_render_targets(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pass_set_num_om_set_render_targets(
  object_ : FrameStatsD3d11Pass,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_pass_set_num_om_set_render_targets"

///|
pub fn FrameStatsD3d11Pass::set_num_om_set_render_targets(
  self : FrameStatsD3d11Pass,
  value : UInt32,
) -> FrameStatsD3d11Pass {
  sg_frame_stats_d3d11_pass_set_num_om_set_render_targets(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pass_get_num_clear_render_target_view(
  object_ : FrameStatsD3d11Pass,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_pass_get_num_clear_render_target_view"

///|
pub fn FrameStatsD3d11Pass::num_clear_render_target_view(
  self : FrameStatsD3d11Pass,
) -> UInt32 {
  sg_frame_stats_d3d11_pass_get_num_clear_render_target_view(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pass_set_num_clear_render_target_view(
  object_ : FrameStatsD3d11Pass,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_pass_set_num_clear_render_target_view"

///|
pub fn FrameStatsD3d11Pass::set_num_clear_render_target_view(
  self : FrameStatsD3d11Pass,
  value : UInt32,
) -> FrameStatsD3d11Pass {
  sg_frame_stats_d3d11_pass_set_num_clear_render_target_view(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pass_get_num_clear_depth_stencil_view(
  object_ : FrameStatsD3d11Pass,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_pass_get_num_clear_depth_stencil_view"

///|
pub fn FrameStatsD3d11Pass::num_clear_depth_stencil_view(
  self : FrameStatsD3d11Pass,
) -> UInt32 {
  sg_frame_stats_d3d11_pass_get_num_clear_depth_stencil_view(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pass_set_num_clear_depth_stencil_view(
  object_ : FrameStatsD3d11Pass,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_pass_set_num_clear_depth_stencil_view"

///|
pub fn FrameStatsD3d11Pass::set_num_clear_depth_stencil_view(
  self : FrameStatsD3d11Pass,
  value : UInt32,
) -> FrameStatsD3d11Pass {
  sg_frame_stats_d3d11_pass_set_num_clear_depth_stencil_view(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pass_get_num_resolve_subresource(
  object_ : FrameStatsD3d11Pass,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_pass_get_num_resolve_subresource"

///|
pub fn FrameStatsD3d11Pass::num_resolve_subresource(
  self : FrameStatsD3d11Pass,
) -> UInt32 {
  sg_frame_stats_d3d11_pass_get_num_resolve_subresource(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pass_set_num_resolve_subresource(
  object_ : FrameStatsD3d11Pass,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_pass_set_num_resolve_subresource"

///|
pub fn FrameStatsD3d11Pass::set_num_resolve_subresource(
  self : FrameStatsD3d11Pass,
  value : UInt32,
) -> FrameStatsD3d11Pass {
  sg_frame_stats_d3d11_pass_set_num_resolve_subresource(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type FrameStatsD3d11Pipeline

///|
extern "c" fn sg_frame_stats_d3d11_pipeline_new() -> FrameStatsD3d11Pipeline = "mb_gfx_sg_frame_stats_d3d11_pipeline_new"

///|
pub fn FrameStatsD3d11Pipeline::new() -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_new()
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_copy(
  object_ : FrameStatsD3d11Pipeline,
) -> FrameStatsD3d11Pipeline = "mb_gfx_sg_frame_stats_d3d11_pipeline_copy"

///|
pub fn FrameStatsD3d11Pipeline::copy(
  self : FrameStatsD3d11Pipeline,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_native(
  object_ : FrameStatsD3d11Pipeline,
) -> @native.Handle = "mb_gfx_sg_frame_stats_d3d11_pipeline_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsD3d11Pipeline::unsafe_native_handle(
  self : FrameStatsD3d11Pipeline,
) -> @native.Handle {
  sg_frame_stats_d3d11_pipeline_native(self)
}

///|
extern "c" fn sg_frame_stats_d3d11_pipeline_from_native(
  ptr : @native.Handle,
) -> FrameStatsD3d11Pipeline = "mb_gfx_sg_frame_stats_d3d11_pipeline_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsD3d11Pipeline::unsafe_from_native(
  ptr : @native.Handle,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_get_num_rs_set_state(
  object_ : FrameStatsD3d11Pipeline,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_rs_set_state"

///|
pub fn FrameStatsD3d11Pipeline::num_rs_set_state(
  self : FrameStatsD3d11Pipeline,
) -> UInt32 {
  sg_frame_stats_d3d11_pipeline_get_num_rs_set_state(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_set_num_rs_set_state(
  object_ : FrameStatsD3d11Pipeline,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_rs_set_state"

///|
pub fn FrameStatsD3d11Pipeline::set_num_rs_set_state(
  self : FrameStatsD3d11Pipeline,
  value : UInt32,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_set_num_rs_set_state(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_get_num_om_set_depth_stencil_state(
  object_ : FrameStatsD3d11Pipeline,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_om_set_depth_stencil_state"

///|
pub fn FrameStatsD3d11Pipeline::num_om_set_depth_stencil_state(
  self : FrameStatsD3d11Pipeline,
) -> UInt32 {
  sg_frame_stats_d3d11_pipeline_get_num_om_set_depth_stencil_state(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_set_num_om_set_depth_stencil_state(
  object_ : FrameStatsD3d11Pipeline,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_om_set_depth_stencil_state"

///|
pub fn FrameStatsD3d11Pipeline::set_num_om_set_depth_stencil_state(
  self : FrameStatsD3d11Pipeline,
  value : UInt32,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_set_num_om_set_depth_stencil_state(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_get_num_om_set_blend_state(
  object_ : FrameStatsD3d11Pipeline,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_om_set_blend_state"

///|
pub fn FrameStatsD3d11Pipeline::num_om_set_blend_state(
  self : FrameStatsD3d11Pipeline,
) -> UInt32 {
  sg_frame_stats_d3d11_pipeline_get_num_om_set_blend_state(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_set_num_om_set_blend_state(
  object_ : FrameStatsD3d11Pipeline,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_om_set_blend_state"

///|
pub fn FrameStatsD3d11Pipeline::set_num_om_set_blend_state(
  self : FrameStatsD3d11Pipeline,
  value : UInt32,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_set_num_om_set_blend_state(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_get_num_ia_set_primitive_topology(
  object_ : FrameStatsD3d11Pipeline,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_ia_set_primitive_topology"

///|
pub fn FrameStatsD3d11Pipeline::num_ia_set_primitive_topology(
  self : FrameStatsD3d11Pipeline,
) -> UInt32 {
  sg_frame_stats_d3d11_pipeline_get_num_ia_set_primitive_topology(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_set_num_ia_set_primitive_topology(
  object_ : FrameStatsD3d11Pipeline,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_ia_set_primitive_topology"

///|
pub fn FrameStatsD3d11Pipeline::set_num_ia_set_primitive_topology(
  self : FrameStatsD3d11Pipeline,
  value : UInt32,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_set_num_ia_set_primitive_topology(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_get_num_ia_set_input_layout(
  object_ : FrameStatsD3d11Pipeline,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_ia_set_input_layout"

///|
pub fn FrameStatsD3d11Pipeline::num_ia_set_input_layout(
  self : FrameStatsD3d11Pipeline,
) -> UInt32 {
  sg_frame_stats_d3d11_pipeline_get_num_ia_set_input_layout(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_set_num_ia_set_input_layout(
  object_ : FrameStatsD3d11Pipeline,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_ia_set_input_layout"

///|
pub fn FrameStatsD3d11Pipeline::set_num_ia_set_input_layout(
  self : FrameStatsD3d11Pipeline,
  value : UInt32,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_set_num_ia_set_input_layout(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_get_num_vs_set_shader(
  object_ : FrameStatsD3d11Pipeline,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_vs_set_shader"

///|
pub fn FrameStatsD3d11Pipeline::num_vs_set_shader(
  self : FrameStatsD3d11Pipeline,
) -> UInt32 {
  sg_frame_stats_d3d11_pipeline_get_num_vs_set_shader(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_set_num_vs_set_shader(
  object_ : FrameStatsD3d11Pipeline,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_vs_set_shader"

///|
pub fn FrameStatsD3d11Pipeline::set_num_vs_set_shader(
  self : FrameStatsD3d11Pipeline,
  value : UInt32,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_set_num_vs_set_shader(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_get_num_vs_set_constant_buffers(
  object_ : FrameStatsD3d11Pipeline,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_vs_set_constant_buffers"

///|
pub fn FrameStatsD3d11Pipeline::num_vs_set_constant_buffers(
  self : FrameStatsD3d11Pipeline,
) -> UInt32 {
  sg_frame_stats_d3d11_pipeline_get_num_vs_set_constant_buffers(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_set_num_vs_set_constant_buffers(
  object_ : FrameStatsD3d11Pipeline,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_vs_set_constant_buffers"

///|
pub fn FrameStatsD3d11Pipeline::set_num_vs_set_constant_buffers(
  self : FrameStatsD3d11Pipeline,
  value : UInt32,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_set_num_vs_set_constant_buffers(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_get_num_ps_set_shader(
  object_ : FrameStatsD3d11Pipeline,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_ps_set_shader"

///|
pub fn FrameStatsD3d11Pipeline::num_ps_set_shader(
  self : FrameStatsD3d11Pipeline,
) -> UInt32 {
  sg_frame_stats_d3d11_pipeline_get_num_ps_set_shader(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_set_num_ps_set_shader(
  object_ : FrameStatsD3d11Pipeline,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_ps_set_shader"

///|
pub fn FrameStatsD3d11Pipeline::set_num_ps_set_shader(
  self : FrameStatsD3d11Pipeline,
  value : UInt32,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_set_num_ps_set_shader(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_get_num_ps_set_constant_buffers(
  object_ : FrameStatsD3d11Pipeline,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_ps_set_constant_buffers"

///|
pub fn FrameStatsD3d11Pipeline::num_ps_set_constant_buffers(
  self : FrameStatsD3d11Pipeline,
) -> UInt32 {
  sg_frame_stats_d3d11_pipeline_get_num_ps_set_constant_buffers(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_set_num_ps_set_constant_buffers(
  object_ : FrameStatsD3d11Pipeline,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_ps_set_constant_buffers"

///|
pub fn FrameStatsD3d11Pipeline::set_num_ps_set_constant_buffers(
  self : FrameStatsD3d11Pipeline,
  value : UInt32,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_set_num_ps_set_constant_buffers(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_get_num_cs_set_shader(
  object_ : FrameStatsD3d11Pipeline,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_cs_set_shader"

///|
pub fn FrameStatsD3d11Pipeline::num_cs_set_shader(
  self : FrameStatsD3d11Pipeline,
) -> UInt32 {
  sg_frame_stats_d3d11_pipeline_get_num_cs_set_shader(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_set_num_cs_set_shader(
  object_ : FrameStatsD3d11Pipeline,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_cs_set_shader"

///|
pub fn FrameStatsD3d11Pipeline::set_num_cs_set_shader(
  self : FrameStatsD3d11Pipeline,
  value : UInt32,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_set_num_cs_set_shader(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_get_num_cs_set_constant_buffers(
  object_ : FrameStatsD3d11Pipeline,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_cs_set_constant_buffers"

///|
pub fn FrameStatsD3d11Pipeline::num_cs_set_constant_buffers(
  self : FrameStatsD3d11Pipeline,
) -> UInt32 {
  sg_frame_stats_d3d11_pipeline_get_num_cs_set_constant_buffers(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_pipeline_set_num_cs_set_constant_buffers(
  object_ : FrameStatsD3d11Pipeline,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_cs_set_constant_buffers"

///|
pub fn FrameStatsD3d11Pipeline::set_num_cs_set_constant_buffers(
  self : FrameStatsD3d11Pipeline,
  value : UInt32,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_set_num_cs_set_constant_buffers(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type FrameStatsD3d11Bindings

///|
extern "c" fn sg_frame_stats_d3d11_bindings_new() -> FrameStatsD3d11Bindings = "mb_gfx_sg_frame_stats_d3d11_bindings_new"

///|
pub fn FrameStatsD3d11Bindings::new() -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_new()
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_bindings_copy(
  object_ : FrameStatsD3d11Bindings,
) -> FrameStatsD3d11Bindings = "mb_gfx_sg_frame_stats_d3d11_bindings_copy"

///|
pub fn FrameStatsD3d11Bindings::copy(
  self : FrameStatsD3d11Bindings,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_bindings_native(
  object_ : FrameStatsD3d11Bindings,
) -> @native.Handle = "mb_gfx_sg_frame_stats_d3d11_bindings_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsD3d11Bindings::unsafe_native_handle(
  self : FrameStatsD3d11Bindings,
) -> @native.Handle {
  sg_frame_stats_d3d11_bindings_native(self)
}

///|
extern "c" fn sg_frame_stats_d3d11_bindings_from_native(
  ptr : @native.Handle,
) -> FrameStatsD3d11Bindings = "mb_gfx_sg_frame_stats_d3d11_bindings_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsD3d11Bindings::unsafe_from_native(
  ptr : @native.Handle,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_bindings_get_num_ia_set_vertex_buffers(
  object_ : FrameStatsD3d11Bindings,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_bindings_get_num_ia_set_vertex_buffers"

///|
pub fn FrameStatsD3d11Bindings::num_ia_set_vertex_buffers(
  self : FrameStatsD3d11Bindings,
) -> UInt32 {
  sg_frame_stats_d3d11_bindings_get_num_ia_set_vertex_buffers(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_bindings_set_num_ia_set_vertex_buffers(
  object_ : FrameStatsD3d11Bindings,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_bindings_set_num_ia_set_vertex_buffers"

///|
pub fn FrameStatsD3d11Bindings::set_num_ia_set_vertex_buffers(
  self : FrameStatsD3d11Bindings,
  value : UInt32,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_set_num_ia_set_vertex_buffers(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_bindings_get_num_ia_set_index_buffer(
  object_ : FrameStatsD3d11Bindings,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_bindings_get_num_ia_set_index_buffer"

///|
pub fn FrameStatsD3d11Bindings::num_ia_set_index_buffer(
  self : FrameStatsD3d11Bindings,
) -> UInt32 {
  sg_frame_stats_d3d11_bindings_get_num_ia_set_index_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_bindings_set_num_ia_set_index_buffer(
  object_ : FrameStatsD3d11Bindings,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_bindings_set_num_ia_set_index_buffer"

///|
pub fn FrameStatsD3d11Bindings::set_num_ia_set_index_buffer(
  self : FrameStatsD3d11Bindings,
  value : UInt32,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_set_num_ia_set_index_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_bindings_get_num_vs_set_shader_resources(
  object_ : FrameStatsD3d11Bindings,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_bindings_get_num_vs_set_shader_resources"

///|
pub fn FrameStatsD3d11Bindings::num_vs_set_shader_resources(
  self : FrameStatsD3d11Bindings,
) -> UInt32 {
  sg_frame_stats_d3d11_bindings_get_num_vs_set_shader_resources(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_bindings_set_num_vs_set_shader_resources(
  object_ : FrameStatsD3d11Bindings,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_bindings_set_num_vs_set_shader_resources"

///|
pub fn FrameStatsD3d11Bindings::set_num_vs_set_shader_resources(
  self : FrameStatsD3d11Bindings,
  value : UInt32,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_set_num_vs_set_shader_resources(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_bindings_get_num_vs_set_samplers(
  object_ : FrameStatsD3d11Bindings,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_bindings_get_num_vs_set_samplers"

///|
pub fn FrameStatsD3d11Bindings::num_vs_set_samplers(
  self : FrameStatsD3d11Bindings,
) -> UInt32 {
  sg_frame_stats_d3d11_bindings_get_num_vs_set_samplers(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_bindings_set_num_vs_set_samplers(
  object_ : FrameStatsD3d11Bindings,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_bindings_set_num_vs_set_samplers"

///|
pub fn FrameStatsD3d11Bindings::set_num_vs_set_samplers(
  self : FrameStatsD3d11Bindings,
  value : UInt32,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_set_num_vs_set_samplers(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_bindings_get_num_ps_set_shader_resources(
  object_ : FrameStatsD3d11Bindings,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_bindings_get_num_ps_set_shader_resources"

///|
pub fn FrameStatsD3d11Bindings::num_ps_set_shader_resources(
  self : FrameStatsD3d11Bindings,
) -> UInt32 {
  sg_frame_stats_d3d11_bindings_get_num_ps_set_shader_resources(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_bindings_set_num_ps_set_shader_resources(
  object_ : FrameStatsD3d11Bindings,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_bindings_set_num_ps_set_shader_resources"

///|
pub fn FrameStatsD3d11Bindings::set_num_ps_set_shader_resources(
  self : FrameStatsD3d11Bindings,
  value : UInt32,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_set_num_ps_set_shader_resources(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_bindings_get_num_ps_set_samplers(
  object_ : FrameStatsD3d11Bindings,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_bindings_get_num_ps_set_samplers"

///|
pub fn FrameStatsD3d11Bindings::num_ps_set_samplers(
  self : FrameStatsD3d11Bindings,
) -> UInt32 {
  sg_frame_stats_d3d11_bindings_get_num_ps_set_samplers(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_bindings_set_num_ps_set_samplers(
  object_ : FrameStatsD3d11Bindings,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_bindings_set_num_ps_set_samplers"

///|
pub fn FrameStatsD3d11Bindings::set_num_ps_set_samplers(
  self : FrameStatsD3d11Bindings,
  value : UInt32,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_set_num_ps_set_samplers(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_bindings_get_num_cs_set_shader_resources(
  object_ : FrameStatsD3d11Bindings,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_bindings_get_num_cs_set_shader_resources"

///|
pub fn FrameStatsD3d11Bindings::num_cs_set_shader_resources(
  self : FrameStatsD3d11Bindings,
) -> UInt32 {
  sg_frame_stats_d3d11_bindings_get_num_cs_set_shader_resources(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_bindings_set_num_cs_set_shader_resources(
  object_ : FrameStatsD3d11Bindings,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_bindings_set_num_cs_set_shader_resources"

///|
pub fn FrameStatsD3d11Bindings::set_num_cs_set_shader_resources(
  self : FrameStatsD3d11Bindings,
  value : UInt32,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_set_num_cs_set_shader_resources(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_bindings_get_num_cs_set_samplers(
  object_ : FrameStatsD3d11Bindings,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_bindings_get_num_cs_set_samplers"

///|
pub fn FrameStatsD3d11Bindings::num_cs_set_samplers(
  self : FrameStatsD3d11Bindings,
) -> UInt32 {
  sg_frame_stats_d3d11_bindings_get_num_cs_set_samplers(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_bindings_set_num_cs_set_samplers(
  object_ : FrameStatsD3d11Bindings,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_bindings_set_num_cs_set_samplers"

///|
pub fn FrameStatsD3d11Bindings::set_num_cs_set_samplers(
  self : FrameStatsD3d11Bindings,
  value : UInt32,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_set_num_cs_set_samplers(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_bindings_get_num_cs_set_unordered_access_views(
  object_ : FrameStatsD3d11Bindings,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_bindings_get_num_cs_set_unordered_access_views"

///|
pub fn FrameStatsD3d11Bindings::num_cs_set_unordered_access_views(
  self : FrameStatsD3d11Bindings,
) -> UInt32 {
  sg_frame_stats_d3d11_bindings_get_num_cs_set_unordered_access_views(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_bindings_set_num_cs_set_unordered_access_views(
  object_ : FrameStatsD3d11Bindings,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_bindings_set_num_cs_set_unordered_access_views"

///|
pub fn FrameStatsD3d11Bindings::set_num_cs_set_unordered_access_views(
  self : FrameStatsD3d11Bindings,
  value : UInt32,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_set_num_cs_set_unordered_access_views(
    self, value,
  )
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_bindings_get_num_om_set_rts_and_uavs(
  object_ : FrameStatsD3d11Bindings,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_bindings_get_num_om_set_rts_and_uavs"

///|
pub fn FrameStatsD3d11Bindings::num_om_set_rts_and_uavs(
  self : FrameStatsD3d11Bindings,
) -> UInt32 {
  sg_frame_stats_d3d11_bindings_get_num_om_set_rts_and_uavs(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_bindings_set_num_om_set_rts_and_uavs(
  object_ : FrameStatsD3d11Bindings,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_bindings_set_num_om_set_rts_and_uavs"

///|
pub fn FrameStatsD3d11Bindings::set_num_om_set_rts_and_uavs(
  self : FrameStatsD3d11Bindings,
  value : UInt32,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_set_num_om_set_rts_and_uavs(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type FrameStatsD3d11Draw

///|
extern "c" fn sg_frame_stats_d3d11_draw_new() -> FrameStatsD3d11Draw = "mb_gfx_sg_frame_stats_d3d11_draw_new"

///|
pub fn FrameStatsD3d11Draw::new() -> FrameStatsD3d11Draw {
  sg_frame_stats_d3d11_draw_new()
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_draw_copy(
  object_ : FrameStatsD3d11Draw,
) -> FrameStatsD3d11Draw = "mb_gfx_sg_frame_stats_d3d11_draw_copy"

///|
pub fn FrameStatsD3d11Draw::copy(
  self : FrameStatsD3d11Draw,
) -> FrameStatsD3d11Draw {
  sg_frame_stats_d3d11_draw_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_draw_native(
  object_ : FrameStatsD3d11Draw,
) -> @native.Handle = "mb_gfx_sg_frame_stats_d3d11_draw_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsD3d11Draw::unsafe_native_handle(
  self : FrameStatsD3d11Draw,
) -> @native.Handle {
  sg_frame_stats_d3d11_draw_native(self)
}

///|
extern "c" fn sg_frame_stats_d3d11_draw_from_native(
  ptr : @native.Handle,
) -> FrameStatsD3d11Draw = "mb_gfx_sg_frame_stats_d3d11_draw_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsD3d11Draw::unsafe_from_native(
  ptr : @native.Handle,
) -> FrameStatsD3d11Draw {
  sg_frame_stats_d3d11_draw_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_draw_get_num_draw_indexed_instanced(
  object_ : FrameStatsD3d11Draw,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_draw_get_num_draw_indexed_instanced"

///|
pub fn FrameStatsD3d11Draw::num_draw_indexed_instanced(
  self : FrameStatsD3d11Draw,
) -> UInt32 {
  sg_frame_stats_d3d11_draw_get_num_draw_indexed_instanced(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_draw_set_num_draw_indexed_instanced(
  object_ : FrameStatsD3d11Draw,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_draw_set_num_draw_indexed_instanced"

///|
pub fn FrameStatsD3d11Draw::set_num_draw_indexed_instanced(
  self : FrameStatsD3d11Draw,
  value : UInt32,
) -> FrameStatsD3d11Draw {
  sg_frame_stats_d3d11_draw_set_num_draw_indexed_instanced(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_draw_get_num_draw_indexed(
  object_ : FrameStatsD3d11Draw,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_draw_get_num_draw_indexed"

///|
pub fn FrameStatsD3d11Draw::num_draw_indexed(
  self : FrameStatsD3d11Draw,
) -> UInt32 {
  sg_frame_stats_d3d11_draw_get_num_draw_indexed(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_draw_set_num_draw_indexed(
  object_ : FrameStatsD3d11Draw,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_draw_set_num_draw_indexed"

///|
pub fn FrameStatsD3d11Draw::set_num_draw_indexed(
  self : FrameStatsD3d11Draw,
  value : UInt32,
) -> FrameStatsD3d11Draw {
  sg_frame_stats_d3d11_draw_set_num_draw_indexed(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_draw_get_num_draw_instanced(
  object_ : FrameStatsD3d11Draw,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_draw_get_num_draw_instanced"

///|
pub fn FrameStatsD3d11Draw::num_draw_instanced(
  self : FrameStatsD3d11Draw,
) -> UInt32 {
  sg_frame_stats_d3d11_draw_get_num_draw_instanced(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_draw_set_num_draw_instanced(
  object_ : FrameStatsD3d11Draw,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_draw_set_num_draw_instanced"

///|
pub fn FrameStatsD3d11Draw::set_num_draw_instanced(
  self : FrameStatsD3d11Draw,
  value : UInt32,
) -> FrameStatsD3d11Draw {
  sg_frame_stats_d3d11_draw_set_num_draw_instanced(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_draw_get_num_draw(
  object_ : FrameStatsD3d11Draw,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_draw_get_num_draw"

///|
pub fn FrameStatsD3d11Draw::num_draw(self : FrameStatsD3d11Draw) -> UInt32 {
  sg_frame_stats_d3d11_draw_get_num_draw(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_draw_set_num_draw(
  object_ : FrameStatsD3d11Draw,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_draw_set_num_draw"

///|
pub fn FrameStatsD3d11Draw::set_num_draw(
  self : FrameStatsD3d11Draw,
  value : UInt32,
) -> FrameStatsD3d11Draw {
  sg_frame_stats_d3d11_draw_set_num_draw(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type FrameStatsD3d11

///|
extern "c" fn sg_frame_stats_d3d11_new() -> FrameStatsD3d11 = "mb_gfx_sg_frame_stats_d3d11_new"

///|
pub fn FrameStatsD3d11::new() -> FrameStatsD3d11 {
  sg_frame_stats_d3d11_new()
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_copy(
  object_ : FrameStatsD3d11,
) -> FrameStatsD3d11 = "mb_gfx_sg_frame_stats_d3d11_copy"

///|
pub fn FrameStatsD3d11::copy(self : FrameStatsD3d11) -> FrameStatsD3d11 {
  sg_frame_stats_d3d11_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_native(
  object_ : FrameStatsD3d11,
) -> @native.Handle = "mb_gfx_sg_frame_stats_d3d11_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsD3d11::unsafe_native_handle(
  self : FrameStatsD3d11,
) -> @native.Handle {
  sg_frame_stats_d3d11_native(self)
}

///|
extern "c" fn sg_frame_stats_d3d11_from_native(
  ptr : @native.Handle,
) -> FrameStatsD3d11 = "mb_gfx_sg_frame_stats_d3d11_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsD3d11::unsafe_from_native(
  ptr : @native.Handle,
) -> FrameStatsD3d11 {
  sg_frame_stats_d3d11_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_get_pass(
  object_ : FrameStatsD3d11,
) -> FrameStatsD3d11Pass = "mb_gfx_sg_frame_stats_d3d11_get_pass"

///|
pub fn FrameStatsD3d11::pass(self : FrameStatsD3d11) -> FrameStatsD3d11Pass {
  sg_frame_stats_d3d11_get_pass(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_frame_stats_d3d11_set_pass(
  object_ : FrameStatsD3d11,
  replacement : FrameStatsD3d11Pass,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_set_pass"

///|
pub fn FrameStatsD3d11::set_pass(
  self : FrameStatsD3d11,
  value : FrameStatsD3d11Pass,
) -> FrameStatsD3d11 {
  sg_frame_stats_d3d11_set_pass(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_get_pipeline(
  object_ : FrameStatsD3d11,
) -> FrameStatsD3d11Pipeline = "mb_gfx_sg_frame_stats_d3d11_get_pipeline"

///|
pub fn FrameStatsD3d11::pipeline(
  self : FrameStatsD3d11,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_get_pipeline(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_frame_stats_d3d11_set_pipeline(
  object_ : FrameStatsD3d11,
  replacement : FrameStatsD3d11Pipeline,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_set_pipeline"

///|
pub fn FrameStatsD3d11::set_pipeline(
  self : FrameStatsD3d11,
  value : FrameStatsD3d11Pipeline,
) -> FrameStatsD3d11 {
  sg_frame_stats_d3d11_set_pipeline(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_get_bindings(
  object_ : FrameStatsD3d11,
) -> FrameStatsD3d11Bindings = "mb_gfx_sg_frame_stats_d3d11_get_bindings"

///|
pub fn FrameStatsD3d11::bindings(
  self : FrameStatsD3d11,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_get_bindings(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_frame_stats_d3d11_set_bindings(
  object_ : FrameStatsD3d11,
  replacement : FrameStatsD3d11Bindings,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_set_bindings"

///|
pub fn FrameStatsD3d11::set_bindings(
  self : FrameStatsD3d11,
  value : FrameStatsD3d11Bindings,
) -> FrameStatsD3d11 {
  sg_frame_stats_d3d11_set_bindings(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_get_draw(
  object_ : FrameStatsD3d11,
) -> FrameStatsD3d11Draw = "mb_gfx_sg_frame_stats_d3d11_get_draw"

///|
pub fn FrameStatsD3d11::draw(self : FrameStatsD3d11) -> FrameStatsD3d11Draw {
  sg_frame_stats_d3d11_get_draw(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_frame_stats_d3d11_set_draw(
  object_ : FrameStatsD3d11,
  replacement : FrameStatsD3d11Draw,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_set_draw"

///|
pub fn FrameStatsD3d11::set_draw(
  self : FrameStatsD3d11,
  value : FrameStatsD3d11Draw,
) -> FrameStatsD3d11 {
  sg_frame_stats_d3d11_set_draw(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_get_num_update_subresource(
  object_ : FrameStatsD3d11,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_get_num_update_subresource"

///|
pub fn FrameStatsD3d11::num_update_subresource(
  self : FrameStatsD3d11,
) -> UInt32 {
  sg_frame_stats_d3d11_get_num_update_subresource(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_set_num_update_subresource(
  object_ : FrameStatsD3d11,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_set_num_update_subresource"

///|
pub fn FrameStatsD3d11::set_num_update_subresource(
  self : FrameStatsD3d11,
  value : UInt32,
) -> FrameStatsD3d11 {
  sg_frame_stats_d3d11_set_num_update_subresource(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_get_num_copy_subresource_region(
  object_ : FrameStatsD3d11,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_get_num_copy_subresource_region"

///|
pub fn FrameStatsD3d11::num_copy_subresource_region(
  self : FrameStatsD3d11,
) -> UInt32 {
  sg_frame_stats_d3d11_get_num_copy_subresource_region(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_set_num_copy_subresource_region(
  object_ : FrameStatsD3d11,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_set_num_copy_subresource_region"

///|
pub fn FrameStatsD3d11::set_num_copy_subresource_region(
  self : FrameStatsD3d11,
  value : UInt32,
) -> FrameStatsD3d11 {
  sg_frame_stats_d3d11_set_num_copy_subresource_region(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_get_num_map(
  object_ : FrameStatsD3d11,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_get_num_map"

///|
pub fn FrameStatsD3d11::num_map(self : FrameStatsD3d11) -> UInt32 {
  sg_frame_stats_d3d11_get_num_map(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_set_num_map(
  object_ : FrameStatsD3d11,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_set_num_map"

///|
pub fn FrameStatsD3d11::set_num_map(
  self : FrameStatsD3d11,
  value : UInt32,
) -> FrameStatsD3d11 {
  sg_frame_stats_d3d11_set_num_map(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_get_num_unmap(
  object_ : FrameStatsD3d11,
) -> UInt32 = "mb_gfx_sg_frame_stats_d3d11_get_num_unmap"

///|
pub fn FrameStatsD3d11::num_unmap(self : FrameStatsD3d11) -> UInt32 {
  sg_frame_stats_d3d11_get_num_unmap(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_d3d11_set_num_unmap(
  object_ : FrameStatsD3d11,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_d3d11_set_num_unmap"

///|
pub fn FrameStatsD3d11::set_num_unmap(
  self : FrameStatsD3d11,
  value : UInt32,
) -> FrameStatsD3d11 {
  sg_frame_stats_d3d11_set_num_unmap(self, value)
  self
}
