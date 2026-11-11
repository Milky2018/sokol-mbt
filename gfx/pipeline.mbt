///|
/// Non-owning Sokol ID; copying this value does not allocate a C object.
#derive(Debug, Eq)
pub struct Pipeline(UInt32)

///|
pub extend Pipeline with Eq::{equal, not_equal}

///|
pub extend Pipeline with @debug.Debug::{to_repr}

///|
pub fn Pipeline::new() -> Pipeline {
  Pipeline(0U)
}

///|
pub fn Pipeline::id(self : Pipeline) -> UInt32 {
  self.0
}

///|
pub fn Pipeline::from_id(id : UInt32) -> Pipeline {
  Pipeline(id)
}

///|
extern "c" fn sg_pipeline_read_id(ptr : @native.Handle) -> UInt32 = "mb_gfx_sg_pipeline_read_id"

///|
/// The pointer must identify a live `sg_pipeline`.
pub fn Pipeline::unsafe_from_native(ptr : @native.Handle) -> Pipeline {
  Pipeline(sg_pipeline_read_id(ptr))
}

///|
/// Owned C value. copy() creates an independent copy.
pub type PipelineDesc

///|
extern "c" fn sg_pipeline_desc_new() -> PipelineDesc = "mb_gfx_sg_pipeline_desc_new"

