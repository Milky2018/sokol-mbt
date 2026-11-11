///|
#derive(Debug, Eq)
pub(all) enum Backend {
  Glcore = 0
  Gles3 = 1
  D3d11 = 2
  MetalIos = 3
  MetalMacos = 4
  MetalSimulator = 5
  Wgpu = 6
  Vulkan = 7
  Dummy = 8
}

///|
pub extend Backend with Eq::{equal, not_equal}

///|
pub extend Backend with @debug.Debug::{to_repr}

///|
extern "c" fn sg_backend_int(value : Backend) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn Backend::to_int(self : Backend) -> Int32 {
  sg_backend_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum PixelFormat {
  Default = 0
  None = 1
  R8 = 2
  R8sn = 3
  R8ui = 4
  R8si = 5
  R16 = 6
  R16sn = 7
  R16ui = 8
  R16si = 9
  R16f = 10
  Rg8 = 11
  Rg8sn = 12
  Rg8ui = 13
  Rg8si = 14
  R32ui = 15
  R32si = 16
  R32f = 17
  Rg16 = 18
  Rg16sn = 19
  Rg16ui = 20
  Rg16si = 21
  Rg16f = 22
  Rgba8 = 23
  Srgb8a8 = 24
  Rgba8sn = 25
  Rgba8ui = 26
  Rgba8si = 27
  Bgra8 = 28
  Sbgr8a8 = 29
  Rgb10a2 = 30
  Rg11b10f = 31
  Rgb9e5 = 32
  Rg32ui = 33
  Rg32si = 34
  Rg32f = 35
  Rgba16 = 36
  Rgba16sn = 37
  Rgba16ui = 38
  Rgba16si = 39
  Rgba16f = 40
  Rgba32ui = 41
  Rgba32si = 42
  Rgba32f = 43
  Depth = 44
  DepthStencil = 45
  Bc1Rgba = 46
  Bc2Rgba = 47
  Bc3Rgba = 48
  Bc3Srgba = 49
  Bc4R = 50
  Bc4Rsn = 51
  Bc5Rg = 52
  Bc5Rgsn = 53
  Bc6hRgbf = 54
  Bc6hRgbuf = 55
  Bc7Rgba = 56
  Bc7Srgba = 57
  Etc2Rgb8 = 58
  Etc2Srgb8 = 59
  Etc2Rgb8a1 = 60
  Etc2Rgba8 = 61
  Etc2Srgb8a8 = 62
  EacR11 = 63
  EacR11sn = 64
  EacRg11 = 65
  EacRg11sn = 66
  Astc4x4Rgba = 67
  Astc4x4Srgba = 68
}

///|
pub extend PixelFormat with Eq::{equal, not_equal}

///|
pub extend PixelFormat with @debug.Debug::{to_repr}

///|
extern "c" fn sg_pixel_format_int(value : PixelFormat) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn PixelFormat::to_int(self : PixelFormat) -> Int32 {
  sg_pixel_format_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum ResourceState {
  Initial = 0
  Alloc = 1
  Unsealed = 2
  Valid = 3
  Failed = 4
  Invalid = 5
}

///|
pub extend ResourceState with Eq::{equal, not_equal}

///|
pub extend ResourceState with @debug.Debug::{to_repr}

///|
extern "c" fn sg_resource_state_int(value : ResourceState) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn ResourceState::to_int(self : ResourceState) -> Int32 {
  sg_resource_state_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum IndexType {
  Default = 0
  None = 1
  Uint16 = 2
  Uint32 = 3
}

///|
pub extend IndexType with Eq::{equal, not_equal}

///|
pub extend IndexType with @debug.Debug::{to_repr}

///|
extern "c" fn sg_index_type_int(value : IndexType) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn IndexType::to_int(self : IndexType) -> Int32 {
  sg_index_type_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum ImageType {
  Default = 0
  V2d = 1
  Cube = 2
  V3d = 3
  Array = 4
}

///|
pub extend ImageType with Eq::{equal, not_equal}

///|
pub extend ImageType with @debug.Debug::{to_repr}

///|
extern "c" fn sg_image_type_int(value : ImageType) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn ImageType::to_int(self : ImageType) -> Int32 {
  sg_image_type_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum ImageSampleType {
  Default = 0
  Float = 1
  Depth = 2
  Sint = 3
  Uint = 4
  UnfilterableFloat = 5
}

///|
pub extend ImageSampleType with Eq::{equal, not_equal}

///|
pub extend ImageSampleType with @debug.Debug::{to_repr}

///|
extern "c" fn sg_image_sample_type_int(value : ImageSampleType) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn ImageSampleType::to_int(self : ImageSampleType) -> Int32 {
  sg_image_sample_type_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum SamplerType {
  Default = 0
  Filtering = 1
  Nonfiltering = 2
  Comparison = 3
}

///|
pub extend SamplerType with Eq::{equal, not_equal}

///|
pub extend SamplerType with @debug.Debug::{to_repr}

///|
extern "c" fn sg_sampler_type_int(value : SamplerType) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn SamplerType::to_int(self : SamplerType) -> Int32 {
  sg_sampler_type_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum PrimitiveType {
  Default = 0
  Points = 1
  Lines = 2
  LineStrip = 3
  Triangles = 4
  TriangleStrip = 5
}

///|
pub extend PrimitiveType with Eq::{equal, not_equal}

///|
pub extend PrimitiveType with @debug.Debug::{to_repr}

///|
extern "c" fn sg_primitive_type_int(value : PrimitiveType) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn PrimitiveType::to_int(self : PrimitiveType) -> Int32 {
  sg_primitive_type_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum Filter {
  Default = 0
  Nearest = 1
  Linear = 2
}

///|
pub extend Filter with Eq::{equal, not_equal}

///|
pub extend Filter with @debug.Debug::{to_repr}

///|
extern "c" fn sg_filter_int(value : Filter) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn Filter::to_int(self : Filter) -> Int32 {
  sg_filter_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum Wrap {
  Default = 0
  Repeat = 1
  ClampToEdge = 2
  ClampToBorder = 3
  MirroredRepeat = 4
}

///|
pub extend Wrap with Eq::{equal, not_equal}

///|
pub extend Wrap with @debug.Debug::{to_repr}

///|
extern "c" fn sg_wrap_int(value : Wrap) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn Wrap::to_int(self : Wrap) -> Int32 {
  sg_wrap_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum BorderColor {
  Default = 0
  TransparentBlack = 1
  OpaqueBlack = 2
  OpaqueWhite = 3
}

///|
pub extend BorderColor with Eq::{equal, not_equal}

///|
pub extend BorderColor with @debug.Debug::{to_repr}

///|
extern "c" fn sg_border_color_int(value : BorderColor) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn BorderColor::to_int(self : BorderColor) -> Int32 {
  sg_border_color_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum VertexFormat {
  Invalid = 0
  Float = 1
  Float2 = 2
  Float3 = 3
  Float4 = 4
  Int = 5
  Int2 = 6
  Int3 = 7
  Int4 = 8
  Uint = 9
  Uint2 = 10
  Uint3 = 11
  Uint4 = 12
  Byte4 = 13
  Byte4n = 14
  Ubyte4 = 15
  Ubyte4n = 16
  Short2 = 17
  Short2n = 18
  Ushort2 = 19
  Ushort2n = 20
  Short4 = 21
  Short4n = 22
  Ushort4 = 23
  Ushort4n = 24
  Int10N2 = 25
  Uint10N2 = 26
  Half2 = 27
  Half4 = 28
}

///|
pub extend VertexFormat with Eq::{equal, not_equal}

///|
pub extend VertexFormat with @debug.Debug::{to_repr}

///|
extern "c" fn sg_vertex_format_int(value : VertexFormat) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn VertexFormat::to_int(self : VertexFormat) -> Int32 {
  sg_vertex_format_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum VertexStep {
  Default = 0
  PerVertex = 1
  PerInstance = 2
}

///|
pub extend VertexStep with Eq::{equal, not_equal}

///|
pub extend VertexStep with @debug.Debug::{to_repr}

///|
extern "c" fn sg_vertex_step_int(value : VertexStep) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn VertexStep::to_int(self : VertexStep) -> Int32 {
  sg_vertex_step_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum UniformType {
  Invalid = 0
  Float = 1
  Float2 = 2
  Float3 = 3
  Float4 = 4
  Int = 5
  Int2 = 6
  Int3 = 7
  Int4 = 8
  Mat4 = 9
}

///|
pub extend UniformType with Eq::{equal, not_equal}

///|
pub extend UniformType with @debug.Debug::{to_repr}

///|
extern "c" fn sg_uniform_type_int(value : UniformType) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn UniformType::to_int(self : UniformType) -> Int32 {
  sg_uniform_type_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum UniformLayout {
  Default = 0
  Native = 1
  Std140 = 2
}

///|
pub extend UniformLayout with Eq::{equal, not_equal}

///|
pub extend UniformLayout with @debug.Debug::{to_repr}

///|
extern "c" fn sg_uniform_layout_int(value : UniformLayout) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn UniformLayout::to_int(self : UniformLayout) -> Int32 {
  sg_uniform_layout_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum CullMode {
  Default = 0
  None = 1
  Front = 2
  Back = 3
}

///|
pub extend CullMode with Eq::{equal, not_equal}

///|
pub extend CullMode with @debug.Debug::{to_repr}

///|
extern "c" fn sg_cull_mode_int(value : CullMode) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn CullMode::to_int(self : CullMode) -> Int32 {
  sg_cull_mode_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum FaceWinding {
  Default = 0
  Ccw = 1
  Cw = 2
}

///|
pub extend FaceWinding with Eq::{equal, not_equal}

///|
pub extend FaceWinding with @debug.Debug::{to_repr}

///|
extern "c" fn sg_face_winding_int(value : FaceWinding) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn FaceWinding::to_int(self : FaceWinding) -> Int32 {
  sg_face_winding_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum CompareFunc {
  Default = 0
  Never = 1
  Less = 2
  Equal = 3
  LessEqual = 4
  Greater = 5
  NotEqual = 6
  GreaterEqual = 7
  Always = 8
}

///|
pub extend CompareFunc with Eq::{equal, not_equal}

///|
pub extend CompareFunc with @debug.Debug::{to_repr}

///|
extern "c" fn sg_compare_func_int(value : CompareFunc) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn CompareFunc::to_int(self : CompareFunc) -> Int32 {
  sg_compare_func_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum StencilOp {
  Default = 0
  Keep = 1
  Zero = 2
  Replace = 3
  IncrClamp = 4
  DecrClamp = 5
  Invert = 6
  IncrWrap = 7
  DecrWrap = 8
}

///|
pub extend StencilOp with Eq::{equal, not_equal}

///|
pub extend StencilOp with @debug.Debug::{to_repr}

///|
extern "c" fn sg_stencil_op_int(value : StencilOp) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn StencilOp::to_int(self : StencilOp) -> Int32 {
  sg_stencil_op_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum BlendFactor {
  Default = 0
  Zero = 1
  One = 2
  SrcColor = 3
  OneMinusSrcColor = 4
  SrcAlpha = 5
  OneMinusSrcAlpha = 6
  DstColor = 7
  OneMinusDstColor = 8
  DstAlpha = 9
  OneMinusDstAlpha = 10
  SrcAlphaSaturated = 11
  BlendColor = 12
  OneMinusBlendColor = 13
  BlendAlpha = 14
  OneMinusBlendAlpha = 15
  Src1Color = 16
  OneMinusSrc1Color = 17
  Src1Alpha = 18
  OneMinusSrc1Alpha = 19
}

///|
pub extend BlendFactor with Eq::{equal, not_equal}

///|
pub extend BlendFactor with @debug.Debug::{to_repr}

///|
extern "c" fn sg_blend_factor_int(value : BlendFactor) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn BlendFactor::to_int(self : BlendFactor) -> Int32 {
  sg_blend_factor_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum BlendOp {
  Default = 0
  Add = 1
  Subtract = 2
  ReverseSubtract = 3
  Min = 4
  Max = 5
}

///|
pub extend BlendOp with Eq::{equal, not_equal}

///|
pub extend BlendOp with @debug.Debug::{to_repr}

///|
extern "c" fn sg_blend_op_int(value : BlendOp) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn BlendOp::to_int(self : BlendOp) -> Int32 {
  sg_blend_op_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum ColorMask {
  Default = 0
  None = 16
  R = 1
  G = 2
  Rg = 3
  B = 4
  Rb = 5
  Gb = 6
  Rgb = 7
  A = 8
  Ra = 9
  Ga = 10
  Rga = 11
  Ba = 12
  Rba = 13
  Gba = 14
  Rgba = 15
}

///|
pub extend ColorMask with Eq::{equal, not_equal}

///|
pub extend ColorMask with @debug.Debug::{to_repr}

///|
extern "c" fn sg_color_mask_int(value : ColorMask) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn ColorMask::to_int(self : ColorMask) -> Int32 {
  sg_color_mask_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum LoadAction {
  Default = 0
  Clear = 1
  Load = 2
  Dontcare = 3
}

///|
pub extend LoadAction with Eq::{equal, not_equal}

///|
pub extend LoadAction with @debug.Debug::{to_repr}

///|
extern "c" fn sg_load_action_int(value : LoadAction) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn LoadAction::to_int(self : LoadAction) -> Int32 {
  sg_load_action_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum StoreAction {
  Default = 0
  Store = 1
  Dontcare = 2
}

///|
pub extend StoreAction with Eq::{equal, not_equal}

///|
pub extend StoreAction with @debug.Debug::{to_repr}

///|
extern "c" fn sg_store_action_int(value : StoreAction) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn StoreAction::to_int(self : StoreAction) -> Int32 {
  sg_store_action_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum PassState {
  None = 0
  Render = 1
  Compute = 2
}

///|
pub extend PassState with Eq::{equal, not_equal}

///|
pub extend PassState with @debug.Debug::{to_repr}

///|
extern "c" fn sg_pass_state_int(value : PassState) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn PassState::to_int(self : PassState) -> Int32 {
  sg_pass_state_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum ViewType {
  Invalid = 0
  Storagebuffer = 1
  Storageimage = 2
  Texture = 3
  Colorattachment = 4
  Resolveattachment = 5
  Depthstencilattachment = 6
}

///|
pub extend ViewType with Eq::{equal, not_equal}

///|
pub extend ViewType with @debug.Debug::{to_repr}

///|
extern "c" fn sg_view_type_int(value : ViewType) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn ViewType::to_int(self : ViewType) -> Int32 {
  sg_view_type_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum ShaderStage {
  None = 0
  Vertex = 1
  Fragment = 2
  Compute = 3
}

///|
pub extend ShaderStage with Eq::{equal, not_equal}

///|
pub extend ShaderStage with @debug.Debug::{to_repr}

///|
extern "c" fn sg_shader_stage_int(value : ShaderStage) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn ShaderStage::to_int(self : ShaderStage) -> Int32 {
  sg_shader_stage_int(self)
}

///|
#derive(Debug, Eq)
pub(all) enum ShaderAttrBaseType {
  Undefined = 0
  Float = 1
  Sint = 2
  Uint = 3
}

///|
pub extend ShaderAttrBaseType with Eq::{equal, not_equal}

///|
pub extend ShaderAttrBaseType with @debug.Debug::{to_repr}

///|
extern "c" fn sg_shader_attr_base_type_int(value : ShaderAttrBaseType) -> Int32 = "mb_sokol_enum_identity"

///|
pub fn ShaderAttrBaseType::to_int(self : ShaderAttrBaseType) -> Int32 {
  sg_shader_attr_base_type_int(self)
}
