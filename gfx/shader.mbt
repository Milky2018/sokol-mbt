///|
/// Non-owning Sokol ID; copying this value does not allocate a C object.
#derive(Debug, Eq)
pub struct Shader(UInt32)

///|
pub extend Shader with Eq::{equal, not_equal}

///|
pub extend Shader with @debug.Debug::{to_repr}

///|
pub fn Shader::new() -> Shader {
  Shader(0U)
}

///|
pub fn Shader::id(self : Shader) -> UInt32 {
  self.0
}

///|
pub fn Shader::from_id(id : UInt32) -> Shader {
  Shader(id)
}

///|
extern "c" fn sg_shader_read_id(ptr : @native.Handle) -> UInt32 = "mb_gfx_sg_shader_read_id"

///|
/// The pointer must identify a live `sg_shader`.
pub fn Shader::unsafe_from_native(ptr : @native.Handle) -> Shader {
  Shader(sg_shader_read_id(ptr))
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ShaderFunction

///|
extern "c" fn sg_shader_function_new() -> ShaderFunction = "mb_gfx_sg_shader_function_new"

///|
pub fn ShaderFunction::new() -> ShaderFunction {
  sg_shader_function_new()
}

///|
#borrow(object_)
extern "c" fn sg_shader_function_copy(
  object_ : ShaderFunction,
) -> ShaderFunction = "mb_gfx_sg_shader_function_copy"

///|
pub fn ShaderFunction::copy(self : ShaderFunction) -> ShaderFunction {
  sg_shader_function_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_shader_function_native(
  object_ : ShaderFunction,
) -> @native.Handle = "mb_gfx_sg_shader_function_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ShaderFunction::unsafe_native_handle(
  self : ShaderFunction,
) -> @native.Handle {
  sg_shader_function_native(self)
}

///|
extern "c" fn sg_shader_function_from_native(
  ptr : @native.Handle,
) -> ShaderFunction = "mb_gfx_sg_shader_function_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ShaderFunction::unsafe_from_native(
  ptr : @native.Handle,
) -> ShaderFunction {
  sg_shader_function_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_shader_function_get_source(object_ : ShaderFunction) -> Bytes = "mb_gfx_sg_shader_function_get_source"

///|
pub fn ShaderFunction::source(self : ShaderFunction) -> String {
  @utf8.decode_lossy(sg_shader_function_get_source(self))
}

///|
#borrow(object_, replacement)
extern "c" fn sg_shader_function_set_source(
  object_ : ShaderFunction,
  replacement : Bytes,
) -> Unit = "mb_gfx_sg_shader_function_set_source"

///|
pub fn ShaderFunction::set_source(
  self : ShaderFunction,
  value : String,
) -> ShaderFunction {
  sg_shader_function_set_source(self, @native.cstring(value))
  self
}

///|
#borrow(object_)
extern "c" fn sg_shader_function_get_bytecode(
  object_ : ShaderFunction,
) -> Range = "mb_gfx_sg_shader_function_get_bytecode"

///|
pub fn ShaderFunction::bytecode(self : ShaderFunction) -> Range {
  sg_shader_function_get_bytecode(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_shader_function_set_bytecode(
  object_ : ShaderFunction,
  replacement : Range,
) -> Unit = "mb_gfx_sg_shader_function_set_bytecode"

///|
pub fn ShaderFunction::set_bytecode(
  self : ShaderFunction,
  value : Range,
) -> ShaderFunction {
  sg_shader_function_set_bytecode(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_shader_function_get_entry(object_ : ShaderFunction) -> Bytes = "mb_gfx_sg_shader_function_get_entry"

///|
pub fn ShaderFunction::entry(self : ShaderFunction) -> String {
  @utf8.decode_lossy(sg_shader_function_get_entry(self))
}

///|
#borrow(object_, replacement)
extern "c" fn sg_shader_function_set_entry(
  object_ : ShaderFunction,
  replacement : Bytes,
) -> Unit = "mb_gfx_sg_shader_function_set_entry"

///|
pub fn ShaderFunction::set_entry(
  self : ShaderFunction,
  value : String,
) -> ShaderFunction {
  sg_shader_function_set_entry(self, @native.cstring(value))
  self
}

///|
#borrow(object_)
extern "c" fn sg_shader_function_get_d3d11_target(
  object_ : ShaderFunction,
) -> Bytes = "mb_gfx_sg_shader_function_get_d3d11_target"

///|
pub fn ShaderFunction::d3d11_target(self : ShaderFunction) -> String {
  @utf8.decode_lossy(sg_shader_function_get_d3d11_target(self))
}

///|
#borrow(object_, replacement)
extern "c" fn sg_shader_function_set_d3d11_target(
  object_ : ShaderFunction,
  replacement : Bytes,
) -> Unit = "mb_gfx_sg_shader_function_set_d3d11_target"

///|
pub fn ShaderFunction::set_d3d11_target(
  self : ShaderFunction,
  value : String,
) -> ShaderFunction {
  sg_shader_function_set_d3d11_target(self, @native.cstring(value))
  self
}

///|
#borrow(object_)
extern "c" fn sg_shader_function_get_d3d11_filepath(
  object_ : ShaderFunction,
) -> Bytes = "mb_gfx_sg_shader_function_get_d3d11_filepath"

///|
pub fn ShaderFunction::d3d11_filepath(self : ShaderFunction) -> String {
  @utf8.decode_lossy(sg_shader_function_get_d3d11_filepath(self))
}

///|
#borrow(object_, replacement)
extern "c" fn sg_shader_function_set_d3d11_filepath(
  object_ : ShaderFunction,
  replacement : Bytes,
) -> Unit = "mb_gfx_sg_shader_function_set_d3d11_filepath"

///|
pub fn ShaderFunction::set_d3d11_filepath(
  self : ShaderFunction,
  value : String,
) -> ShaderFunction {
  sg_shader_function_set_d3d11_filepath(self, @native.cstring(value))
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ShaderDesc

///|
extern "c" fn sg_shader_desc_new() -> ShaderDesc = "mb_gfx_sg_shader_desc_new"

///|
pub fn ShaderDesc::new() -> ShaderDesc {
  sg_shader_desc_new()
}

///|
#borrow(object_)
extern "c" fn sg_shader_desc_copy(object_ : ShaderDesc) -> ShaderDesc = "mb_gfx_sg_shader_desc_copy"

///|
pub fn ShaderDesc::copy(self : ShaderDesc) -> ShaderDesc {
  sg_shader_desc_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_shader_desc_native(object_ : ShaderDesc) -> @native.Handle = "mb_gfx_sg_shader_desc_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ShaderDesc::unsafe_native_handle(self : ShaderDesc) -> @native.Handle {
  sg_shader_desc_native(self)
}

///|
extern "c" fn sg_shader_desc_from_native(ptr : @native.Handle) -> ShaderDesc = "mb_gfx_sg_shader_desc_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ShaderDesc::unsafe_from_native(ptr : @native.Handle) -> ShaderDesc {
  sg_shader_desc_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_shader_desc_get_vertex_func(
  object_ : ShaderDesc,
) -> ShaderFunction = "mb_gfx_sg_shader_desc_get_vertex_func"

///|
pub fn ShaderDesc::vertex_func(self : ShaderDesc) -> ShaderFunction {
  sg_shader_desc_get_vertex_func(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_shader_desc_set_vertex_func(
  object_ : ShaderDesc,
  replacement : ShaderFunction,
) -> Unit = "mb_gfx_sg_shader_desc_set_vertex_func"

///|
pub fn ShaderDesc::set_vertex_func(
  self : ShaderDesc,
  value : ShaderFunction,
) -> ShaderDesc {
  sg_shader_desc_set_vertex_func(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_shader_desc_get_fragment_func(
  object_ : ShaderDesc,
) -> ShaderFunction = "mb_gfx_sg_shader_desc_get_fragment_func"

///|
pub fn ShaderDesc::fragment_func(self : ShaderDesc) -> ShaderFunction {
  sg_shader_desc_get_fragment_func(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_shader_desc_set_fragment_func(
  object_ : ShaderDesc,
  replacement : ShaderFunction,
) -> Unit = "mb_gfx_sg_shader_desc_set_fragment_func"

///|
pub fn ShaderDesc::set_fragment_func(
  self : ShaderDesc,
  value : ShaderFunction,
) -> ShaderDesc {
  sg_shader_desc_set_fragment_func(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_shader_desc_get_compute_func(
  object_ : ShaderDesc,
) -> ShaderFunction = "mb_gfx_sg_shader_desc_get_compute_func"

///|
pub fn ShaderDesc::compute_func(self : ShaderDesc) -> ShaderFunction {
  sg_shader_desc_get_compute_func(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_shader_desc_set_compute_func(
  object_ : ShaderDesc,
  replacement : ShaderFunction,
) -> Unit = "mb_gfx_sg_shader_desc_set_compute_func"

///|
pub fn ShaderDesc::set_compute_func(
  self : ShaderDesc,
  value : ShaderFunction,
) -> ShaderDesc {
  sg_shader_desc_set_compute_func(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_shader_desc_get_attrs(
  object_ : ShaderDesc,
  i0 : Int32,
) -> ShaderVertexAttr = "mb_gfx_sg_shader_desc_get_attrs"

///|
pub fn ShaderDesc::attrs(self : ShaderDesc, i0 : Int32) -> ShaderVertexAttr {
  guard i0 >= 0 && i0 < 16 else {
    abort("descriptor array index out of bounds")
  }
  sg_shader_desc_get_attrs(self, i0)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_shader_desc_set_attrs(
  object_ : ShaderDesc,
  i0 : Int32,
  replacement : ShaderVertexAttr,
) -> Unit = "mb_gfx_sg_shader_desc_set_attrs"

///|
pub fn ShaderDesc::set_attrs(
  self : ShaderDesc,
  i0 : Int32,
  value : ShaderVertexAttr,
) -> ShaderDesc {
  guard i0 >= 0 && i0 < 16 else {
    abort("descriptor array index out of bounds")
  }
  sg_shader_desc_set_attrs(self, i0, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_shader_desc_get_uniform_blocks(
  object_ : ShaderDesc,
  i0 : Int32,
) -> ShaderUniformBlock = "mb_gfx_sg_shader_desc_get_uniform_blocks"

///|
pub fn ShaderDesc::uniform_blocks(
  self : ShaderDesc,
  i0 : Int32,
) -> ShaderUniformBlock {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sg_shader_desc_get_uniform_blocks(self, i0)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_shader_desc_set_uniform_blocks(
  object_ : ShaderDesc,
  i0 : Int32,
  replacement : ShaderUniformBlock,
) -> Unit = "mb_gfx_sg_shader_desc_set_uniform_blocks"

///|
pub fn ShaderDesc::set_uniform_blocks(
  self : ShaderDesc,
  i0 : Int32,
  value : ShaderUniformBlock,
) -> ShaderDesc {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sg_shader_desc_set_uniform_blocks(self, i0, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_shader_desc_get_views(
  object_ : ShaderDesc,
  i0 : Int32,
) -> ShaderView = "mb_gfx_sg_shader_desc_get_views"

///|
pub fn ShaderDesc::views(self : ShaderDesc, i0 : Int32) -> ShaderView {
  guard i0 >= 0 && i0 < 32 else {
    abort("descriptor array index out of bounds")
  }
  sg_shader_desc_get_views(self, i0)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_shader_desc_set_views(
  object_ : ShaderDesc,
  i0 : Int32,
  replacement : ShaderView,
) -> Unit = "mb_gfx_sg_shader_desc_set_views"

///|
pub fn ShaderDesc::set_views(
  self : ShaderDesc,
  i0 : Int32,
  value : ShaderView,
) -> ShaderDesc {
  guard i0 >= 0 && i0 < 32 else {
    abort("descriptor array index out of bounds")
  }
  sg_shader_desc_set_views(self, i0, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_shader_desc_get_samplers(
  object_ : ShaderDesc,
  i0 : Int32,
) -> ShaderSampler = "mb_gfx_sg_shader_desc_get_samplers"

///|
pub fn ShaderDesc::samplers(self : ShaderDesc, i0 : Int32) -> ShaderSampler {
  guard i0 >= 0 && i0 < 14 else {
    abort("descriptor array index out of bounds")
  }
  sg_shader_desc_get_samplers(self, i0)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_shader_desc_set_samplers(
  object_ : ShaderDesc,
  i0 : Int32,
  replacement : ShaderSampler,
) -> Unit = "mb_gfx_sg_shader_desc_set_samplers"

///|
pub fn ShaderDesc::set_samplers(
  self : ShaderDesc,
  i0 : Int32,
  value : ShaderSampler,
) -> ShaderDesc {
  guard i0 >= 0 && i0 < 14 else {
    abort("descriptor array index out of bounds")
  }
  sg_shader_desc_set_samplers(self, i0, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_shader_desc_get_texture_sampler_pairs(
  object_ : ShaderDesc,
  i0 : Int32,
) -> ShaderTextureSamplerPair = "mb_gfx_sg_shader_desc_get_texture_sampler_pairs"

///|
pub fn ShaderDesc::texture_sampler_pairs(
  self : ShaderDesc,
  i0 : Int32,
) -> ShaderTextureSamplerPair {
  guard i0 >= 0 && i0 < 32 else {
    abort("descriptor array index out of bounds")
  }
  sg_shader_desc_get_texture_sampler_pairs(self, i0)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_shader_desc_set_texture_sampler_pairs(
  object_ : ShaderDesc,
  i0 : Int32,
  replacement : ShaderTextureSamplerPair,
) -> Unit = "mb_gfx_sg_shader_desc_set_texture_sampler_pairs"

///|
pub fn ShaderDesc::set_texture_sampler_pairs(
  self : ShaderDesc,
  i0 : Int32,
  value : ShaderTextureSamplerPair,
) -> ShaderDesc {
  guard i0 >= 0 && i0 < 32 else {
    abort("descriptor array index out of bounds")
  }
  sg_shader_desc_set_texture_sampler_pairs(self, i0, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_shader_desc_get_mtl_threads_per_threadgroup(
  object_ : ShaderDesc,
) -> MtlShaderThreadsPerThreadgroup = "mb_gfx_sg_shader_desc_get_mtl_threads_per_threadgroup"

///|
pub fn ShaderDesc::mtl_threads_per_threadgroup(
  self : ShaderDesc,
) -> MtlShaderThreadsPerThreadgroup {
  sg_shader_desc_get_mtl_threads_per_threadgroup(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_shader_desc_set_mtl_threads_per_threadgroup(
  object_ : ShaderDesc,
  replacement : MtlShaderThreadsPerThreadgroup,
) -> Unit = "mb_gfx_sg_shader_desc_set_mtl_threads_per_threadgroup"

///|
pub fn ShaderDesc::set_mtl_threads_per_threadgroup(
  self : ShaderDesc,
  value : MtlShaderThreadsPerThreadgroup,
) -> ShaderDesc {
  sg_shader_desc_set_mtl_threads_per_threadgroup(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_shader_desc_get_label(object_ : ShaderDesc) -> Bytes = "mb_gfx_sg_shader_desc_get_label"

///|
pub fn ShaderDesc::label(self : ShaderDesc) -> String {
  @utf8.decode_lossy(sg_shader_desc_get_label(self))
}

///|
#borrow(object_, replacement)
extern "c" fn sg_shader_desc_set_label(
  object_ : ShaderDesc,
  replacement : Bytes,
) -> Unit = "mb_gfx_sg_shader_desc_set_label"

///|
pub fn ShaderDesc::set_label(self : ShaderDesc, value : String) -> ShaderDesc {
  sg_shader_desc_set_label(self, @native.cstring(value))
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ShaderInfo

///|
extern "c" fn sg_shader_info_new() -> ShaderInfo = "mb_gfx_sg_shader_info_new"

///|
pub fn ShaderInfo::new() -> ShaderInfo {
  sg_shader_info_new()
}

///|
#borrow(object_)
extern "c" fn sg_shader_info_copy(object_ : ShaderInfo) -> ShaderInfo = "mb_gfx_sg_shader_info_copy"

///|
pub fn ShaderInfo::copy(self : ShaderInfo) -> ShaderInfo {
  sg_shader_info_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_shader_info_native(object_ : ShaderInfo) -> @native.Handle = "mb_gfx_sg_shader_info_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ShaderInfo::unsafe_native_handle(self : ShaderInfo) -> @native.Handle {
  sg_shader_info_native(self)
}

///|
extern "c" fn sg_shader_info_from_native(ptr : @native.Handle) -> ShaderInfo = "mb_gfx_sg_shader_info_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ShaderInfo::unsafe_from_native(ptr : @native.Handle) -> ShaderInfo {
  sg_shader_info_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_shader_info_get_slot(object_ : ShaderInfo) -> SlotInfo = "mb_gfx_sg_shader_info_get_slot"

///|
pub fn ShaderInfo::slot(self : ShaderInfo) -> SlotInfo {
  sg_shader_info_get_slot(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_shader_info_set_slot(
  object_ : ShaderInfo,
  replacement : SlotInfo,
) -> Unit = "mb_gfx_sg_shader_info_set_slot"

///|
pub fn ShaderInfo::set_slot(self : ShaderInfo, value : SlotInfo) -> ShaderInfo {
  sg_shader_info_set_slot(self, value)
  self
}

///|
#borrow(desc)
extern "c" fn sg_make_shader(desc : ShaderDesc) -> UInt32 = "mb_gfx_sg_make_shader"

///|
pub fn make_shader(desc : ShaderDesc) -> Shader {
  Shader(sg_make_shader(desc))
}

///|
extern "c" fn sg_destroy_shader(shd : UInt32) -> Unit = "mb_gfx_sg_destroy_shader"

///|
pub fn destroy_shader(shd : Shader) -> Unit {
  sg_destroy_shader(shd.0)
}

///|
extern "c" fn sg_query_shader_state(shd : UInt32) -> ResourceState = "mb_gfx_sg_query_shader_state"

///|
pub fn query_shader_state(shd : Shader) -> ResourceState {
  sg_query_shader_state(shd.0)
}

///|
extern "c" fn sg_query_shader_info(shd : UInt32) -> ShaderInfo = "mb_gfx_sg_query_shader_info"

///|
pub fn query_shader_info(shd : Shader) -> ShaderInfo {
  sg_query_shader_info(shd.0)
}

///|
extern "c" fn sg_query_shader_desc(shd : UInt32) -> ShaderDesc = "mb_gfx_sg_query_shader_desc"

///|
pub fn query_shader_desc(shd : Shader) -> ShaderDesc {
  sg_query_shader_desc(shd.0)
}

///|
#borrow(desc)
extern "c" fn sg_query_shader_defaults(desc : ShaderDesc) -> ShaderDesc = "mb_gfx_sg_query_shader_defaults"

///|
pub fn query_shader_defaults(desc : ShaderDesc) -> ShaderDesc {
  sg_query_shader_defaults(desc)
}

///|
extern "c" fn sg_alloc_shader() -> UInt32 = "mb_gfx_sg_alloc_shader"

///|
pub fn alloc_shader() -> Shader {
  Shader(sg_alloc_shader())
}

///|
extern "c" fn sg_dealloc_shader(shd : UInt32) -> Unit = "mb_gfx_sg_dealloc_shader"

///|
pub fn dealloc_shader(shd : Shader) -> Unit {
  sg_dealloc_shader(shd.0)
}

///|
#borrow(desc)
extern "c" fn sg_init_shader(shd : UInt32, desc : ShaderDesc) -> Unit = "mb_gfx_sg_init_shader"

///|
pub fn init_shader(shd : Shader, desc : ShaderDesc) -> Unit {
  sg_init_shader(shd.0, desc)
}

///|
extern "c" fn sg_uninit_shader(shd : UInt32) -> Unit = "mb_gfx_sg_uninit_shader"

///|
pub fn uninit_shader(shd : Shader) -> Unit {
  sg_uninit_shader(shd.0)
}

///|
extern "c" fn sg_fail_shader(shd : UInt32) -> Unit = "mb_gfx_sg_fail_shader"

///|
pub fn fail_shader(shd : Shader) -> Unit {
  sg_fail_shader(shd.0)
}