///|
pub fn PipelineDesc::new() -> PipelineDesc {
  sg_pipeline_desc_new()
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_copy(object_ : PipelineDesc) -> PipelineDesc = "mb_gfx_sg_pipeline_desc_copy"

///|
pub fn PipelineDesc::copy(self : PipelineDesc) -> PipelineDesc {
  sg_pipeline_desc_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_native(object_ : PipelineDesc) -> @native.Handle = "mb_gfx_sg_pipeline_desc_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn PipelineDesc::unsafe_native_handle(
  self : PipelineDesc,
) -> @native.Handle {
  sg_pipeline_desc_native(self)
}

///|
extern "c" fn sg_pipeline_desc_from_native(
  ptr : @native.Handle,
) -> PipelineDesc = "mb_gfx_sg_pipeline_desc_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn PipelineDesc::unsafe_from_native(ptr : @native.Handle) -> PipelineDesc {
  sg_pipeline_desc_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_get_compute(object_ : PipelineDesc) -> Bool = "mb_gfx_sg_pipeline_desc_get_compute"

///|
pub fn PipelineDesc::compute(self : PipelineDesc) -> Bool {
  sg_pipeline_desc_get_compute(self)
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_set_compute(
  object_ : PipelineDesc,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_pipeline_desc_set_compute"

///|
pub fn PipelineDesc::set_compute(
  self : PipelineDesc,
  value : Bool,
) -> PipelineDesc {
  sg_pipeline_desc_set_compute(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_get_shader(object_ : PipelineDesc) -> UInt32 = "mb_gfx_sg_pipeline_desc_get_shader"

///|
pub fn PipelineDesc::shader(self : PipelineDesc) -> Shader {
  Shader(sg_pipeline_desc_get_shader(self))
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_set_shader(
  object_ : PipelineDesc,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_pipeline_desc_set_shader"

///|
pub fn PipelineDesc::set_shader(
  self : PipelineDesc,
  value : Shader,
) -> PipelineDesc {
  sg_pipeline_desc_set_shader(self, value.0)
  self
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_get_layout(
  object_ : PipelineDesc,
) -> VertexLayoutState = "mb_gfx_sg_pipeline_desc_get_layout"

///|
pub fn PipelineDesc::layout(self : PipelineDesc) -> VertexLayoutState {
  sg_pipeline_desc_get_layout(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_pipeline_desc_set_layout(
  object_ : PipelineDesc,
  replacement : VertexLayoutState,
) -> Unit = "mb_gfx_sg_pipeline_desc_set_layout"

///|
pub fn PipelineDesc::set_layout(
  self : PipelineDesc,
  value : VertexLayoutState,
) -> PipelineDesc {
  sg_pipeline_desc_set_layout(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_get_depth(object_ : PipelineDesc) -> DepthState = "mb_gfx_sg_pipeline_desc_get_depth"

///|
pub fn PipelineDesc::depth(self : PipelineDesc) -> DepthState {
  sg_pipeline_desc_get_depth(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_pipeline_desc_set_depth(
  object_ : PipelineDesc,
  replacement : DepthState,
) -> Unit = "mb_gfx_sg_pipeline_desc_set_depth"

///|
pub fn PipelineDesc::set_depth(
  self : PipelineDesc,
  value : DepthState,
) -> PipelineDesc {
  sg_pipeline_desc_set_depth(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_get_stencil(
  object_ : PipelineDesc,
) -> StencilState = "mb_gfx_sg_pipeline_desc_get_stencil"

///|
pub fn PipelineDesc::stencil(self : PipelineDesc) -> StencilState {
  sg_pipeline_desc_get_stencil(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_pipeline_desc_set_stencil(
  object_ : PipelineDesc,
  replacement : StencilState,
) -> Unit = "mb_gfx_sg_pipeline_desc_set_stencil"

///|
pub fn PipelineDesc::set_stencil(
  self : PipelineDesc,
  value : StencilState,
) -> PipelineDesc {
  sg_pipeline_desc_set_stencil(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_get_color_count(object_ : PipelineDesc) -> Int32 = "mb_gfx_sg_pipeline_desc_get_color_count"

///|
pub fn PipelineDesc::color_count(self : PipelineDesc) -> Int32 {
  sg_pipeline_desc_get_color_count(self)
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_set_color_count(
  object_ : PipelineDesc,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_pipeline_desc_set_color_count"

///|
pub fn PipelineDesc::set_color_count(
  self : PipelineDesc,
  value : Int32,
) -> PipelineDesc {
  sg_pipeline_desc_set_color_count(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_get_colors(
  object_ : PipelineDesc,
  i0 : Int32,
) -> ColorTargetState = "mb_gfx_sg_pipeline_desc_get_colors"

///|
pub fn PipelineDesc::colors(
  self : PipelineDesc,
  i0 : Int32,
) -> ColorTargetState {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sg_pipeline_desc_get_colors(self, i0)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_pipeline_desc_set_colors(
  object_ : PipelineDesc,
  i0 : Int32,
  replacement : ColorTargetState,
) -> Unit = "mb_gfx_sg_pipeline_desc_set_colors"

///|
pub fn PipelineDesc::set_colors(
  self : PipelineDesc,
  i0 : Int32,
  value : ColorTargetState,
) -> PipelineDesc {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sg_pipeline_desc_set_colors(self, i0, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_get_primitive_type(
  object_ : PipelineDesc,
) -> PrimitiveType = "mb_gfx_sg_pipeline_desc_get_primitive_type"

///|
pub fn PipelineDesc::primitive_type(self : PipelineDesc) -> PrimitiveType {
  sg_pipeline_desc_get_primitive_type(self)
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_set_primitive_type(
  object_ : PipelineDesc,
  replacement : PrimitiveType,
) -> Unit = "mb_gfx_sg_pipeline_desc_set_primitive_type"

///|
pub fn PipelineDesc::set_primitive_type(
  self : PipelineDesc,
  value : PrimitiveType,
) -> PipelineDesc {
  sg_pipeline_desc_set_primitive_type(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_get_index_type(
  object_ : PipelineDesc,
) -> IndexType = "mb_gfx_sg_pipeline_desc_get_index_type"

///|
pub fn PipelineDesc::index_type(self : PipelineDesc) -> IndexType {
  sg_pipeline_desc_get_index_type(self)
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_set_index_type(
  object_ : PipelineDesc,
  replacement : IndexType,
) -> Unit = "mb_gfx_sg_pipeline_desc_set_index_type"

///|
pub fn PipelineDesc::set_index_type(
  self : PipelineDesc,
  value : IndexType,
) -> PipelineDesc {
  sg_pipeline_desc_set_index_type(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_get_cull_mode(
  object_ : PipelineDesc,
) -> CullMode = "mb_gfx_sg_pipeline_desc_get_cull_mode"

///|
pub fn PipelineDesc::cull_mode(self : PipelineDesc) -> CullMode {
  sg_pipeline_desc_get_cull_mode(self)
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_set_cull_mode(
  object_ : PipelineDesc,
  replacement : CullMode,
) -> Unit = "mb_gfx_sg_pipeline_desc_set_cull_mode"

///|
pub fn PipelineDesc::set_cull_mode(
  self : PipelineDesc,
  value : CullMode,
) -> PipelineDesc {
  sg_pipeline_desc_set_cull_mode(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_get_face_winding(
  object_ : PipelineDesc,
) -> FaceWinding = "mb_gfx_sg_pipeline_desc_get_face_winding"

///|
pub fn PipelineDesc::face_winding(self : PipelineDesc) -> FaceWinding {
  sg_pipeline_desc_get_face_winding(self)
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_set_face_winding(
  object_ : PipelineDesc,
  replacement : FaceWinding,
) -> Unit = "mb_gfx_sg_pipeline_desc_set_face_winding"

///|
pub fn PipelineDesc::set_face_winding(
  self : PipelineDesc,
  value : FaceWinding,
) -> PipelineDesc {
  sg_pipeline_desc_set_face_winding(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_get_sample_count(
  object_ : PipelineDesc,
) -> Int32 = "mb_gfx_sg_pipeline_desc_get_sample_count"

///|
pub fn PipelineDesc::sample_count(self : PipelineDesc) -> Int32 {
  sg_pipeline_desc_get_sample_count(self)
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_set_sample_count(
  object_ : PipelineDesc,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_pipeline_desc_set_sample_count"

///|
pub fn PipelineDesc::set_sample_count(
  self : PipelineDesc,
  value : Int32,
) -> PipelineDesc {
  sg_pipeline_desc_set_sample_count(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_get_blend_color(object_ : PipelineDesc) -> Color = "mb_gfx_sg_pipeline_desc_get_blend_color"

///|
pub fn PipelineDesc::blend_color(self : PipelineDesc) -> Color {
  sg_pipeline_desc_get_blend_color(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_pipeline_desc_set_blend_color(
  object_ : PipelineDesc,
  replacement : Color,
) -> Unit = "mb_gfx_sg_pipeline_desc_set_blend_color"

///|
pub fn PipelineDesc::set_blend_color(
  self : PipelineDesc,
  value : Color,
) -> PipelineDesc {
  sg_pipeline_desc_set_blend_color(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_get_alpha_to_coverage_enabled(
  object_ : PipelineDesc,
) -> Bool = "mb_gfx_sg_pipeline_desc_get_alpha_to_coverage_enabled"

///|
pub fn PipelineDesc::alpha_to_coverage_enabled(self : PipelineDesc) -> Bool {
  sg_pipeline_desc_get_alpha_to_coverage_enabled(self)
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_set_alpha_to_coverage_enabled(
  object_ : PipelineDesc,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_pipeline_desc_set_alpha_to_coverage_enabled"

///|
pub fn PipelineDesc::set_alpha_to_coverage_enabled(
  self : PipelineDesc,
  value : Bool,
) -> PipelineDesc {
  sg_pipeline_desc_set_alpha_to_coverage_enabled(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_desc_get_label(object_ : PipelineDesc) -> Bytes = "mb_gfx_sg_pipeline_desc_get_label"

///|
pub fn PipelineDesc::label(self : PipelineDesc) -> String {
  @utf8.decode_lossy(sg_pipeline_desc_get_label(self))
}

///|
#borrow(object_, replacement)
extern "c" fn sg_pipeline_desc_set_label(
  object_ : PipelineDesc,
  replacement : Bytes,
) -> Unit = "mb_gfx_sg_pipeline_desc_set_label"

///|
pub fn PipelineDesc::set_label(
  self : PipelineDesc,
  value : String,
) -> PipelineDesc {
  sg_pipeline_desc_set_label(self, @native.cstring(value))
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type PipelineInfo

///|
extern "c" fn sg_pipeline_info_new() -> PipelineInfo = "mb_gfx_sg_pipeline_info_new"

///|
pub fn PipelineInfo::new() -> PipelineInfo {
  sg_pipeline_info_new()
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_info_copy(object_ : PipelineInfo) -> PipelineInfo = "mb_gfx_sg_pipeline_info_copy"

///|
pub fn PipelineInfo::copy(self : PipelineInfo) -> PipelineInfo {
  sg_pipeline_info_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_info_native(object_ : PipelineInfo) -> @native.Handle = "mb_gfx_sg_pipeline_info_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn PipelineInfo::unsafe_native_handle(
  self : PipelineInfo,
) -> @native.Handle {
  sg_pipeline_info_native(self)
}

///|
extern "c" fn sg_pipeline_info_from_native(
  ptr : @native.Handle,
) -> PipelineInfo = "mb_gfx_sg_pipeline_info_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn PipelineInfo::unsafe_from_native(ptr : @native.Handle) -> PipelineInfo {
  sg_pipeline_info_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_pipeline_info_get_slot(object_ : PipelineInfo) -> SlotInfo = "mb_gfx_sg_pipeline_info_get_slot"

///|
pub fn PipelineInfo::slot(self : PipelineInfo) -> SlotInfo {
  sg_pipeline_info_get_slot(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_pipeline_info_set_slot(
  object_ : PipelineInfo,
  replacement : SlotInfo,
) -> Unit = "mb_gfx_sg_pipeline_info_set_slot"

///|
pub fn PipelineInfo::set_slot(
  self : PipelineInfo,
  value : SlotInfo,
) -> PipelineInfo {
  sg_pipeline_info_set_slot(self, value)
  self
}

///|
#borrow(desc)
extern "c" fn sg_make_pipeline(desc : PipelineDesc) -> UInt32 = "mb_gfx_sg_make_pipeline"

///|
pub fn make_pipeline(desc : PipelineDesc) -> Pipeline {
  Pipeline(sg_make_pipeline(desc))
}

///|
extern "c" fn sg_destroy_pipeline(pip : UInt32) -> Unit = "mb_gfx_sg_destroy_pipeline"

///|
pub fn destroy_pipeline(pip : Pipeline) -> Unit {
  sg_destroy_pipeline(pip.0)
}

///|
extern "c" fn sg_query_pipeline_state(pip : UInt32) -> ResourceState = "mb_gfx_sg_query_pipeline_state"

///|
pub fn query_pipeline_state(pip : Pipeline) -> ResourceState {
  sg_query_pipeline_state(pip.0)
}

///|
extern "c" fn sg_query_pipeline_info(pip : UInt32) -> PipelineInfo = "mb_gfx_sg_query_pipeline_info"

///|
pub fn query_pipeline_info(pip : Pipeline) -> PipelineInfo {
  sg_query_pipeline_info(pip.0)
}

///|
extern "c" fn sg_query_pipeline_desc(pip : UInt32) -> PipelineDesc = "mb_gfx_sg_query_pipeline_desc"

///|
pub fn query_pipeline_desc(pip : Pipeline) -> PipelineDesc {
  sg_query_pipeline_desc(pip.0)
}

///|
#borrow(desc)
extern "c" fn sg_query_pipeline_defaults(desc : PipelineDesc) -> PipelineDesc = "mb_gfx_sg_query_pipeline_defaults"

///|
pub fn query_pipeline_defaults(desc : PipelineDesc) -> PipelineDesc {
  sg_query_pipeline_defaults(desc)
}

///|
extern "c" fn sg_alloc_pipeline() -> UInt32 = "mb_gfx_sg_alloc_pipeline"

///|
pub fn alloc_pipeline() -> Pipeline {
  Pipeline(sg_alloc_pipeline())
}

///|
extern "c" fn sg_dealloc_pipeline(pip : UInt32) -> Unit = "mb_gfx_sg_dealloc_pipeline"

///|
pub fn dealloc_pipeline(pip : Pipeline) -> Unit {
  sg_dealloc_pipeline(pip.0)
}

///|
#borrow(desc)
extern "c" fn sg_init_pipeline(pip : UInt32, desc : PipelineDesc) -> Unit = "mb_gfx_sg_init_pipeline"

///|
pub fn init_pipeline(pip : Pipeline, desc : PipelineDesc) -> Unit {
  sg_init_pipeline(pip.0, desc)
}

///|
extern "c" fn sg_uninit_pipeline(pip : UInt32) -> Unit = "mb_gfx_sg_uninit_pipeline"

///|
pub fn uninit_pipeline(pip : Pipeline) -> Unit {
  sg_uninit_pipeline(pip.0)
}

///|
extern "c" fn sg_fail_pipeline(pip : UInt32) -> Unit = "mb_gfx_sg_fail_pipeline"

///|
pub fn fail_pipeline(pip : Pipeline) -> Unit {
  sg_fail_pipeline(pip.0)
}
