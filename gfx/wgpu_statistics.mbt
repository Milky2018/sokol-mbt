///|
/// Owned C value. copy() creates an independent copy.
pub type FrameStatsWgpuUniforms

///|
extern "c" fn sg_frame_stats_wgpu_uniforms_new() -> FrameStatsWgpuUniforms = "mb_gfx_sg_frame_stats_wgpu_uniforms_new"

///|
pub fn FrameStatsWgpuUniforms::new() -> FrameStatsWgpuUniforms {
  sg_frame_stats_wgpu_uniforms_new()
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_uniforms_copy(
  object_ : FrameStatsWgpuUniforms,
) -> FrameStatsWgpuUniforms = "mb_gfx_sg_frame_stats_wgpu_uniforms_copy"

///|
pub fn FrameStatsWgpuUniforms::copy(
  self : FrameStatsWgpuUniforms,
) -> FrameStatsWgpuUniforms {
  sg_frame_stats_wgpu_uniforms_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_uniforms_native(
  object_ : FrameStatsWgpuUniforms,
) -> @native.Handle = "mb_gfx_sg_frame_stats_wgpu_uniforms_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsWgpuUniforms::unsafe_native_handle(
  self : FrameStatsWgpuUniforms,
) -> @native.Handle {
  sg_frame_stats_wgpu_uniforms_native(self)
}

///|
extern "c" fn sg_frame_stats_wgpu_uniforms_from_native(
  ptr : @native.Handle,
) -> FrameStatsWgpuUniforms = "mb_gfx_sg_frame_stats_wgpu_uniforms_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsWgpuUniforms::unsafe_from_native(
  ptr : @native.Handle,
) -> FrameStatsWgpuUniforms {
  sg_frame_stats_wgpu_uniforms_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_uniforms_get_num_set_bindgroup(
  object_ : FrameStatsWgpuUniforms,
) -> UInt32 = "mb_gfx_sg_frame_stats_wgpu_uniforms_get_num_set_bindgroup"

///|
pub fn FrameStatsWgpuUniforms::num_set_bindgroup(
  self : FrameStatsWgpuUniforms,
) -> UInt32 {
  sg_frame_stats_wgpu_uniforms_get_num_set_bindgroup(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_uniforms_set_num_set_bindgroup(
  object_ : FrameStatsWgpuUniforms,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_wgpu_uniforms_set_num_set_bindgroup"

///|
pub fn FrameStatsWgpuUniforms::set_num_set_bindgroup(
  self : FrameStatsWgpuUniforms,
  value : UInt32,
) -> FrameStatsWgpuUniforms {
  sg_frame_stats_wgpu_uniforms_set_num_set_bindgroup(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_uniforms_get_size_write_buffer(
  object_ : FrameStatsWgpuUniforms,
) -> UInt32 = "mb_gfx_sg_frame_stats_wgpu_uniforms_get_size_write_buffer"

///|
pub fn FrameStatsWgpuUniforms::size_write_buffer(
  self : FrameStatsWgpuUniforms,
) -> UInt32 {
  sg_frame_stats_wgpu_uniforms_get_size_write_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_uniforms_set_size_write_buffer(
  object_ : FrameStatsWgpuUniforms,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_wgpu_uniforms_set_size_write_buffer"

///|
pub fn FrameStatsWgpuUniforms::set_size_write_buffer(
  self : FrameStatsWgpuUniforms,
  value : UInt32,
) -> FrameStatsWgpuUniforms {
  sg_frame_stats_wgpu_uniforms_set_size_write_buffer(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type FrameStatsWgpuBindings

///|
extern "c" fn sg_frame_stats_wgpu_bindings_new() -> FrameStatsWgpuBindings = "mb_gfx_sg_frame_stats_wgpu_bindings_new"

///|
pub fn FrameStatsWgpuBindings::new() -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_new()
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_copy(
  object_ : FrameStatsWgpuBindings,
) -> FrameStatsWgpuBindings = "mb_gfx_sg_frame_stats_wgpu_bindings_copy"

///|
pub fn FrameStatsWgpuBindings::copy(
  self : FrameStatsWgpuBindings,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_native(
  object_ : FrameStatsWgpuBindings,
) -> @native.Handle = "mb_gfx_sg_frame_stats_wgpu_bindings_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsWgpuBindings::unsafe_native_handle(
  self : FrameStatsWgpuBindings,
) -> @native.Handle {
  sg_frame_stats_wgpu_bindings_native(self)
}

///|
extern "c" fn sg_frame_stats_wgpu_bindings_from_native(
  ptr : @native.Handle,
) -> FrameStatsWgpuBindings = "mb_gfx_sg_frame_stats_wgpu_bindings_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsWgpuBindings::unsafe_from_native(
  ptr : @native.Handle,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_get_num_set_vertex_buffer(
  object_ : FrameStatsWgpuBindings,
) -> UInt32 = "mb_gfx_sg_frame_stats_wgpu_bindings_get_num_set_vertex_buffer"

///|
pub fn FrameStatsWgpuBindings::num_set_vertex_buffer(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_set_vertex_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_set_num_set_vertex_buffer(
  object_ : FrameStatsWgpuBindings,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_wgpu_bindings_set_num_set_vertex_buffer"

///|
pub fn FrameStatsWgpuBindings::set_num_set_vertex_buffer(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_set_vertex_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_get_num_skip_redundant_vertex_buffer(
  object_ : FrameStatsWgpuBindings,
) -> UInt32 = "mb_gfx_sg_frame_stats_wgpu_bindings_get_num_skip_redundant_vertex_buffer"

///|
pub fn FrameStatsWgpuBindings::num_skip_redundant_vertex_buffer(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_skip_redundant_vertex_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_set_num_skip_redundant_vertex_buffer(
  object_ : FrameStatsWgpuBindings,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_wgpu_bindings_set_num_skip_redundant_vertex_buffer"

///|
pub fn FrameStatsWgpuBindings::set_num_skip_redundant_vertex_buffer(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_skip_redundant_vertex_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_get_num_set_index_buffer(
  object_ : FrameStatsWgpuBindings,
) -> UInt32 = "mb_gfx_sg_frame_stats_wgpu_bindings_get_num_set_index_buffer"

///|
pub fn FrameStatsWgpuBindings::num_set_index_buffer(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_set_index_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_set_num_set_index_buffer(
  object_ : FrameStatsWgpuBindings,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_wgpu_bindings_set_num_set_index_buffer"

///|
pub fn FrameStatsWgpuBindings::set_num_set_index_buffer(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_set_index_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_get_num_skip_redundant_index_buffer(
  object_ : FrameStatsWgpuBindings,
) -> UInt32 = "mb_gfx_sg_frame_stats_wgpu_bindings_get_num_skip_redundant_index_buffer"

///|
pub fn FrameStatsWgpuBindings::num_skip_redundant_index_buffer(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_skip_redundant_index_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_set_num_skip_redundant_index_buffer(
  object_ : FrameStatsWgpuBindings,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_wgpu_bindings_set_num_skip_redundant_index_buffer"

///|
pub fn FrameStatsWgpuBindings::set_num_skip_redundant_index_buffer(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_skip_redundant_index_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_get_num_create_bindgroup(
  object_ : FrameStatsWgpuBindings,
) -> UInt32 = "mb_gfx_sg_frame_stats_wgpu_bindings_get_num_create_bindgroup"

///|
pub fn FrameStatsWgpuBindings::num_create_bindgroup(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_create_bindgroup(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_set_num_create_bindgroup(
  object_ : FrameStatsWgpuBindings,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_wgpu_bindings_set_num_create_bindgroup"

///|
pub fn FrameStatsWgpuBindings::set_num_create_bindgroup(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_create_bindgroup(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_get_num_discard_bindgroup(
  object_ : FrameStatsWgpuBindings,
) -> UInt32 = "mb_gfx_sg_frame_stats_wgpu_bindings_get_num_discard_bindgroup"

///|
pub fn FrameStatsWgpuBindings::num_discard_bindgroup(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_discard_bindgroup(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_set_num_discard_bindgroup(
  object_ : FrameStatsWgpuBindings,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_wgpu_bindings_set_num_discard_bindgroup"

///|
pub fn FrameStatsWgpuBindings::set_num_discard_bindgroup(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_discard_bindgroup(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_get_num_set_bindgroup(
  object_ : FrameStatsWgpuBindings,
) -> UInt32 = "mb_gfx_sg_frame_stats_wgpu_bindings_get_num_set_bindgroup"

///|
pub fn FrameStatsWgpuBindings::num_set_bindgroup(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_set_bindgroup(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_set_num_set_bindgroup(
  object_ : FrameStatsWgpuBindings,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_wgpu_bindings_set_num_set_bindgroup"

///|
pub fn FrameStatsWgpuBindings::set_num_set_bindgroup(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_set_bindgroup(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_get_num_skip_redundant_bindgroup(
  object_ : FrameStatsWgpuBindings,
) -> UInt32 = "mb_gfx_sg_frame_stats_wgpu_bindings_get_num_skip_redundant_bindgroup"

///|
pub fn FrameStatsWgpuBindings::num_skip_redundant_bindgroup(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_skip_redundant_bindgroup(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_set_num_skip_redundant_bindgroup(
  object_ : FrameStatsWgpuBindings,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_wgpu_bindings_set_num_skip_redundant_bindgroup"

///|
pub fn FrameStatsWgpuBindings::set_num_skip_redundant_bindgroup(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_skip_redundant_bindgroup(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_hits(
  object_ : FrameStatsWgpuBindings,
) -> UInt32 = "mb_gfx_sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_hits"

///|
pub fn FrameStatsWgpuBindings::num_bindgroup_cache_hits(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_hits(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_hits(
  object_ : FrameStatsWgpuBindings,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_hits"

///|
pub fn FrameStatsWgpuBindings::set_num_bindgroup_cache_hits(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_hits(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_misses(
  object_ : FrameStatsWgpuBindings,
) -> UInt32 = "mb_gfx_sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_misses"

///|
pub fn FrameStatsWgpuBindings::num_bindgroup_cache_misses(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_misses(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_misses(
  object_ : FrameStatsWgpuBindings,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_misses"

///|
pub fn FrameStatsWgpuBindings::set_num_bindgroup_cache_misses(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_misses(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_collisions(
  object_ : FrameStatsWgpuBindings,
) -> UInt32 = "mb_gfx_sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_collisions"

///|
pub fn FrameStatsWgpuBindings::num_bindgroup_cache_collisions(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_collisions(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_collisions(
  object_ : FrameStatsWgpuBindings,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_collisions"

///|
pub fn FrameStatsWgpuBindings::set_num_bindgroup_cache_collisions(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_collisions(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_invalidates(
  object_ : FrameStatsWgpuBindings,
) -> UInt32 = "mb_gfx_sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_invalidates"

///|
pub fn FrameStatsWgpuBindings::num_bindgroup_cache_invalidates(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_invalidates(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_invalidates(
  object_ : FrameStatsWgpuBindings,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_invalidates"

///|
pub fn FrameStatsWgpuBindings::set_num_bindgroup_cache_invalidates(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_invalidates(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_hash_vs_key_mismatch(
  object_ : FrameStatsWgpuBindings,
) -> UInt32 = "mb_gfx_sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_hash_vs_key_mismatch"

///|
pub fn FrameStatsWgpuBindings::num_bindgroup_cache_hash_vs_key_mismatch(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_hash_vs_key_mismatch(
    self,
  )
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_hash_vs_key_mismatch(
  object_ : FrameStatsWgpuBindings,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_hash_vs_key_mismatch"

///|
pub fn FrameStatsWgpuBindings::set_num_bindgroup_cache_hash_vs_key_mismatch(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_hash_vs_key_mismatch(
    self, value,
  )
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type FrameStatsWgpu

///|
extern "c" fn sg_frame_stats_wgpu_new() -> FrameStatsWgpu = "mb_gfx_sg_frame_stats_wgpu_new"

///|
pub fn FrameStatsWgpu::new() -> FrameStatsWgpu {
  sg_frame_stats_wgpu_new()
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_copy(
  object_ : FrameStatsWgpu,
) -> FrameStatsWgpu = "mb_gfx_sg_frame_stats_wgpu_copy"

///|
pub fn FrameStatsWgpu::copy(self : FrameStatsWgpu) -> FrameStatsWgpu {
  sg_frame_stats_wgpu_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_native(
  object_ : FrameStatsWgpu,
) -> @native.Handle = "mb_gfx_sg_frame_stats_wgpu_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsWgpu::unsafe_native_handle(
  self : FrameStatsWgpu,
) -> @native.Handle {
  sg_frame_stats_wgpu_native(self)
}

///|
extern "c" fn sg_frame_stats_wgpu_from_native(
  ptr : @native.Handle,
) -> FrameStatsWgpu = "mb_gfx_sg_frame_stats_wgpu_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsWgpu::unsafe_from_native(
  ptr : @native.Handle,
) -> FrameStatsWgpu {
  sg_frame_stats_wgpu_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_get_uniforms(
  object_ : FrameStatsWgpu,
) -> FrameStatsWgpuUniforms = "mb_gfx_sg_frame_stats_wgpu_get_uniforms"

///|
pub fn FrameStatsWgpu::uniforms(
  self : FrameStatsWgpu,
) -> FrameStatsWgpuUniforms {
  sg_frame_stats_wgpu_get_uniforms(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_frame_stats_wgpu_set_uniforms(
  object_ : FrameStatsWgpu,
  replacement : FrameStatsWgpuUniforms,
) -> Unit = "mb_gfx_sg_frame_stats_wgpu_set_uniforms"

///|
pub fn FrameStatsWgpu::set_uniforms(
  self : FrameStatsWgpu,
  value : FrameStatsWgpuUniforms,
) -> FrameStatsWgpu {
  sg_frame_stats_wgpu_set_uniforms(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_frame_stats_wgpu_get_bindings(
  object_ : FrameStatsWgpu,
) -> FrameStatsWgpuBindings = "mb_gfx_sg_frame_stats_wgpu_get_bindings"

///|
pub fn FrameStatsWgpu::bindings(
  self : FrameStatsWgpu,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_get_bindings(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_frame_stats_wgpu_set_bindings(
  object_ : FrameStatsWgpu,
  replacement : FrameStatsWgpuBindings,
) -> Unit = "mb_gfx_sg_frame_stats_wgpu_set_bindings"

///|
pub fn FrameStatsWgpu::set_bindings(
  self : FrameStatsWgpu,
  value : FrameStatsWgpuBindings,
) -> FrameStatsWgpu {
  sg_frame_stats_wgpu_set_bindings(self, value)
  self
}
