// C API declarations and field adapters maintained by scripts/generate.py.

///|
/// Non-owning Sokol ID; copying this value does not allocate a C object.
#derive(Debug, Eq)
pub struct Buffer(UInt32)

///|
pub extend Buffer with Eq::{equal, not_equal}

///|
pub extend Buffer with @debug.Debug::{to_repr}

///|
pub fn Buffer::new() -> Buffer {
  Buffer(0U)
}

///|
pub fn Buffer::id(self : Buffer) -> UInt32 {
  self.0
}

///|
pub fn Buffer::from_id(id : UInt32) -> Buffer {
  Buffer(id)
}

///|
/// The pointer must identify a live `sg_buffer`.
pub fn Buffer::unsafe_from_native(ptr : @native.Handle) -> Buffer {
  Buffer(sg_buffer_read_id(ptr))
}

///|
/// Non-owning Sokol ID; copying this value does not allocate a C object.
#derive(Debug, Eq)
pub struct Image(UInt32)

///|
pub extend Image with Eq::{equal, not_equal}

///|
pub extend Image with @debug.Debug::{to_repr}

///|
pub fn Image::new() -> Image {
  Image(0U)
}

///|
pub fn Image::id(self : Image) -> UInt32 {
  self.0
}

///|
pub fn Image::from_id(id : UInt32) -> Image {
  Image(id)
}

///|
/// The pointer must identify a live `sg_image`.
pub fn Image::unsafe_from_native(ptr : @native.Handle) -> Image {
  Image(sg_image_read_id(ptr))
}

///|
/// Non-owning Sokol ID; copying this value does not allocate a C object.
#derive(Debug, Eq)
pub struct Sampler(UInt32)

///|
pub extend Sampler with Eq::{equal, not_equal}

///|
pub extend Sampler with @debug.Debug::{to_repr}

///|
pub fn Sampler::new() -> Sampler {
  Sampler(0U)
}

///|
pub fn Sampler::id(self : Sampler) -> UInt32 {
  self.0
}

///|
pub fn Sampler::from_id(id : UInt32) -> Sampler {
  Sampler(id)
}

///|
/// The pointer must identify a live `sg_sampler`.
pub fn Sampler::unsafe_from_native(ptr : @native.Handle) -> Sampler {
  Sampler(sg_sampler_read_id(ptr))
}

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
/// The pointer must identify a live `sg_shader`.
pub fn Shader::unsafe_from_native(ptr : @native.Handle) -> Shader {
  Shader(sg_shader_read_id(ptr))
}

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
/// The pointer must identify a live `sg_pipeline`.
pub fn Pipeline::unsafe_from_native(ptr : @native.Handle) -> Pipeline {
  Pipeline(sg_pipeline_read_id(ptr))
}

///|
/// Non-owning Sokol ID; copying this value does not allocate a C object.
#derive(Debug, Eq)
pub struct View(UInt32)

///|
pub extend View with Eq::{equal, not_equal}

///|
pub extend View with @debug.Debug::{to_repr}

///|
pub fn View::new() -> View {
  View(0U)
}

///|
pub fn View::id(self : View) -> UInt32 {
  self.0
}

///|
pub fn View::from_id(id : UInt32) -> View {
  View(id)
}

///|
/// The pointer must identify a live `sg_view`.
pub fn View::unsafe_from_native(ptr : @native.Handle) -> View {
  View(sg_view_read_id(ptr))
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Range

///|
pub fn Range::new() -> Range {
  sg_range_new()
}

///|
pub fn Range::copy(self : Range) -> Range {
  sg_range_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Range::unsafe_native_handle(self : Range) -> @native.Handle {
  sg_range_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Range::unsafe_from_native(ptr : @native.Handle) -> Range {
  sg_range_from_native(ptr)
}

///|
pub fn Range::bytes(self : Range) -> Bytes {
  sg_range_bytes(self)
}

///|
pub fn Range::from_bytes(data : Bytes) -> Range {
  sg_range_data(data)
}

///|
pub fn Range::size(self : Range) -> UInt64 {
  sg_range_get_size(self)
}

///|
pub const INVALID_ID : Int32 = 0

///|
pub const NUM_INFLIGHT_FRAMES : Int32 = 2

///|
pub const MAX_COLOR_ATTACHMENTS : Int32 = 8

///|
pub const MAX_UNIFORMBLOCK_MEMBERS : Int32 = 16

///|
pub const MAX_VERTEX_ATTRIBUTES : Int32 = 16

///|
pub const MAX_VERTEXBUFFER_BINDSLOTS : Int32 = 8

///|
pub const MAX_UNIFORMBLOCK_BINDSLOTS : Int32 = 8

///|
pub const MAX_VIEW_BINDSLOTS : Int32 = 32

///|
pub const MAX_SAMPLER_BINDSLOTS : Int32 = 14

///|
pub const MAX_TEXTURE_SAMPLER_PAIRS : Int32 = 32

///|
pub const MAX_PORTABLE_COLOR_ATTACHMENTS : Int32 = 4

///|
pub const MAX_PORTABLE_TEXTURE_BINDINGS_PER_STAGE : Int32 = 16

///|
pub const MAX_PORTABLE_STORAGEBUFFER_BINDINGS_PER_STAGE : Int32 = 8

///|
pub const MAX_PORTABLE_STORAGEIMAGE_BINDINGS_PER_STAGE : Int32 = 4

///|
/// Owned C value. copy() creates an independent copy.
pub type Color

///|
pub fn Color::new() -> Color {
  sg_color_new()
}

///|
pub fn Color::copy(self : Color) -> Color {
  sg_color_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Color::unsafe_native_handle(self : Color) -> @native.Handle {
  sg_color_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Color::unsafe_from_native(ptr : @native.Handle) -> Color {
  sg_color_from_native(ptr)
}

///|
pub fn Color::r(self : Color) -> Float {
  sg_color_get_r(self)
}

///|
pub fn Color::set_r(self : Color, value : Float) -> Color {
  sg_color_set_r(self, value)
  self
}

///|
pub fn Color::g(self : Color) -> Float {
  sg_color_get_g(self)
}

///|
pub fn Color::set_g(self : Color, value : Float) -> Color {
  sg_color_set_g(self, value)
  self
}

///|
pub fn Color::b(self : Color) -> Float {
  sg_color_get_b(self)
}

///|
pub fn Color::set_b(self : Color, value : Float) -> Color {
  sg_color_set_b(self, value)
  self
}

///|
pub fn Color::a(self : Color) -> Float {
  sg_color_get_a(self)
}

///|
pub fn Color::set_a(self : Color, value : Float) -> Color {
  sg_color_set_a(self, value)
  self
}

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
pub fn PixelFormat::to_int(self : PixelFormat) -> Int32 {
  sg_pixel_format_int(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type PixelformatInfo

///|
pub fn PixelformatInfo::new() -> PixelformatInfo {
  sg_pixelformat_info_new()
}

///|
pub fn PixelformatInfo::copy(self : PixelformatInfo) -> PixelformatInfo {
  sg_pixelformat_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn PixelformatInfo::unsafe_native_handle(
  self : PixelformatInfo,
) -> @native.Handle {
  sg_pixelformat_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn PixelformatInfo::unsafe_from_native(
  ptr : @native.Handle,
) -> PixelformatInfo {
  sg_pixelformat_info_from_native(ptr)
}

///|
pub fn PixelformatInfo::sample(self : PixelformatInfo) -> Bool {
  sg_pixelformat_info_get_sample(self)
}

///|
pub fn PixelformatInfo::set_sample(
  self : PixelformatInfo,
  value : Bool,
) -> PixelformatInfo {
  sg_pixelformat_info_set_sample(self, value)
  self
}

///|
pub fn PixelformatInfo::filter(self : PixelformatInfo) -> Bool {
  sg_pixelformat_info_get_filter(self)
}

///|
pub fn PixelformatInfo::set_filter(
  self : PixelformatInfo,
  value : Bool,
) -> PixelformatInfo {
  sg_pixelformat_info_set_filter(self, value)
  self
}

///|
pub fn PixelformatInfo::render(self : PixelformatInfo) -> Bool {
  sg_pixelformat_info_get_render(self)
}

///|
pub fn PixelformatInfo::set_render(
  self : PixelformatInfo,
  value : Bool,
) -> PixelformatInfo {
  sg_pixelformat_info_set_render(self, value)
  self
}

///|
pub fn PixelformatInfo::blend(self : PixelformatInfo) -> Bool {
  sg_pixelformat_info_get_blend(self)
}

///|
pub fn PixelformatInfo::set_blend(
  self : PixelformatInfo,
  value : Bool,
) -> PixelformatInfo {
  sg_pixelformat_info_set_blend(self, value)
  self
}

///|
pub fn PixelformatInfo::msaa(self : PixelformatInfo) -> Bool {
  sg_pixelformat_info_get_msaa(self)
}

///|
pub fn PixelformatInfo::set_msaa(
  self : PixelformatInfo,
  value : Bool,
) -> PixelformatInfo {
  sg_pixelformat_info_set_msaa(self, value)
  self
}

///|
pub fn PixelformatInfo::depth(self : PixelformatInfo) -> Bool {
  sg_pixelformat_info_get_depth(self)
}

///|
pub fn PixelformatInfo::set_depth(
  self : PixelformatInfo,
  value : Bool,
) -> PixelformatInfo {
  sg_pixelformat_info_set_depth(self, value)
  self
}

///|
pub fn PixelformatInfo::compressed(self : PixelformatInfo) -> Bool {
  sg_pixelformat_info_get_compressed(self)
}

///|
pub fn PixelformatInfo::set_compressed(
  self : PixelformatInfo,
  value : Bool,
) -> PixelformatInfo {
  sg_pixelformat_info_set_compressed(self, value)
  self
}

///|
pub fn PixelformatInfo::read(self : PixelformatInfo) -> Bool {
  sg_pixelformat_info_get_read(self)
}

///|
pub fn PixelformatInfo::set_read(
  self : PixelformatInfo,
  value : Bool,
) -> PixelformatInfo {
  sg_pixelformat_info_set_read(self, value)
  self
}

///|
pub fn PixelformatInfo::write(self : PixelformatInfo) -> Bool {
  sg_pixelformat_info_get_write(self)
}

///|
pub fn PixelformatInfo::set_write(
  self : PixelformatInfo,
  value : Bool,
) -> PixelformatInfo {
  sg_pixelformat_info_set_write(self, value)
  self
}

///|
pub fn PixelformatInfo::bytes_per_pixel(self : PixelformatInfo) -> Int32 {
  sg_pixelformat_info_get_bytes_per_pixel(self)
}

///|
pub fn PixelformatInfo::set_bytes_per_pixel(
  self : PixelformatInfo,
  value : Int32,
) -> PixelformatInfo {
  sg_pixelformat_info_set_bytes_per_pixel(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Features

///|
pub fn Features::new() -> Features {
  sg_features_new()
}

///|
pub fn Features::copy(self : Features) -> Features {
  sg_features_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Features::unsafe_native_handle(self : Features) -> @native.Handle {
  sg_features_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Features::unsafe_from_native(ptr : @native.Handle) -> Features {
  sg_features_from_native(ptr)
}

///|
pub fn Features::origin_top_left(self : Features) -> Bool {
  sg_features_get_origin_top_left(self)
}

///|
pub fn Features::set_origin_top_left(self : Features, value : Bool) -> Features {
  sg_features_set_origin_top_left(self, value)
  self
}

///|
pub fn Features::image_clamp_to_border(self : Features) -> Bool {
  sg_features_get_image_clamp_to_border(self)
}

///|
pub fn Features::set_image_clamp_to_border(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_image_clamp_to_border(self, value)
  self
}

///|
pub fn Features::mrt_independent_blend_state(self : Features) -> Bool {
  sg_features_get_mrt_independent_blend_state(self)
}

///|
pub fn Features::set_mrt_independent_blend_state(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_mrt_independent_blend_state(self, value)
  self
}

///|
pub fn Features::mrt_independent_write_mask(self : Features) -> Bool {
  sg_features_get_mrt_independent_write_mask(self)
}

///|
pub fn Features::set_mrt_independent_write_mask(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_mrt_independent_write_mask(self, value)
  self
}

///|
pub fn Features::compute(self : Features) -> Bool {
  sg_features_get_compute(self)
}

///|
pub fn Features::set_compute(self : Features, value : Bool) -> Features {
  sg_features_set_compute(self, value)
  self
}

///|
pub fn Features::msaa_texture_bindings(self : Features) -> Bool {
  sg_features_get_msaa_texture_bindings(self)
}

///|
pub fn Features::set_msaa_texture_bindings(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_msaa_texture_bindings(self, value)
  self
}

///|
pub fn Features::separate_buffer_types(self : Features) -> Bool {
  sg_features_get_separate_buffer_types(self)
}

///|
pub fn Features::set_separate_buffer_types(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_separate_buffer_types(self, value)
  self
}

///|
pub fn Features::draw_base_vertex(self : Features) -> Bool {
  sg_features_get_draw_base_vertex(self)
}

///|
pub fn Features::set_draw_base_vertex(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_draw_base_vertex(self, value)
  self
}

///|
pub fn Features::draw_base_instance(self : Features) -> Bool {
  sg_features_get_draw_base_instance(self)
}

///|
pub fn Features::set_draw_base_instance(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_draw_base_instance(self, value)
  self
}

///|
pub fn Features::dual_source_blending(self : Features) -> Bool {
  sg_features_get_dual_source_blending(self)
}

///|
pub fn Features::set_dual_source_blending(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_dual_source_blending(self, value)
  self
}

///|
pub fn Features::vertexformat_int10_n2(self : Features) -> Bool {
  sg_features_get_vertexformat_int10_n2(self)
}

///|
pub fn Features::set_vertexformat_int10_n2(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_vertexformat_int10_n2(self, value)
  self
}

///|
pub fn Features::copy_buffer_to_image_relaxed_buffer_type(
  self : Features,
) -> Bool {
  sg_features_get_copy_buffer_to_image_relaxed_buffer_type(self)
}

///|
pub fn Features::set_copy_buffer_to_image_relaxed_buffer_type(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_copy_buffer_to_image_relaxed_buffer_type(self, value)
  self
}

///|
pub fn Features::copy_buffer_to_image_relaxed_bytes_per_row(
  self : Features,
) -> Bool {
  sg_features_get_copy_buffer_to_image_relaxed_bytes_per_row(self)
}

///|
pub fn Features::set_copy_buffer_to_image_relaxed_bytes_per_row(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_copy_buffer_to_image_relaxed_bytes_per_row(self, value)
  self
}

///|
pub fn Features::copy_image_to_image_relaxed_pixel_format(
  self : Features,
) -> Bool {
  sg_features_get_copy_image_to_image_relaxed_pixel_format(self)
}

///|
pub fn Features::set_copy_image_to_image_relaxed_pixel_format(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_copy_image_to_image_relaxed_pixel_format(self, value)
  self
}

///|
pub fn Features::gl_texture_views(self : Features) -> Bool {
  sg_features_get_gl_texture_views(self)
}

///|
pub fn Features::set_gl_texture_views(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_gl_texture_views(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Limits

///|
pub fn Limits::new() -> Limits {
  sg_limits_new()
}

///|
pub fn Limits::copy(self : Limits) -> Limits {
  sg_limits_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Limits::unsafe_native_handle(self : Limits) -> @native.Handle {
  sg_limits_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Limits::unsafe_from_native(ptr : @native.Handle) -> Limits {
  sg_limits_from_native(ptr)
}

///|
pub fn Limits::max_image_size_2d(self : Limits) -> Int32 {
  sg_limits_get_max_image_size_2d(self)
}

///|
pub fn Limits::set_max_image_size_2d(self : Limits, value : Int32) -> Limits {
  sg_limits_set_max_image_size_2d(self, value)
  self
}

///|
pub fn Limits::max_image_size_cube(self : Limits) -> Int32 {
  sg_limits_get_max_image_size_cube(self)
}

///|
pub fn Limits::set_max_image_size_cube(self : Limits, value : Int32) -> Limits {
  sg_limits_set_max_image_size_cube(self, value)
  self
}

///|
pub fn Limits::max_image_size_3d(self : Limits) -> Int32 {
  sg_limits_get_max_image_size_3d(self)
}

///|
pub fn Limits::set_max_image_size_3d(self : Limits, value : Int32) -> Limits {
  sg_limits_set_max_image_size_3d(self, value)
  self
}

///|
pub fn Limits::max_image_size_array(self : Limits) -> Int32 {
  sg_limits_get_max_image_size_array(self)
}

///|
pub fn Limits::set_max_image_size_array(self : Limits, value : Int32) -> Limits {
  sg_limits_set_max_image_size_array(self, value)
  self
}

///|
pub fn Limits::max_image_array_layers(self : Limits) -> Int32 {
  sg_limits_get_max_image_array_layers(self)
}

///|
pub fn Limits::set_max_image_array_layers(
  self : Limits,
  value : Int32,
) -> Limits {
  sg_limits_set_max_image_array_layers(self, value)
  self
}

///|
pub fn Limits::max_vertex_attrs(self : Limits) -> Int32 {
  sg_limits_get_max_vertex_attrs(self)
}

///|
pub fn Limits::set_max_vertex_attrs(self : Limits, value : Int32) -> Limits {
  sg_limits_set_max_vertex_attrs(self, value)
  self
}

///|
pub fn Limits::max_color_attachments(self : Limits) -> Int32 {
  sg_limits_get_max_color_attachments(self)
}

///|
pub fn Limits::set_max_color_attachments(
  self : Limits,
  value : Int32,
) -> Limits {
  sg_limits_set_max_color_attachments(self, value)
  self
}

///|
pub fn Limits::max_texture_bindings_per_stage(self : Limits) -> Int32 {
  sg_limits_get_max_texture_bindings_per_stage(self)
}

///|
pub fn Limits::set_max_texture_bindings_per_stage(
  self : Limits,
  value : Int32,
) -> Limits {
  sg_limits_set_max_texture_bindings_per_stage(self, value)
  self
}

///|
pub fn Limits::max_storage_buffer_bindings_per_stage(self : Limits) -> Int32 {
  sg_limits_get_max_storage_buffer_bindings_per_stage(self)
}

///|
pub fn Limits::set_max_storage_buffer_bindings_per_stage(
  self : Limits,
  value : Int32,
) -> Limits {
  sg_limits_set_max_storage_buffer_bindings_per_stage(self, value)
  self
}

///|
pub fn Limits::max_storage_image_bindings_per_stage(self : Limits) -> Int32 {
  sg_limits_get_max_storage_image_bindings_per_stage(self)
}

///|
pub fn Limits::set_max_storage_image_bindings_per_stage(
  self : Limits,
  value : Int32,
) -> Limits {
  sg_limits_set_max_storage_image_bindings_per_stage(self, value)
  self
}

///|
pub fn Limits::gl_max_vertex_uniform_components(self : Limits) -> Int32 {
  sg_limits_get_gl_max_vertex_uniform_components(self)
}

///|
pub fn Limits::set_gl_max_vertex_uniform_components(
  self : Limits,
  value : Int32,
) -> Limits {
  sg_limits_set_gl_max_vertex_uniform_components(self, value)
  self
}

///|
pub fn Limits::gl_max_combined_texture_image_units(self : Limits) -> Int32 {
  sg_limits_get_gl_max_combined_texture_image_units(self)
}

///|
pub fn Limits::set_gl_max_combined_texture_image_units(
  self : Limits,
  value : Int32,
) -> Limits {
  sg_limits_set_gl_max_combined_texture_image_units(self, value)
  self
}

///|
pub fn Limits::d3d11_max_unordered_access_views(self : Limits) -> Int32 {
  sg_limits_get_d3d11_max_unordered_access_views(self)
}

///|
pub fn Limits::set_d3d11_max_unordered_access_views(
  self : Limits,
  value : Int32,
) -> Limits {
  sg_limits_set_d3d11_max_unordered_access_views(self, value)
  self
}

///|
pub fn Limits::vk_min_uniform_buffer_offset_alignment(self : Limits) -> Int32 {
  sg_limits_get_vk_min_uniform_buffer_offset_alignment(self)
}

///|
pub fn Limits::set_vk_min_uniform_buffer_offset_alignment(
  self : Limits,
  value : Int32,
) -> Limits {
  sg_limits_set_vk_min_uniform_buffer_offset_alignment(self, value)
  self
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
pub fn StoreAction::to_int(self : StoreAction) -> Int32 {
  sg_store_action_int(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ColorAttachmentAction

///|
pub fn ColorAttachmentAction::new() -> ColorAttachmentAction {
  sg_color_attachment_action_new()
}

///|
pub fn ColorAttachmentAction::copy(
  self : ColorAttachmentAction,
) -> ColorAttachmentAction {
  sg_color_attachment_action_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ColorAttachmentAction::unsafe_native_handle(
  self : ColorAttachmentAction,
) -> @native.Handle {
  sg_color_attachment_action_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ColorAttachmentAction::unsafe_from_native(
  ptr : @native.Handle,
) -> ColorAttachmentAction {
  sg_color_attachment_action_from_native(ptr)
}

///|
pub fn ColorAttachmentAction::load_action(
  self : ColorAttachmentAction,
) -> LoadAction {
  sg_color_attachment_action_get_load_action(self)
}

///|
pub fn ColorAttachmentAction::set_load_action(
  self : ColorAttachmentAction,
  value : LoadAction,
) -> ColorAttachmentAction {
  sg_color_attachment_action_set_load_action(self, value)
  self
}

///|
pub fn ColorAttachmentAction::store_action(
  self : ColorAttachmentAction,
) -> StoreAction {
  sg_color_attachment_action_get_store_action(self)
}

///|
pub fn ColorAttachmentAction::set_store_action(
  self : ColorAttachmentAction,
  value : StoreAction,
) -> ColorAttachmentAction {
  sg_color_attachment_action_set_store_action(self, value)
  self
}

///|
pub fn ColorAttachmentAction::clear_value(
  self : ColorAttachmentAction,
) -> Color {
  sg_color_attachment_action_get_clear_value(self)
}

///|
pub fn ColorAttachmentAction::set_clear_value(
  self : ColorAttachmentAction,
  value : Color,
) -> ColorAttachmentAction {
  sg_color_attachment_action_set_clear_value(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type DepthAttachmentAction

///|
pub fn DepthAttachmentAction::new() -> DepthAttachmentAction {
  sg_depth_attachment_action_new()
}

///|
pub fn DepthAttachmentAction::copy(
  self : DepthAttachmentAction,
) -> DepthAttachmentAction {
  sg_depth_attachment_action_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn DepthAttachmentAction::unsafe_native_handle(
  self : DepthAttachmentAction,
) -> @native.Handle {
  sg_depth_attachment_action_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn DepthAttachmentAction::unsafe_from_native(
  ptr : @native.Handle,
) -> DepthAttachmentAction {
  sg_depth_attachment_action_from_native(ptr)
}

///|
pub fn DepthAttachmentAction::load_action(
  self : DepthAttachmentAction,
) -> LoadAction {
  sg_depth_attachment_action_get_load_action(self)
}

///|
pub fn DepthAttachmentAction::set_load_action(
  self : DepthAttachmentAction,
  value : LoadAction,
) -> DepthAttachmentAction {
  sg_depth_attachment_action_set_load_action(self, value)
  self
}

///|
pub fn DepthAttachmentAction::store_action(
  self : DepthAttachmentAction,
) -> StoreAction {
  sg_depth_attachment_action_get_store_action(self)
}

///|
pub fn DepthAttachmentAction::set_store_action(
  self : DepthAttachmentAction,
  value : StoreAction,
) -> DepthAttachmentAction {
  sg_depth_attachment_action_set_store_action(self, value)
  self
}

///|
pub fn DepthAttachmentAction::clear_value(
  self : DepthAttachmentAction,
) -> Float {
  sg_depth_attachment_action_get_clear_value(self)
}

///|
pub fn DepthAttachmentAction::set_clear_value(
  self : DepthAttachmentAction,
  value : Float,
) -> DepthAttachmentAction {
  sg_depth_attachment_action_set_clear_value(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type StencilAttachmentAction

///|
pub fn StencilAttachmentAction::new() -> StencilAttachmentAction {
  sg_stencil_attachment_action_new()
}

///|
pub fn StencilAttachmentAction::copy(
  self : StencilAttachmentAction,
) -> StencilAttachmentAction {
  sg_stencil_attachment_action_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn StencilAttachmentAction::unsafe_native_handle(
  self : StencilAttachmentAction,
) -> @native.Handle {
  sg_stencil_attachment_action_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn StencilAttachmentAction::unsafe_from_native(
  ptr : @native.Handle,
) -> StencilAttachmentAction {
  sg_stencil_attachment_action_from_native(ptr)
}

///|
pub fn StencilAttachmentAction::load_action(
  self : StencilAttachmentAction,
) -> LoadAction {
  sg_stencil_attachment_action_get_load_action(self)
}

///|
pub fn StencilAttachmentAction::set_load_action(
  self : StencilAttachmentAction,
  value : LoadAction,
) -> StencilAttachmentAction {
  sg_stencil_attachment_action_set_load_action(self, value)
  self
}

///|
pub fn StencilAttachmentAction::store_action(
  self : StencilAttachmentAction,
) -> StoreAction {
  sg_stencil_attachment_action_get_store_action(self)
}

///|
pub fn StencilAttachmentAction::set_store_action(
  self : StencilAttachmentAction,
  value : StoreAction,
) -> StencilAttachmentAction {
  sg_stencil_attachment_action_set_store_action(self, value)
  self
}

///|
pub fn StencilAttachmentAction::clear_value(
  self : StencilAttachmentAction,
) -> Byte {
  sg_stencil_attachment_action_get_clear_value(self)
}

///|
pub fn StencilAttachmentAction::set_clear_value(
  self : StencilAttachmentAction,
  value : Byte,
) -> StencilAttachmentAction {
  sg_stencil_attachment_action_set_clear_value(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type PassAction

///|
pub fn PassAction::new() -> PassAction {
  sg_pass_action_new()
}

///|
pub fn PassAction::copy(self : PassAction) -> PassAction {
  sg_pass_action_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn PassAction::unsafe_native_handle(self : PassAction) -> @native.Handle {
  sg_pass_action_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn PassAction::unsafe_from_native(ptr : @native.Handle) -> PassAction {
  sg_pass_action_from_native(ptr)
}

///|
pub fn PassAction::colors(
  self : PassAction,
  i0 : Int32,
) -> ColorAttachmentAction {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sg_pass_action_get_colors(self, i0)
}

///|
pub fn PassAction::set_colors(
  self : PassAction,
  i0 : Int32,
  value : ColorAttachmentAction,
) -> PassAction {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sg_pass_action_set_colors(self, i0, value)
  self
}

///|
pub fn PassAction::depth(self : PassAction) -> DepthAttachmentAction {
  sg_pass_action_get_depth(self)
}

///|
pub fn PassAction::set_depth(
  self : PassAction,
  value : DepthAttachmentAction,
) -> PassAction {
  sg_pass_action_set_depth(self, value)
  self
}

///|
pub fn PassAction::stencil(self : PassAction) -> StencilAttachmentAction {
  sg_pass_action_get_stencil(self)
}

///|
pub fn PassAction::set_stencil(
  self : PassAction,
  value : StencilAttachmentAction,
) -> PassAction {
  sg_pass_action_set_stencil(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type MetalSwapchain

///|
pub fn MetalSwapchain::new() -> MetalSwapchain {
  sg_metal_swapchain_new()
}

///|
pub fn MetalSwapchain::copy(self : MetalSwapchain) -> MetalSwapchain {
  sg_metal_swapchain_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn MetalSwapchain::unsafe_native_handle(
  self : MetalSwapchain,
) -> @native.Handle {
  sg_metal_swapchain_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn MetalSwapchain::unsafe_from_native(
  ptr : @native.Handle,
) -> MetalSwapchain {
  sg_metal_swapchain_from_native(ptr)
}

///|
pub fn MetalSwapchain::current_drawable(
  self : MetalSwapchain,
) -> @native.Handle {
  sg_metal_swapchain_get_current_drawable(self)
}

///|
pub fn MetalSwapchain::set_current_drawable(
  self : MetalSwapchain,
  value : @native.Handle,
) -> MetalSwapchain {
  sg_metal_swapchain_set_current_drawable(self, value)
  self
}

///|
pub fn MetalSwapchain::depth_stencil_texture(
  self : MetalSwapchain,
) -> @native.Handle {
  sg_metal_swapchain_get_depth_stencil_texture(self)
}

///|
pub fn MetalSwapchain::set_depth_stencil_texture(
  self : MetalSwapchain,
  value : @native.Handle,
) -> MetalSwapchain {
  sg_metal_swapchain_set_depth_stencil_texture(self, value)
  self
}

///|
pub fn MetalSwapchain::msaa_color_texture(
  self : MetalSwapchain,
) -> @native.Handle {
  sg_metal_swapchain_get_msaa_color_texture(self)
}

///|
pub fn MetalSwapchain::set_msaa_color_texture(
  self : MetalSwapchain,
  value : @native.Handle,
) -> MetalSwapchain {
  sg_metal_swapchain_set_msaa_color_texture(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type D3d11Swapchain

///|
pub fn D3d11Swapchain::new() -> D3d11Swapchain {
  sg_d3d11_swapchain_new()
}

///|
pub fn D3d11Swapchain::copy(self : D3d11Swapchain) -> D3d11Swapchain {
  sg_d3d11_swapchain_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn D3d11Swapchain::unsafe_native_handle(
  self : D3d11Swapchain,
) -> @native.Handle {
  sg_d3d11_swapchain_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn D3d11Swapchain::unsafe_from_native(
  ptr : @native.Handle,
) -> D3d11Swapchain {
  sg_d3d11_swapchain_from_native(ptr)
}

///|
pub fn D3d11Swapchain::render_view(self : D3d11Swapchain) -> @native.Handle {
  sg_d3d11_swapchain_get_render_view(self)
}

///|
pub fn D3d11Swapchain::set_render_view(
  self : D3d11Swapchain,
  value : @native.Handle,
) -> D3d11Swapchain {
  sg_d3d11_swapchain_set_render_view(self, value)
  self
}

///|
pub fn D3d11Swapchain::resolve_view(self : D3d11Swapchain) -> @native.Handle {
  sg_d3d11_swapchain_get_resolve_view(self)
}

///|
pub fn D3d11Swapchain::set_resolve_view(
  self : D3d11Swapchain,
  value : @native.Handle,
) -> D3d11Swapchain {
  sg_d3d11_swapchain_set_resolve_view(self, value)
  self
}

///|
pub fn D3d11Swapchain::depth_stencil_view(
  self : D3d11Swapchain,
) -> @native.Handle {
  sg_d3d11_swapchain_get_depth_stencil_view(self)
}

///|
pub fn D3d11Swapchain::set_depth_stencil_view(
  self : D3d11Swapchain,
  value : @native.Handle,
) -> D3d11Swapchain {
  sg_d3d11_swapchain_set_depth_stencil_view(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type WgpuSwapchain

///|
pub fn WgpuSwapchain::new() -> WgpuSwapchain {
  sg_wgpu_swapchain_new()
}

///|
pub fn WgpuSwapchain::copy(self : WgpuSwapchain) -> WgpuSwapchain {
  sg_wgpu_swapchain_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WgpuSwapchain::unsafe_native_handle(
  self : WgpuSwapchain,
) -> @native.Handle {
  sg_wgpu_swapchain_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WgpuSwapchain::unsafe_from_native(ptr : @native.Handle) -> WgpuSwapchain {
  sg_wgpu_swapchain_from_native(ptr)
}

///|
pub fn WgpuSwapchain::render_view(self : WgpuSwapchain) -> @native.Handle {
  sg_wgpu_swapchain_get_render_view(self)
}

///|
pub fn WgpuSwapchain::set_render_view(
  self : WgpuSwapchain,
  value : @native.Handle,
) -> WgpuSwapchain {
  sg_wgpu_swapchain_set_render_view(self, value)
  self
}

///|
pub fn WgpuSwapchain::resolve_view(self : WgpuSwapchain) -> @native.Handle {
  sg_wgpu_swapchain_get_resolve_view(self)
}

///|
pub fn WgpuSwapchain::set_resolve_view(
  self : WgpuSwapchain,
  value : @native.Handle,
) -> WgpuSwapchain {
  sg_wgpu_swapchain_set_resolve_view(self, value)
  self
}

///|
pub fn WgpuSwapchain::depth_stencil_view(
  self : WgpuSwapchain,
) -> @native.Handle {
  sg_wgpu_swapchain_get_depth_stencil_view(self)
}

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
pub type VulkanSwapchain

///|
pub fn VulkanSwapchain::new() -> VulkanSwapchain {
  sg_vulkan_swapchain_new()
}

///|
pub fn VulkanSwapchain::copy(self : VulkanSwapchain) -> VulkanSwapchain {
  sg_vulkan_swapchain_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn VulkanSwapchain::unsafe_native_handle(
  self : VulkanSwapchain,
) -> @native.Handle {
  sg_vulkan_swapchain_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn VulkanSwapchain::unsafe_from_native(
  ptr : @native.Handle,
) -> VulkanSwapchain {
  sg_vulkan_swapchain_from_native(ptr)
}

///|
pub fn VulkanSwapchain::render_image(self : VulkanSwapchain) -> @native.Handle {
  sg_vulkan_swapchain_get_render_image(self)
}

///|
pub fn VulkanSwapchain::set_render_image(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sg_vulkan_swapchain_set_render_image(self, value)
  self
}

///|
pub fn VulkanSwapchain::render_view(self : VulkanSwapchain) -> @native.Handle {
  sg_vulkan_swapchain_get_render_view(self)
}

///|
pub fn VulkanSwapchain::set_render_view(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sg_vulkan_swapchain_set_render_view(self, value)
  self
}

///|
pub fn VulkanSwapchain::resolve_image(self : VulkanSwapchain) -> @native.Handle {
  sg_vulkan_swapchain_get_resolve_image(self)
}

///|
pub fn VulkanSwapchain::set_resolve_image(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sg_vulkan_swapchain_set_resolve_image(self, value)
  self
}

///|
pub fn VulkanSwapchain::resolve_view(self : VulkanSwapchain) -> @native.Handle {
  sg_vulkan_swapchain_get_resolve_view(self)
}

///|
pub fn VulkanSwapchain::set_resolve_view(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sg_vulkan_swapchain_set_resolve_view(self, value)
  self
}

///|
pub fn VulkanSwapchain::depth_stencil_image(
  self : VulkanSwapchain,
) -> @native.Handle {
  sg_vulkan_swapchain_get_depth_stencil_image(self)
}

///|
pub fn VulkanSwapchain::set_depth_stencil_image(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sg_vulkan_swapchain_set_depth_stencil_image(self, value)
  self
}

///|
pub fn VulkanSwapchain::depth_stencil_view(
  self : VulkanSwapchain,
) -> @native.Handle {
  sg_vulkan_swapchain_get_depth_stencil_view(self)
}

///|
pub fn VulkanSwapchain::set_depth_stencil_view(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sg_vulkan_swapchain_set_depth_stencil_view(self, value)
  self
}

///|
pub fn VulkanSwapchain::render_finished_semaphore(
  self : VulkanSwapchain,
) -> @native.Handle {
  sg_vulkan_swapchain_get_render_finished_semaphore(self)
}

///|
pub fn VulkanSwapchain::set_render_finished_semaphore(
  self : VulkanSwapchain,
  value : @native.Handle,
) -> VulkanSwapchain {
  sg_vulkan_swapchain_set_render_finished_semaphore(self, value)
  self
}

///|
pub fn VulkanSwapchain::present_complete_semaphore(
  self : VulkanSwapchain,
) -> @native.Handle {
  sg_vulkan_swapchain_get_present_complete_semaphore(self)
}

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
pub type GlSwapchain

///|
pub fn GlSwapchain::new() -> GlSwapchain {
  sg_gl_swapchain_new()
}

///|
pub fn GlSwapchain::copy(self : GlSwapchain) -> GlSwapchain {
  sg_gl_swapchain_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn GlSwapchain::unsafe_native_handle(self : GlSwapchain) -> @native.Handle {
  sg_gl_swapchain_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn GlSwapchain::unsafe_from_native(ptr : @native.Handle) -> GlSwapchain {
  sg_gl_swapchain_from_native(ptr)
}

///|
pub fn GlSwapchain::framebuffer(self : GlSwapchain) -> UInt32 {
  sg_gl_swapchain_get_framebuffer(self)
}

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
pub type Swapchain

///|
pub fn Swapchain::new() -> Swapchain {
  sg_swapchain_new()
}

///|
pub fn Swapchain::copy(self : Swapchain) -> Swapchain {
  sg_swapchain_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Swapchain::unsafe_native_handle(self : Swapchain) -> @native.Handle {
  sg_swapchain_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Swapchain::unsafe_from_native(ptr : @native.Handle) -> Swapchain {
  sg_swapchain_from_native(ptr)
}

///|
pub fn Swapchain::invalid(self : Swapchain) -> Bool {
  sg_swapchain_get_invalid(self)
}

///|
pub fn Swapchain::set_invalid(self : Swapchain, value : Bool) -> Swapchain {
  sg_swapchain_set_invalid(self, value)
  self
}

///|
pub fn Swapchain::width(self : Swapchain) -> Int32 {
  sg_swapchain_get_width(self)
}

///|
pub fn Swapchain::set_width(self : Swapchain, value : Int32) -> Swapchain {
  sg_swapchain_set_width(self, value)
  self
}

///|
pub fn Swapchain::height(self : Swapchain) -> Int32 {
  sg_swapchain_get_height(self)
}

///|
pub fn Swapchain::set_height(self : Swapchain, value : Int32) -> Swapchain {
  sg_swapchain_set_height(self, value)
  self
}

///|
pub fn Swapchain::sample_count(self : Swapchain) -> Int32 {
  sg_swapchain_get_sample_count(self)
}

///|
pub fn Swapchain::set_sample_count(
  self : Swapchain,
  value : Int32,
) -> Swapchain {
  sg_swapchain_set_sample_count(self, value)
  self
}

///|
pub fn Swapchain::color_format(self : Swapchain) -> PixelFormat {
  sg_swapchain_get_color_format(self)
}

///|
pub fn Swapchain::set_color_format(
  self : Swapchain,
  value : PixelFormat,
) -> Swapchain {
  sg_swapchain_set_color_format(self, value)
  self
}

///|
pub fn Swapchain::depth_format(self : Swapchain) -> PixelFormat {
  sg_swapchain_get_depth_format(self)
}

///|
pub fn Swapchain::set_depth_format(
  self : Swapchain,
  value : PixelFormat,
) -> Swapchain {
  sg_swapchain_set_depth_format(self, value)
  self
}

///|
pub fn Swapchain::metal(self : Swapchain) -> MetalSwapchain {
  sg_swapchain_get_metal(self)
}

///|
pub fn Swapchain::set_metal(
  self : Swapchain,
  value : MetalSwapchain,
) -> Swapchain {
  sg_swapchain_set_metal(self, value)
  self
}

///|
pub fn Swapchain::d3d11(self : Swapchain) -> D3d11Swapchain {
  sg_swapchain_get_d3d11(self)
}

///|
pub fn Swapchain::set_d3d11(
  self : Swapchain,
  value : D3d11Swapchain,
) -> Swapchain {
  sg_swapchain_set_d3d11(self, value)
  self
}

///|
pub fn Swapchain::wgpu(self : Swapchain) -> WgpuSwapchain {
  sg_swapchain_get_wgpu(self)
}

///|
pub fn Swapchain::set_wgpu(
  self : Swapchain,
  value : WgpuSwapchain,
) -> Swapchain {
  sg_swapchain_set_wgpu(self, value)
  self
}

///|
pub fn Swapchain::vulkan(self : Swapchain) -> VulkanSwapchain {
  sg_swapchain_get_vulkan(self)
}

///|
pub fn Swapchain::set_vulkan(
  self : Swapchain,
  value : VulkanSwapchain,
) -> Swapchain {
  sg_swapchain_set_vulkan(self, value)
  self
}

///|
pub fn Swapchain::gl(self : Swapchain) -> GlSwapchain {
  sg_swapchain_get_gl(self)
}

///|
pub fn Swapchain::set_gl(self : Swapchain, value : GlSwapchain) -> Swapchain {
  sg_swapchain_set_gl(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Attachments

///|
pub fn Attachments::new() -> Attachments {
  sg_attachments_new()
}

///|
pub fn Attachments::copy(self : Attachments) -> Attachments {
  sg_attachments_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Attachments::unsafe_native_handle(self : Attachments) -> @native.Handle {
  sg_attachments_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Attachments::unsafe_from_native(ptr : @native.Handle) -> Attachments {
  sg_attachments_from_native(ptr)
}

///|
pub fn Attachments::colors(self : Attachments, i0 : Int32) -> View {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  View(sg_attachments_get_colors(self, i0))
}

///|
pub fn Attachments::set_colors(
  self : Attachments,
  i0 : Int32,
  value : View,
) -> Attachments {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sg_attachments_set_colors(self, i0, value.0)
  self
}

///|
pub fn Attachments::resolves(self : Attachments, i0 : Int32) -> View {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  View(sg_attachments_get_resolves(self, i0))
}

///|
pub fn Attachments::set_resolves(
  self : Attachments,
  i0 : Int32,
  value : View,
) -> Attachments {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sg_attachments_set_resolves(self, i0, value.0)
  self
}

///|
pub fn Attachments::depth_stencil(self : Attachments) -> View {
  View(sg_attachments_get_depth_stencil(self))
}

///|
pub fn Attachments::set_depth_stencil(
  self : Attachments,
  value : View,
) -> Attachments {
  sg_attachments_set_depth_stencil(self, value.0)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Pass

///|
pub fn Pass::new() -> Pass {
  sg_pass_new()
}

///|
pub fn Pass::copy(self : Pass) -> Pass {
  sg_pass_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Pass::unsafe_native_handle(self : Pass) -> @native.Handle {
  sg_pass_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Pass::unsafe_from_native(ptr : @native.Handle) -> Pass {
  sg_pass_from_native(ptr)
}

///|
pub fn Pass::compute(self : Pass) -> Bool {
  sg_pass_get_compute(self)
}

///|
pub fn Pass::set_compute(self : Pass, value : Bool) -> Pass {
  sg_pass_set_compute(self, value)
  self
}

///|
pub fn Pass::action(self : Pass) -> PassAction {
  sg_pass_get_action(self)
}

///|
pub fn Pass::set_action(self : Pass, value : PassAction) -> Pass {
  sg_pass_set_action(self, value)
  self
}

///|
pub fn Pass::attachments(self : Pass) -> Attachments {
  sg_pass_get_attachments(self)
}

///|
pub fn Pass::set_attachments(self : Pass, value : Attachments) -> Pass {
  sg_pass_set_attachments(self, value)
  self
}

///|
pub fn Pass::swapchain(self : Pass) -> Swapchain {
  sg_pass_get_swapchain(self)
}

///|
pub fn Pass::set_swapchain(self : Pass, value : Swapchain) -> Pass {
  sg_pass_set_swapchain(self, value)
  self
}

///|
pub fn Pass::label(self : Pass) -> String {
  @utf8.decode_lossy(sg_pass_get_label(self))
}

///|
pub fn Pass::set_label(self : Pass, value : String) -> Pass {
  sg_pass_set_label(self, @native.cstring(value))
  self
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
pub fn PassState::to_int(self : PassState) -> Int32 {
  sg_pass_state_int(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Bindings

///|
pub fn Bindings::new() -> Bindings {
  sg_bindings_new()
}

///|
pub fn Bindings::copy(self : Bindings) -> Bindings {
  sg_bindings_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Bindings::unsafe_native_handle(self : Bindings) -> @native.Handle {
  sg_bindings_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Bindings::unsafe_from_native(ptr : @native.Handle) -> Bindings {
  sg_bindings_from_native(ptr)
}

///|
pub fn Bindings::vertex_buffers(self : Bindings, i0 : Int32) -> Buffer {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  Buffer(sg_bindings_get_vertex_buffers(self, i0))
}

///|
pub fn Bindings::set_vertex_buffers(
  self : Bindings,
  i0 : Int32,
  value : Buffer,
) -> Bindings {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sg_bindings_set_vertex_buffers(self, i0, value.0)
  self
}

///|
pub fn Bindings::vertex_buffer_offsets(self : Bindings, i0 : Int32) -> Int32 {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sg_bindings_get_vertex_buffer_offsets(self, i0)
}

///|
pub fn Bindings::set_vertex_buffer_offsets(
  self : Bindings,
  i0 : Int32,
  value : Int32,
) -> Bindings {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sg_bindings_set_vertex_buffer_offsets(self, i0, value)
  self
}

///|
pub fn Bindings::index_buffer(self : Bindings) -> Buffer {
  Buffer(sg_bindings_get_index_buffer(self))
}

///|
pub fn Bindings::set_index_buffer(self : Bindings, value : Buffer) -> Bindings {
  sg_bindings_set_index_buffer(self, value.0)
  self
}

///|
pub fn Bindings::index_buffer_offset(self : Bindings) -> Int32 {
  sg_bindings_get_index_buffer_offset(self)
}

///|
pub fn Bindings::set_index_buffer_offset(
  self : Bindings,
  value : Int32,
) -> Bindings {
  sg_bindings_set_index_buffer_offset(self, value)
  self
}

///|
pub fn Bindings::views(self : Bindings, i0 : Int32) -> View {
  guard i0 >= 0 && i0 < 32 else {
    abort("descriptor array index out of bounds")
  }
  View(sg_bindings_get_views(self, i0))
}

///|
pub fn Bindings::set_views(
  self : Bindings,
  i0 : Int32,
  value : View,
) -> Bindings {
  guard i0 >= 0 && i0 < 32 else {
    abort("descriptor array index out of bounds")
  }
  sg_bindings_set_views(self, i0, value.0)
  self
}

///|
pub fn Bindings::samplers(self : Bindings, i0 : Int32) -> Sampler {
  guard i0 >= 0 && i0 < 14 else {
    abort("descriptor array index out of bounds")
  }
  Sampler(sg_bindings_get_samplers(self, i0))
}

///|
pub fn Bindings::set_samplers(
  self : Bindings,
  i0 : Int32,
  value : Sampler,
) -> Bindings {
  guard i0 >= 0 && i0 < 14 else {
    abort("descriptor array index out of bounds")
  }
  sg_bindings_set_samplers(self, i0, value.0)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type BufferUsage

///|
pub fn BufferUsage::new() -> BufferUsage {
  sg_buffer_usage_new()
}

///|
pub fn BufferUsage::copy(self : BufferUsage) -> BufferUsage {
  sg_buffer_usage_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn BufferUsage::unsafe_native_handle(self : BufferUsage) -> @native.Handle {
  sg_buffer_usage_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn BufferUsage::unsafe_from_native(ptr : @native.Handle) -> BufferUsage {
  sg_buffer_usage_from_native(ptr)
}

///|
pub fn BufferUsage::vertex_buffer(self : BufferUsage) -> Bool {
  sg_buffer_usage_get_vertex_buffer(self)
}

///|
pub fn BufferUsage::set_vertex_buffer(
  self : BufferUsage,
  value : Bool,
) -> BufferUsage {
  sg_buffer_usage_set_vertex_buffer(self, value)
  self
}

///|
pub fn BufferUsage::index_buffer(self : BufferUsage) -> Bool {
  sg_buffer_usage_get_index_buffer(self)
}

///|
pub fn BufferUsage::set_index_buffer(
  self : BufferUsage,
  value : Bool,
) -> BufferUsage {
  sg_buffer_usage_set_index_buffer(self, value)
  self
}

///|
pub fn BufferUsage::storage_buffer(self : BufferUsage) -> Bool {
  sg_buffer_usage_get_storage_buffer(self)
}

///|
pub fn BufferUsage::set_storage_buffer(
  self : BufferUsage,
  value : Bool,
) -> BufferUsage {
  sg_buffer_usage_set_storage_buffer(self, value)
  self
}

///|
pub fn BufferUsage::staging_buffer(self : BufferUsage) -> Bool {
  sg_buffer_usage_get_staging_buffer(self)
}

///|
pub fn BufferUsage::set_staging_buffer(
  self : BufferUsage,
  value : Bool,
) -> BufferUsage {
  sg_buffer_usage_set_staging_buffer(self, value)
  self
}

///|
pub fn BufferUsage::staging_index_buffer(self : BufferUsage) -> Bool {
  sg_buffer_usage_get_staging_index_buffer(self)
}

///|
pub fn BufferUsage::set_staging_index_buffer(
  self : BufferUsage,
  value : Bool,
) -> BufferUsage {
  sg_buffer_usage_set_staging_index_buffer(self, value)
  self
}

///|
pub fn BufferUsage::write_unsealed(self : BufferUsage) -> Bool {
  sg_buffer_usage_get_write_unsealed(self)
}

///|
pub fn BufferUsage::set_write_unsealed(
  self : BufferUsage,
  value : Bool,
) -> BufferUsage {
  sg_buffer_usage_set_write_unsealed(self, value)
  self
}

///|
pub fn BufferUsage::write_transient(self : BufferUsage) -> Bool {
  sg_buffer_usage_get_write_transient(self)
}

///|
pub fn BufferUsage::set_write_transient(
  self : BufferUsage,
  value : Bool,
) -> BufferUsage {
  sg_buffer_usage_set_write_transient(self, value)
  self
}

///|
pub fn BufferUsage::copy_src(self : BufferUsage) -> Bool {
  sg_buffer_usage_get_copy_src(self)
}

///|
pub fn BufferUsage::set_copy_src(
  self : BufferUsage,
  value : Bool,
) -> BufferUsage {
  sg_buffer_usage_set_copy_src(self, value)
  self
}

///|
pub fn BufferUsage::copy_dst(self : BufferUsage) -> Bool {
  sg_buffer_usage_get_copy_dst(self)
}

///|
pub fn BufferUsage::set_copy_dst(
  self : BufferUsage,
  value : Bool,
) -> BufferUsage {
  sg_buffer_usage_set_copy_dst(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type BufferDesc

///|
pub fn BufferDesc::new() -> BufferDesc {
  sg_buffer_desc_new()
}

///|
pub fn BufferDesc::copy(self : BufferDesc) -> BufferDesc {
  sg_buffer_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn BufferDesc::unsafe_native_handle(self : BufferDesc) -> @native.Handle {
  sg_buffer_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn BufferDesc::unsafe_from_native(ptr : @native.Handle) -> BufferDesc {
  sg_buffer_desc_from_native(ptr)
}

///|
pub fn BufferDesc::size(self : BufferDesc) -> UInt64 {
  sg_buffer_desc_get_size(self)
}

///|
pub fn BufferDesc::set_size(self : BufferDesc, value : UInt64) -> BufferDesc {
  sg_buffer_desc_set_size(self, value)
  self
}

///|
pub fn BufferDesc::usage(self : BufferDesc) -> BufferUsage {
  sg_buffer_desc_get_usage(self)
}

///|
pub fn BufferDesc::set_usage(
  self : BufferDesc,
  value : BufferUsage,
) -> BufferDesc {
  sg_buffer_desc_set_usage(self, value)
  self
}

///|
pub fn BufferDesc::data(self : BufferDesc) -> Range {
  sg_buffer_desc_get_data(self)
}

///|
pub fn BufferDesc::set_data(self : BufferDesc, value : Range) -> BufferDesc {
  sg_buffer_desc_set_data(self, value)
  self
}

///|
pub fn BufferDesc::label(self : BufferDesc) -> String {
  @utf8.decode_lossy(sg_buffer_desc_get_label(self))
}

///|
pub fn BufferDesc::set_label(self : BufferDesc, value : String) -> BufferDesc {
  sg_buffer_desc_set_label(self, @native.cstring(value))
  self
}

///|
pub fn BufferDesc::gl_buffer(self : BufferDesc) -> UInt32 {
  sg_buffer_desc_get_gl_buffer(self)
}

///|
pub fn BufferDesc::set_gl_buffer(
  self : BufferDesc,
  value : UInt32,
) -> BufferDesc {
  sg_buffer_desc_set_gl_buffer(self, value)
  self
}

///|
pub fn BufferDesc::mtl_buffer(self : BufferDesc) -> @native.Handle {
  sg_buffer_desc_get_mtl_buffer(self)
}

///|
pub fn BufferDesc::set_mtl_buffer(
  self : BufferDesc,
  value : @native.Handle,
) -> BufferDesc {
  sg_buffer_desc_set_mtl_buffer(self, value)
  self
}

///|
pub fn BufferDesc::d3d11_buffer(self : BufferDesc) -> @native.Handle {
  sg_buffer_desc_get_d3d11_buffer(self)
}

///|
pub fn BufferDesc::set_d3d11_buffer(
  self : BufferDesc,
  value : @native.Handle,
) -> BufferDesc {
  sg_buffer_desc_set_d3d11_buffer(self, value)
  self
}

///|
pub fn BufferDesc::wgpu_buffer(self : BufferDesc) -> @native.Handle {
  sg_buffer_desc_get_wgpu_buffer(self)
}

///|
pub fn BufferDesc::set_wgpu_buffer(
  self : BufferDesc,
  value : @native.Handle,
) -> BufferDesc {
  sg_buffer_desc_set_wgpu_buffer(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ImageUsage

///|
pub fn ImageUsage::new() -> ImageUsage {
  sg_image_usage_new()
}

///|
pub fn ImageUsage::copy(self : ImageUsage) -> ImageUsage {
  sg_image_usage_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ImageUsage::unsafe_native_handle(self : ImageUsage) -> @native.Handle {
  sg_image_usage_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ImageUsage::unsafe_from_native(ptr : @native.Handle) -> ImageUsage {
  sg_image_usage_from_native(ptr)
}

///|
pub fn ImageUsage::storage_image(self : ImageUsage) -> Bool {
  sg_image_usage_get_storage_image(self)
}

///|
pub fn ImageUsage::set_storage_image(
  self : ImageUsage,
  value : Bool,
) -> ImageUsage {
  sg_image_usage_set_storage_image(self, value)
  self
}

///|
pub fn ImageUsage::color_attachment(self : ImageUsage) -> Bool {
  sg_image_usage_get_color_attachment(self)
}

///|
pub fn ImageUsage::set_color_attachment(
  self : ImageUsage,
  value : Bool,
) -> ImageUsage {
  sg_image_usage_set_color_attachment(self, value)
  self
}

///|
pub fn ImageUsage::resolve_attachment(self : ImageUsage) -> Bool {
  sg_image_usage_get_resolve_attachment(self)
}

///|
pub fn ImageUsage::set_resolve_attachment(
  self : ImageUsage,
  value : Bool,
) -> ImageUsage {
  sg_image_usage_set_resolve_attachment(self, value)
  self
}

///|
pub fn ImageUsage::depth_stencil_attachment(self : ImageUsage) -> Bool {
  sg_image_usage_get_depth_stencil_attachment(self)
}

///|
pub fn ImageUsage::set_depth_stencil_attachment(
  self : ImageUsage,
  value : Bool,
) -> ImageUsage {
  sg_image_usage_set_depth_stencil_attachment(self, value)
  self
}

///|
pub fn ImageUsage::write_unsealed(self : ImageUsage) -> Bool {
  sg_image_usage_get_write_unsealed(self)
}

///|
pub fn ImageUsage::set_write_unsealed(
  self : ImageUsage,
  value : Bool,
) -> ImageUsage {
  sg_image_usage_set_write_unsealed(self, value)
  self
}

///|
pub fn ImageUsage::write_transient(self : ImageUsage) -> Bool {
  sg_image_usage_get_write_transient(self)
}

///|
pub fn ImageUsage::set_write_transient(
  self : ImageUsage,
  value : Bool,
) -> ImageUsage {
  sg_image_usage_set_write_transient(self, value)
  self
}

///|
pub fn ImageUsage::copy_src(self : ImageUsage) -> Bool {
  sg_image_usage_get_copy_src(self)
}

///|
pub fn ImageUsage::set_copy_src(self : ImageUsage, value : Bool) -> ImageUsage {
  sg_image_usage_set_copy_src(self, value)
  self
}

///|
pub fn ImageUsage::copy_dst(self : ImageUsage) -> Bool {
  sg_image_usage_get_copy_dst(self)
}

///|
pub fn ImageUsage::set_copy_dst(self : ImageUsage, value : Bool) -> ImageUsage {
  sg_image_usage_set_copy_dst(self, value)
  self
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
pub fn ViewType::to_int(self : ViewType) -> Int32 {
  sg_view_type_int(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ImageExtent

///|
pub fn ImageExtent::new() -> ImageExtent {
  sg_image_extent_new()
}

///|
pub fn ImageExtent::copy(self : ImageExtent) -> ImageExtent {
  sg_image_extent_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ImageExtent::unsafe_native_handle(self : ImageExtent) -> @native.Handle {
  sg_image_extent_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ImageExtent::unsafe_from_native(ptr : @native.Handle) -> ImageExtent {
  sg_image_extent_from_native(ptr)
}

///|
pub fn ImageExtent::width(self : ImageExtent) -> Int32 {
  sg_image_extent_get_width(self)
}

///|
pub fn ImageExtent::set_width(self : ImageExtent, value : Int32) -> ImageExtent {
  sg_image_extent_set_width(self, value)
  self
}

///|
pub fn ImageExtent::height(self : ImageExtent) -> Int32 {
  sg_image_extent_get_height(self)
}

///|
pub fn ImageExtent::set_height(
  self : ImageExtent,
  value : Int32,
) -> ImageExtent {
  sg_image_extent_set_height(self, value)
  self
}

///|
pub fn ImageExtent::num_slices(self : ImageExtent) -> Int32 {
  sg_image_extent_get_num_slices(self)
}

///|
pub fn ImageExtent::set_num_slices(
  self : ImageExtent,
  value : Int32,
) -> ImageExtent {
  sg_image_extent_set_num_slices(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ImageLocation

///|
pub fn ImageLocation::new() -> ImageLocation {
  sg_image_location_new()
}

///|
pub fn ImageLocation::copy(self : ImageLocation) -> ImageLocation {
  sg_image_location_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ImageLocation::unsafe_native_handle(
  self : ImageLocation,
) -> @native.Handle {
  sg_image_location_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ImageLocation::unsafe_from_native(ptr : @native.Handle) -> ImageLocation {
  sg_image_location_from_native(ptr)
}

///|
pub fn ImageLocation::image(self : ImageLocation) -> Image {
  Image(sg_image_location_get_image(self))
}

///|
pub fn ImageLocation::set_image(
  self : ImageLocation,
  value : Image,
) -> ImageLocation {
  sg_image_location_set_image(self, value.0)
  self
}

///|
pub fn ImageLocation::mip_level(self : ImageLocation) -> Int32 {
  sg_image_location_get_mip_level(self)
}

///|
pub fn ImageLocation::set_mip_level(
  self : ImageLocation,
  value : Int32,
) -> ImageLocation {
  sg_image_location_set_mip_level(self, value)
  self
}

///|
pub fn ImageLocation::x(self : ImageLocation) -> Int32 {
  sg_image_location_get_x(self)
}

///|
pub fn ImageLocation::set_x(
  self : ImageLocation,
  value : Int32,
) -> ImageLocation {
  sg_image_location_set_x(self, value)
  self
}

///|
pub fn ImageLocation::y(self : ImageLocation) -> Int32 {
  sg_image_location_get_y(self)
}

///|
pub fn ImageLocation::set_y(
  self : ImageLocation,
  value : Int32,
) -> ImageLocation {
  sg_image_location_set_y(self, value)
  self
}

///|
pub fn ImageLocation::slice(self : ImageLocation) -> Int32 {
  sg_image_location_get_slice(self)
}

///|
pub fn ImageLocation::set_slice(
  self : ImageLocation,
  value : Int32,
) -> ImageLocation {
  sg_image_location_set_slice(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type WriteImageSource

///|
pub fn WriteImageSource::new() -> WriteImageSource {
  sg_write_image_source_new()
}

///|
pub fn WriteImageSource::copy(self : WriteImageSource) -> WriteImageSource {
  sg_write_image_source_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WriteImageSource::unsafe_native_handle(
  self : WriteImageSource,
) -> @native.Handle {
  sg_write_image_source_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WriteImageSource::unsafe_from_native(
  ptr : @native.Handle,
) -> WriteImageSource {
  sg_write_image_source_from_native(ptr)
}

///|
pub fn WriteImageSource::data(self : WriteImageSource) -> Range {
  sg_write_image_source_get_data(self)
}

///|
pub fn WriteImageSource::set_data(
  self : WriteImageSource,
  value : Range,
) -> WriteImageSource {
  sg_write_image_source_set_data(self, value)
  self
}

///|
pub fn WriteImageSource::offset(self : WriteImageSource) -> UInt64 {
  sg_write_image_source_get_offset(self)
}

///|
pub fn WriteImageSource::set_offset(
  self : WriteImageSource,
  value : UInt64,
) -> WriteImageSource {
  sg_write_image_source_set_offset(self, value)
  self
}

///|
pub fn WriteImageSource::bytes_per_row(self : WriteImageSource) -> Int32 {
  sg_write_image_source_get_bytes_per_row(self)
}

///|
pub fn WriteImageSource::set_bytes_per_row(
  self : WriteImageSource,
  value : Int32,
) -> WriteImageSource {
  sg_write_image_source_set_bytes_per_row(self, value)
  self
}

///|
pub fn WriteImageSource::bytes_per_slice(self : WriteImageSource) -> Int32 {
  sg_write_image_source_get_bytes_per_slice(self)
}

///|
pub fn WriteImageSource::set_bytes_per_slice(
  self : WriteImageSource,
  value : Int32,
) -> WriteImageSource {
  sg_write_image_source_set_bytes_per_slice(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type WriteImageDesc

///|
pub fn WriteImageDesc::new() -> WriteImageDesc {
  sg_write_image_desc_new()
}

///|
pub fn WriteImageDesc::copy(self : WriteImageDesc) -> WriteImageDesc {
  sg_write_image_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WriteImageDesc::unsafe_native_handle(
  self : WriteImageDesc,
) -> @native.Handle {
  sg_write_image_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WriteImageDesc::unsafe_from_native(
  ptr : @native.Handle,
) -> WriteImageDesc {
  sg_write_image_desc_from_native(ptr)
}

///|
pub fn WriteImageDesc::src(self : WriteImageDesc) -> WriteImageSource {
  sg_write_image_desc_get_src(self)
}

///|
pub fn WriteImageDesc::set_src(
  self : WriteImageDesc,
  value : WriteImageSource,
) -> WriteImageDesc {
  sg_write_image_desc_set_src(self, value)
  self
}

///|
pub fn WriteImageDesc::dst(self : WriteImageDesc) -> ImageLocation {
  sg_write_image_desc_get_dst(self)
}

///|
pub fn WriteImageDesc::set_dst(
  self : WriteImageDesc,
  value : ImageLocation,
) -> WriteImageDesc {
  sg_write_image_desc_set_dst(self, value)
  self
}

///|
pub fn WriteImageDesc::size(self : WriteImageDesc) -> ImageExtent {
  sg_write_image_desc_get_size(self)
}

///|
pub fn WriteImageDesc::set_size(
  self : WriteImageDesc,
  value : ImageExtent,
) -> WriteImageDesc {
  sg_write_image_desc_set_size(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type BufferLocation

///|
pub fn BufferLocation::new() -> BufferLocation {
  sg_buffer_location_new()
}

///|
pub fn BufferLocation::copy(self : BufferLocation) -> BufferLocation {
  sg_buffer_location_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn BufferLocation::unsafe_native_handle(
  self : BufferLocation,
) -> @native.Handle {
  sg_buffer_location_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn BufferLocation::unsafe_from_native(
  ptr : @native.Handle,
) -> BufferLocation {
  sg_buffer_location_from_native(ptr)
}

///|
pub fn BufferLocation::buffer(self : BufferLocation) -> Buffer {
  Buffer(sg_buffer_location_get_buffer(self))
}

///|
pub fn BufferLocation::set_buffer(
  self : BufferLocation,
  value : Buffer,
) -> BufferLocation {
  sg_buffer_location_set_buffer(self, value.0)
  self
}

///|
pub fn BufferLocation::offset(self : BufferLocation) -> UInt64 {
  sg_buffer_location_get_offset(self)
}

///|
pub fn BufferLocation::set_offset(
  self : BufferLocation,
  value : UInt64,
) -> BufferLocation {
  sg_buffer_location_set_offset(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type BufferImageLocation

///|
pub fn BufferImageLocation::new() -> BufferImageLocation {
  sg_buffer_image_location_new()
}

///|
pub fn BufferImageLocation::copy(
  self : BufferImageLocation,
) -> BufferImageLocation {
  sg_buffer_image_location_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn BufferImageLocation::unsafe_native_handle(
  self : BufferImageLocation,
) -> @native.Handle {
  sg_buffer_image_location_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn BufferImageLocation::unsafe_from_native(
  ptr : @native.Handle,
) -> BufferImageLocation {
  sg_buffer_image_location_from_native(ptr)
}

///|
pub fn BufferImageLocation::buffer(self : BufferImageLocation) -> Buffer {
  Buffer(sg_buffer_image_location_get_buffer(self))
}

///|
pub fn BufferImageLocation::set_buffer(
  self : BufferImageLocation,
  value : Buffer,
) -> BufferImageLocation {
  sg_buffer_image_location_set_buffer(self, value.0)
  self
}

///|
pub fn BufferImageLocation::offset(self : BufferImageLocation) -> UInt64 {
  sg_buffer_image_location_get_offset(self)
}

///|
pub fn BufferImageLocation::set_offset(
  self : BufferImageLocation,
  value : UInt64,
) -> BufferImageLocation {
  sg_buffer_image_location_set_offset(self, value)
  self
}

///|
pub fn BufferImageLocation::bytes_per_row(self : BufferImageLocation) -> Int32 {
  sg_buffer_image_location_get_bytes_per_row(self)
}

///|
pub fn BufferImageLocation::set_bytes_per_row(
  self : BufferImageLocation,
  value : Int32,
) -> BufferImageLocation {
  sg_buffer_image_location_set_bytes_per_row(self, value)
  self
}

///|
pub fn BufferImageLocation::bytes_per_slice(
  self : BufferImageLocation,
) -> Int32 {
  sg_buffer_image_location_get_bytes_per_slice(self)
}

///|
pub fn BufferImageLocation::set_bytes_per_slice(
  self : BufferImageLocation,
  value : Int32,
) -> BufferImageLocation {
  sg_buffer_image_location_set_bytes_per_slice(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type WriteBufferSource

///|
pub fn WriteBufferSource::new() -> WriteBufferSource {
  sg_write_buffer_source_new()
}

///|
pub fn WriteBufferSource::copy(self : WriteBufferSource) -> WriteBufferSource {
  sg_write_buffer_source_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WriteBufferSource::unsafe_native_handle(
  self : WriteBufferSource,
) -> @native.Handle {
  sg_write_buffer_source_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WriteBufferSource::unsafe_from_native(
  ptr : @native.Handle,
) -> WriteBufferSource {
  sg_write_buffer_source_from_native(ptr)
}

///|
pub fn WriteBufferSource::data(self : WriteBufferSource) -> Range {
  sg_write_buffer_source_get_data(self)
}

///|
pub fn WriteBufferSource::set_data(
  self : WriteBufferSource,
  value : Range,
) -> WriteBufferSource {
  sg_write_buffer_source_set_data(self, value)
  self
}

///|
pub fn WriteBufferSource::offset(self : WriteBufferSource) -> UInt64 {
  sg_write_buffer_source_get_offset(self)
}

///|
pub fn WriteBufferSource::set_offset(
  self : WriteBufferSource,
  value : UInt64,
) -> WriteBufferSource {
  sg_write_buffer_source_set_offset(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type WriteBufferDesc

///|
pub fn WriteBufferDesc::new() -> WriteBufferDesc {
  sg_write_buffer_desc_new()
}

///|
pub fn WriteBufferDesc::copy(self : WriteBufferDesc) -> WriteBufferDesc {
  sg_write_buffer_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WriteBufferDesc::unsafe_native_handle(
  self : WriteBufferDesc,
) -> @native.Handle {
  sg_write_buffer_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WriteBufferDesc::unsafe_from_native(
  ptr : @native.Handle,
) -> WriteBufferDesc {
  sg_write_buffer_desc_from_native(ptr)
}

///|
pub fn WriteBufferDesc::src(self : WriteBufferDesc) -> WriteBufferSource {
  sg_write_buffer_desc_get_src(self)
}

///|
pub fn WriteBufferDesc::set_src(
  self : WriteBufferDesc,
  value : WriteBufferSource,
) -> WriteBufferDesc {
  sg_write_buffer_desc_set_src(self, value)
  self
}

///|
pub fn WriteBufferDesc::dst(self : WriteBufferDesc) -> BufferLocation {
  sg_write_buffer_desc_get_dst(self)
}

///|
pub fn WriteBufferDesc::set_dst(
  self : WriteBufferDesc,
  value : BufferLocation,
) -> WriteBufferDesc {
  sg_write_buffer_desc_set_dst(self, value)
  self
}

///|
pub fn WriteBufferDesc::size(self : WriteBufferDesc) -> UInt64 {
  sg_write_buffer_desc_get_size(self)
}

///|
pub fn WriteBufferDesc::set_size(
  self : WriteBufferDesc,
  value : UInt64,
) -> WriteBufferDesc {
  sg_write_buffer_desc_set_size(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type CopyBufferToBufferDesc

///|
pub fn CopyBufferToBufferDesc::new() -> CopyBufferToBufferDesc {
  sg_copy_buffer_to_buffer_desc_new()
}

///|
pub fn CopyBufferToBufferDesc::copy(
  self : CopyBufferToBufferDesc,
) -> CopyBufferToBufferDesc {
  sg_copy_buffer_to_buffer_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn CopyBufferToBufferDesc::unsafe_native_handle(
  self : CopyBufferToBufferDesc,
) -> @native.Handle {
  sg_copy_buffer_to_buffer_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn CopyBufferToBufferDesc::unsafe_from_native(
  ptr : @native.Handle,
) -> CopyBufferToBufferDesc {
  sg_copy_buffer_to_buffer_desc_from_native(ptr)
}

///|
pub fn CopyBufferToBufferDesc::src(
  self : CopyBufferToBufferDesc,
) -> BufferLocation {
  sg_copy_buffer_to_buffer_desc_get_src(self)
}

///|
pub fn CopyBufferToBufferDesc::set_src(
  self : CopyBufferToBufferDesc,
  value : BufferLocation,
) -> CopyBufferToBufferDesc {
  sg_copy_buffer_to_buffer_desc_set_src(self, value)
  self
}

///|
pub fn CopyBufferToBufferDesc::dst(
  self : CopyBufferToBufferDesc,
) -> BufferLocation {
  sg_copy_buffer_to_buffer_desc_get_dst(self)
}

///|
pub fn CopyBufferToBufferDesc::set_dst(
  self : CopyBufferToBufferDesc,
  value : BufferLocation,
) -> CopyBufferToBufferDesc {
  sg_copy_buffer_to_buffer_desc_set_dst(self, value)
  self
}

///|
pub fn CopyBufferToBufferDesc::size(self : CopyBufferToBufferDesc) -> UInt64 {
  sg_copy_buffer_to_buffer_desc_get_size(self)
}

///|
pub fn CopyBufferToBufferDesc::set_size(
  self : CopyBufferToBufferDesc,
  value : UInt64,
) -> CopyBufferToBufferDesc {
  sg_copy_buffer_to_buffer_desc_set_size(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type CopyBufferToImageDesc

///|
pub fn CopyBufferToImageDesc::new() -> CopyBufferToImageDesc {
  sg_copy_buffer_to_image_desc_new()
}

///|
pub fn CopyBufferToImageDesc::copy(
  self : CopyBufferToImageDesc,
) -> CopyBufferToImageDesc {
  sg_copy_buffer_to_image_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn CopyBufferToImageDesc::unsafe_native_handle(
  self : CopyBufferToImageDesc,
) -> @native.Handle {
  sg_copy_buffer_to_image_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn CopyBufferToImageDesc::unsafe_from_native(
  ptr : @native.Handle,
) -> CopyBufferToImageDesc {
  sg_copy_buffer_to_image_desc_from_native(ptr)
}

///|
pub fn CopyBufferToImageDesc::src(
  self : CopyBufferToImageDesc,
) -> BufferImageLocation {
  sg_copy_buffer_to_image_desc_get_src(self)
}

///|
pub fn CopyBufferToImageDesc::set_src(
  self : CopyBufferToImageDesc,
  value : BufferImageLocation,
) -> CopyBufferToImageDesc {
  sg_copy_buffer_to_image_desc_set_src(self, value)
  self
}

///|
pub fn CopyBufferToImageDesc::dst(
  self : CopyBufferToImageDesc,
) -> ImageLocation {
  sg_copy_buffer_to_image_desc_get_dst(self)
}

///|
pub fn CopyBufferToImageDesc::set_dst(
  self : CopyBufferToImageDesc,
  value : ImageLocation,
) -> CopyBufferToImageDesc {
  sg_copy_buffer_to_image_desc_set_dst(self, value)
  self
}

///|
pub fn CopyBufferToImageDesc::size(self : CopyBufferToImageDesc) -> ImageExtent {
  sg_copy_buffer_to_image_desc_get_size(self)
}

///|
pub fn CopyBufferToImageDesc::set_size(
  self : CopyBufferToImageDesc,
  value : ImageExtent,
) -> CopyBufferToImageDesc {
  sg_copy_buffer_to_image_desc_set_size(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type CopyImageToImageDesc

///|
pub fn CopyImageToImageDesc::new() -> CopyImageToImageDesc {
  sg_copy_image_to_image_desc_new()
}

///|
pub fn CopyImageToImageDesc::copy(
  self : CopyImageToImageDesc,
) -> CopyImageToImageDesc {
  sg_copy_image_to_image_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn CopyImageToImageDesc::unsafe_native_handle(
  self : CopyImageToImageDesc,
) -> @native.Handle {
  sg_copy_image_to_image_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn CopyImageToImageDesc::unsafe_from_native(
  ptr : @native.Handle,
) -> CopyImageToImageDesc {
  sg_copy_image_to_image_desc_from_native(ptr)
}

///|
pub fn CopyImageToImageDesc::src(self : CopyImageToImageDesc) -> ImageLocation {
  sg_copy_image_to_image_desc_get_src(self)
}

///|
pub fn CopyImageToImageDesc::set_src(
  self : CopyImageToImageDesc,
  value : ImageLocation,
) -> CopyImageToImageDesc {
  sg_copy_image_to_image_desc_set_src(self, value)
  self
}

///|
pub fn CopyImageToImageDesc::dst(self : CopyImageToImageDesc) -> ImageLocation {
  sg_copy_image_to_image_desc_get_dst(self)
}

///|
pub fn CopyImageToImageDesc::set_dst(
  self : CopyImageToImageDesc,
  value : ImageLocation,
) -> CopyImageToImageDesc {
  sg_copy_image_to_image_desc_set_dst(self, value)
  self
}

///|
pub fn CopyImageToImageDesc::size(self : CopyImageToImageDesc) -> ImageExtent {
  sg_copy_image_to_image_desc_get_size(self)
}

///|
pub fn CopyImageToImageDesc::set_size(
  self : CopyImageToImageDesc,
  value : ImageExtent,
) -> CopyImageToImageDesc {
  sg_copy_image_to_image_desc_set_size(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ImageDesc

///|
pub fn ImageDesc::new() -> ImageDesc {
  sg_image_desc_new()
}

///|
pub fn ImageDesc::copy(self : ImageDesc) -> ImageDesc {
  sg_image_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ImageDesc::unsafe_native_handle(self : ImageDesc) -> @native.Handle {
  sg_image_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ImageDesc::unsafe_from_native(ptr : @native.Handle) -> ImageDesc {
  sg_image_desc_from_native(ptr)
}

///|
pub fn ImageDesc::type_(self : ImageDesc) -> ImageType {
  sg_image_desc_get_type(self)
}

///|
pub fn ImageDesc::set_type(self : ImageDesc, value : ImageType) -> ImageDesc {
  sg_image_desc_set_type(self, value)
  self
}

///|
pub fn ImageDesc::usage(self : ImageDesc) -> ImageUsage {
  sg_image_desc_get_usage(self)
}

///|
pub fn ImageDesc::set_usage(self : ImageDesc, value : ImageUsage) -> ImageDesc {
  sg_image_desc_set_usage(self, value)
  self
}

///|
pub fn ImageDesc::width(self : ImageDesc) -> Int32 {
  sg_image_desc_get_width(self)
}

///|
pub fn ImageDesc::set_width(self : ImageDesc, value : Int32) -> ImageDesc {
  sg_image_desc_set_width(self, value)
  self
}

///|
pub fn ImageDesc::height(self : ImageDesc) -> Int32 {
  sg_image_desc_get_height(self)
}

///|
pub fn ImageDesc::set_height(self : ImageDesc, value : Int32) -> ImageDesc {
  sg_image_desc_set_height(self, value)
  self
}

///|
pub fn ImageDesc::num_slices(self : ImageDesc) -> Int32 {
  sg_image_desc_get_num_slices(self)
}

///|
pub fn ImageDesc::set_num_slices(self : ImageDesc, value : Int32) -> ImageDesc {
  sg_image_desc_set_num_slices(self, value)
  self
}

///|
pub fn ImageDesc::num_mipmaps(self : ImageDesc) -> Int32 {
  sg_image_desc_get_num_mipmaps(self)
}

///|
pub fn ImageDesc::set_num_mipmaps(self : ImageDesc, value : Int32) -> ImageDesc {
  sg_image_desc_set_num_mipmaps(self, value)
  self
}

///|
pub fn ImageDesc::pixel_format(self : ImageDesc) -> PixelFormat {
  sg_image_desc_get_pixel_format(self)
}

///|
pub fn ImageDesc::set_pixel_format(
  self : ImageDesc,
  value : PixelFormat,
) -> ImageDesc {
  sg_image_desc_set_pixel_format(self, value)
  self
}

///|
pub fn ImageDesc::sample_count(self : ImageDesc) -> Int32 {
  sg_image_desc_get_sample_count(self)
}

///|
pub fn ImageDesc::set_sample_count(
  self : ImageDesc,
  value : Int32,
) -> ImageDesc {
  sg_image_desc_set_sample_count(self, value)
  self
}

///|
pub fn ImageDesc::data(self : ImageDesc) -> Range {
  sg_image_desc_get_data(self)
}

///|
pub fn ImageDesc::set_data(self : ImageDesc, value : Range) -> ImageDesc {
  sg_image_desc_set_data(self, value)
  self
}

///|
pub fn ImageDesc::label(self : ImageDesc) -> String {
  @utf8.decode_lossy(sg_image_desc_get_label(self))
}

///|
pub fn ImageDesc::set_label(self : ImageDesc, value : String) -> ImageDesc {
  sg_image_desc_set_label(self, @native.cstring(value))
  self
}

///|
pub fn ImageDesc::gl_texture(self : ImageDesc) -> UInt32 {
  sg_image_desc_get_gl_texture(self)
}

///|
pub fn ImageDesc::set_gl_texture(self : ImageDesc, value : UInt32) -> ImageDesc {
  sg_image_desc_set_gl_texture(self, value)
  self
}

///|
pub fn ImageDesc::gl_texture_target(self : ImageDesc) -> UInt32 {
  sg_image_desc_get_gl_texture_target(self)
}

///|
pub fn ImageDesc::set_gl_texture_target(
  self : ImageDesc,
  value : UInt32,
) -> ImageDesc {
  sg_image_desc_set_gl_texture_target(self, value)
  self
}

///|
pub fn ImageDesc::mtl_texture(self : ImageDesc) -> @native.Handle {
  sg_image_desc_get_mtl_texture(self)
}

///|
pub fn ImageDesc::set_mtl_texture(
  self : ImageDesc,
  value : @native.Handle,
) -> ImageDesc {
  sg_image_desc_set_mtl_texture(self, value)
  self
}

///|
pub fn ImageDesc::d3d11_texture(self : ImageDesc) -> @native.Handle {
  sg_image_desc_get_d3d11_texture(self)
}

///|
pub fn ImageDesc::set_d3d11_texture(
  self : ImageDesc,
  value : @native.Handle,
) -> ImageDesc {
  sg_image_desc_set_d3d11_texture(self, value)
  self
}

///|
pub fn ImageDesc::wgpu_texture(self : ImageDesc) -> @native.Handle {
  sg_image_desc_get_wgpu_texture(self)
}

///|
pub fn ImageDesc::set_wgpu_texture(
  self : ImageDesc,
  value : @native.Handle,
) -> ImageDesc {
  sg_image_desc_set_wgpu_texture(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type SamplerDesc

///|
pub fn SamplerDesc::new() -> SamplerDesc {
  sg_sampler_desc_new()
}

///|
pub fn SamplerDesc::copy(self : SamplerDesc) -> SamplerDesc {
  sg_sampler_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn SamplerDesc::unsafe_native_handle(self : SamplerDesc) -> @native.Handle {
  sg_sampler_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn SamplerDesc::unsafe_from_native(ptr : @native.Handle) -> SamplerDesc {
  sg_sampler_desc_from_native(ptr)
}

///|
pub fn SamplerDesc::min_filter(self : SamplerDesc) -> Filter {
  sg_sampler_desc_get_min_filter(self)
}

///|
pub fn SamplerDesc::set_min_filter(
  self : SamplerDesc,
  value : Filter,
) -> SamplerDesc {
  sg_sampler_desc_set_min_filter(self, value)
  self
}

///|
pub fn SamplerDesc::mag_filter(self : SamplerDesc) -> Filter {
  sg_sampler_desc_get_mag_filter(self)
}

///|
pub fn SamplerDesc::set_mag_filter(
  self : SamplerDesc,
  value : Filter,
) -> SamplerDesc {
  sg_sampler_desc_set_mag_filter(self, value)
  self
}

///|
pub fn SamplerDesc::mipmap_filter(self : SamplerDesc) -> Filter {
  sg_sampler_desc_get_mipmap_filter(self)
}

///|
pub fn SamplerDesc::set_mipmap_filter(
  self : SamplerDesc,
  value : Filter,
) -> SamplerDesc {
  sg_sampler_desc_set_mipmap_filter(self, value)
  self
}

///|
pub fn SamplerDesc::wrap_u(self : SamplerDesc) -> Wrap {
  sg_sampler_desc_get_wrap_u(self)
}

///|
pub fn SamplerDesc::set_wrap_u(self : SamplerDesc, value : Wrap) -> SamplerDesc {
  sg_sampler_desc_set_wrap_u(self, value)
  self
}

///|
pub fn SamplerDesc::wrap_v(self : SamplerDesc) -> Wrap {
  sg_sampler_desc_get_wrap_v(self)
}

///|
pub fn SamplerDesc::set_wrap_v(self : SamplerDesc, value : Wrap) -> SamplerDesc {
  sg_sampler_desc_set_wrap_v(self, value)
  self
}

///|
pub fn SamplerDesc::wrap_w(self : SamplerDesc) -> Wrap {
  sg_sampler_desc_get_wrap_w(self)
}

///|
pub fn SamplerDesc::set_wrap_w(self : SamplerDesc, value : Wrap) -> SamplerDesc {
  sg_sampler_desc_set_wrap_w(self, value)
  self
}

///|
pub fn SamplerDesc::min_lod(self : SamplerDesc) -> Float {
  sg_sampler_desc_get_min_lod(self)
}

///|
pub fn SamplerDesc::set_min_lod(
  self : SamplerDesc,
  value : Float,
) -> SamplerDesc {
  sg_sampler_desc_set_min_lod(self, value)
  self
}

///|
pub fn SamplerDesc::max_lod(self : SamplerDesc) -> Float {
  sg_sampler_desc_get_max_lod(self)
}

///|
pub fn SamplerDesc::set_max_lod(
  self : SamplerDesc,
  value : Float,
) -> SamplerDesc {
  sg_sampler_desc_set_max_lod(self, value)
  self
}

///|
pub fn SamplerDesc::border_color(self : SamplerDesc) -> BorderColor {
  sg_sampler_desc_get_border_color(self)
}

///|
pub fn SamplerDesc::set_border_color(
  self : SamplerDesc,
  value : BorderColor,
) -> SamplerDesc {
  sg_sampler_desc_set_border_color(self, value)
  self
}

///|
pub fn SamplerDesc::compare(self : SamplerDesc) -> CompareFunc {
  sg_sampler_desc_get_compare(self)
}

///|
pub fn SamplerDesc::set_compare(
  self : SamplerDesc,
  value : CompareFunc,
) -> SamplerDesc {
  sg_sampler_desc_set_compare(self, value)
  self
}

///|
pub fn SamplerDesc::max_anisotropy(self : SamplerDesc) -> UInt32 {
  sg_sampler_desc_get_max_anisotropy(self)
}

///|
pub fn SamplerDesc::set_max_anisotropy(
  self : SamplerDesc,
  value : UInt32,
) -> SamplerDesc {
  sg_sampler_desc_set_max_anisotropy(self, value)
  self
}

///|
pub fn SamplerDesc::label(self : SamplerDesc) -> String {
  @utf8.decode_lossy(sg_sampler_desc_get_label(self))
}

///|
pub fn SamplerDesc::set_label(
  self : SamplerDesc,
  value : String,
) -> SamplerDesc {
  sg_sampler_desc_set_label(self, @native.cstring(value))
  self
}

///|
pub fn SamplerDesc::gl_sampler(self : SamplerDesc) -> UInt32 {
  sg_sampler_desc_get_gl_sampler(self)
}

///|
pub fn SamplerDesc::set_gl_sampler(
  self : SamplerDesc,
  value : UInt32,
) -> SamplerDesc {
  sg_sampler_desc_set_gl_sampler(self, value)
  self
}

///|
pub fn SamplerDesc::mtl_sampler(self : SamplerDesc) -> @native.Handle {
  sg_sampler_desc_get_mtl_sampler(self)
}

///|
pub fn SamplerDesc::set_mtl_sampler(
  self : SamplerDesc,
  value : @native.Handle,
) -> SamplerDesc {
  sg_sampler_desc_set_mtl_sampler(self, value)
  self
}

///|
pub fn SamplerDesc::d3d11_sampler(self : SamplerDesc) -> @native.Handle {
  sg_sampler_desc_get_d3d11_sampler(self)
}

///|
pub fn SamplerDesc::set_d3d11_sampler(
  self : SamplerDesc,
  value : @native.Handle,
) -> SamplerDesc {
  sg_sampler_desc_set_d3d11_sampler(self, value)
  self
}

///|
pub fn SamplerDesc::wgpu_sampler(self : SamplerDesc) -> @native.Handle {
  sg_sampler_desc_get_wgpu_sampler(self)
}

///|
pub fn SamplerDesc::set_wgpu_sampler(
  self : SamplerDesc,
  value : @native.Handle,
) -> SamplerDesc {
  sg_sampler_desc_set_wgpu_sampler(self, value)
  self
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
pub fn ShaderStage::to_int(self : ShaderStage) -> Int32 {
  sg_shader_stage_int(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ShaderFunction

///|
pub fn ShaderFunction::new() -> ShaderFunction {
  sg_shader_function_new()
}

///|
pub fn ShaderFunction::copy(self : ShaderFunction) -> ShaderFunction {
  sg_shader_function_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ShaderFunction::unsafe_native_handle(
  self : ShaderFunction,
) -> @native.Handle {
  sg_shader_function_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ShaderFunction::unsafe_from_native(
  ptr : @native.Handle,
) -> ShaderFunction {
  sg_shader_function_from_native(ptr)
}

///|
pub fn ShaderFunction::source(self : ShaderFunction) -> String {
  @utf8.decode_lossy(sg_shader_function_get_source(self))
}

///|
pub fn ShaderFunction::set_source(
  self : ShaderFunction,
  value : String,
) -> ShaderFunction {
  sg_shader_function_set_source(self, @native.cstring(value))
  self
}

///|
pub fn ShaderFunction::bytecode(self : ShaderFunction) -> Range {
  sg_shader_function_get_bytecode(self)
}

///|
pub fn ShaderFunction::set_bytecode(
  self : ShaderFunction,
  value : Range,
) -> ShaderFunction {
  sg_shader_function_set_bytecode(self, value)
  self
}

///|
pub fn ShaderFunction::entry(self : ShaderFunction) -> String {
  @utf8.decode_lossy(sg_shader_function_get_entry(self))
}

///|
pub fn ShaderFunction::set_entry(
  self : ShaderFunction,
  value : String,
) -> ShaderFunction {
  sg_shader_function_set_entry(self, @native.cstring(value))
  self
}

///|
pub fn ShaderFunction::d3d11_target(self : ShaderFunction) -> String {
  @utf8.decode_lossy(sg_shader_function_get_d3d11_target(self))
}

///|
pub fn ShaderFunction::set_d3d11_target(
  self : ShaderFunction,
  value : String,
) -> ShaderFunction {
  sg_shader_function_set_d3d11_target(self, @native.cstring(value))
  self
}

///|
pub fn ShaderFunction::d3d11_filepath(self : ShaderFunction) -> String {
  @utf8.decode_lossy(sg_shader_function_get_d3d11_filepath(self))
}

///|
pub fn ShaderFunction::set_d3d11_filepath(
  self : ShaderFunction,
  value : String,
) -> ShaderFunction {
  sg_shader_function_set_d3d11_filepath(self, @native.cstring(value))
  self
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
pub fn ShaderAttrBaseType::to_int(self : ShaderAttrBaseType) -> Int32 {
  sg_shader_attr_base_type_int(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ShaderVertexAttr

///|
pub fn ShaderVertexAttr::new() -> ShaderVertexAttr {
  sg_shader_vertex_attr_new()
}

///|
pub fn ShaderVertexAttr::copy(self : ShaderVertexAttr) -> ShaderVertexAttr {
  sg_shader_vertex_attr_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ShaderVertexAttr::unsafe_native_handle(
  self : ShaderVertexAttr,
) -> @native.Handle {
  sg_shader_vertex_attr_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ShaderVertexAttr::unsafe_from_native(
  ptr : @native.Handle,
) -> ShaderVertexAttr {
  sg_shader_vertex_attr_from_native(ptr)
}

///|
pub fn ShaderVertexAttr::base_type(
  self : ShaderVertexAttr,
) -> ShaderAttrBaseType {
  sg_shader_vertex_attr_get_base_type(self)
}

///|
pub fn ShaderVertexAttr::set_base_type(
  self : ShaderVertexAttr,
  value : ShaderAttrBaseType,
) -> ShaderVertexAttr {
  sg_shader_vertex_attr_set_base_type(self, value)
  self
}

///|
pub fn ShaderVertexAttr::glsl_name(self : ShaderVertexAttr) -> String {
  @utf8.decode_lossy(sg_shader_vertex_attr_get_glsl_name(self))
}

///|
pub fn ShaderVertexAttr::set_glsl_name(
  self : ShaderVertexAttr,
  value : String,
) -> ShaderVertexAttr {
  sg_shader_vertex_attr_set_glsl_name(self, @native.cstring(value))
  self
}

///|
pub fn ShaderVertexAttr::hlsl_sem_name(self : ShaderVertexAttr) -> String {
  @utf8.decode_lossy(sg_shader_vertex_attr_get_hlsl_sem_name(self))
}

///|
pub fn ShaderVertexAttr::set_hlsl_sem_name(
  self : ShaderVertexAttr,
  value : String,
) -> ShaderVertexAttr {
  sg_shader_vertex_attr_set_hlsl_sem_name(self, @native.cstring(value))
  self
}

///|
pub fn ShaderVertexAttr::hlsl_sem_index(self : ShaderVertexAttr) -> Byte {
  sg_shader_vertex_attr_get_hlsl_sem_index(self)
}

///|
pub fn ShaderVertexAttr::set_hlsl_sem_index(
  self : ShaderVertexAttr,
  value : Byte,
) -> ShaderVertexAttr {
  sg_shader_vertex_attr_set_hlsl_sem_index(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type GlslShaderUniform

///|
pub fn GlslShaderUniform::new() -> GlslShaderUniform {
  sg_glsl_shader_uniform_new()
}

///|
pub fn GlslShaderUniform::copy(self : GlslShaderUniform) -> GlslShaderUniform {
  sg_glsl_shader_uniform_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn GlslShaderUniform::unsafe_native_handle(
  self : GlslShaderUniform,
) -> @native.Handle {
  sg_glsl_shader_uniform_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn GlslShaderUniform::unsafe_from_native(
  ptr : @native.Handle,
) -> GlslShaderUniform {
  sg_glsl_shader_uniform_from_native(ptr)
}

///|
pub fn GlslShaderUniform::type_(self : GlslShaderUniform) -> UniformType {
  sg_glsl_shader_uniform_get_type(self)
}

///|
pub fn GlslShaderUniform::set_type(
  self : GlslShaderUniform,
  value : UniformType,
) -> GlslShaderUniform {
  sg_glsl_shader_uniform_set_type(self, value)
  self
}

///|
pub fn GlslShaderUniform::array_count(self : GlslShaderUniform) -> UInt16 {
  sg_glsl_shader_uniform_get_array_count(self)
}

///|
pub fn GlslShaderUniform::set_array_count(
  self : GlslShaderUniform,
  value : UInt16,
) -> GlslShaderUniform {
  sg_glsl_shader_uniform_set_array_count(self, value)
  self
}

///|
pub fn GlslShaderUniform::glsl_name(self : GlslShaderUniform) -> String {
  @utf8.decode_lossy(sg_glsl_shader_uniform_get_glsl_name(self))
}

///|
pub fn GlslShaderUniform::set_glsl_name(
  self : GlslShaderUniform,
  value : String,
) -> GlslShaderUniform {
  sg_glsl_shader_uniform_set_glsl_name(self, @native.cstring(value))
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ShaderUniformBlock

///|
pub fn ShaderUniformBlock::new() -> ShaderUniformBlock {
  sg_shader_uniform_block_new()
}

///|
pub fn ShaderUniformBlock::copy(
  self : ShaderUniformBlock,
) -> ShaderUniformBlock {
  sg_shader_uniform_block_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ShaderUniformBlock::unsafe_native_handle(
  self : ShaderUniformBlock,
) -> @native.Handle {
  sg_shader_uniform_block_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ShaderUniformBlock::unsafe_from_native(
  ptr : @native.Handle,
) -> ShaderUniformBlock {
  sg_shader_uniform_block_from_native(ptr)
}

///|
pub fn ShaderUniformBlock::stage(self : ShaderUniformBlock) -> ShaderStage {
  sg_shader_uniform_block_get_stage(self)
}

///|
pub fn ShaderUniformBlock::set_stage(
  self : ShaderUniformBlock,
  value : ShaderStage,
) -> ShaderUniformBlock {
  sg_shader_uniform_block_set_stage(self, value)
  self
}

///|
pub fn ShaderUniformBlock::size(self : ShaderUniformBlock) -> UInt32 {
  sg_shader_uniform_block_get_size(self)
}

///|
pub fn ShaderUniformBlock::set_size(
  self : ShaderUniformBlock,
  value : UInt32,
) -> ShaderUniformBlock {
  sg_shader_uniform_block_set_size(self, value)
  self
}

///|
pub fn ShaderUniformBlock::hlsl_register_b_n(self : ShaderUniformBlock) -> Byte {
  sg_shader_uniform_block_get_hlsl_register_b_n(self)
}

///|
pub fn ShaderUniformBlock::set_hlsl_register_b_n(
  self : ShaderUniformBlock,
  value : Byte,
) -> ShaderUniformBlock {
  sg_shader_uniform_block_set_hlsl_register_b_n(self, value)
  self
}

///|
pub fn ShaderUniformBlock::msl_buffer_n(self : ShaderUniformBlock) -> Byte {
  sg_shader_uniform_block_get_msl_buffer_n(self)
}

///|
pub fn ShaderUniformBlock::set_msl_buffer_n(
  self : ShaderUniformBlock,
  value : Byte,
) -> ShaderUniformBlock {
  sg_shader_uniform_block_set_msl_buffer_n(self, value)
  self
}

///|
pub fn ShaderUniformBlock::wgsl_group0_binding_n(
  self : ShaderUniformBlock,
) -> Byte {
  sg_shader_uniform_block_get_wgsl_group0_binding_n(self)
}

///|
pub fn ShaderUniformBlock::set_wgsl_group0_binding_n(
  self : ShaderUniformBlock,
  value : Byte,
) -> ShaderUniformBlock {
  sg_shader_uniform_block_set_wgsl_group0_binding_n(self, value)
  self
}

///|
pub fn ShaderUniformBlock::spirv_set0_binding_n(
  self : ShaderUniformBlock,
) -> Byte {
  sg_shader_uniform_block_get_spirv_set0_binding_n(self)
}

///|
pub fn ShaderUniformBlock::set_spirv_set0_binding_n(
  self : ShaderUniformBlock,
  value : Byte,
) -> ShaderUniformBlock {
  sg_shader_uniform_block_set_spirv_set0_binding_n(self, value)
  self
}

///|
pub fn ShaderUniformBlock::layout(self : ShaderUniformBlock) -> UniformLayout {
  sg_shader_uniform_block_get_layout(self)
}

///|
pub fn ShaderUniformBlock::set_layout(
  self : ShaderUniformBlock,
  value : UniformLayout,
) -> ShaderUniformBlock {
  sg_shader_uniform_block_set_layout(self, value)
  self
}

///|
pub fn ShaderUniformBlock::glsl_uniforms(
  self : ShaderUniformBlock,
  i0 : Int32,
) -> GlslShaderUniform {
  guard i0 >= 0 && i0 < 16 else {
    abort("descriptor array index out of bounds")
  }
  sg_shader_uniform_block_get_glsl_uniforms(self, i0)
}

///|
pub fn ShaderUniformBlock::set_glsl_uniforms(
  self : ShaderUniformBlock,
  i0 : Int32,
  value : GlslShaderUniform,
) -> ShaderUniformBlock {
  guard i0 >= 0 && i0 < 16 else {
    abort("descriptor array index out of bounds")
  }
  sg_shader_uniform_block_set_glsl_uniforms(self, i0, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ShaderTextureView

///|
pub fn ShaderTextureView::new() -> ShaderTextureView {
  sg_shader_texture_view_new()
}

///|
pub fn ShaderTextureView::copy(self : ShaderTextureView) -> ShaderTextureView {
  sg_shader_texture_view_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ShaderTextureView::unsafe_native_handle(
  self : ShaderTextureView,
) -> @native.Handle {
  sg_shader_texture_view_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ShaderTextureView::unsafe_from_native(
  ptr : @native.Handle,
) -> ShaderTextureView {
  sg_shader_texture_view_from_native(ptr)
}

///|
pub fn ShaderTextureView::stage(self : ShaderTextureView) -> ShaderStage {
  sg_shader_texture_view_get_stage(self)
}

///|
pub fn ShaderTextureView::set_stage(
  self : ShaderTextureView,
  value : ShaderStage,
) -> ShaderTextureView {
  sg_shader_texture_view_set_stage(self, value)
  self
}

///|
pub fn ShaderTextureView::image_type(self : ShaderTextureView) -> ImageType {
  sg_shader_texture_view_get_image_type(self)
}

///|
pub fn ShaderTextureView::set_image_type(
  self : ShaderTextureView,
  value : ImageType,
) -> ShaderTextureView {
  sg_shader_texture_view_set_image_type(self, value)
  self
}

///|
pub fn ShaderTextureView::sample_type(
  self : ShaderTextureView,
) -> ImageSampleType {
  sg_shader_texture_view_get_sample_type(self)
}

///|
pub fn ShaderTextureView::set_sample_type(
  self : ShaderTextureView,
  value : ImageSampleType,
) -> ShaderTextureView {
  sg_shader_texture_view_set_sample_type(self, value)
  self
}

///|
pub fn ShaderTextureView::multisampled(self : ShaderTextureView) -> Bool {
  sg_shader_texture_view_get_multisampled(self)
}

///|
pub fn ShaderTextureView::set_multisampled(
  self : ShaderTextureView,
  value : Bool,
) -> ShaderTextureView {
  sg_shader_texture_view_set_multisampled(self, value)
  self
}

///|
pub fn ShaderTextureView::hlsl_register_t_n(self : ShaderTextureView) -> Byte {
  sg_shader_texture_view_get_hlsl_register_t_n(self)
}

///|
pub fn ShaderTextureView::set_hlsl_register_t_n(
  self : ShaderTextureView,
  value : Byte,
) -> ShaderTextureView {
  sg_shader_texture_view_set_hlsl_register_t_n(self, value)
  self
}

///|
pub fn ShaderTextureView::msl_texture_n(self : ShaderTextureView) -> Byte {
  sg_shader_texture_view_get_msl_texture_n(self)
}

///|
pub fn ShaderTextureView::set_msl_texture_n(
  self : ShaderTextureView,
  value : Byte,
) -> ShaderTextureView {
  sg_shader_texture_view_set_msl_texture_n(self, value)
  self
}

///|
pub fn ShaderTextureView::wgsl_group1_binding_n(
  self : ShaderTextureView,
) -> Byte {
  sg_shader_texture_view_get_wgsl_group1_binding_n(self)
}

///|
pub fn ShaderTextureView::set_wgsl_group1_binding_n(
  self : ShaderTextureView,
  value : Byte,
) -> ShaderTextureView {
  sg_shader_texture_view_set_wgsl_group1_binding_n(self, value)
  self
}

///|
pub fn ShaderTextureView::spirv_set1_binding_n(
  self : ShaderTextureView,
) -> Byte {
  sg_shader_texture_view_get_spirv_set1_binding_n(self)
}

///|
pub fn ShaderTextureView::set_spirv_set1_binding_n(
  self : ShaderTextureView,
  value : Byte,
) -> ShaderTextureView {
  sg_shader_texture_view_set_spirv_set1_binding_n(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ShaderStorageBufferView

///|
pub fn ShaderStorageBufferView::new() -> ShaderStorageBufferView {
  sg_shader_storage_buffer_view_new()
}

///|
pub fn ShaderStorageBufferView::copy(
  self : ShaderStorageBufferView,
) -> ShaderStorageBufferView {
  sg_shader_storage_buffer_view_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ShaderStorageBufferView::unsafe_native_handle(
  self : ShaderStorageBufferView,
) -> @native.Handle {
  sg_shader_storage_buffer_view_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ShaderStorageBufferView::unsafe_from_native(
  ptr : @native.Handle,
) -> ShaderStorageBufferView {
  sg_shader_storage_buffer_view_from_native(ptr)
}

///|
pub fn ShaderStorageBufferView::stage(
  self : ShaderStorageBufferView,
) -> ShaderStage {
  sg_shader_storage_buffer_view_get_stage(self)
}

///|
pub fn ShaderStorageBufferView::set_stage(
  self : ShaderStorageBufferView,
  value : ShaderStage,
) -> ShaderStorageBufferView {
  sg_shader_storage_buffer_view_set_stage(self, value)
  self
}

///|
pub fn ShaderStorageBufferView::readonly_(
  self : ShaderStorageBufferView,
) -> Bool {
  sg_shader_storage_buffer_view_get_readonly(self)
}

///|
pub fn ShaderStorageBufferView::set_readonly(
  self : ShaderStorageBufferView,
  value : Bool,
) -> ShaderStorageBufferView {
  sg_shader_storage_buffer_view_set_readonly(self, value)
  self
}

///|
pub fn ShaderStorageBufferView::hlsl_register_t_n(
  self : ShaderStorageBufferView,
) -> Byte {
  sg_shader_storage_buffer_view_get_hlsl_register_t_n(self)
}

///|
pub fn ShaderStorageBufferView::set_hlsl_register_t_n(
  self : ShaderStorageBufferView,
  value : Byte,
) -> ShaderStorageBufferView {
  sg_shader_storage_buffer_view_set_hlsl_register_t_n(self, value)
  self
}

///|
pub fn ShaderStorageBufferView::hlsl_register_u_n(
  self : ShaderStorageBufferView,
) -> Byte {
  sg_shader_storage_buffer_view_get_hlsl_register_u_n(self)
}

///|
pub fn ShaderStorageBufferView::set_hlsl_register_u_n(
  self : ShaderStorageBufferView,
  value : Byte,
) -> ShaderStorageBufferView {
  sg_shader_storage_buffer_view_set_hlsl_register_u_n(self, value)
  self
}

///|
pub fn ShaderStorageBufferView::msl_buffer_n(
  self : ShaderStorageBufferView,
) -> Byte {
  sg_shader_storage_buffer_view_get_msl_buffer_n(self)
}

///|
pub fn ShaderStorageBufferView::set_msl_buffer_n(
  self : ShaderStorageBufferView,
  value : Byte,
) -> ShaderStorageBufferView {
  sg_shader_storage_buffer_view_set_msl_buffer_n(self, value)
  self
}

///|
pub fn ShaderStorageBufferView::wgsl_group1_binding_n(
  self : ShaderStorageBufferView,
) -> Byte {
  sg_shader_storage_buffer_view_get_wgsl_group1_binding_n(self)
}

///|
pub fn ShaderStorageBufferView::set_wgsl_group1_binding_n(
  self : ShaderStorageBufferView,
  value : Byte,
) -> ShaderStorageBufferView {
  sg_shader_storage_buffer_view_set_wgsl_group1_binding_n(self, value)
  self
}

///|
pub fn ShaderStorageBufferView::spirv_set1_binding_n(
  self : ShaderStorageBufferView,
) -> Byte {
  sg_shader_storage_buffer_view_get_spirv_set1_binding_n(self)
}

///|
pub fn ShaderStorageBufferView::set_spirv_set1_binding_n(
  self : ShaderStorageBufferView,
  value : Byte,
) -> ShaderStorageBufferView {
  sg_shader_storage_buffer_view_set_spirv_set1_binding_n(self, value)
  self
}

///|
pub fn ShaderStorageBufferView::glsl_binding_n(
  self : ShaderStorageBufferView,
) -> Byte {
  sg_shader_storage_buffer_view_get_glsl_binding_n(self)
}

///|
pub fn ShaderStorageBufferView::set_glsl_binding_n(
  self : ShaderStorageBufferView,
  value : Byte,
) -> ShaderStorageBufferView {
  sg_shader_storage_buffer_view_set_glsl_binding_n(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ShaderStorageImageView

///|
pub fn ShaderStorageImageView::new() -> ShaderStorageImageView {
  sg_shader_storage_image_view_new()
}

///|
pub fn ShaderStorageImageView::copy(
  self : ShaderStorageImageView,
) -> ShaderStorageImageView {
  sg_shader_storage_image_view_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ShaderStorageImageView::unsafe_native_handle(
  self : ShaderStorageImageView,
) -> @native.Handle {
  sg_shader_storage_image_view_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ShaderStorageImageView::unsafe_from_native(
  ptr : @native.Handle,
) -> ShaderStorageImageView {
  sg_shader_storage_image_view_from_native(ptr)
}

///|
pub fn ShaderStorageImageView::stage(
  self : ShaderStorageImageView,
) -> ShaderStage {
  sg_shader_storage_image_view_get_stage(self)
}

///|
pub fn ShaderStorageImageView::set_stage(
  self : ShaderStorageImageView,
  value : ShaderStage,
) -> ShaderStorageImageView {
  sg_shader_storage_image_view_set_stage(self, value)
  self
}

///|
pub fn ShaderStorageImageView::image_type(
  self : ShaderStorageImageView,
) -> ImageType {
  sg_shader_storage_image_view_get_image_type(self)
}

///|
pub fn ShaderStorageImageView::set_image_type(
  self : ShaderStorageImageView,
  value : ImageType,
) -> ShaderStorageImageView {
  sg_shader_storage_image_view_set_image_type(self, value)
  self
}

///|
pub fn ShaderStorageImageView::access_format(
  self : ShaderStorageImageView,
) -> PixelFormat {
  sg_shader_storage_image_view_get_access_format(self)
}

///|
pub fn ShaderStorageImageView::set_access_format(
  self : ShaderStorageImageView,
  value : PixelFormat,
) -> ShaderStorageImageView {
  sg_shader_storage_image_view_set_access_format(self, value)
  self
}

///|
pub fn ShaderStorageImageView::writeonly(self : ShaderStorageImageView) -> Bool {
  sg_shader_storage_image_view_get_writeonly(self)
}

///|
pub fn ShaderStorageImageView::set_writeonly(
  self : ShaderStorageImageView,
  value : Bool,
) -> ShaderStorageImageView {
  sg_shader_storage_image_view_set_writeonly(self, value)
  self
}

///|
pub fn ShaderStorageImageView::hlsl_register_u_n(
  self : ShaderStorageImageView,
) -> Byte {
  sg_shader_storage_image_view_get_hlsl_register_u_n(self)
}

///|
pub fn ShaderStorageImageView::set_hlsl_register_u_n(
  self : ShaderStorageImageView,
  value : Byte,
) -> ShaderStorageImageView {
  sg_shader_storage_image_view_set_hlsl_register_u_n(self, value)
  self
}

///|
pub fn ShaderStorageImageView::msl_texture_n(
  self : ShaderStorageImageView,
) -> Byte {
  sg_shader_storage_image_view_get_msl_texture_n(self)
}

///|
pub fn ShaderStorageImageView::set_msl_texture_n(
  self : ShaderStorageImageView,
  value : Byte,
) -> ShaderStorageImageView {
  sg_shader_storage_image_view_set_msl_texture_n(self, value)
  self
}

///|
pub fn ShaderStorageImageView::wgsl_group1_binding_n(
  self : ShaderStorageImageView,
) -> Byte {
  sg_shader_storage_image_view_get_wgsl_group1_binding_n(self)
}

///|
pub fn ShaderStorageImageView::set_wgsl_group1_binding_n(
  self : ShaderStorageImageView,
  value : Byte,
) -> ShaderStorageImageView {
  sg_shader_storage_image_view_set_wgsl_group1_binding_n(self, value)
  self
}

///|
pub fn ShaderStorageImageView::spirv_set1_binding_n(
  self : ShaderStorageImageView,
) -> Byte {
  sg_shader_storage_image_view_get_spirv_set1_binding_n(self)
}

///|
pub fn ShaderStorageImageView::set_spirv_set1_binding_n(
  self : ShaderStorageImageView,
  value : Byte,
) -> ShaderStorageImageView {
  sg_shader_storage_image_view_set_spirv_set1_binding_n(self, value)
  self
}

///|
pub fn ShaderStorageImageView::glsl_binding_n(
  self : ShaderStorageImageView,
) -> Byte {
  sg_shader_storage_image_view_get_glsl_binding_n(self)
}

///|
pub fn ShaderStorageImageView::set_glsl_binding_n(
  self : ShaderStorageImageView,
  value : Byte,
) -> ShaderStorageImageView {
  sg_shader_storage_image_view_set_glsl_binding_n(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ShaderView

///|
pub fn ShaderView::new() -> ShaderView {
  sg_shader_view_new()
}

///|
pub fn ShaderView::copy(self : ShaderView) -> ShaderView {
  sg_shader_view_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ShaderView::unsafe_native_handle(self : ShaderView) -> @native.Handle {
  sg_shader_view_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ShaderView::unsafe_from_native(ptr : @native.Handle) -> ShaderView {
  sg_shader_view_from_native(ptr)
}

///|
pub fn ShaderView::texture(self : ShaderView) -> ShaderTextureView {
  sg_shader_view_get_texture(self)
}

///|
pub fn ShaderView::set_texture(
  self : ShaderView,
  value : ShaderTextureView,
) -> ShaderView {
  sg_shader_view_set_texture(self, value)
  self
}

///|
pub fn ShaderView::storage_buffer(self : ShaderView) -> ShaderStorageBufferView {
  sg_shader_view_get_storage_buffer(self)
}

///|
pub fn ShaderView::set_storage_buffer(
  self : ShaderView,
  value : ShaderStorageBufferView,
) -> ShaderView {
  sg_shader_view_set_storage_buffer(self, value)
  self
}

///|
pub fn ShaderView::storage_image(self : ShaderView) -> ShaderStorageImageView {
  sg_shader_view_get_storage_image(self)
}

///|
pub fn ShaderView::set_storage_image(
  self : ShaderView,
  value : ShaderStorageImageView,
) -> ShaderView {
  sg_shader_view_set_storage_image(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ShaderSampler

///|
pub fn ShaderSampler::new() -> ShaderSampler {
  sg_shader_sampler_new()
}

///|
pub fn ShaderSampler::copy(self : ShaderSampler) -> ShaderSampler {
  sg_shader_sampler_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ShaderSampler::unsafe_native_handle(
  self : ShaderSampler,
) -> @native.Handle {
  sg_shader_sampler_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ShaderSampler::unsafe_from_native(ptr : @native.Handle) -> ShaderSampler {
  sg_shader_sampler_from_native(ptr)
}

///|
pub fn ShaderSampler::stage(self : ShaderSampler) -> ShaderStage {
  sg_shader_sampler_get_stage(self)
}

///|
pub fn ShaderSampler::set_stage(
  self : ShaderSampler,
  value : ShaderStage,
) -> ShaderSampler {
  sg_shader_sampler_set_stage(self, value)
  self
}

///|
pub fn ShaderSampler::sampler_type(self : ShaderSampler) -> SamplerType {
  sg_shader_sampler_get_sampler_type(self)
}

///|
pub fn ShaderSampler::set_sampler_type(
  self : ShaderSampler,
  value : SamplerType,
) -> ShaderSampler {
  sg_shader_sampler_set_sampler_type(self, value)
  self
}

///|
pub fn ShaderSampler::hlsl_register_s_n(self : ShaderSampler) -> Byte {
  sg_shader_sampler_get_hlsl_register_s_n(self)
}

///|
pub fn ShaderSampler::set_hlsl_register_s_n(
  self : ShaderSampler,
  value : Byte,
) -> ShaderSampler {
  sg_shader_sampler_set_hlsl_register_s_n(self, value)
  self
}

///|
pub fn ShaderSampler::msl_sampler_n(self : ShaderSampler) -> Byte {
  sg_shader_sampler_get_msl_sampler_n(self)
}

///|
pub fn ShaderSampler::set_msl_sampler_n(
  self : ShaderSampler,
  value : Byte,
) -> ShaderSampler {
  sg_shader_sampler_set_msl_sampler_n(self, value)
  self
}

///|
pub fn ShaderSampler::wgsl_group1_binding_n(self : ShaderSampler) -> Byte {
  sg_shader_sampler_get_wgsl_group1_binding_n(self)
}

///|
pub fn ShaderSampler::set_wgsl_group1_binding_n(
  self : ShaderSampler,
  value : Byte,
) -> ShaderSampler {
  sg_shader_sampler_set_wgsl_group1_binding_n(self, value)
  self
}

///|
pub fn ShaderSampler::spirv_set1_binding_n(self : ShaderSampler) -> Byte {
  sg_shader_sampler_get_spirv_set1_binding_n(self)
}

///|
pub fn ShaderSampler::set_spirv_set1_binding_n(
  self : ShaderSampler,
  value : Byte,
) -> ShaderSampler {
  sg_shader_sampler_set_spirv_set1_binding_n(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ShaderTextureSamplerPair

///|
pub fn ShaderTextureSamplerPair::new() -> ShaderTextureSamplerPair {
  sg_shader_texture_sampler_pair_new()
}

///|
pub fn ShaderTextureSamplerPair::copy(
  self : ShaderTextureSamplerPair,
) -> ShaderTextureSamplerPair {
  sg_shader_texture_sampler_pair_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ShaderTextureSamplerPair::unsafe_native_handle(
  self : ShaderTextureSamplerPair,
) -> @native.Handle {
  sg_shader_texture_sampler_pair_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ShaderTextureSamplerPair::unsafe_from_native(
  ptr : @native.Handle,
) -> ShaderTextureSamplerPair {
  sg_shader_texture_sampler_pair_from_native(ptr)
}

///|
pub fn ShaderTextureSamplerPair::stage(
  self : ShaderTextureSamplerPair,
) -> ShaderStage {
  sg_shader_texture_sampler_pair_get_stage(self)
}

///|
pub fn ShaderTextureSamplerPair::set_stage(
  self : ShaderTextureSamplerPair,
  value : ShaderStage,
) -> ShaderTextureSamplerPair {
  sg_shader_texture_sampler_pair_set_stage(self, value)
  self
}

///|
pub fn ShaderTextureSamplerPair::view_slot(
  self : ShaderTextureSamplerPair,
) -> Byte {
  sg_shader_texture_sampler_pair_get_view_slot(self)
}

///|
pub fn ShaderTextureSamplerPair::set_view_slot(
  self : ShaderTextureSamplerPair,
  value : Byte,
) -> ShaderTextureSamplerPair {
  sg_shader_texture_sampler_pair_set_view_slot(self, value)
  self
}

///|
pub fn ShaderTextureSamplerPair::sampler_slot(
  self : ShaderTextureSamplerPair,
) -> Byte {
  sg_shader_texture_sampler_pair_get_sampler_slot(self)
}

///|
pub fn ShaderTextureSamplerPair::set_sampler_slot(
  self : ShaderTextureSamplerPair,
  value : Byte,
) -> ShaderTextureSamplerPair {
  sg_shader_texture_sampler_pair_set_sampler_slot(self, value)
  self
}

///|
pub fn ShaderTextureSamplerPair::glsl_name(
  self : ShaderTextureSamplerPair,
) -> String {
  @utf8.decode_lossy(sg_shader_texture_sampler_pair_get_glsl_name(self))
}

///|
pub fn ShaderTextureSamplerPair::set_glsl_name(
  self : ShaderTextureSamplerPair,
  value : String,
) -> ShaderTextureSamplerPair {
  sg_shader_texture_sampler_pair_set_glsl_name(self, @native.cstring(value))
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type MtlShaderThreadsPerThreadgroup

///|
pub fn MtlShaderThreadsPerThreadgroup::new() -> MtlShaderThreadsPerThreadgroup {
  sg_mtl_shader_threads_per_threadgroup_new()
}

///|
pub fn MtlShaderThreadsPerThreadgroup::copy(
  self : MtlShaderThreadsPerThreadgroup,
) -> MtlShaderThreadsPerThreadgroup {
  sg_mtl_shader_threads_per_threadgroup_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn MtlShaderThreadsPerThreadgroup::unsafe_native_handle(
  self : MtlShaderThreadsPerThreadgroup,
) -> @native.Handle {
  sg_mtl_shader_threads_per_threadgroup_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn MtlShaderThreadsPerThreadgroup::unsafe_from_native(
  ptr : @native.Handle,
) -> MtlShaderThreadsPerThreadgroup {
  sg_mtl_shader_threads_per_threadgroup_from_native(ptr)
}

///|
pub fn MtlShaderThreadsPerThreadgroup::x(
  self : MtlShaderThreadsPerThreadgroup,
) -> Int32 {
  sg_mtl_shader_threads_per_threadgroup_get_x(self)
}

///|
pub fn MtlShaderThreadsPerThreadgroup::set_x(
  self : MtlShaderThreadsPerThreadgroup,
  value : Int32,
) -> MtlShaderThreadsPerThreadgroup {
  sg_mtl_shader_threads_per_threadgroup_set_x(self, value)
  self
}

///|
pub fn MtlShaderThreadsPerThreadgroup::y(
  self : MtlShaderThreadsPerThreadgroup,
) -> Int32 {
  sg_mtl_shader_threads_per_threadgroup_get_y(self)
}

///|
pub fn MtlShaderThreadsPerThreadgroup::set_y(
  self : MtlShaderThreadsPerThreadgroup,
  value : Int32,
) -> MtlShaderThreadsPerThreadgroup {
  sg_mtl_shader_threads_per_threadgroup_set_y(self, value)
  self
}

///|
pub fn MtlShaderThreadsPerThreadgroup::z(
  self : MtlShaderThreadsPerThreadgroup,
) -> Int32 {
  sg_mtl_shader_threads_per_threadgroup_get_z(self)
}

///|
pub fn MtlShaderThreadsPerThreadgroup::set_z(
  self : MtlShaderThreadsPerThreadgroup,
  value : Int32,
) -> MtlShaderThreadsPerThreadgroup {
  sg_mtl_shader_threads_per_threadgroup_set_z(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ShaderDesc

///|
pub fn ShaderDesc::new() -> ShaderDesc {
  sg_shader_desc_new()
}

///|
pub fn ShaderDesc::copy(self : ShaderDesc) -> ShaderDesc {
  sg_shader_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ShaderDesc::unsafe_native_handle(self : ShaderDesc) -> @native.Handle {
  sg_shader_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ShaderDesc::unsafe_from_native(ptr : @native.Handle) -> ShaderDesc {
  sg_shader_desc_from_native(ptr)
}

///|
pub fn ShaderDesc::vertex_func(self : ShaderDesc) -> ShaderFunction {
  sg_shader_desc_get_vertex_func(self)
}

///|
pub fn ShaderDesc::set_vertex_func(
  self : ShaderDesc,
  value : ShaderFunction,
) -> ShaderDesc {
  sg_shader_desc_set_vertex_func(self, value)
  self
}

///|
pub fn ShaderDesc::fragment_func(self : ShaderDesc) -> ShaderFunction {
  sg_shader_desc_get_fragment_func(self)
}

///|
pub fn ShaderDesc::set_fragment_func(
  self : ShaderDesc,
  value : ShaderFunction,
) -> ShaderDesc {
  sg_shader_desc_set_fragment_func(self, value)
  self
}

///|
pub fn ShaderDesc::compute_func(self : ShaderDesc) -> ShaderFunction {
  sg_shader_desc_get_compute_func(self)
}

///|
pub fn ShaderDesc::set_compute_func(
  self : ShaderDesc,
  value : ShaderFunction,
) -> ShaderDesc {
  sg_shader_desc_set_compute_func(self, value)
  self
}

///|
pub fn ShaderDesc::attrs(self : ShaderDesc, i0 : Int32) -> ShaderVertexAttr {
  guard i0 >= 0 && i0 < 16 else {
    abort("descriptor array index out of bounds")
  }
  sg_shader_desc_get_attrs(self, i0)
}

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
pub fn ShaderDesc::uniform_blocks(
  self : ShaderDesc,
  i0 : Int32,
) -> ShaderUniformBlock {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sg_shader_desc_get_uniform_blocks(self, i0)
}

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
pub fn ShaderDesc::views(self : ShaderDesc, i0 : Int32) -> ShaderView {
  guard i0 >= 0 && i0 < 32 else {
    abort("descriptor array index out of bounds")
  }
  sg_shader_desc_get_views(self, i0)
}

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
pub fn ShaderDesc::samplers(self : ShaderDesc, i0 : Int32) -> ShaderSampler {
  guard i0 >= 0 && i0 < 14 else {
    abort("descriptor array index out of bounds")
  }
  sg_shader_desc_get_samplers(self, i0)
}

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
pub fn ShaderDesc::mtl_threads_per_threadgroup(
  self : ShaderDesc,
) -> MtlShaderThreadsPerThreadgroup {
  sg_shader_desc_get_mtl_threads_per_threadgroup(self)
}

///|
pub fn ShaderDesc::set_mtl_threads_per_threadgroup(
  self : ShaderDesc,
  value : MtlShaderThreadsPerThreadgroup,
) -> ShaderDesc {
  sg_shader_desc_set_mtl_threads_per_threadgroup(self, value)
  self
}

///|
pub fn ShaderDesc::label(self : ShaderDesc) -> String {
  @utf8.decode_lossy(sg_shader_desc_get_label(self))
}

///|
pub fn ShaderDesc::set_label(self : ShaderDesc, value : String) -> ShaderDesc {
  sg_shader_desc_set_label(self, @native.cstring(value))
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type VertexBufferLayoutState

///|
pub fn VertexBufferLayoutState::new() -> VertexBufferLayoutState {
  sg_vertex_buffer_layout_state_new()
}

///|
pub fn VertexBufferLayoutState::copy(
  self : VertexBufferLayoutState,
) -> VertexBufferLayoutState {
  sg_vertex_buffer_layout_state_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn VertexBufferLayoutState::unsafe_native_handle(
  self : VertexBufferLayoutState,
) -> @native.Handle {
  sg_vertex_buffer_layout_state_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn VertexBufferLayoutState::unsafe_from_native(
  ptr : @native.Handle,
) -> VertexBufferLayoutState {
  sg_vertex_buffer_layout_state_from_native(ptr)
}

///|
pub fn VertexBufferLayoutState::stride(self : VertexBufferLayoutState) -> Int32 {
  sg_vertex_buffer_layout_state_get_stride(self)
}

///|
pub fn VertexBufferLayoutState::set_stride(
  self : VertexBufferLayoutState,
  value : Int32,
) -> VertexBufferLayoutState {
  sg_vertex_buffer_layout_state_set_stride(self, value)
  self
}

///|
pub fn VertexBufferLayoutState::step_func(
  self : VertexBufferLayoutState,
) -> VertexStep {
  sg_vertex_buffer_layout_state_get_step_func(self)
}

///|
pub fn VertexBufferLayoutState::set_step_func(
  self : VertexBufferLayoutState,
  value : VertexStep,
) -> VertexBufferLayoutState {
  sg_vertex_buffer_layout_state_set_step_func(self, value)
  self
}

///|
pub fn VertexBufferLayoutState::step_rate(
  self : VertexBufferLayoutState,
) -> Int32 {
  sg_vertex_buffer_layout_state_get_step_rate(self)
}

///|
pub fn VertexBufferLayoutState::set_step_rate(
  self : VertexBufferLayoutState,
  value : Int32,
) -> VertexBufferLayoutState {
  sg_vertex_buffer_layout_state_set_step_rate(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type VertexAttrState

///|
pub fn VertexAttrState::new() -> VertexAttrState {
  sg_vertex_attr_state_new()
}

///|
pub fn VertexAttrState::copy(self : VertexAttrState) -> VertexAttrState {
  sg_vertex_attr_state_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn VertexAttrState::unsafe_native_handle(
  self : VertexAttrState,
) -> @native.Handle {
  sg_vertex_attr_state_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn VertexAttrState::unsafe_from_native(
  ptr : @native.Handle,
) -> VertexAttrState {
  sg_vertex_attr_state_from_native(ptr)
}

///|
pub fn VertexAttrState::buffer_index(self : VertexAttrState) -> Int32 {
  sg_vertex_attr_state_get_buffer_index(self)
}

///|
pub fn VertexAttrState::set_buffer_index(
  self : VertexAttrState,
  value : Int32,
) -> VertexAttrState {
  sg_vertex_attr_state_set_buffer_index(self, value)
  self
}

///|
pub fn VertexAttrState::offset(self : VertexAttrState) -> Int32 {
  sg_vertex_attr_state_get_offset(self)
}

///|
pub fn VertexAttrState::set_offset(
  self : VertexAttrState,
  value : Int32,
) -> VertexAttrState {
  sg_vertex_attr_state_set_offset(self, value)
  self
}

///|
pub fn VertexAttrState::format(self : VertexAttrState) -> VertexFormat {
  sg_vertex_attr_state_get_format(self)
}

///|
pub fn VertexAttrState::set_format(
  self : VertexAttrState,
  value : VertexFormat,
) -> VertexAttrState {
  sg_vertex_attr_state_set_format(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type VertexLayoutState

///|
pub fn VertexLayoutState::new() -> VertexLayoutState {
  sg_vertex_layout_state_new()
}

///|
pub fn VertexLayoutState::copy(self : VertexLayoutState) -> VertexLayoutState {
  sg_vertex_layout_state_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn VertexLayoutState::unsafe_native_handle(
  self : VertexLayoutState,
) -> @native.Handle {
  sg_vertex_layout_state_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn VertexLayoutState::unsafe_from_native(
  ptr : @native.Handle,
) -> VertexLayoutState {
  sg_vertex_layout_state_from_native(ptr)
}

///|
pub fn VertexLayoutState::buffers(
  self : VertexLayoutState,
  i0 : Int32,
) -> VertexBufferLayoutState {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sg_vertex_layout_state_get_buffers(self, i0)
}

///|
pub fn VertexLayoutState::set_buffers(
  self : VertexLayoutState,
  i0 : Int32,
  value : VertexBufferLayoutState,
) -> VertexLayoutState {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sg_vertex_layout_state_set_buffers(self, i0, value)
  self
}

///|
pub fn VertexLayoutState::attrs(
  self : VertexLayoutState,
  i0 : Int32,
) -> VertexAttrState {
  guard i0 >= 0 && i0 < 16 else {
    abort("descriptor array index out of bounds")
  }
  sg_vertex_layout_state_get_attrs(self, i0)
}

///|
pub fn VertexLayoutState::set_attrs(
  self : VertexLayoutState,
  i0 : Int32,
  value : VertexAttrState,
) -> VertexLayoutState {
  guard i0 >= 0 && i0 < 16 else {
    abort("descriptor array index out of bounds")
  }
  sg_vertex_layout_state_set_attrs(self, i0, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type StencilFaceState

///|
pub fn StencilFaceState::new() -> StencilFaceState {
  sg_stencil_face_state_new()
}

///|
pub fn StencilFaceState::copy(self : StencilFaceState) -> StencilFaceState {
  sg_stencil_face_state_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn StencilFaceState::unsafe_native_handle(
  self : StencilFaceState,
) -> @native.Handle {
  sg_stencil_face_state_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn StencilFaceState::unsafe_from_native(
  ptr : @native.Handle,
) -> StencilFaceState {
  sg_stencil_face_state_from_native(ptr)
}

///|
pub fn StencilFaceState::compare(self : StencilFaceState) -> CompareFunc {
  sg_stencil_face_state_get_compare(self)
}

///|
pub fn StencilFaceState::set_compare(
  self : StencilFaceState,
  value : CompareFunc,
) -> StencilFaceState {
  sg_stencil_face_state_set_compare(self, value)
  self
}

///|
pub fn StencilFaceState::fail_op(self : StencilFaceState) -> StencilOp {
  sg_stencil_face_state_get_fail_op(self)
}

///|
pub fn StencilFaceState::set_fail_op(
  self : StencilFaceState,
  value : StencilOp,
) -> StencilFaceState {
  sg_stencil_face_state_set_fail_op(self, value)
  self
}

///|
pub fn StencilFaceState::depth_fail_op(self : StencilFaceState) -> StencilOp {
  sg_stencil_face_state_get_depth_fail_op(self)
}

///|
pub fn StencilFaceState::set_depth_fail_op(
  self : StencilFaceState,
  value : StencilOp,
) -> StencilFaceState {
  sg_stencil_face_state_set_depth_fail_op(self, value)
  self
}

///|
pub fn StencilFaceState::pass_op(self : StencilFaceState) -> StencilOp {
  sg_stencil_face_state_get_pass_op(self)
}

///|
pub fn StencilFaceState::set_pass_op(
  self : StencilFaceState,
  value : StencilOp,
) -> StencilFaceState {
  sg_stencil_face_state_set_pass_op(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type StencilState

///|
pub fn StencilState::new() -> StencilState {
  sg_stencil_state_new()
}

///|
pub fn StencilState::copy(self : StencilState) -> StencilState {
  sg_stencil_state_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn StencilState::unsafe_native_handle(
  self : StencilState,
) -> @native.Handle {
  sg_stencil_state_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn StencilState::unsafe_from_native(ptr : @native.Handle) -> StencilState {
  sg_stencil_state_from_native(ptr)
}

///|
pub fn StencilState::enabled(self : StencilState) -> Bool {
  sg_stencil_state_get_enabled(self)
}

///|
pub fn StencilState::set_enabled(
  self : StencilState,
  value : Bool,
) -> StencilState {
  sg_stencil_state_set_enabled(self, value)
  self
}

///|
pub fn StencilState::front(self : StencilState) -> StencilFaceState {
  sg_stencil_state_get_front(self)
}

///|
pub fn StencilState::set_front(
  self : StencilState,
  value : StencilFaceState,
) -> StencilState {
  sg_stencil_state_set_front(self, value)
  self
}

///|
pub fn StencilState::back(self : StencilState) -> StencilFaceState {
  sg_stencil_state_get_back(self)
}

///|
pub fn StencilState::set_back(
  self : StencilState,
  value : StencilFaceState,
) -> StencilState {
  sg_stencil_state_set_back(self, value)
  self
}

///|
pub fn StencilState::read_mask(self : StencilState) -> Byte {
  sg_stencil_state_get_read_mask(self)
}

///|
pub fn StencilState::set_read_mask(
  self : StencilState,
  value : Byte,
) -> StencilState {
  sg_stencil_state_set_read_mask(self, value)
  self
}

///|
pub fn StencilState::write_mask(self : StencilState) -> Byte {
  sg_stencil_state_get_write_mask(self)
}

///|
pub fn StencilState::set_write_mask(
  self : StencilState,
  value : Byte,
) -> StencilState {
  sg_stencil_state_set_write_mask(self, value)
  self
}

///|
pub fn StencilState::ref_(self : StencilState) -> Byte {
  sg_stencil_state_get_ref(self)
}

///|
pub fn StencilState::set_ref(self : StencilState, value : Byte) -> StencilState {
  sg_stencil_state_set_ref(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type DepthState

///|
pub fn DepthState::new() -> DepthState {
  sg_depth_state_new()
}

///|
pub fn DepthState::copy(self : DepthState) -> DepthState {
  sg_depth_state_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn DepthState::unsafe_native_handle(self : DepthState) -> @native.Handle {
  sg_depth_state_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn DepthState::unsafe_from_native(ptr : @native.Handle) -> DepthState {
  sg_depth_state_from_native(ptr)
}

///|
pub fn DepthState::pixel_format(self : DepthState) -> PixelFormat {
  sg_depth_state_get_pixel_format(self)
}

///|
pub fn DepthState::set_pixel_format(
  self : DepthState,
  value : PixelFormat,
) -> DepthState {
  sg_depth_state_set_pixel_format(self, value)
  self
}

///|
pub fn DepthState::compare(self : DepthState) -> CompareFunc {
  sg_depth_state_get_compare(self)
}

///|
pub fn DepthState::set_compare(
  self : DepthState,
  value : CompareFunc,
) -> DepthState {
  sg_depth_state_set_compare(self, value)
  self
}

///|
pub fn DepthState::write_enabled(self : DepthState) -> Bool {
  sg_depth_state_get_write_enabled(self)
}

///|
pub fn DepthState::set_write_enabled(
  self : DepthState,
  value : Bool,
) -> DepthState {
  sg_depth_state_set_write_enabled(self, value)
  self
}

///|
pub fn DepthState::bias(self : DepthState) -> Float {
  sg_depth_state_get_bias(self)
}

///|
pub fn DepthState::set_bias(self : DepthState, value : Float) -> DepthState {
  sg_depth_state_set_bias(self, value)
  self
}

///|
pub fn DepthState::bias_slope_scale(self : DepthState) -> Float {
  sg_depth_state_get_bias_slope_scale(self)
}

///|
pub fn DepthState::set_bias_slope_scale(
  self : DepthState,
  value : Float,
) -> DepthState {
  sg_depth_state_set_bias_slope_scale(self, value)
  self
}

///|
pub fn DepthState::bias_clamp(self : DepthState) -> Float {
  sg_depth_state_get_bias_clamp(self)
}

///|
pub fn DepthState::set_bias_clamp(
  self : DepthState,
  value : Float,
) -> DepthState {
  sg_depth_state_set_bias_clamp(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type BlendState

///|
pub fn BlendState::new() -> BlendState {
  sg_blend_state_new()
}

///|
pub fn BlendState::copy(self : BlendState) -> BlendState {
  sg_blend_state_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn BlendState::unsafe_native_handle(self : BlendState) -> @native.Handle {
  sg_blend_state_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn BlendState::unsafe_from_native(ptr : @native.Handle) -> BlendState {
  sg_blend_state_from_native(ptr)
}

///|
pub fn BlendState::enabled(self : BlendState) -> Bool {
  sg_blend_state_get_enabled(self)
}

///|
pub fn BlendState::set_enabled(self : BlendState, value : Bool) -> BlendState {
  sg_blend_state_set_enabled(self, value)
  self
}

///|
pub fn BlendState::src_factor_rgb(self : BlendState) -> BlendFactor {
  sg_blend_state_get_src_factor_rgb(self)
}

///|
pub fn BlendState::set_src_factor_rgb(
  self : BlendState,
  value : BlendFactor,
) -> BlendState {
  sg_blend_state_set_src_factor_rgb(self, value)
  self
}

///|
pub fn BlendState::dst_factor_rgb(self : BlendState) -> BlendFactor {
  sg_blend_state_get_dst_factor_rgb(self)
}

///|
pub fn BlendState::set_dst_factor_rgb(
  self : BlendState,
  value : BlendFactor,
) -> BlendState {
  sg_blend_state_set_dst_factor_rgb(self, value)
  self
}

///|
pub fn BlendState::op_rgb(self : BlendState) -> BlendOp {
  sg_blend_state_get_op_rgb(self)
}

///|
pub fn BlendState::set_op_rgb(self : BlendState, value : BlendOp) -> BlendState {
  sg_blend_state_set_op_rgb(self, value)
  self
}

///|
pub fn BlendState::src_factor_alpha(self : BlendState) -> BlendFactor {
  sg_blend_state_get_src_factor_alpha(self)
}

///|
pub fn BlendState::set_src_factor_alpha(
  self : BlendState,
  value : BlendFactor,
) -> BlendState {
  sg_blend_state_set_src_factor_alpha(self, value)
  self
}

///|
pub fn BlendState::dst_factor_alpha(self : BlendState) -> BlendFactor {
  sg_blend_state_get_dst_factor_alpha(self)
}

///|
pub fn BlendState::set_dst_factor_alpha(
  self : BlendState,
  value : BlendFactor,
) -> BlendState {
  sg_blend_state_set_dst_factor_alpha(self, value)
  self
}

///|
pub fn BlendState::op_alpha(self : BlendState) -> BlendOp {
  sg_blend_state_get_op_alpha(self)
}

///|
pub fn BlendState::set_op_alpha(
  self : BlendState,
  value : BlendOp,
) -> BlendState {
  sg_blend_state_set_op_alpha(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ColorTargetState

///|
pub fn ColorTargetState::new() -> ColorTargetState {
  sg_color_target_state_new()
}

///|
pub fn ColorTargetState::copy(self : ColorTargetState) -> ColorTargetState {
  sg_color_target_state_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ColorTargetState::unsafe_native_handle(
  self : ColorTargetState,
) -> @native.Handle {
  sg_color_target_state_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ColorTargetState::unsafe_from_native(
  ptr : @native.Handle,
) -> ColorTargetState {
  sg_color_target_state_from_native(ptr)
}

///|
pub fn ColorTargetState::pixel_format(self : ColorTargetState) -> PixelFormat {
  sg_color_target_state_get_pixel_format(self)
}

///|
pub fn ColorTargetState::set_pixel_format(
  self : ColorTargetState,
  value : PixelFormat,
) -> ColorTargetState {
  sg_color_target_state_set_pixel_format(self, value)
  self
}

///|
pub fn ColorTargetState::write_mask(self : ColorTargetState) -> ColorMask {
  sg_color_target_state_get_write_mask(self)
}

///|
pub fn ColorTargetState::set_write_mask(
  self : ColorTargetState,
  value : ColorMask,
) -> ColorTargetState {
  sg_color_target_state_set_write_mask(self, value)
  self
}

///|
pub fn ColorTargetState::blend(self : ColorTargetState) -> BlendState {
  sg_color_target_state_get_blend(self)
}

///|
pub fn ColorTargetState::set_blend(
  self : ColorTargetState,
  value : BlendState,
) -> ColorTargetState {
  sg_color_target_state_set_blend(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type PipelineDesc

///|
pub fn PipelineDesc::new() -> PipelineDesc {
  sg_pipeline_desc_new()
}

///|
pub fn PipelineDesc::copy(self : PipelineDesc) -> PipelineDesc {
  sg_pipeline_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn PipelineDesc::unsafe_native_handle(
  self : PipelineDesc,
) -> @native.Handle {
  sg_pipeline_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn PipelineDesc::unsafe_from_native(ptr : @native.Handle) -> PipelineDesc {
  sg_pipeline_desc_from_native(ptr)
}

///|
pub fn PipelineDesc::compute(self : PipelineDesc) -> Bool {
  sg_pipeline_desc_get_compute(self)
}

///|
pub fn PipelineDesc::set_compute(
  self : PipelineDesc,
  value : Bool,
) -> PipelineDesc {
  sg_pipeline_desc_set_compute(self, value)
  self
}

///|
pub fn PipelineDesc::shader(self : PipelineDesc) -> Shader {
  Shader(sg_pipeline_desc_get_shader(self))
}

///|
pub fn PipelineDesc::set_shader(
  self : PipelineDesc,
  value : Shader,
) -> PipelineDesc {
  sg_pipeline_desc_set_shader(self, value.0)
  self
}

///|
pub fn PipelineDesc::layout(self : PipelineDesc) -> VertexLayoutState {
  sg_pipeline_desc_get_layout(self)
}

///|
pub fn PipelineDesc::set_layout(
  self : PipelineDesc,
  value : VertexLayoutState,
) -> PipelineDesc {
  sg_pipeline_desc_set_layout(self, value)
  self
}

///|
pub fn PipelineDesc::depth(self : PipelineDesc) -> DepthState {
  sg_pipeline_desc_get_depth(self)
}

///|
pub fn PipelineDesc::set_depth(
  self : PipelineDesc,
  value : DepthState,
) -> PipelineDesc {
  sg_pipeline_desc_set_depth(self, value)
  self
}

///|
pub fn PipelineDesc::stencil(self : PipelineDesc) -> StencilState {
  sg_pipeline_desc_get_stencil(self)
}

///|
pub fn PipelineDesc::set_stencil(
  self : PipelineDesc,
  value : StencilState,
) -> PipelineDesc {
  sg_pipeline_desc_set_stencil(self, value)
  self
}

///|
pub fn PipelineDesc::color_count(self : PipelineDesc) -> Int32 {
  sg_pipeline_desc_get_color_count(self)
}

///|
pub fn PipelineDesc::set_color_count(
  self : PipelineDesc,
  value : Int32,
) -> PipelineDesc {
  sg_pipeline_desc_set_color_count(self, value)
  self
}

///|
pub fn PipelineDesc::colors(
  self : PipelineDesc,
  i0 : Int32,
) -> ColorTargetState {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sg_pipeline_desc_get_colors(self, i0)
}

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
pub fn PipelineDesc::primitive_type(self : PipelineDesc) -> PrimitiveType {
  sg_pipeline_desc_get_primitive_type(self)
}

///|
pub fn PipelineDesc::set_primitive_type(
  self : PipelineDesc,
  value : PrimitiveType,
) -> PipelineDesc {
  sg_pipeline_desc_set_primitive_type(self, value)
  self
}

///|
pub fn PipelineDesc::index_type(self : PipelineDesc) -> IndexType {
  sg_pipeline_desc_get_index_type(self)
}

///|
pub fn PipelineDesc::set_index_type(
  self : PipelineDesc,
  value : IndexType,
) -> PipelineDesc {
  sg_pipeline_desc_set_index_type(self, value)
  self
}

///|
pub fn PipelineDesc::cull_mode(self : PipelineDesc) -> CullMode {
  sg_pipeline_desc_get_cull_mode(self)
}

///|
pub fn PipelineDesc::set_cull_mode(
  self : PipelineDesc,
  value : CullMode,
) -> PipelineDesc {
  sg_pipeline_desc_set_cull_mode(self, value)
  self
}

///|
pub fn PipelineDesc::face_winding(self : PipelineDesc) -> FaceWinding {
  sg_pipeline_desc_get_face_winding(self)
}

///|
pub fn PipelineDesc::set_face_winding(
  self : PipelineDesc,
  value : FaceWinding,
) -> PipelineDesc {
  sg_pipeline_desc_set_face_winding(self, value)
  self
}

///|
pub fn PipelineDesc::sample_count(self : PipelineDesc) -> Int32 {
  sg_pipeline_desc_get_sample_count(self)
}

///|
pub fn PipelineDesc::set_sample_count(
  self : PipelineDesc,
  value : Int32,
) -> PipelineDesc {
  sg_pipeline_desc_set_sample_count(self, value)
  self
}

///|
pub fn PipelineDesc::blend_color(self : PipelineDesc) -> Color {
  sg_pipeline_desc_get_blend_color(self)
}

///|
pub fn PipelineDesc::set_blend_color(
  self : PipelineDesc,
  value : Color,
) -> PipelineDesc {
  sg_pipeline_desc_set_blend_color(self, value)
  self
}

///|
pub fn PipelineDesc::alpha_to_coverage_enabled(self : PipelineDesc) -> Bool {
  sg_pipeline_desc_get_alpha_to_coverage_enabled(self)
}

///|
pub fn PipelineDesc::set_alpha_to_coverage_enabled(
  self : PipelineDesc,
  value : Bool,
) -> PipelineDesc {
  sg_pipeline_desc_set_alpha_to_coverage_enabled(self, value)
  self
}

///|
pub fn PipelineDesc::label(self : PipelineDesc) -> String {
  @utf8.decode_lossy(sg_pipeline_desc_get_label(self))
}

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
pub type BufferViewDesc

///|
pub fn BufferViewDesc::new() -> BufferViewDesc {
  sg_buffer_view_desc_new()
}

///|
pub fn BufferViewDesc::copy(self : BufferViewDesc) -> BufferViewDesc {
  sg_buffer_view_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn BufferViewDesc::unsafe_native_handle(
  self : BufferViewDesc,
) -> @native.Handle {
  sg_buffer_view_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn BufferViewDesc::unsafe_from_native(
  ptr : @native.Handle,
) -> BufferViewDesc {
  sg_buffer_view_desc_from_native(ptr)
}

///|
pub fn BufferViewDesc::buffer(self : BufferViewDesc) -> Buffer {
  Buffer(sg_buffer_view_desc_get_buffer(self))
}

///|
pub fn BufferViewDesc::set_buffer(
  self : BufferViewDesc,
  value : Buffer,
) -> BufferViewDesc {
  sg_buffer_view_desc_set_buffer(self, value.0)
  self
}

///|
pub fn BufferViewDesc::offset(self : BufferViewDesc) -> Int32 {
  sg_buffer_view_desc_get_offset(self)
}

///|
pub fn BufferViewDesc::set_offset(
  self : BufferViewDesc,
  value : Int32,
) -> BufferViewDesc {
  sg_buffer_view_desc_set_offset(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ImageViewDesc

///|
pub fn ImageViewDesc::new() -> ImageViewDesc {
  sg_image_view_desc_new()
}

///|
pub fn ImageViewDesc::copy(self : ImageViewDesc) -> ImageViewDesc {
  sg_image_view_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ImageViewDesc::unsafe_native_handle(
  self : ImageViewDesc,
) -> @native.Handle {
  sg_image_view_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ImageViewDesc::unsafe_from_native(ptr : @native.Handle) -> ImageViewDesc {
  sg_image_view_desc_from_native(ptr)
}

///|
pub fn ImageViewDesc::image(self : ImageViewDesc) -> Image {
  Image(sg_image_view_desc_get_image(self))
}

///|
pub fn ImageViewDesc::set_image(
  self : ImageViewDesc,
  value : Image,
) -> ImageViewDesc {
  sg_image_view_desc_set_image(self, value.0)
  self
}

///|
pub fn ImageViewDesc::mip_level(self : ImageViewDesc) -> Int32 {
  sg_image_view_desc_get_mip_level(self)
}

///|
pub fn ImageViewDesc::set_mip_level(
  self : ImageViewDesc,
  value : Int32,
) -> ImageViewDesc {
  sg_image_view_desc_set_mip_level(self, value)
  self
}

///|
pub fn ImageViewDesc::slice(self : ImageViewDesc) -> Int32 {
  sg_image_view_desc_get_slice(self)
}

///|
pub fn ImageViewDesc::set_slice(
  self : ImageViewDesc,
  value : Int32,
) -> ImageViewDesc {
  sg_image_view_desc_set_slice(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type TextureViewRange

///|
pub fn TextureViewRange::new() -> TextureViewRange {
  sg_texture_view_range_new()
}

///|
pub fn TextureViewRange::copy(self : TextureViewRange) -> TextureViewRange {
  sg_texture_view_range_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn TextureViewRange::unsafe_native_handle(
  self : TextureViewRange,
) -> @native.Handle {
  sg_texture_view_range_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn TextureViewRange::unsafe_from_native(
  ptr : @native.Handle,
) -> TextureViewRange {
  sg_texture_view_range_from_native(ptr)
}

///|
pub fn TextureViewRange::base(self : TextureViewRange) -> Int32 {
  sg_texture_view_range_get_base(self)
}

///|
pub fn TextureViewRange::set_base(
  self : TextureViewRange,
  value : Int32,
) -> TextureViewRange {
  sg_texture_view_range_set_base(self, value)
  self
}

///|
pub fn TextureViewRange::count(self : TextureViewRange) -> Int32 {
  sg_texture_view_range_get_count(self)
}

///|
pub fn TextureViewRange::set_count(
  self : TextureViewRange,
  value : Int32,
) -> TextureViewRange {
  sg_texture_view_range_set_count(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type TextureViewDesc

///|
pub fn TextureViewDesc::new() -> TextureViewDesc {
  sg_texture_view_desc_new()
}

///|
pub fn TextureViewDesc::copy(self : TextureViewDesc) -> TextureViewDesc {
  sg_texture_view_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn TextureViewDesc::unsafe_native_handle(
  self : TextureViewDesc,
) -> @native.Handle {
  sg_texture_view_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn TextureViewDesc::unsafe_from_native(
  ptr : @native.Handle,
) -> TextureViewDesc {
  sg_texture_view_desc_from_native(ptr)
}

///|
pub fn TextureViewDesc::image(self : TextureViewDesc) -> Image {
  Image(sg_texture_view_desc_get_image(self))
}

///|
pub fn TextureViewDesc::set_image(
  self : TextureViewDesc,
  value : Image,
) -> TextureViewDesc {
  sg_texture_view_desc_set_image(self, value.0)
  self
}

///|
pub fn TextureViewDesc::mip_levels(self : TextureViewDesc) -> TextureViewRange {
  sg_texture_view_desc_get_mip_levels(self)
}

///|
pub fn TextureViewDesc::set_mip_levels(
  self : TextureViewDesc,
  value : TextureViewRange,
) -> TextureViewDesc {
  sg_texture_view_desc_set_mip_levels(self, value)
  self
}

///|
pub fn TextureViewDesc::slices(self : TextureViewDesc) -> TextureViewRange {
  sg_texture_view_desc_get_slices(self)
}

///|
pub fn TextureViewDesc::set_slices(
  self : TextureViewDesc,
  value : TextureViewRange,
) -> TextureViewDesc {
  sg_texture_view_desc_set_slices(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ViewDesc

///|
pub fn ViewDesc::new() -> ViewDesc {
  sg_view_desc_new()
}

///|
pub fn ViewDesc::copy(self : ViewDesc) -> ViewDesc {
  sg_view_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ViewDesc::unsafe_native_handle(self : ViewDesc) -> @native.Handle {
  sg_view_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ViewDesc::unsafe_from_native(ptr : @native.Handle) -> ViewDesc {
  sg_view_desc_from_native(ptr)
}

///|
pub fn ViewDesc::texture(self : ViewDesc) -> TextureViewDesc {
  sg_view_desc_get_texture(self)
}

///|
pub fn ViewDesc::set_texture(
  self : ViewDesc,
  value : TextureViewDesc,
) -> ViewDesc {
  sg_view_desc_set_texture(self, value)
  self
}

///|
pub fn ViewDesc::storage_buffer(self : ViewDesc) -> BufferViewDesc {
  sg_view_desc_get_storage_buffer(self)
}

///|
pub fn ViewDesc::set_storage_buffer(
  self : ViewDesc,
  value : BufferViewDesc,
) -> ViewDesc {
  sg_view_desc_set_storage_buffer(self, value)
  self
}

///|
pub fn ViewDesc::storage_image(self : ViewDesc) -> ImageViewDesc {
  sg_view_desc_get_storage_image(self)
}

///|
pub fn ViewDesc::set_storage_image(
  self : ViewDesc,
  value : ImageViewDesc,
) -> ViewDesc {
  sg_view_desc_set_storage_image(self, value)
  self
}

///|
pub fn ViewDesc::color_attachment(self : ViewDesc) -> ImageViewDesc {
  sg_view_desc_get_color_attachment(self)
}

///|
pub fn ViewDesc::set_color_attachment(
  self : ViewDesc,
  value : ImageViewDesc,
) -> ViewDesc {
  sg_view_desc_set_color_attachment(self, value)
  self
}

///|
pub fn ViewDesc::resolve_attachment(self : ViewDesc) -> ImageViewDesc {
  sg_view_desc_get_resolve_attachment(self)
}

///|
pub fn ViewDesc::set_resolve_attachment(
  self : ViewDesc,
  value : ImageViewDesc,
) -> ViewDesc {
  sg_view_desc_set_resolve_attachment(self, value)
  self
}

///|
pub fn ViewDesc::depth_stencil_attachment(self : ViewDesc) -> ImageViewDesc {
  sg_view_desc_get_depth_stencil_attachment(self)
}

///|
pub fn ViewDesc::set_depth_stencil_attachment(
  self : ViewDesc,
  value : ImageViewDesc,
) -> ViewDesc {
  sg_view_desc_set_depth_stencil_attachment(self, value)
  self
}

///|
pub fn ViewDesc::label(self : ViewDesc) -> String {
  @utf8.decode_lossy(sg_view_desc_get_label(self))
}

///|
pub fn ViewDesc::set_label(self : ViewDesc, value : String) -> ViewDesc {
  sg_view_desc_set_label(self, @native.cstring(value))
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type TraceHooks

///|
pub fn TraceHooks::new() -> TraceHooks {
  sg_trace_hooks_new()
}

///|
pub fn TraceHooks::copy(self : TraceHooks) -> TraceHooks {
  sg_trace_hooks_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn TraceHooks::unsafe_native_handle(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn TraceHooks::unsafe_from_native(ptr : @native.Handle) -> TraceHooks {
  sg_trace_hooks_from_native(ptr)
}

///|
pub fn TraceHooks::user_data(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_user_data(self)
}

///|
pub fn TraceHooks::set_user_data(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_user_data(self, value)
  self
}

///|
pub fn TraceHooks::reset_state_cache(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_reset_state_cache(self)
}

///|
pub fn TraceHooks::set_reset_state_cache(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_reset_state_cache(self, value)
  self
}

///|
pub fn TraceHooks::make_buffer(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_make_buffer(self)
}

///|
pub fn TraceHooks::set_make_buffer(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_make_buffer(self, value)
  self
}

///|
pub fn TraceHooks::make_image(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_make_image(self)
}

///|
pub fn TraceHooks::set_make_image(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_make_image(self, value)
  self
}

///|
pub fn TraceHooks::make_sampler(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_make_sampler(self)
}

///|
pub fn TraceHooks::set_make_sampler(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_make_sampler(self, value)
  self
}

///|
pub fn TraceHooks::make_shader(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_make_shader(self)
}

///|
pub fn TraceHooks::set_make_shader(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_make_shader(self, value)
  self
}

///|
pub fn TraceHooks::make_pipeline(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_make_pipeline(self)
}

///|
pub fn TraceHooks::set_make_pipeline(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_make_pipeline(self, value)
  self
}

///|
pub fn TraceHooks::make_view(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_make_view(self)
}

///|
pub fn TraceHooks::set_make_view(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_make_view(self, value)
  self
}

///|
pub fn TraceHooks::destroy_buffer(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_destroy_buffer(self)
}

///|
pub fn TraceHooks::set_destroy_buffer(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_destroy_buffer(self, value)
  self
}

///|
pub fn TraceHooks::destroy_image(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_destroy_image(self)
}

///|
pub fn TraceHooks::set_destroy_image(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_destroy_image(self, value)
  self
}

///|
pub fn TraceHooks::destroy_sampler(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_destroy_sampler(self)
}

///|
pub fn TraceHooks::set_destroy_sampler(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_destroy_sampler(self, value)
  self
}

///|
pub fn TraceHooks::destroy_shader(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_destroy_shader(self)
}

///|
pub fn TraceHooks::set_destroy_shader(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_destroy_shader(self, value)
  self
}

///|
pub fn TraceHooks::destroy_pipeline(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_destroy_pipeline(self)
}

///|
pub fn TraceHooks::set_destroy_pipeline(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_destroy_pipeline(self, value)
  self
}

///|
pub fn TraceHooks::destroy_view(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_destroy_view(self)
}

///|
pub fn TraceHooks::set_destroy_view(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_destroy_view(self, value)
  self
}

///|
pub fn TraceHooks::write_buffer_transient(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_write_buffer_transient(self)
}

///|
pub fn TraceHooks::set_write_buffer_transient(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_write_buffer_transient(self, value)
  self
}

///|
pub fn TraceHooks::write_image_transient(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_write_image_transient(self)
}

///|
pub fn TraceHooks::set_write_image_transient(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_write_image_transient(self, value)
  self
}

///|
pub fn TraceHooks::write_buffer_unsealed(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_write_buffer_unsealed(self)
}

///|
pub fn TraceHooks::set_write_buffer_unsealed(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_write_buffer_unsealed(self, value)
  self
}

///|
pub fn TraceHooks::write_image_unsealed(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_write_image_unsealed(self)
}

///|
pub fn TraceHooks::set_write_image_unsealed(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_write_image_unsealed(self, value)
  self
}

///|
pub fn TraceHooks::seal_buffer(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_seal_buffer(self)
}

///|
pub fn TraceHooks::set_seal_buffer(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_seal_buffer(self, value)
  self
}

///|
pub fn TraceHooks::seal_image(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_seal_image(self)
}

///|
pub fn TraceHooks::set_seal_image(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_seal_image(self, value)
  self
}

///|
pub fn TraceHooks::copy_buffer_to_buffer(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_copy_buffer_to_buffer(self)
}

///|
pub fn TraceHooks::set_copy_buffer_to_buffer(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_copy_buffer_to_buffer(self, value)
  self
}

///|
pub fn TraceHooks::copy_buffer_to_image(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_copy_buffer_to_image(self)
}

///|
pub fn TraceHooks::set_copy_buffer_to_image(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_copy_buffer_to_image(self, value)
  self
}

///|
pub fn TraceHooks::copy_image_to_image(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_copy_image_to_image(self)
}

///|
pub fn TraceHooks::set_copy_image_to_image(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_copy_image_to_image(self, value)
  self
}

///|
pub fn TraceHooks::begin_pass(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_begin_pass(self)
}

///|
pub fn TraceHooks::set_begin_pass(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_begin_pass(self, value)
  self
}

///|
pub fn TraceHooks::apply_viewport(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_apply_viewport(self)
}

///|
pub fn TraceHooks::set_apply_viewport(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_apply_viewport(self, value)
  self
}

///|
pub fn TraceHooks::apply_scissor_rect(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_apply_scissor_rect(self)
}

///|
pub fn TraceHooks::set_apply_scissor_rect(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_apply_scissor_rect(self, value)
  self
}

///|
pub fn TraceHooks::apply_pipeline(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_apply_pipeline(self)
}

///|
pub fn TraceHooks::set_apply_pipeline(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_apply_pipeline(self, value)
  self
}

///|
pub fn TraceHooks::apply_bindings(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_apply_bindings(self)
}

///|
pub fn TraceHooks::set_apply_bindings(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_apply_bindings(self, value)
  self
}

///|
pub fn TraceHooks::apply_uniforms(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_apply_uniforms(self)
}

///|
pub fn TraceHooks::set_apply_uniforms(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_apply_uniforms(self, value)
  self
}

///|
pub fn TraceHooks::draw(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_draw(self)
}

///|
pub fn TraceHooks::set_draw(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_draw(self, value)
  self
}

///|
pub fn TraceHooks::draw_ex(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_draw_ex(self)
}

///|
pub fn TraceHooks::set_draw_ex(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_draw_ex(self, value)
  self
}

///|
pub fn TraceHooks::dispatch(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_dispatch(self)
}

///|
pub fn TraceHooks::set_dispatch(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_dispatch(self, value)
  self
}

///|
pub fn TraceHooks::end_pass(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_end_pass(self)
}

///|
pub fn TraceHooks::set_end_pass(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_end_pass(self, value)
  self
}

///|
pub fn TraceHooks::commit(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_commit(self)
}

///|
pub fn TraceHooks::set_commit(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_commit(self, value)
  self
}

///|
pub fn TraceHooks::alloc_buffer(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_alloc_buffer(self)
}

///|
pub fn TraceHooks::set_alloc_buffer(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_alloc_buffer(self, value)
  self
}

///|
pub fn TraceHooks::alloc_image(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_alloc_image(self)
}

///|
pub fn TraceHooks::set_alloc_image(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_alloc_image(self, value)
  self
}

///|
pub fn TraceHooks::alloc_sampler(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_alloc_sampler(self)
}

///|
pub fn TraceHooks::set_alloc_sampler(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_alloc_sampler(self, value)
  self
}

///|
pub fn TraceHooks::alloc_shader(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_alloc_shader(self)
}

///|
pub fn TraceHooks::set_alloc_shader(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_alloc_shader(self, value)
  self
}

///|
pub fn TraceHooks::alloc_pipeline(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_alloc_pipeline(self)
}

///|
pub fn TraceHooks::set_alloc_pipeline(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_alloc_pipeline(self, value)
  self
}

///|
pub fn TraceHooks::alloc_view(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_alloc_view(self)
}

///|
pub fn TraceHooks::set_alloc_view(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_alloc_view(self, value)
  self
}

///|
pub fn TraceHooks::dealloc_buffer(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_dealloc_buffer(self)
}

///|
pub fn TraceHooks::set_dealloc_buffer(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_dealloc_buffer(self, value)
  self
}

///|
pub fn TraceHooks::dealloc_image(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_dealloc_image(self)
}

///|
pub fn TraceHooks::set_dealloc_image(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_dealloc_image(self, value)
  self
}

///|
pub fn TraceHooks::dealloc_sampler(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_dealloc_sampler(self)
}

///|
pub fn TraceHooks::set_dealloc_sampler(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_dealloc_sampler(self, value)
  self
}

///|
pub fn TraceHooks::dealloc_shader(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_dealloc_shader(self)
}

///|
pub fn TraceHooks::set_dealloc_shader(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_dealloc_shader(self, value)
  self
}

///|
pub fn TraceHooks::dealloc_pipeline(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_dealloc_pipeline(self)
}

///|
pub fn TraceHooks::set_dealloc_pipeline(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_dealloc_pipeline(self, value)
  self
}

///|
pub fn TraceHooks::dealloc_view(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_dealloc_view(self)
}

///|
pub fn TraceHooks::set_dealloc_view(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_dealloc_view(self, value)
  self
}

///|
pub fn TraceHooks::init_buffer(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_init_buffer(self)
}

///|
pub fn TraceHooks::set_init_buffer(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_init_buffer(self, value)
  self
}

///|
pub fn TraceHooks::init_image(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_init_image(self)
}

///|
pub fn TraceHooks::set_init_image(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_init_image(self, value)
  self
}

///|
pub fn TraceHooks::init_sampler(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_init_sampler(self)
}

///|
pub fn TraceHooks::set_init_sampler(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_init_sampler(self, value)
  self
}

///|
pub fn TraceHooks::init_shader(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_init_shader(self)
}

///|
pub fn TraceHooks::set_init_shader(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_init_shader(self, value)
  self
}

///|
pub fn TraceHooks::init_pipeline(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_init_pipeline(self)
}

///|
pub fn TraceHooks::set_init_pipeline(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_init_pipeline(self, value)
  self
}

///|
pub fn TraceHooks::init_view(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_init_view(self)
}

///|
pub fn TraceHooks::set_init_view(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_init_view(self, value)
  self
}

///|
pub fn TraceHooks::uninit_buffer(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_uninit_buffer(self)
}

///|
pub fn TraceHooks::set_uninit_buffer(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_uninit_buffer(self, value)
  self
}

///|
pub fn TraceHooks::uninit_image(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_uninit_image(self)
}

///|
pub fn TraceHooks::set_uninit_image(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_uninit_image(self, value)
  self
}

///|
pub fn TraceHooks::uninit_sampler(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_uninit_sampler(self)
}

///|
pub fn TraceHooks::set_uninit_sampler(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_uninit_sampler(self, value)
  self
}

///|
pub fn TraceHooks::uninit_shader(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_uninit_shader(self)
}

///|
pub fn TraceHooks::set_uninit_shader(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_uninit_shader(self, value)
  self
}

///|
pub fn TraceHooks::uninit_pipeline(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_uninit_pipeline(self)
}

///|
pub fn TraceHooks::set_uninit_pipeline(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_uninit_pipeline(self, value)
  self
}

///|
pub fn TraceHooks::uninit_view(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_uninit_view(self)
}

///|
pub fn TraceHooks::set_uninit_view(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_uninit_view(self, value)
  self
}

///|
pub fn TraceHooks::fail_buffer(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_fail_buffer(self)
}

///|
pub fn TraceHooks::set_fail_buffer(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_fail_buffer(self, value)
  self
}

///|
pub fn TraceHooks::fail_image(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_fail_image(self)
}

///|
pub fn TraceHooks::set_fail_image(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_fail_image(self, value)
  self
}

///|
pub fn TraceHooks::fail_sampler(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_fail_sampler(self)
}

///|
pub fn TraceHooks::set_fail_sampler(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_fail_sampler(self, value)
  self
}

///|
pub fn TraceHooks::fail_shader(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_fail_shader(self)
}

///|
pub fn TraceHooks::set_fail_shader(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_fail_shader(self, value)
  self
}

///|
pub fn TraceHooks::fail_pipeline(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_fail_pipeline(self)
}

///|
pub fn TraceHooks::set_fail_pipeline(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_fail_pipeline(self, value)
  self
}

///|
pub fn TraceHooks::fail_view(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_fail_view(self)
}

///|
pub fn TraceHooks::set_fail_view(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_fail_view(self, value)
  self
}

///|
pub fn TraceHooks::push_debug_group(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_push_debug_group(self)
}

///|
pub fn TraceHooks::set_push_debug_group(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_push_debug_group(self, value)
  self
}

///|
pub fn TraceHooks::pop_debug_group(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_pop_debug_group(self)
}

///|
pub fn TraceHooks::set_pop_debug_group(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_pop_debug_group(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type SlotInfo

///|
pub fn SlotInfo::new() -> SlotInfo {
  sg_slot_info_new()
}

///|
pub fn SlotInfo::copy(self : SlotInfo) -> SlotInfo {
  sg_slot_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn SlotInfo::unsafe_native_handle(self : SlotInfo) -> @native.Handle {
  sg_slot_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn SlotInfo::unsafe_from_native(ptr : @native.Handle) -> SlotInfo {
  sg_slot_info_from_native(ptr)
}

///|
pub fn SlotInfo::state(self : SlotInfo) -> ResourceState {
  sg_slot_info_get_state(self)
}

///|
pub fn SlotInfo::set_state(self : SlotInfo, value : ResourceState) -> SlotInfo {
  sg_slot_info_set_state(self, value)
  self
}

///|
pub fn SlotInfo::res_id(self : SlotInfo) -> UInt32 {
  sg_slot_info_get_res_id(self)
}

///|
pub fn SlotInfo::set_res_id(self : SlotInfo, value : UInt32) -> SlotInfo {
  sg_slot_info_set_res_id(self, value)
  self
}

///|
pub fn SlotInfo::uninit_count(self : SlotInfo) -> UInt32 {
  sg_slot_info_get_uninit_count(self)
}

///|
pub fn SlotInfo::set_uninit_count(self : SlotInfo, value : UInt32) -> SlotInfo {
  sg_slot_info_set_uninit_count(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type BufferInfo

///|
pub fn BufferInfo::new() -> BufferInfo {
  sg_buffer_info_new()
}

///|
pub fn BufferInfo::copy(self : BufferInfo) -> BufferInfo {
  sg_buffer_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn BufferInfo::unsafe_native_handle(self : BufferInfo) -> @native.Handle {
  sg_buffer_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn BufferInfo::unsafe_from_native(ptr : @native.Handle) -> BufferInfo {
  sg_buffer_info_from_native(ptr)
}

///|
pub fn BufferInfo::slot(self : BufferInfo) -> SlotInfo {
  sg_buffer_info_get_slot(self)
}

///|
pub fn BufferInfo::set_slot(self : BufferInfo, value : SlotInfo) -> BufferInfo {
  sg_buffer_info_set_slot(self, value)
  self
}

///|
pub fn BufferInfo::num_slots(self : BufferInfo) -> Int32 {
  sg_buffer_info_get_num_slots(self)
}

///|
pub fn BufferInfo::set_num_slots(
  self : BufferInfo,
  value : Int32,
) -> BufferInfo {
  sg_buffer_info_set_num_slots(self, value)
  self
}

///|
pub fn BufferInfo::active_slot(self : BufferInfo) -> Int32 {
  sg_buffer_info_get_active_slot(self)
}

///|
pub fn BufferInfo::set_active_slot(
  self : BufferInfo,
  value : Int32,
) -> BufferInfo {
  sg_buffer_info_set_active_slot(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ImageInfo

///|
pub fn ImageInfo::new() -> ImageInfo {
  sg_image_info_new()
}

///|
pub fn ImageInfo::copy(self : ImageInfo) -> ImageInfo {
  sg_image_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ImageInfo::unsafe_native_handle(self : ImageInfo) -> @native.Handle {
  sg_image_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ImageInfo::unsafe_from_native(ptr : @native.Handle) -> ImageInfo {
  sg_image_info_from_native(ptr)
}

///|
pub fn ImageInfo::slot(self : ImageInfo) -> SlotInfo {
  sg_image_info_get_slot(self)
}

///|
pub fn ImageInfo::set_slot(self : ImageInfo, value : SlotInfo) -> ImageInfo {
  sg_image_info_set_slot(self, value)
  self
}

///|
pub fn ImageInfo::num_slots(self : ImageInfo) -> Int32 {
  sg_image_info_get_num_slots(self)
}

///|
pub fn ImageInfo::set_num_slots(self : ImageInfo, value : Int32) -> ImageInfo {
  sg_image_info_set_num_slots(self, value)
  self
}

///|
pub fn ImageInfo::active_slot(self : ImageInfo) -> Int32 {
  sg_image_info_get_active_slot(self)
}

///|
pub fn ImageInfo::set_active_slot(self : ImageInfo, value : Int32) -> ImageInfo {
  sg_image_info_set_active_slot(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type SamplerInfo

///|
pub fn SamplerInfo::new() -> SamplerInfo {
  sg_sampler_info_new()
}

///|
pub fn SamplerInfo::copy(self : SamplerInfo) -> SamplerInfo {
  sg_sampler_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn SamplerInfo::unsafe_native_handle(self : SamplerInfo) -> @native.Handle {
  sg_sampler_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn SamplerInfo::unsafe_from_native(ptr : @native.Handle) -> SamplerInfo {
  sg_sampler_info_from_native(ptr)
}

///|
pub fn SamplerInfo::slot(self : SamplerInfo) -> SlotInfo {
  sg_sampler_info_get_slot(self)
}

///|
pub fn SamplerInfo::set_slot(
  self : SamplerInfo,
  value : SlotInfo,
) -> SamplerInfo {
  sg_sampler_info_set_slot(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ShaderInfo

///|
pub fn ShaderInfo::new() -> ShaderInfo {
  sg_shader_info_new()
}

///|
pub fn ShaderInfo::copy(self : ShaderInfo) -> ShaderInfo {
  sg_shader_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ShaderInfo::unsafe_native_handle(self : ShaderInfo) -> @native.Handle {
  sg_shader_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ShaderInfo::unsafe_from_native(ptr : @native.Handle) -> ShaderInfo {
  sg_shader_info_from_native(ptr)
}

///|
pub fn ShaderInfo::slot(self : ShaderInfo) -> SlotInfo {
  sg_shader_info_get_slot(self)
}

///|
pub fn ShaderInfo::set_slot(self : ShaderInfo, value : SlotInfo) -> ShaderInfo {
  sg_shader_info_set_slot(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type PipelineInfo

///|
pub fn PipelineInfo::new() -> PipelineInfo {
  sg_pipeline_info_new()
}

///|
pub fn PipelineInfo::copy(self : PipelineInfo) -> PipelineInfo {
  sg_pipeline_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn PipelineInfo::unsafe_native_handle(
  self : PipelineInfo,
) -> @native.Handle {
  sg_pipeline_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn PipelineInfo::unsafe_from_native(ptr : @native.Handle) -> PipelineInfo {
  sg_pipeline_info_from_native(ptr)
}

///|
pub fn PipelineInfo::slot(self : PipelineInfo) -> SlotInfo {
  sg_pipeline_info_get_slot(self)
}

///|
pub fn PipelineInfo::set_slot(
  self : PipelineInfo,
  value : SlotInfo,
) -> PipelineInfo {
  sg_pipeline_info_set_slot(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ViewInfo

///|
pub fn ViewInfo::new() -> ViewInfo {
  sg_view_info_new()
}

///|
pub fn ViewInfo::copy(self : ViewInfo) -> ViewInfo {
  sg_view_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ViewInfo::unsafe_native_handle(self : ViewInfo) -> @native.Handle {
  sg_view_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ViewInfo::unsafe_from_native(ptr : @native.Handle) -> ViewInfo {
  sg_view_info_from_native(ptr)
}

///|
pub fn ViewInfo::slot(self : ViewInfo) -> SlotInfo {
  sg_view_info_get_slot(self)
}

///|
pub fn ViewInfo::set_slot(self : ViewInfo, value : SlotInfo) -> ViewInfo {
  sg_view_info_set_slot(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type FrameStatsGl

///|
pub fn FrameStatsGl::new() -> FrameStatsGl {
  sg_frame_stats_gl_new()
}

///|
pub fn FrameStatsGl::copy(self : FrameStatsGl) -> FrameStatsGl {
  sg_frame_stats_gl_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsGl::unsafe_native_handle(
  self : FrameStatsGl,
) -> @native.Handle {
  sg_frame_stats_gl_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsGl::unsafe_from_native(ptr : @native.Handle) -> FrameStatsGl {
  sg_frame_stats_gl_from_native(ptr)
}

///|
pub fn FrameStatsGl::num_bind_buffer(self : FrameStatsGl) -> UInt32 {
  sg_frame_stats_gl_get_num_bind_buffer(self)
}

///|
pub fn FrameStatsGl::set_num_bind_buffer(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_bind_buffer(self, value)
  self
}

///|
pub fn FrameStatsGl::num_active_texture(self : FrameStatsGl) -> UInt32 {
  sg_frame_stats_gl_get_num_active_texture(self)
}

///|
pub fn FrameStatsGl::set_num_active_texture(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_active_texture(self, value)
  self
}

///|
pub fn FrameStatsGl::num_bind_texture(self : FrameStatsGl) -> UInt32 {
  sg_frame_stats_gl_get_num_bind_texture(self)
}

///|
pub fn FrameStatsGl::set_num_bind_texture(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_bind_texture(self, value)
  self
}

///|
pub fn FrameStatsGl::num_bind_sampler(self : FrameStatsGl) -> UInt32 {
  sg_frame_stats_gl_get_num_bind_sampler(self)
}

///|
pub fn FrameStatsGl::set_num_bind_sampler(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_bind_sampler(self, value)
  self
}

///|
pub fn FrameStatsGl::num_bind_image_texture(self : FrameStatsGl) -> UInt32 {
  sg_frame_stats_gl_get_num_bind_image_texture(self)
}

///|
pub fn FrameStatsGl::set_num_bind_image_texture(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_bind_image_texture(self, value)
  self
}

///|
pub fn FrameStatsGl::num_use_program(self : FrameStatsGl) -> UInt32 {
  sg_frame_stats_gl_get_num_use_program(self)
}

///|
pub fn FrameStatsGl::set_num_use_program(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_use_program(self, value)
  self
}

///|
pub fn FrameStatsGl::num_render_state(self : FrameStatsGl) -> UInt32 {
  sg_frame_stats_gl_get_num_render_state(self)
}

///|
pub fn FrameStatsGl::set_num_render_state(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_render_state(self, value)
  self
}

///|
pub fn FrameStatsGl::num_vertex_attrib_pointer(self : FrameStatsGl) -> UInt32 {
  sg_frame_stats_gl_get_num_vertex_attrib_pointer(self)
}

///|
pub fn FrameStatsGl::set_num_vertex_attrib_pointer(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_vertex_attrib_pointer(self, value)
  self
}

///|
pub fn FrameStatsGl::num_vertex_attrib_divisor(self : FrameStatsGl) -> UInt32 {
  sg_frame_stats_gl_get_num_vertex_attrib_divisor(self)
}

///|
pub fn FrameStatsGl::set_num_vertex_attrib_divisor(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_vertex_attrib_divisor(self, value)
  self
}

///|
pub fn FrameStatsGl::num_enable_vertex_attrib_array(
  self : FrameStatsGl,
) -> UInt32 {
  sg_frame_stats_gl_get_num_enable_vertex_attrib_array(self)
}

///|
pub fn FrameStatsGl::set_num_enable_vertex_attrib_array(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_enable_vertex_attrib_array(self, value)
  self
}

///|
pub fn FrameStatsGl::num_disable_vertex_attrib_array(
  self : FrameStatsGl,
) -> UInt32 {
  sg_frame_stats_gl_get_num_disable_vertex_attrib_array(self)
}

///|
pub fn FrameStatsGl::set_num_disable_vertex_attrib_array(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_disable_vertex_attrib_array(self, value)
  self
}

///|
pub fn FrameStatsGl::num_uniform(self : FrameStatsGl) -> UInt32 {
  sg_frame_stats_gl_get_num_uniform(self)
}

///|
pub fn FrameStatsGl::set_num_uniform(
  self : FrameStatsGl,
  value : UInt32,
) -> FrameStatsGl {
  sg_frame_stats_gl_set_num_uniform(self, value)
  self
}

///|
pub fn FrameStatsGl::num_memory_barriers(self : FrameStatsGl) -> UInt32 {
  sg_frame_stats_gl_get_num_memory_barriers(self)
}

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
pub type FrameStatsD3d11Pass

///|
pub fn FrameStatsD3d11Pass::new() -> FrameStatsD3d11Pass {
  sg_frame_stats_d3d11_pass_new()
}

///|
pub fn FrameStatsD3d11Pass::copy(
  self : FrameStatsD3d11Pass,
) -> FrameStatsD3d11Pass {
  sg_frame_stats_d3d11_pass_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsD3d11Pass::unsafe_native_handle(
  self : FrameStatsD3d11Pass,
) -> @native.Handle {
  sg_frame_stats_d3d11_pass_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsD3d11Pass::unsafe_from_native(
  ptr : @native.Handle,
) -> FrameStatsD3d11Pass {
  sg_frame_stats_d3d11_pass_from_native(ptr)
}

///|
pub fn FrameStatsD3d11Pass::num_om_set_render_targets(
  self : FrameStatsD3d11Pass,
) -> UInt32 {
  sg_frame_stats_d3d11_pass_get_num_om_set_render_targets(self)
}

///|
pub fn FrameStatsD3d11Pass::set_num_om_set_render_targets(
  self : FrameStatsD3d11Pass,
  value : UInt32,
) -> FrameStatsD3d11Pass {
  sg_frame_stats_d3d11_pass_set_num_om_set_render_targets(self, value)
  self
}

///|
pub fn FrameStatsD3d11Pass::num_clear_render_target_view(
  self : FrameStatsD3d11Pass,
) -> UInt32 {
  sg_frame_stats_d3d11_pass_get_num_clear_render_target_view(self)
}

///|
pub fn FrameStatsD3d11Pass::set_num_clear_render_target_view(
  self : FrameStatsD3d11Pass,
  value : UInt32,
) -> FrameStatsD3d11Pass {
  sg_frame_stats_d3d11_pass_set_num_clear_render_target_view(self, value)
  self
}

///|
pub fn FrameStatsD3d11Pass::num_clear_depth_stencil_view(
  self : FrameStatsD3d11Pass,
) -> UInt32 {
  sg_frame_stats_d3d11_pass_get_num_clear_depth_stencil_view(self)
}

///|
pub fn FrameStatsD3d11Pass::set_num_clear_depth_stencil_view(
  self : FrameStatsD3d11Pass,
  value : UInt32,
) -> FrameStatsD3d11Pass {
  sg_frame_stats_d3d11_pass_set_num_clear_depth_stencil_view(self, value)
  self
}

///|
pub fn FrameStatsD3d11Pass::num_resolve_subresource(
  self : FrameStatsD3d11Pass,
) -> UInt32 {
  sg_frame_stats_d3d11_pass_get_num_resolve_subresource(self)
}

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
pub fn FrameStatsD3d11Pipeline::new() -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_new()
}

///|
pub fn FrameStatsD3d11Pipeline::copy(
  self : FrameStatsD3d11Pipeline,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsD3d11Pipeline::unsafe_native_handle(
  self : FrameStatsD3d11Pipeline,
) -> @native.Handle {
  sg_frame_stats_d3d11_pipeline_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsD3d11Pipeline::unsafe_from_native(
  ptr : @native.Handle,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_from_native(ptr)
}

///|
pub fn FrameStatsD3d11Pipeline::num_rs_set_state(
  self : FrameStatsD3d11Pipeline,
) -> UInt32 {
  sg_frame_stats_d3d11_pipeline_get_num_rs_set_state(self)
}

///|
pub fn FrameStatsD3d11Pipeline::set_num_rs_set_state(
  self : FrameStatsD3d11Pipeline,
  value : UInt32,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_set_num_rs_set_state(self, value)
  self
}

///|
pub fn FrameStatsD3d11Pipeline::num_om_set_depth_stencil_state(
  self : FrameStatsD3d11Pipeline,
) -> UInt32 {
  sg_frame_stats_d3d11_pipeline_get_num_om_set_depth_stencil_state(self)
}

///|
pub fn FrameStatsD3d11Pipeline::set_num_om_set_depth_stencil_state(
  self : FrameStatsD3d11Pipeline,
  value : UInt32,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_set_num_om_set_depth_stencil_state(self, value)
  self
}

///|
pub fn FrameStatsD3d11Pipeline::num_om_set_blend_state(
  self : FrameStatsD3d11Pipeline,
) -> UInt32 {
  sg_frame_stats_d3d11_pipeline_get_num_om_set_blend_state(self)
}

///|
pub fn FrameStatsD3d11Pipeline::set_num_om_set_blend_state(
  self : FrameStatsD3d11Pipeline,
  value : UInt32,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_set_num_om_set_blend_state(self, value)
  self
}

///|
pub fn FrameStatsD3d11Pipeline::num_ia_set_primitive_topology(
  self : FrameStatsD3d11Pipeline,
) -> UInt32 {
  sg_frame_stats_d3d11_pipeline_get_num_ia_set_primitive_topology(self)
}

///|
pub fn FrameStatsD3d11Pipeline::set_num_ia_set_primitive_topology(
  self : FrameStatsD3d11Pipeline,
  value : UInt32,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_set_num_ia_set_primitive_topology(self, value)
  self
}

///|
pub fn FrameStatsD3d11Pipeline::num_ia_set_input_layout(
  self : FrameStatsD3d11Pipeline,
) -> UInt32 {
  sg_frame_stats_d3d11_pipeline_get_num_ia_set_input_layout(self)
}

///|
pub fn FrameStatsD3d11Pipeline::set_num_ia_set_input_layout(
  self : FrameStatsD3d11Pipeline,
  value : UInt32,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_set_num_ia_set_input_layout(self, value)
  self
}

///|
pub fn FrameStatsD3d11Pipeline::num_vs_set_shader(
  self : FrameStatsD3d11Pipeline,
) -> UInt32 {
  sg_frame_stats_d3d11_pipeline_get_num_vs_set_shader(self)
}

///|
pub fn FrameStatsD3d11Pipeline::set_num_vs_set_shader(
  self : FrameStatsD3d11Pipeline,
  value : UInt32,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_set_num_vs_set_shader(self, value)
  self
}

///|
pub fn FrameStatsD3d11Pipeline::num_vs_set_constant_buffers(
  self : FrameStatsD3d11Pipeline,
) -> UInt32 {
  sg_frame_stats_d3d11_pipeline_get_num_vs_set_constant_buffers(self)
}

///|
pub fn FrameStatsD3d11Pipeline::set_num_vs_set_constant_buffers(
  self : FrameStatsD3d11Pipeline,
  value : UInt32,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_set_num_vs_set_constant_buffers(self, value)
  self
}

///|
pub fn FrameStatsD3d11Pipeline::num_ps_set_shader(
  self : FrameStatsD3d11Pipeline,
) -> UInt32 {
  sg_frame_stats_d3d11_pipeline_get_num_ps_set_shader(self)
}

///|
pub fn FrameStatsD3d11Pipeline::set_num_ps_set_shader(
  self : FrameStatsD3d11Pipeline,
  value : UInt32,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_set_num_ps_set_shader(self, value)
  self
}

///|
pub fn FrameStatsD3d11Pipeline::num_ps_set_constant_buffers(
  self : FrameStatsD3d11Pipeline,
) -> UInt32 {
  sg_frame_stats_d3d11_pipeline_get_num_ps_set_constant_buffers(self)
}

///|
pub fn FrameStatsD3d11Pipeline::set_num_ps_set_constant_buffers(
  self : FrameStatsD3d11Pipeline,
  value : UInt32,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_set_num_ps_set_constant_buffers(self, value)
  self
}

///|
pub fn FrameStatsD3d11Pipeline::num_cs_set_shader(
  self : FrameStatsD3d11Pipeline,
) -> UInt32 {
  sg_frame_stats_d3d11_pipeline_get_num_cs_set_shader(self)
}

///|
pub fn FrameStatsD3d11Pipeline::set_num_cs_set_shader(
  self : FrameStatsD3d11Pipeline,
  value : UInt32,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_pipeline_set_num_cs_set_shader(self, value)
  self
}

///|
pub fn FrameStatsD3d11Pipeline::num_cs_set_constant_buffers(
  self : FrameStatsD3d11Pipeline,
) -> UInt32 {
  sg_frame_stats_d3d11_pipeline_get_num_cs_set_constant_buffers(self)
}

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
pub fn FrameStatsD3d11Bindings::new() -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_new()
}

///|
pub fn FrameStatsD3d11Bindings::copy(
  self : FrameStatsD3d11Bindings,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsD3d11Bindings::unsafe_native_handle(
  self : FrameStatsD3d11Bindings,
) -> @native.Handle {
  sg_frame_stats_d3d11_bindings_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsD3d11Bindings::unsafe_from_native(
  ptr : @native.Handle,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_from_native(ptr)
}

///|
pub fn FrameStatsD3d11Bindings::num_ia_set_vertex_buffers(
  self : FrameStatsD3d11Bindings,
) -> UInt32 {
  sg_frame_stats_d3d11_bindings_get_num_ia_set_vertex_buffers(self)
}

///|
pub fn FrameStatsD3d11Bindings::set_num_ia_set_vertex_buffers(
  self : FrameStatsD3d11Bindings,
  value : UInt32,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_set_num_ia_set_vertex_buffers(self, value)
  self
}

///|
pub fn FrameStatsD3d11Bindings::num_ia_set_index_buffer(
  self : FrameStatsD3d11Bindings,
) -> UInt32 {
  sg_frame_stats_d3d11_bindings_get_num_ia_set_index_buffer(self)
}

///|
pub fn FrameStatsD3d11Bindings::set_num_ia_set_index_buffer(
  self : FrameStatsD3d11Bindings,
  value : UInt32,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_set_num_ia_set_index_buffer(self, value)
  self
}

///|
pub fn FrameStatsD3d11Bindings::num_vs_set_shader_resources(
  self : FrameStatsD3d11Bindings,
) -> UInt32 {
  sg_frame_stats_d3d11_bindings_get_num_vs_set_shader_resources(self)
}

///|
pub fn FrameStatsD3d11Bindings::set_num_vs_set_shader_resources(
  self : FrameStatsD3d11Bindings,
  value : UInt32,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_set_num_vs_set_shader_resources(self, value)
  self
}

///|
pub fn FrameStatsD3d11Bindings::num_vs_set_samplers(
  self : FrameStatsD3d11Bindings,
) -> UInt32 {
  sg_frame_stats_d3d11_bindings_get_num_vs_set_samplers(self)
}

///|
pub fn FrameStatsD3d11Bindings::set_num_vs_set_samplers(
  self : FrameStatsD3d11Bindings,
  value : UInt32,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_set_num_vs_set_samplers(self, value)
  self
}

///|
pub fn FrameStatsD3d11Bindings::num_ps_set_shader_resources(
  self : FrameStatsD3d11Bindings,
) -> UInt32 {
  sg_frame_stats_d3d11_bindings_get_num_ps_set_shader_resources(self)
}

///|
pub fn FrameStatsD3d11Bindings::set_num_ps_set_shader_resources(
  self : FrameStatsD3d11Bindings,
  value : UInt32,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_set_num_ps_set_shader_resources(self, value)
  self
}

///|
pub fn FrameStatsD3d11Bindings::num_ps_set_samplers(
  self : FrameStatsD3d11Bindings,
) -> UInt32 {
  sg_frame_stats_d3d11_bindings_get_num_ps_set_samplers(self)
}

///|
pub fn FrameStatsD3d11Bindings::set_num_ps_set_samplers(
  self : FrameStatsD3d11Bindings,
  value : UInt32,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_set_num_ps_set_samplers(self, value)
  self
}

///|
pub fn FrameStatsD3d11Bindings::num_cs_set_shader_resources(
  self : FrameStatsD3d11Bindings,
) -> UInt32 {
  sg_frame_stats_d3d11_bindings_get_num_cs_set_shader_resources(self)
}

///|
pub fn FrameStatsD3d11Bindings::set_num_cs_set_shader_resources(
  self : FrameStatsD3d11Bindings,
  value : UInt32,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_set_num_cs_set_shader_resources(self, value)
  self
}

///|
pub fn FrameStatsD3d11Bindings::num_cs_set_samplers(
  self : FrameStatsD3d11Bindings,
) -> UInt32 {
  sg_frame_stats_d3d11_bindings_get_num_cs_set_samplers(self)
}

///|
pub fn FrameStatsD3d11Bindings::set_num_cs_set_samplers(
  self : FrameStatsD3d11Bindings,
  value : UInt32,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_bindings_set_num_cs_set_samplers(self, value)
  self
}

///|
pub fn FrameStatsD3d11Bindings::num_cs_set_unordered_access_views(
  self : FrameStatsD3d11Bindings,
) -> UInt32 {
  sg_frame_stats_d3d11_bindings_get_num_cs_set_unordered_access_views(self)
}

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
pub fn FrameStatsD3d11Bindings::num_om_set_rts_and_uavs(
  self : FrameStatsD3d11Bindings,
) -> UInt32 {
  sg_frame_stats_d3d11_bindings_get_num_om_set_rts_and_uavs(self)
}

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
pub fn FrameStatsD3d11Draw::new() -> FrameStatsD3d11Draw {
  sg_frame_stats_d3d11_draw_new()
}

///|
pub fn FrameStatsD3d11Draw::copy(
  self : FrameStatsD3d11Draw,
) -> FrameStatsD3d11Draw {
  sg_frame_stats_d3d11_draw_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsD3d11Draw::unsafe_native_handle(
  self : FrameStatsD3d11Draw,
) -> @native.Handle {
  sg_frame_stats_d3d11_draw_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsD3d11Draw::unsafe_from_native(
  ptr : @native.Handle,
) -> FrameStatsD3d11Draw {
  sg_frame_stats_d3d11_draw_from_native(ptr)
}

///|
pub fn FrameStatsD3d11Draw::num_draw_indexed_instanced(
  self : FrameStatsD3d11Draw,
) -> UInt32 {
  sg_frame_stats_d3d11_draw_get_num_draw_indexed_instanced(self)
}

///|
pub fn FrameStatsD3d11Draw::set_num_draw_indexed_instanced(
  self : FrameStatsD3d11Draw,
  value : UInt32,
) -> FrameStatsD3d11Draw {
  sg_frame_stats_d3d11_draw_set_num_draw_indexed_instanced(self, value)
  self
}

///|
pub fn FrameStatsD3d11Draw::num_draw_indexed(
  self : FrameStatsD3d11Draw,
) -> UInt32 {
  sg_frame_stats_d3d11_draw_get_num_draw_indexed(self)
}

///|
pub fn FrameStatsD3d11Draw::set_num_draw_indexed(
  self : FrameStatsD3d11Draw,
  value : UInt32,
) -> FrameStatsD3d11Draw {
  sg_frame_stats_d3d11_draw_set_num_draw_indexed(self, value)
  self
}

///|
pub fn FrameStatsD3d11Draw::num_draw_instanced(
  self : FrameStatsD3d11Draw,
) -> UInt32 {
  sg_frame_stats_d3d11_draw_get_num_draw_instanced(self)
}

///|
pub fn FrameStatsD3d11Draw::set_num_draw_instanced(
  self : FrameStatsD3d11Draw,
  value : UInt32,
) -> FrameStatsD3d11Draw {
  sg_frame_stats_d3d11_draw_set_num_draw_instanced(self, value)
  self
}

///|
pub fn FrameStatsD3d11Draw::num_draw(self : FrameStatsD3d11Draw) -> UInt32 {
  sg_frame_stats_d3d11_draw_get_num_draw(self)
}

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
pub fn FrameStatsD3d11::new() -> FrameStatsD3d11 {
  sg_frame_stats_d3d11_new()
}

///|
pub fn FrameStatsD3d11::copy(self : FrameStatsD3d11) -> FrameStatsD3d11 {
  sg_frame_stats_d3d11_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsD3d11::unsafe_native_handle(
  self : FrameStatsD3d11,
) -> @native.Handle {
  sg_frame_stats_d3d11_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsD3d11::unsafe_from_native(
  ptr : @native.Handle,
) -> FrameStatsD3d11 {
  sg_frame_stats_d3d11_from_native(ptr)
}

///|
pub fn FrameStatsD3d11::pass(self : FrameStatsD3d11) -> FrameStatsD3d11Pass {
  sg_frame_stats_d3d11_get_pass(self)
}

///|
pub fn FrameStatsD3d11::set_pass(
  self : FrameStatsD3d11,
  value : FrameStatsD3d11Pass,
) -> FrameStatsD3d11 {
  sg_frame_stats_d3d11_set_pass(self, value)
  self
}

///|
pub fn FrameStatsD3d11::pipeline(
  self : FrameStatsD3d11,
) -> FrameStatsD3d11Pipeline {
  sg_frame_stats_d3d11_get_pipeline(self)
}

///|
pub fn FrameStatsD3d11::set_pipeline(
  self : FrameStatsD3d11,
  value : FrameStatsD3d11Pipeline,
) -> FrameStatsD3d11 {
  sg_frame_stats_d3d11_set_pipeline(self, value)
  self
}

///|
pub fn FrameStatsD3d11::bindings(
  self : FrameStatsD3d11,
) -> FrameStatsD3d11Bindings {
  sg_frame_stats_d3d11_get_bindings(self)
}

///|
pub fn FrameStatsD3d11::set_bindings(
  self : FrameStatsD3d11,
  value : FrameStatsD3d11Bindings,
) -> FrameStatsD3d11 {
  sg_frame_stats_d3d11_set_bindings(self, value)
  self
}

///|
pub fn FrameStatsD3d11::draw(self : FrameStatsD3d11) -> FrameStatsD3d11Draw {
  sg_frame_stats_d3d11_get_draw(self)
}

///|
pub fn FrameStatsD3d11::set_draw(
  self : FrameStatsD3d11,
  value : FrameStatsD3d11Draw,
) -> FrameStatsD3d11 {
  sg_frame_stats_d3d11_set_draw(self, value)
  self
}

///|
pub fn FrameStatsD3d11::num_update_subresource(
  self : FrameStatsD3d11,
) -> UInt32 {
  sg_frame_stats_d3d11_get_num_update_subresource(self)
}

///|
pub fn FrameStatsD3d11::set_num_update_subresource(
  self : FrameStatsD3d11,
  value : UInt32,
) -> FrameStatsD3d11 {
  sg_frame_stats_d3d11_set_num_update_subresource(self, value)
  self
}

///|
pub fn FrameStatsD3d11::num_copy_subresource_region(
  self : FrameStatsD3d11,
) -> UInt32 {
  sg_frame_stats_d3d11_get_num_copy_subresource_region(self)
}

///|
pub fn FrameStatsD3d11::set_num_copy_subresource_region(
  self : FrameStatsD3d11,
  value : UInt32,
) -> FrameStatsD3d11 {
  sg_frame_stats_d3d11_set_num_copy_subresource_region(self, value)
  self
}

///|
pub fn FrameStatsD3d11::num_map(self : FrameStatsD3d11) -> UInt32 {
  sg_frame_stats_d3d11_get_num_map(self)
}

///|
pub fn FrameStatsD3d11::set_num_map(
  self : FrameStatsD3d11,
  value : UInt32,
) -> FrameStatsD3d11 {
  sg_frame_stats_d3d11_set_num_map(self, value)
  self
}

///|
pub fn FrameStatsD3d11::num_unmap(self : FrameStatsD3d11) -> UInt32 {
  sg_frame_stats_d3d11_get_num_unmap(self)
}

///|
pub fn FrameStatsD3d11::set_num_unmap(
  self : FrameStatsD3d11,
  value : UInt32,
) -> FrameStatsD3d11 {
  sg_frame_stats_d3d11_set_num_unmap(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type FrameStatsMetalIdpool

///|
pub fn FrameStatsMetalIdpool::new() -> FrameStatsMetalIdpool {
  sg_frame_stats_metal_idpool_new()
}

///|
pub fn FrameStatsMetalIdpool::copy(
  self : FrameStatsMetalIdpool,
) -> FrameStatsMetalIdpool {
  sg_frame_stats_metal_idpool_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsMetalIdpool::unsafe_native_handle(
  self : FrameStatsMetalIdpool,
) -> @native.Handle {
  sg_frame_stats_metal_idpool_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsMetalIdpool::unsafe_from_native(
  ptr : @native.Handle,
) -> FrameStatsMetalIdpool {
  sg_frame_stats_metal_idpool_from_native(ptr)
}

///|
pub fn FrameStatsMetalIdpool::num_added(self : FrameStatsMetalIdpool) -> UInt32 {
  sg_frame_stats_metal_idpool_get_num_added(self)
}

///|
pub fn FrameStatsMetalIdpool::set_num_added(
  self : FrameStatsMetalIdpool,
  value : UInt32,
) -> FrameStatsMetalIdpool {
  sg_frame_stats_metal_idpool_set_num_added(self, value)
  self
}

///|
pub fn FrameStatsMetalIdpool::num_released(
  self : FrameStatsMetalIdpool,
) -> UInt32 {
  sg_frame_stats_metal_idpool_get_num_released(self)
}

///|
pub fn FrameStatsMetalIdpool::set_num_released(
  self : FrameStatsMetalIdpool,
  value : UInt32,
) -> FrameStatsMetalIdpool {
  sg_frame_stats_metal_idpool_set_num_released(self, value)
  self
}

///|
pub fn FrameStatsMetalIdpool::num_garbage_collected(
  self : FrameStatsMetalIdpool,
) -> UInt32 {
  sg_frame_stats_metal_idpool_get_num_garbage_collected(self)
}

///|
pub fn FrameStatsMetalIdpool::set_num_garbage_collected(
  self : FrameStatsMetalIdpool,
  value : UInt32,
) -> FrameStatsMetalIdpool {
  sg_frame_stats_metal_idpool_set_num_garbage_collected(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type FrameStatsMetalPipeline

///|
pub fn FrameStatsMetalPipeline::new() -> FrameStatsMetalPipeline {
  sg_frame_stats_metal_pipeline_new()
}

///|
pub fn FrameStatsMetalPipeline::copy(
  self : FrameStatsMetalPipeline,
) -> FrameStatsMetalPipeline {
  sg_frame_stats_metal_pipeline_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsMetalPipeline::unsafe_native_handle(
  self : FrameStatsMetalPipeline,
) -> @native.Handle {
  sg_frame_stats_metal_pipeline_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsMetalPipeline::unsafe_from_native(
  ptr : @native.Handle,
) -> FrameStatsMetalPipeline {
  sg_frame_stats_metal_pipeline_from_native(ptr)
}

///|
pub fn FrameStatsMetalPipeline::num_set_blend_color(
  self : FrameStatsMetalPipeline,
) -> UInt32 {
  sg_frame_stats_metal_pipeline_get_num_set_blend_color(self)
}

///|
pub fn FrameStatsMetalPipeline::set_num_set_blend_color(
  self : FrameStatsMetalPipeline,
  value : UInt32,
) -> FrameStatsMetalPipeline {
  sg_frame_stats_metal_pipeline_set_num_set_blend_color(self, value)
  self
}

///|
pub fn FrameStatsMetalPipeline::num_set_cull_mode(
  self : FrameStatsMetalPipeline,
) -> UInt32 {
  sg_frame_stats_metal_pipeline_get_num_set_cull_mode(self)
}

///|
pub fn FrameStatsMetalPipeline::set_num_set_cull_mode(
  self : FrameStatsMetalPipeline,
  value : UInt32,
) -> FrameStatsMetalPipeline {
  sg_frame_stats_metal_pipeline_set_num_set_cull_mode(self, value)
  self
}

///|
pub fn FrameStatsMetalPipeline::num_set_front_facing_winding(
  self : FrameStatsMetalPipeline,
) -> UInt32 {
  sg_frame_stats_metal_pipeline_get_num_set_front_facing_winding(self)
}

///|
pub fn FrameStatsMetalPipeline::set_num_set_front_facing_winding(
  self : FrameStatsMetalPipeline,
  value : UInt32,
) -> FrameStatsMetalPipeline {
  sg_frame_stats_metal_pipeline_set_num_set_front_facing_winding(self, value)
  self
}

///|
pub fn FrameStatsMetalPipeline::num_set_stencil_reference_value(
  self : FrameStatsMetalPipeline,
) -> UInt32 {
  sg_frame_stats_metal_pipeline_get_num_set_stencil_reference_value(self)
}

///|
pub fn FrameStatsMetalPipeline::set_num_set_stencil_reference_value(
  self : FrameStatsMetalPipeline,
  value : UInt32,
) -> FrameStatsMetalPipeline {
  sg_frame_stats_metal_pipeline_set_num_set_stencil_reference_value(self, value)
  self
}

///|
pub fn FrameStatsMetalPipeline::num_set_depth_bias(
  self : FrameStatsMetalPipeline,
) -> UInt32 {
  sg_frame_stats_metal_pipeline_get_num_set_depth_bias(self)
}

///|
pub fn FrameStatsMetalPipeline::set_num_set_depth_bias(
  self : FrameStatsMetalPipeline,
  value : UInt32,
) -> FrameStatsMetalPipeline {
  sg_frame_stats_metal_pipeline_set_num_set_depth_bias(self, value)
  self
}

///|
pub fn FrameStatsMetalPipeline::num_set_render_pipeline_state(
  self : FrameStatsMetalPipeline,
) -> UInt32 {
  sg_frame_stats_metal_pipeline_get_num_set_render_pipeline_state(self)
}

///|
pub fn FrameStatsMetalPipeline::set_num_set_render_pipeline_state(
  self : FrameStatsMetalPipeline,
  value : UInt32,
) -> FrameStatsMetalPipeline {
  sg_frame_stats_metal_pipeline_set_num_set_render_pipeline_state(self, value)
  self
}

///|
pub fn FrameStatsMetalPipeline::num_set_depth_stencil_state(
  self : FrameStatsMetalPipeline,
) -> UInt32 {
  sg_frame_stats_metal_pipeline_get_num_set_depth_stencil_state(self)
}

///|
pub fn FrameStatsMetalPipeline::set_num_set_depth_stencil_state(
  self : FrameStatsMetalPipeline,
  value : UInt32,
) -> FrameStatsMetalPipeline {
  sg_frame_stats_metal_pipeline_set_num_set_depth_stencil_state(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type FrameStatsMetalBindings

///|
pub fn FrameStatsMetalBindings::new() -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_new()
}

///|
pub fn FrameStatsMetalBindings::copy(
  self : FrameStatsMetalBindings,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsMetalBindings::unsafe_native_handle(
  self : FrameStatsMetalBindings,
) -> @native.Handle {
  sg_frame_stats_metal_bindings_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsMetalBindings::unsafe_from_native(
  ptr : @native.Handle,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_from_native(ptr)
}

///|
pub fn FrameStatsMetalBindings::num_set_vertex_buffer(
  self : FrameStatsMetalBindings,
) -> UInt32 {
  sg_frame_stats_metal_bindings_get_num_set_vertex_buffer(self)
}

///|
pub fn FrameStatsMetalBindings::set_num_set_vertex_buffer(
  self : FrameStatsMetalBindings,
  value : UInt32,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_set_num_set_vertex_buffer(self, value)
  self
}

///|
pub fn FrameStatsMetalBindings::num_set_vertex_buffer_offset(
  self : FrameStatsMetalBindings,
) -> UInt32 {
  sg_frame_stats_metal_bindings_get_num_set_vertex_buffer_offset(self)
}

///|
pub fn FrameStatsMetalBindings::set_num_set_vertex_buffer_offset(
  self : FrameStatsMetalBindings,
  value : UInt32,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_set_num_set_vertex_buffer_offset(self, value)
  self
}

///|
pub fn FrameStatsMetalBindings::num_skip_redundant_vertex_buffer(
  self : FrameStatsMetalBindings,
) -> UInt32 {
  sg_frame_stats_metal_bindings_get_num_skip_redundant_vertex_buffer(self)
}

///|
pub fn FrameStatsMetalBindings::set_num_skip_redundant_vertex_buffer(
  self : FrameStatsMetalBindings,
  value : UInt32,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_set_num_skip_redundant_vertex_buffer(
    self, value,
  )
  self
}

///|
pub fn FrameStatsMetalBindings::num_set_vertex_texture(
  self : FrameStatsMetalBindings,
) -> UInt32 {
  sg_frame_stats_metal_bindings_get_num_set_vertex_texture(self)
}

///|
pub fn FrameStatsMetalBindings::set_num_set_vertex_texture(
  self : FrameStatsMetalBindings,
  value : UInt32,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_set_num_set_vertex_texture(self, value)
  self
}

///|
pub fn FrameStatsMetalBindings::num_skip_redundant_vertex_texture(
  self : FrameStatsMetalBindings,
) -> UInt32 {
  sg_frame_stats_metal_bindings_get_num_skip_redundant_vertex_texture(self)
}

///|
pub fn FrameStatsMetalBindings::set_num_skip_redundant_vertex_texture(
  self : FrameStatsMetalBindings,
  value : UInt32,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_set_num_skip_redundant_vertex_texture(
    self, value,
  )
  self
}

///|
pub fn FrameStatsMetalBindings::num_set_vertex_sampler_state(
  self : FrameStatsMetalBindings,
) -> UInt32 {
  sg_frame_stats_metal_bindings_get_num_set_vertex_sampler_state(self)
}

///|
pub fn FrameStatsMetalBindings::set_num_set_vertex_sampler_state(
  self : FrameStatsMetalBindings,
  value : UInt32,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_set_num_set_vertex_sampler_state(self, value)
  self
}

///|
pub fn FrameStatsMetalBindings::num_skip_redundant_vertex_sampler_state(
  self : FrameStatsMetalBindings,
) -> UInt32 {
  sg_frame_stats_metal_bindings_get_num_skip_redundant_vertex_sampler_state(
    self,
  )
}

///|
pub fn FrameStatsMetalBindings::set_num_skip_redundant_vertex_sampler_state(
  self : FrameStatsMetalBindings,
  value : UInt32,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_set_num_skip_redundant_vertex_sampler_state(
    self, value,
  )
  self
}

///|
pub fn FrameStatsMetalBindings::num_set_fragment_buffer(
  self : FrameStatsMetalBindings,
) -> UInt32 {
  sg_frame_stats_metal_bindings_get_num_set_fragment_buffer(self)
}

///|
pub fn FrameStatsMetalBindings::set_num_set_fragment_buffer(
  self : FrameStatsMetalBindings,
  value : UInt32,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_set_num_set_fragment_buffer(self, value)
  self
}

///|
pub fn FrameStatsMetalBindings::num_set_fragment_buffer_offset(
  self : FrameStatsMetalBindings,
) -> UInt32 {
  sg_frame_stats_metal_bindings_get_num_set_fragment_buffer_offset(self)
}

///|
pub fn FrameStatsMetalBindings::set_num_set_fragment_buffer_offset(
  self : FrameStatsMetalBindings,
  value : UInt32,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_set_num_set_fragment_buffer_offset(self, value)
  self
}

///|
pub fn FrameStatsMetalBindings::num_skip_redundant_fragment_buffer(
  self : FrameStatsMetalBindings,
) -> UInt32 {
  sg_frame_stats_metal_bindings_get_num_skip_redundant_fragment_buffer(self)
}

///|
pub fn FrameStatsMetalBindings::set_num_skip_redundant_fragment_buffer(
  self : FrameStatsMetalBindings,
  value : UInt32,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_set_num_skip_redundant_fragment_buffer(
    self, value,
  )
  self
}

///|
pub fn FrameStatsMetalBindings::num_set_fragment_texture(
  self : FrameStatsMetalBindings,
) -> UInt32 {
  sg_frame_stats_metal_bindings_get_num_set_fragment_texture(self)
}

///|
pub fn FrameStatsMetalBindings::set_num_set_fragment_texture(
  self : FrameStatsMetalBindings,
  value : UInt32,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_set_num_set_fragment_texture(self, value)
  self
}

///|
pub fn FrameStatsMetalBindings::num_skip_redundant_fragment_texture(
  self : FrameStatsMetalBindings,
) -> UInt32 {
  sg_frame_stats_metal_bindings_get_num_skip_redundant_fragment_texture(self)
}

///|
pub fn FrameStatsMetalBindings::set_num_skip_redundant_fragment_texture(
  self : FrameStatsMetalBindings,
  value : UInt32,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_set_num_skip_redundant_fragment_texture(
    self, value,
  )
  self
}

///|
pub fn FrameStatsMetalBindings::num_set_fragment_sampler_state(
  self : FrameStatsMetalBindings,
) -> UInt32 {
  sg_frame_stats_metal_bindings_get_num_set_fragment_sampler_state(self)
}

///|
pub fn FrameStatsMetalBindings::set_num_set_fragment_sampler_state(
  self : FrameStatsMetalBindings,
  value : UInt32,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_set_num_set_fragment_sampler_state(self, value)
  self
}

///|
pub fn FrameStatsMetalBindings::num_skip_redundant_fragment_sampler_state(
  self : FrameStatsMetalBindings,
) -> UInt32 {
  sg_frame_stats_metal_bindings_get_num_skip_redundant_fragment_sampler_state(
    self,
  )
}

///|
pub fn FrameStatsMetalBindings::set_num_skip_redundant_fragment_sampler_state(
  self : FrameStatsMetalBindings,
  value : UInt32,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_set_num_skip_redundant_fragment_sampler_state(
    self, value,
  )
  self
}

///|
pub fn FrameStatsMetalBindings::num_set_compute_buffer(
  self : FrameStatsMetalBindings,
) -> UInt32 {
  sg_frame_stats_metal_bindings_get_num_set_compute_buffer(self)
}

///|
pub fn FrameStatsMetalBindings::set_num_set_compute_buffer(
  self : FrameStatsMetalBindings,
  value : UInt32,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_set_num_set_compute_buffer(self, value)
  self
}

///|
pub fn FrameStatsMetalBindings::num_set_compute_buffer_offset(
  self : FrameStatsMetalBindings,
) -> UInt32 {
  sg_frame_stats_metal_bindings_get_num_set_compute_buffer_offset(self)
}

///|
pub fn FrameStatsMetalBindings::set_num_set_compute_buffer_offset(
  self : FrameStatsMetalBindings,
  value : UInt32,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_set_num_set_compute_buffer_offset(self, value)
  self
}

///|
pub fn FrameStatsMetalBindings::num_skip_redundant_compute_buffer(
  self : FrameStatsMetalBindings,
) -> UInt32 {
  sg_frame_stats_metal_bindings_get_num_skip_redundant_compute_buffer(self)
}

///|
pub fn FrameStatsMetalBindings::set_num_skip_redundant_compute_buffer(
  self : FrameStatsMetalBindings,
  value : UInt32,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_set_num_skip_redundant_compute_buffer(
    self, value,
  )
  self
}

///|
pub fn FrameStatsMetalBindings::num_set_compute_texture(
  self : FrameStatsMetalBindings,
) -> UInt32 {
  sg_frame_stats_metal_bindings_get_num_set_compute_texture(self)
}

///|
pub fn FrameStatsMetalBindings::set_num_set_compute_texture(
  self : FrameStatsMetalBindings,
  value : UInt32,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_set_num_set_compute_texture(self, value)
  self
}

///|
pub fn FrameStatsMetalBindings::num_skip_redundant_compute_texture(
  self : FrameStatsMetalBindings,
) -> UInt32 {
  sg_frame_stats_metal_bindings_get_num_skip_redundant_compute_texture(self)
}

///|
pub fn FrameStatsMetalBindings::set_num_skip_redundant_compute_texture(
  self : FrameStatsMetalBindings,
  value : UInt32,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_set_num_skip_redundant_compute_texture(
    self, value,
  )
  self
}

///|
pub fn FrameStatsMetalBindings::num_set_compute_sampler_state(
  self : FrameStatsMetalBindings,
) -> UInt32 {
  sg_frame_stats_metal_bindings_get_num_set_compute_sampler_state(self)
}

///|
pub fn FrameStatsMetalBindings::set_num_set_compute_sampler_state(
  self : FrameStatsMetalBindings,
  value : UInt32,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_set_num_set_compute_sampler_state(self, value)
  self
}

///|
pub fn FrameStatsMetalBindings::num_skip_redundant_compute_sampler_state(
  self : FrameStatsMetalBindings,
) -> UInt32 {
  sg_frame_stats_metal_bindings_get_num_skip_redundant_compute_sampler_state(
    self,
  )
}

///|
pub fn FrameStatsMetalBindings::set_num_skip_redundant_compute_sampler_state(
  self : FrameStatsMetalBindings,
  value : UInt32,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_bindings_set_num_skip_redundant_compute_sampler_state(
    self, value,
  )
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type FrameStatsMetalUniforms

///|
pub fn FrameStatsMetalUniforms::new() -> FrameStatsMetalUniforms {
  sg_frame_stats_metal_uniforms_new()
}

///|
pub fn FrameStatsMetalUniforms::copy(
  self : FrameStatsMetalUniforms,
) -> FrameStatsMetalUniforms {
  sg_frame_stats_metal_uniforms_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsMetalUniforms::unsafe_native_handle(
  self : FrameStatsMetalUniforms,
) -> @native.Handle {
  sg_frame_stats_metal_uniforms_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsMetalUniforms::unsafe_from_native(
  ptr : @native.Handle,
) -> FrameStatsMetalUniforms {
  sg_frame_stats_metal_uniforms_from_native(ptr)
}

///|
pub fn FrameStatsMetalUniforms::num_set_vertex_buffer_offset(
  self : FrameStatsMetalUniforms,
) -> UInt32 {
  sg_frame_stats_metal_uniforms_get_num_set_vertex_buffer_offset(self)
}

///|
pub fn FrameStatsMetalUniforms::set_num_set_vertex_buffer_offset(
  self : FrameStatsMetalUniforms,
  value : UInt32,
) -> FrameStatsMetalUniforms {
  sg_frame_stats_metal_uniforms_set_num_set_vertex_buffer_offset(self, value)
  self
}

///|
pub fn FrameStatsMetalUniforms::num_set_fragment_buffer_offset(
  self : FrameStatsMetalUniforms,
) -> UInt32 {
  sg_frame_stats_metal_uniforms_get_num_set_fragment_buffer_offset(self)
}

///|
pub fn FrameStatsMetalUniforms::set_num_set_fragment_buffer_offset(
  self : FrameStatsMetalUniforms,
  value : UInt32,
) -> FrameStatsMetalUniforms {
  sg_frame_stats_metal_uniforms_set_num_set_fragment_buffer_offset(self, value)
  self
}

///|
pub fn FrameStatsMetalUniforms::num_set_compute_buffer_offset(
  self : FrameStatsMetalUniforms,
) -> UInt32 {
  sg_frame_stats_metal_uniforms_get_num_set_compute_buffer_offset(self)
}

///|
pub fn FrameStatsMetalUniforms::set_num_set_compute_buffer_offset(
  self : FrameStatsMetalUniforms,
  value : UInt32,
) -> FrameStatsMetalUniforms {
  sg_frame_stats_metal_uniforms_set_num_set_compute_buffer_offset(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type FrameStatsMetal

///|
pub fn FrameStatsMetal::new() -> FrameStatsMetal {
  sg_frame_stats_metal_new()
}

///|
pub fn FrameStatsMetal::copy(self : FrameStatsMetal) -> FrameStatsMetal {
  sg_frame_stats_metal_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsMetal::unsafe_native_handle(
  self : FrameStatsMetal,
) -> @native.Handle {
  sg_frame_stats_metal_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsMetal::unsafe_from_native(
  ptr : @native.Handle,
) -> FrameStatsMetal {
  sg_frame_stats_metal_from_native(ptr)
}

///|
pub fn FrameStatsMetal::idpool(self : FrameStatsMetal) -> FrameStatsMetalIdpool {
  sg_frame_stats_metal_get_idpool(self)
}

///|
pub fn FrameStatsMetal::set_idpool(
  self : FrameStatsMetal,
  value : FrameStatsMetalIdpool,
) -> FrameStatsMetal {
  sg_frame_stats_metal_set_idpool(self, value)
  self
}

///|
pub fn FrameStatsMetal::pipeline(
  self : FrameStatsMetal,
) -> FrameStatsMetalPipeline {
  sg_frame_stats_metal_get_pipeline(self)
}

///|
pub fn FrameStatsMetal::set_pipeline(
  self : FrameStatsMetal,
  value : FrameStatsMetalPipeline,
) -> FrameStatsMetal {
  sg_frame_stats_metal_set_pipeline(self, value)
  self
}

///|
pub fn FrameStatsMetal::bindings(
  self : FrameStatsMetal,
) -> FrameStatsMetalBindings {
  sg_frame_stats_metal_get_bindings(self)
}

///|
pub fn FrameStatsMetal::set_bindings(
  self : FrameStatsMetal,
  value : FrameStatsMetalBindings,
) -> FrameStatsMetal {
  sg_frame_stats_metal_set_bindings(self, value)
  self
}

///|
pub fn FrameStatsMetal::uniforms(
  self : FrameStatsMetal,
) -> FrameStatsMetalUniforms {
  sg_frame_stats_metal_get_uniforms(self)
}

///|
pub fn FrameStatsMetal::set_uniforms(
  self : FrameStatsMetal,
  value : FrameStatsMetalUniforms,
) -> FrameStatsMetal {
  sg_frame_stats_metal_set_uniforms(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type FrameStatsWgpuUniforms

///|
pub fn FrameStatsWgpuUniforms::new() -> FrameStatsWgpuUniforms {
  sg_frame_stats_wgpu_uniforms_new()
}

///|
pub fn FrameStatsWgpuUniforms::copy(
  self : FrameStatsWgpuUniforms,
) -> FrameStatsWgpuUniforms {
  sg_frame_stats_wgpu_uniforms_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsWgpuUniforms::unsafe_native_handle(
  self : FrameStatsWgpuUniforms,
) -> @native.Handle {
  sg_frame_stats_wgpu_uniforms_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsWgpuUniforms::unsafe_from_native(
  ptr : @native.Handle,
) -> FrameStatsWgpuUniforms {
  sg_frame_stats_wgpu_uniforms_from_native(ptr)
}

///|
pub fn FrameStatsWgpuUniforms::num_set_bindgroup(
  self : FrameStatsWgpuUniforms,
) -> UInt32 {
  sg_frame_stats_wgpu_uniforms_get_num_set_bindgroup(self)
}

///|
pub fn FrameStatsWgpuUniforms::set_num_set_bindgroup(
  self : FrameStatsWgpuUniforms,
  value : UInt32,
) -> FrameStatsWgpuUniforms {
  sg_frame_stats_wgpu_uniforms_set_num_set_bindgroup(self, value)
  self
}

///|
pub fn FrameStatsWgpuUniforms::size_write_buffer(
  self : FrameStatsWgpuUniforms,
) -> UInt32 {
  sg_frame_stats_wgpu_uniforms_get_size_write_buffer(self)
}

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
pub fn FrameStatsWgpuBindings::new() -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_new()
}

///|
pub fn FrameStatsWgpuBindings::copy(
  self : FrameStatsWgpuBindings,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsWgpuBindings::unsafe_native_handle(
  self : FrameStatsWgpuBindings,
) -> @native.Handle {
  sg_frame_stats_wgpu_bindings_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsWgpuBindings::unsafe_from_native(
  ptr : @native.Handle,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_from_native(ptr)
}

///|
pub fn FrameStatsWgpuBindings::num_set_vertex_buffer(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_set_vertex_buffer(self)
}

///|
pub fn FrameStatsWgpuBindings::set_num_set_vertex_buffer(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_set_vertex_buffer(self, value)
  self
}

///|
pub fn FrameStatsWgpuBindings::num_skip_redundant_vertex_buffer(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_skip_redundant_vertex_buffer(self)
}

///|
pub fn FrameStatsWgpuBindings::set_num_skip_redundant_vertex_buffer(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_skip_redundant_vertex_buffer(self, value)
  self
}

///|
pub fn FrameStatsWgpuBindings::num_set_index_buffer(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_set_index_buffer(self)
}

///|
pub fn FrameStatsWgpuBindings::set_num_set_index_buffer(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_set_index_buffer(self, value)
  self
}

///|
pub fn FrameStatsWgpuBindings::num_skip_redundant_index_buffer(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_skip_redundant_index_buffer(self)
}

///|
pub fn FrameStatsWgpuBindings::set_num_skip_redundant_index_buffer(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_skip_redundant_index_buffer(self, value)
  self
}

///|
pub fn FrameStatsWgpuBindings::num_create_bindgroup(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_create_bindgroup(self)
}

///|
pub fn FrameStatsWgpuBindings::set_num_create_bindgroup(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_create_bindgroup(self, value)
  self
}

///|
pub fn FrameStatsWgpuBindings::num_discard_bindgroup(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_discard_bindgroup(self)
}

///|
pub fn FrameStatsWgpuBindings::set_num_discard_bindgroup(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_discard_bindgroup(self, value)
  self
}

///|
pub fn FrameStatsWgpuBindings::num_set_bindgroup(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_set_bindgroup(self)
}

///|
pub fn FrameStatsWgpuBindings::set_num_set_bindgroup(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_set_bindgroup(self, value)
  self
}

///|
pub fn FrameStatsWgpuBindings::num_skip_redundant_bindgroup(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_skip_redundant_bindgroup(self)
}

///|
pub fn FrameStatsWgpuBindings::set_num_skip_redundant_bindgroup(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_skip_redundant_bindgroup(self, value)
  self
}

///|
pub fn FrameStatsWgpuBindings::num_bindgroup_cache_hits(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_hits(self)
}

///|
pub fn FrameStatsWgpuBindings::set_num_bindgroup_cache_hits(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_hits(self, value)
  self
}

///|
pub fn FrameStatsWgpuBindings::num_bindgroup_cache_misses(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_misses(self)
}

///|
pub fn FrameStatsWgpuBindings::set_num_bindgroup_cache_misses(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_misses(self, value)
  self
}

///|
pub fn FrameStatsWgpuBindings::num_bindgroup_cache_collisions(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_collisions(self)
}

///|
pub fn FrameStatsWgpuBindings::set_num_bindgroup_cache_collisions(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_collisions(self, value)
  self
}

///|
pub fn FrameStatsWgpuBindings::num_bindgroup_cache_invalidates(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_invalidates(self)
}

///|
pub fn FrameStatsWgpuBindings::set_num_bindgroup_cache_invalidates(
  self : FrameStatsWgpuBindings,
  value : UInt32,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_invalidates(self, value)
  self
}

///|
pub fn FrameStatsWgpuBindings::num_bindgroup_cache_hash_vs_key_mismatch(
  self : FrameStatsWgpuBindings,
) -> UInt32 {
  sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_hash_vs_key_mismatch(
    self,
  )
}

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
pub fn FrameStatsWgpu::new() -> FrameStatsWgpu {
  sg_frame_stats_wgpu_new()
}

///|
pub fn FrameStatsWgpu::copy(self : FrameStatsWgpu) -> FrameStatsWgpu {
  sg_frame_stats_wgpu_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsWgpu::unsafe_native_handle(
  self : FrameStatsWgpu,
) -> @native.Handle {
  sg_frame_stats_wgpu_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsWgpu::unsafe_from_native(
  ptr : @native.Handle,
) -> FrameStatsWgpu {
  sg_frame_stats_wgpu_from_native(ptr)
}

///|
pub fn FrameStatsWgpu::uniforms(
  self : FrameStatsWgpu,
) -> FrameStatsWgpuUniforms {
  sg_frame_stats_wgpu_get_uniforms(self)
}

///|
pub fn FrameStatsWgpu::set_uniforms(
  self : FrameStatsWgpu,
  value : FrameStatsWgpuUniforms,
) -> FrameStatsWgpu {
  sg_frame_stats_wgpu_set_uniforms(self, value)
  self
}

///|
pub fn FrameStatsWgpu::bindings(
  self : FrameStatsWgpu,
) -> FrameStatsWgpuBindings {
  sg_frame_stats_wgpu_get_bindings(self)
}

///|
pub fn FrameStatsWgpu::set_bindings(
  self : FrameStatsWgpu,
  value : FrameStatsWgpuBindings,
) -> FrameStatsWgpu {
  sg_frame_stats_wgpu_set_bindings(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type FrameStatsVk

///|
pub fn FrameStatsVk::new() -> FrameStatsVk {
  sg_frame_stats_vk_new()
}

///|
pub fn FrameStatsVk::copy(self : FrameStatsVk) -> FrameStatsVk {
  sg_frame_stats_vk_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStatsVk::unsafe_native_handle(
  self : FrameStatsVk,
) -> @native.Handle {
  sg_frame_stats_vk_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStatsVk::unsafe_from_native(ptr : @native.Handle) -> FrameStatsVk {
  sg_frame_stats_vk_from_native(ptr)
}

///|
pub fn FrameStatsVk::num_cmd_pipeline_barrier(self : FrameStatsVk) -> UInt32 {
  sg_frame_stats_vk_get_num_cmd_pipeline_barrier(self)
}

///|
pub fn FrameStatsVk::set_num_cmd_pipeline_barrier(
  self : FrameStatsVk,
  value : UInt32,
) -> FrameStatsVk {
  sg_frame_stats_vk_set_num_cmd_pipeline_barrier(self, value)
  self
}

///|
pub fn FrameStatsVk::num_allocate_memory(self : FrameStatsVk) -> UInt32 {
  sg_frame_stats_vk_get_num_allocate_memory(self)
}

///|
pub fn FrameStatsVk::set_num_allocate_memory(
  self : FrameStatsVk,
  value : UInt32,
) -> FrameStatsVk {
  sg_frame_stats_vk_set_num_allocate_memory(self, value)
  self
}

///|
pub fn FrameStatsVk::num_free_memory(self : FrameStatsVk) -> UInt32 {
  sg_frame_stats_vk_get_num_free_memory(self)
}

///|
pub fn FrameStatsVk::set_num_free_memory(
  self : FrameStatsVk,
  value : UInt32,
) -> FrameStatsVk {
  sg_frame_stats_vk_set_num_free_memory(self, value)
  self
}

///|
pub fn FrameStatsVk::size_allocate_memory(self : FrameStatsVk) -> UInt32 {
  sg_frame_stats_vk_get_size_allocate_memory(self)
}

///|
pub fn FrameStatsVk::set_size_allocate_memory(
  self : FrameStatsVk,
  value : UInt32,
) -> FrameStatsVk {
  sg_frame_stats_vk_set_size_allocate_memory(self, value)
  self
}

///|
pub fn FrameStatsVk::num_delete_queue_added(self : FrameStatsVk) -> UInt32 {
  sg_frame_stats_vk_get_num_delete_queue_added(self)
}

///|
pub fn FrameStatsVk::set_num_delete_queue_added(
  self : FrameStatsVk,
  value : UInt32,
) -> FrameStatsVk {
  sg_frame_stats_vk_set_num_delete_queue_added(self, value)
  self
}

///|
pub fn FrameStatsVk::num_delete_queue_collected(self : FrameStatsVk) -> UInt32 {
  sg_frame_stats_vk_get_num_delete_queue_collected(self)
}

///|
pub fn FrameStatsVk::set_num_delete_queue_collected(
  self : FrameStatsVk,
  value : UInt32,
) -> FrameStatsVk {
  sg_frame_stats_vk_set_num_delete_queue_collected(self, value)
  self
}

///|
pub fn FrameStatsVk::num_cmd_copy_buffer(self : FrameStatsVk) -> UInt32 {
  sg_frame_stats_vk_get_num_cmd_copy_buffer(self)
}

///|
pub fn FrameStatsVk::set_num_cmd_copy_buffer(
  self : FrameStatsVk,
  value : UInt32,
) -> FrameStatsVk {
  sg_frame_stats_vk_set_num_cmd_copy_buffer(self, value)
  self
}

///|
pub fn FrameStatsVk::num_cmd_copy_buffer_to_image(
  self : FrameStatsVk,
) -> UInt32 {
  sg_frame_stats_vk_get_num_cmd_copy_buffer_to_image(self)
}

///|
pub fn FrameStatsVk::set_num_cmd_copy_buffer_to_image(
  self : FrameStatsVk,
  value : UInt32,
) -> FrameStatsVk {
  sg_frame_stats_vk_set_num_cmd_copy_buffer_to_image(self, value)
  self
}

///|
pub fn FrameStatsVk::num_cmd_copy_image(self : FrameStatsVk) -> UInt32 {
  sg_frame_stats_vk_get_num_cmd_copy_image(self)
}

///|
pub fn FrameStatsVk::set_num_cmd_copy_image(
  self : FrameStatsVk,
  value : UInt32,
) -> FrameStatsVk {
  sg_frame_stats_vk_set_num_cmd_copy_image(self, value)
  self
}

///|
pub fn FrameStatsVk::num_cmd_set_descriptor_buffer_offsets(
  self : FrameStatsVk,
) -> UInt32 {
  sg_frame_stats_vk_get_num_cmd_set_descriptor_buffer_offsets(self)
}

///|
pub fn FrameStatsVk::set_num_cmd_set_descriptor_buffer_offsets(
  self : FrameStatsVk,
  value : UInt32,
) -> FrameStatsVk {
  sg_frame_stats_vk_set_num_cmd_set_descriptor_buffer_offsets(self, value)
  self
}

///|
pub fn FrameStatsVk::size_descriptor_buffer_writes(
  self : FrameStatsVk,
) -> UInt32 {
  sg_frame_stats_vk_get_size_descriptor_buffer_writes(self)
}

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
pub type FrameResourceStats

///|
pub fn FrameResourceStats::new() -> FrameResourceStats {
  sg_frame_resource_stats_new()
}

///|
pub fn FrameResourceStats::copy(
  self : FrameResourceStats,
) -> FrameResourceStats {
  sg_frame_resource_stats_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameResourceStats::unsafe_native_handle(
  self : FrameResourceStats,
) -> @native.Handle {
  sg_frame_resource_stats_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameResourceStats::unsafe_from_native(
  ptr : @native.Handle,
) -> FrameResourceStats {
  sg_frame_resource_stats_from_native(ptr)
}

///|
pub fn FrameResourceStats::allocated(self : FrameResourceStats) -> UInt32 {
  sg_frame_resource_stats_get_allocated(self)
}

///|
pub fn FrameResourceStats::set_allocated(
  self : FrameResourceStats,
  value : UInt32,
) -> FrameResourceStats {
  sg_frame_resource_stats_set_allocated(self, value)
  self
}

///|
pub fn FrameResourceStats::deallocated(self : FrameResourceStats) -> UInt32 {
  sg_frame_resource_stats_get_deallocated(self)
}

///|
pub fn FrameResourceStats::set_deallocated(
  self : FrameResourceStats,
  value : UInt32,
) -> FrameResourceStats {
  sg_frame_resource_stats_set_deallocated(self, value)
  self
}

///|
pub fn FrameResourceStats::inited(self : FrameResourceStats) -> UInt32 {
  sg_frame_resource_stats_get_inited(self)
}

///|
pub fn FrameResourceStats::set_inited(
  self : FrameResourceStats,
  value : UInt32,
) -> FrameResourceStats {
  sg_frame_resource_stats_set_inited(self, value)
  self
}

///|
pub fn FrameResourceStats::uninited(self : FrameResourceStats) -> UInt32 {
  sg_frame_resource_stats_get_uninited(self)
}

///|
pub fn FrameResourceStats::set_uninited(
  self : FrameResourceStats,
  value : UInt32,
) -> FrameResourceStats {
  sg_frame_resource_stats_set_uninited(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type TotalResourceStats

///|
pub fn TotalResourceStats::new() -> TotalResourceStats {
  sg_total_resource_stats_new()
}

///|
pub fn TotalResourceStats::copy(
  self : TotalResourceStats,
) -> TotalResourceStats {
  sg_total_resource_stats_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn TotalResourceStats::unsafe_native_handle(
  self : TotalResourceStats,
) -> @native.Handle {
  sg_total_resource_stats_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn TotalResourceStats::unsafe_from_native(
  ptr : @native.Handle,
) -> TotalResourceStats {
  sg_total_resource_stats_from_native(ptr)
}

///|
pub fn TotalResourceStats::alive(self : TotalResourceStats) -> UInt32 {
  sg_total_resource_stats_get_alive(self)
}

///|
pub fn TotalResourceStats::set_alive(
  self : TotalResourceStats,
  value : UInt32,
) -> TotalResourceStats {
  sg_total_resource_stats_set_alive(self, value)
  self
}

///|
pub fn TotalResourceStats::free(self : TotalResourceStats) -> UInt32 {
  sg_total_resource_stats_get_free(self)
}

///|
pub fn TotalResourceStats::set_free(
  self : TotalResourceStats,
  value : UInt32,
) -> TotalResourceStats {
  sg_total_resource_stats_set_free(self, value)
  self
}

///|
pub fn TotalResourceStats::allocated(self : TotalResourceStats) -> UInt32 {
  sg_total_resource_stats_get_allocated(self)
}

///|
pub fn TotalResourceStats::set_allocated(
  self : TotalResourceStats,
  value : UInt32,
) -> TotalResourceStats {
  sg_total_resource_stats_set_allocated(self, value)
  self
}

///|
pub fn TotalResourceStats::deallocated(self : TotalResourceStats) -> UInt32 {
  sg_total_resource_stats_get_deallocated(self)
}

///|
pub fn TotalResourceStats::set_deallocated(
  self : TotalResourceStats,
  value : UInt32,
) -> TotalResourceStats {
  sg_total_resource_stats_set_deallocated(self, value)
  self
}

///|
pub fn TotalResourceStats::inited(self : TotalResourceStats) -> UInt32 {
  sg_total_resource_stats_get_inited(self)
}

///|
pub fn TotalResourceStats::set_inited(
  self : TotalResourceStats,
  value : UInt32,
) -> TotalResourceStats {
  sg_total_resource_stats_set_inited(self, value)
  self
}

///|
pub fn TotalResourceStats::uninited(self : TotalResourceStats) -> UInt32 {
  sg_total_resource_stats_get_uninited(self)
}

///|
pub fn TotalResourceStats::set_uninited(
  self : TotalResourceStats,
  value : UInt32,
) -> TotalResourceStats {
  sg_total_resource_stats_set_uninited(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type TotalStats

///|
pub fn TotalStats::new() -> TotalStats {
  sg_total_stats_new()
}

///|
pub fn TotalStats::copy(self : TotalStats) -> TotalStats {
  sg_total_stats_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn TotalStats::unsafe_native_handle(self : TotalStats) -> @native.Handle {
  sg_total_stats_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn TotalStats::unsafe_from_native(ptr : @native.Handle) -> TotalStats {
  sg_total_stats_from_native(ptr)
}

///|
pub fn TotalStats::buffers(self : TotalStats) -> TotalResourceStats {
  sg_total_stats_get_buffers(self)
}

///|
pub fn TotalStats::set_buffers(
  self : TotalStats,
  value : TotalResourceStats,
) -> TotalStats {
  sg_total_stats_set_buffers(self, value)
  self
}

///|
pub fn TotalStats::images(self : TotalStats) -> TotalResourceStats {
  sg_total_stats_get_images(self)
}

///|
pub fn TotalStats::set_images(
  self : TotalStats,
  value : TotalResourceStats,
) -> TotalStats {
  sg_total_stats_set_images(self, value)
  self
}

///|
pub fn TotalStats::samplers(self : TotalStats) -> TotalResourceStats {
  sg_total_stats_get_samplers(self)
}

///|
pub fn TotalStats::set_samplers(
  self : TotalStats,
  value : TotalResourceStats,
) -> TotalStats {
  sg_total_stats_set_samplers(self, value)
  self
}

///|
pub fn TotalStats::views(self : TotalStats) -> TotalResourceStats {
  sg_total_stats_get_views(self)
}

///|
pub fn TotalStats::set_views(
  self : TotalStats,
  value : TotalResourceStats,
) -> TotalStats {
  sg_total_stats_set_views(self, value)
  self
}

///|
pub fn TotalStats::shaders(self : TotalStats) -> TotalResourceStats {
  sg_total_stats_get_shaders(self)
}

///|
pub fn TotalStats::set_shaders(
  self : TotalStats,
  value : TotalResourceStats,
) -> TotalStats {
  sg_total_stats_set_shaders(self, value)
  self
}

///|
pub fn TotalStats::pipelines(self : TotalStats) -> TotalResourceStats {
  sg_total_stats_get_pipelines(self)
}

///|
pub fn TotalStats::set_pipelines(
  self : TotalStats,
  value : TotalResourceStats,
) -> TotalStats {
  sg_total_stats_set_pipelines(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type FrameStats

///|
pub fn FrameStats::new() -> FrameStats {
  sg_frame_stats_new()
}

///|
pub fn FrameStats::copy(self : FrameStats) -> FrameStats {
  sg_frame_stats_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn FrameStats::unsafe_native_handle(self : FrameStats) -> @native.Handle {
  sg_frame_stats_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn FrameStats::unsafe_from_native(ptr : @native.Handle) -> FrameStats {
  sg_frame_stats_from_native(ptr)
}

///|
pub fn FrameStats::frame_index(self : FrameStats) -> UInt32 {
  sg_frame_stats_get_frame_index(self)
}

///|
pub fn FrameStats::set_frame_index(
  self : FrameStats,
  value : UInt32,
) -> FrameStats {
  sg_frame_stats_set_frame_index(self, value)
  self
}

///|
pub fn FrameStats::num_passes(self : FrameStats) -> UInt32 {
  sg_frame_stats_get_num_passes(self)
}

///|
pub fn FrameStats::set_num_passes(
  self : FrameStats,
  value : UInt32,
) -> FrameStats {
  sg_frame_stats_set_num_passes(self, value)
  self
}

///|
pub fn FrameStats::num_apply_viewport(self : FrameStats) -> UInt32 {
  sg_frame_stats_get_num_apply_viewport(self)
}

///|
pub fn FrameStats::set_num_apply_viewport(
  self : FrameStats,
  value : UInt32,
) -> FrameStats {
  sg_frame_stats_set_num_apply_viewport(self, value)
  self
}

///|
pub fn FrameStats::num_apply_scissor_rect(self : FrameStats) -> UInt32 {
  sg_frame_stats_get_num_apply_scissor_rect(self)
}

///|
pub fn FrameStats::set_num_apply_scissor_rect(
  self : FrameStats,
  value : UInt32,
) -> FrameStats {
  sg_frame_stats_set_num_apply_scissor_rect(self, value)
  self
}

///|
pub fn FrameStats::num_apply_pipeline(self : FrameStats) -> UInt32 {
  sg_frame_stats_get_num_apply_pipeline(self)
}

///|
pub fn FrameStats::set_num_apply_pipeline(
  self : FrameStats,
  value : UInt32,
) -> FrameStats {
  sg_frame_stats_set_num_apply_pipeline(self, value)
  self
}

///|
pub fn FrameStats::num_apply_bindings(self : FrameStats) -> UInt32 {
  sg_frame_stats_get_num_apply_bindings(self)
}

///|
pub fn FrameStats::set_num_apply_bindings(
  self : FrameStats,
  value : UInt32,
) -> FrameStats {
  sg_frame_stats_set_num_apply_bindings(self, value)
  self
}

///|
pub fn FrameStats::num_apply_uniforms(self : FrameStats) -> UInt32 {
  sg_frame_stats_get_num_apply_uniforms(self)
}

///|
pub fn FrameStats::set_num_apply_uniforms(
  self : FrameStats,
  value : UInt32,
) -> FrameStats {
  sg_frame_stats_set_num_apply_uniforms(self, value)
  self
}

///|
pub fn FrameStats::num_draw(self : FrameStats) -> UInt32 {
  sg_frame_stats_get_num_draw(self)
}

///|
pub fn FrameStats::set_num_draw(
  self : FrameStats,
  value : UInt32,
) -> FrameStats {
  sg_frame_stats_set_num_draw(self, value)
  self
}

///|
pub fn FrameStats::num_draw_ex(self : FrameStats) -> UInt32 {
  sg_frame_stats_get_num_draw_ex(self)
}

///|
pub fn FrameStats::set_num_draw_ex(
  self : FrameStats,
  value : UInt32,
) -> FrameStats {
  sg_frame_stats_set_num_draw_ex(self, value)
  self
}

///|
pub fn FrameStats::num_dispatch(self : FrameStats) -> UInt32 {
  sg_frame_stats_get_num_dispatch(self)
}

///|
pub fn FrameStats::set_num_dispatch(
  self : FrameStats,
  value : UInt32,
) -> FrameStats {
  sg_frame_stats_set_num_dispatch(self, value)
  self
}

///|
pub fn FrameStats::num_write_buffer_transient(self : FrameStats) -> UInt32 {
  sg_frame_stats_get_num_write_buffer_transient(self)
}

///|
pub fn FrameStats::set_num_write_buffer_transient(
  self : FrameStats,
  value : UInt32,
) -> FrameStats {
  sg_frame_stats_set_num_write_buffer_transient(self, value)
  self
}

///|
pub fn FrameStats::num_write_image_transient(self : FrameStats) -> UInt32 {
  sg_frame_stats_get_num_write_image_transient(self)
}

///|
pub fn FrameStats::set_num_write_image_transient(
  self : FrameStats,
  value : UInt32,
) -> FrameStats {
  sg_frame_stats_set_num_write_image_transient(self, value)
  self
}

///|
pub fn FrameStats::num_write_buffer_unsealed(self : FrameStats) -> UInt32 {
  sg_frame_stats_get_num_write_buffer_unsealed(self)
}

///|
pub fn FrameStats::set_num_write_buffer_unsealed(
  self : FrameStats,
  value : UInt32,
) -> FrameStats {
  sg_frame_stats_set_num_write_buffer_unsealed(self, value)
  self
}

///|
pub fn FrameStats::num_write_image_unsealed(self : FrameStats) -> UInt32 {
  sg_frame_stats_get_num_write_image_unsealed(self)
}

///|
pub fn FrameStats::set_num_write_image_unsealed(
  self : FrameStats,
  value : UInt32,
) -> FrameStats {
  sg_frame_stats_set_num_write_image_unsealed(self, value)
  self
}

///|
pub fn FrameStats::num_seal_buffer(self : FrameStats) -> UInt32 {
  sg_frame_stats_get_num_seal_buffer(self)
}

///|
pub fn FrameStats::set_num_seal_buffer(
  self : FrameStats,
  value : UInt32,
) -> FrameStats {
  sg_frame_stats_set_num_seal_buffer(self, value)
  self
}

///|
pub fn FrameStats::num_seal_image(self : FrameStats) -> UInt32 {
  sg_frame_stats_get_num_seal_image(self)
}

///|
pub fn FrameStats::set_num_seal_image(
  self : FrameStats,
  value : UInt32,
) -> FrameStats {
  sg_frame_stats_set_num_seal_image(self, value)
  self
}

///|
pub fn FrameStats::num_copy_buffer_to_buffer(self : FrameStats) -> UInt32 {
  sg_frame_stats_get_num_copy_buffer_to_buffer(self)
}

///|
pub fn FrameStats::set_num_copy_buffer_to_buffer(
  self : FrameStats,
  value : UInt32,
) -> FrameStats {
  sg_frame_stats_set_num_copy_buffer_to_buffer(self, value)
  self
}

///|
pub fn FrameStats::num_copy_buffer_to_image(self : FrameStats) -> UInt32 {
  sg_frame_stats_get_num_copy_buffer_to_image(self)
}

///|
pub fn FrameStats::set_num_copy_buffer_to_image(
  self : FrameStats,
  value : UInt32,
) -> FrameStats {
  sg_frame_stats_set_num_copy_buffer_to_image(self, value)
  self
}

///|
pub fn FrameStats::num_copy_image_to_image(self : FrameStats) -> UInt32 {
  sg_frame_stats_get_num_copy_image_to_image(self)
}

///|
pub fn FrameStats::set_num_copy_image_to_image(
  self : FrameStats,
  value : UInt32,
) -> FrameStats {
  sg_frame_stats_set_num_copy_image_to_image(self, value)
  self
}

///|
pub fn FrameStats::size_apply_uniforms(self : FrameStats) -> UInt32 {
  sg_frame_stats_get_size_apply_uniforms(self)
}

///|
pub fn FrameStats::set_size_apply_uniforms(
  self : FrameStats,
  value : UInt32,
) -> FrameStats {
  sg_frame_stats_set_size_apply_uniforms(self, value)
  self
}

///|
pub fn FrameStats::size_copy_buffer_to_buffer(self : FrameStats) -> UInt32 {
  sg_frame_stats_get_size_copy_buffer_to_buffer(self)
}

///|
pub fn FrameStats::set_size_copy_buffer_to_buffer(
  self : FrameStats,
  value : UInt32,
) -> FrameStats {
  sg_frame_stats_set_size_copy_buffer_to_buffer(self, value)
  self
}

///|
pub fn FrameStats::size_copy_buffer_to_image(self : FrameStats) -> UInt32 {
  sg_frame_stats_get_size_copy_buffer_to_image(self)
}

///|
pub fn FrameStats::set_size_copy_buffer_to_image(
  self : FrameStats,
  value : UInt32,
) -> FrameStats {
  sg_frame_stats_set_size_copy_buffer_to_image(self, value)
  self
}

///|
pub fn FrameStats::size_copy_image_to_image(self : FrameStats) -> UInt32 {
  sg_frame_stats_get_size_copy_image_to_image(self)
}

///|
pub fn FrameStats::set_size_copy_image_to_image(
  self : FrameStats,
  value : UInt32,
) -> FrameStats {
  sg_frame_stats_set_size_copy_image_to_image(self, value)
  self
}

///|
pub fn FrameStats::buffers(self : FrameStats) -> FrameResourceStats {
  sg_frame_stats_get_buffers(self)
}

///|
pub fn FrameStats::set_buffers(
  self : FrameStats,
  value : FrameResourceStats,
) -> FrameStats {
  sg_frame_stats_set_buffers(self, value)
  self
}

///|
pub fn FrameStats::images(self : FrameStats) -> FrameResourceStats {
  sg_frame_stats_get_images(self)
}

///|
pub fn FrameStats::set_images(
  self : FrameStats,
  value : FrameResourceStats,
) -> FrameStats {
  sg_frame_stats_set_images(self, value)
  self
}

///|
pub fn FrameStats::samplers(self : FrameStats) -> FrameResourceStats {
  sg_frame_stats_get_samplers(self)
}

///|
pub fn FrameStats::set_samplers(
  self : FrameStats,
  value : FrameResourceStats,
) -> FrameStats {
  sg_frame_stats_set_samplers(self, value)
  self
}

///|
pub fn FrameStats::views(self : FrameStats) -> FrameResourceStats {
  sg_frame_stats_get_views(self)
}

///|
pub fn FrameStats::set_views(
  self : FrameStats,
  value : FrameResourceStats,
) -> FrameStats {
  sg_frame_stats_set_views(self, value)
  self
}

///|
pub fn FrameStats::shaders(self : FrameStats) -> FrameResourceStats {
  sg_frame_stats_get_shaders(self)
}

///|
pub fn FrameStats::set_shaders(
  self : FrameStats,
  value : FrameResourceStats,
) -> FrameStats {
  sg_frame_stats_set_shaders(self, value)
  self
}

///|
pub fn FrameStats::pipelines(self : FrameStats) -> FrameResourceStats {
  sg_frame_stats_get_pipelines(self)
}

///|
pub fn FrameStats::set_pipelines(
  self : FrameStats,
  value : FrameResourceStats,
) -> FrameStats {
  sg_frame_stats_set_pipelines(self, value)
  self
}

///|
pub fn FrameStats::gl(self : FrameStats) -> FrameStatsGl {
  sg_frame_stats_get_gl(self)
}

///|
pub fn FrameStats::set_gl(
  self : FrameStats,
  value : FrameStatsGl,
) -> FrameStats {
  sg_frame_stats_set_gl(self, value)
  self
}

///|
pub fn FrameStats::d3d11(self : FrameStats) -> FrameStatsD3d11 {
  sg_frame_stats_get_d3d11(self)
}

///|
pub fn FrameStats::set_d3d11(
  self : FrameStats,
  value : FrameStatsD3d11,
) -> FrameStats {
  sg_frame_stats_set_d3d11(self, value)
  self
}

///|
pub fn FrameStats::metal(self : FrameStats) -> FrameStatsMetal {
  sg_frame_stats_get_metal(self)
}

///|
pub fn FrameStats::set_metal(
  self : FrameStats,
  value : FrameStatsMetal,
) -> FrameStats {
  sg_frame_stats_set_metal(self, value)
  self
}

///|
pub fn FrameStats::wgpu(self : FrameStats) -> FrameStatsWgpu {
  sg_frame_stats_get_wgpu(self)
}

///|
pub fn FrameStats::set_wgpu(
  self : FrameStats,
  value : FrameStatsWgpu,
) -> FrameStats {
  sg_frame_stats_set_wgpu(self, value)
  self
}

///|
pub fn FrameStats::vk(self : FrameStats) -> FrameStatsVk {
  sg_frame_stats_get_vk(self)
}

///|
pub fn FrameStats::set_vk(
  self : FrameStats,
  value : FrameStatsVk,
) -> FrameStats {
  sg_frame_stats_set_vk(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Stats

///|
pub fn Stats::new() -> Stats {
  sg_stats_new()
}

///|
pub fn Stats::copy(self : Stats) -> Stats {
  sg_stats_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Stats::unsafe_native_handle(self : Stats) -> @native.Handle {
  sg_stats_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Stats::unsafe_from_native(ptr : @native.Handle) -> Stats {
  sg_stats_from_native(ptr)
}

///|
pub fn Stats::prev_frame(self : Stats) -> FrameStats {
  sg_stats_get_prev_frame(self)
}

///|
pub fn Stats::set_prev_frame(self : Stats, value : FrameStats) -> Stats {
  sg_stats_set_prev_frame(self, value)
  self
}

///|
pub fn Stats::cur_frame(self : Stats) -> FrameStats {
  sg_stats_get_cur_frame(self)
}

///|
pub fn Stats::set_cur_frame(self : Stats, value : FrameStats) -> Stats {
  sg_stats_set_cur_frame(self, value)
  self
}

///|
pub fn Stats::total(self : Stats) -> TotalStats {
  sg_stats_get_total(self)
}

///|
pub fn Stats::set_total(self : Stats, value : TotalStats) -> Stats {
  sg_stats_set_total(self, value)
  self
}

///|
#derive(Debug, Eq)
pub(all) enum LogItem {
  Ok = 0
  MallocFailed = 1
  GlTextureFormatNotSupported = 2
  Gl3dTexturesNotSupported = 3
  GlArrayTexturesNotSupported = 4
  GlStoragebufferGlslBindingOutOfRange = 5
  GlStorageimageGlslBindingOutOfRange = 6
  GlShaderCompilationFailed = 7
  GlShaderLinkingFailed = 8
  GlVertexAttributeNotFoundInShader = 9
  GlUniformblockNameNotFoundInShader = 10
  GlImageSamplerNameNotFoundInShader = 11
  GlFramebufferStatusUndefined = 12
  GlFramebufferStatusIncompleteAttachment = 13
  GlFramebufferStatusIncompleteMissingAttachment = 14
  GlFramebufferStatusUnsupported = 15
  GlFramebufferStatusIncompleteMultisample = 16
  GlFramebufferStatusUnknown = 17
  GlApplePixelUnpackOffsetBug = 18
  D3d11FeatureLevel0Detected = 19
  D3d11CreateBufferFailed = 20
  D3d11CreateBufferSrvFailed = 21
  D3d11CreateBufferUavFailed = 22
  D3d11CreateDepthTextureUnsupportedPixelFormat = 23
  D3d11CreateDepthTextureFailed = 24
  D3d11Create2dTextureUnsupportedPixelFormat = 25
  D3d11Create2dTextureFailed = 26
  D3d11Create2dSrvFailed = 27
  D3d11Create3dTextureUnsupportedPixelFormat = 28
  D3d11Create3dTextureFailed = 29
  D3d11Create3dSrvFailed = 30
  D3d11CreateMsaaTextureFailed = 31
  D3d11CreateSamplerStateFailed = 32
  D3d11UniformblockHlslRegisterBOutOfRange = 33
  D3d11StoragebufferHlslRegisterTOutOfRange = 34
  D3d11StoragebufferHlslRegisterUOutOfRange = 35
  D3d11ImageHlslRegisterTOutOfRange = 36
  D3d11StorageimageHlslRegisterUOutOfRange = 37
  D3d11SamplerHlslRegisterSOutOfRange = 38
  D3d11LoadD3dcompiler47DllFailed = 39
  D3d11ShaderCompilationFailed = 40
  D3d11ShaderCompilationOutput = 41
  D3d11CreateConstantBufferFailed = 42
  D3d11CreateInputLayoutFailed = 43
  D3d11CreateRasterizerStateFailed = 44
  D3d11CreateDepthStencilStateFailed = 45
  D3d11CreateBlendStateFailed = 46
  D3d11CreateRtvFailed = 47
  D3d11CreateDsvFailed = 48
  D3d11CreateUavFailed = 49
  D3d11MapForWriteBufferTransientFailed = 50
  MetalCreateBufferFailed = 51
  MetalTextureFormatNotSupported = 52
  MetalCreateTextureFailed = 53
  MetalCreateSamplerFailed = 54
  MetalShaderCompilationFailed = 55
  MetalShaderCreationFailed = 56
  MetalShaderCompilationOutput = 57
  MetalShaderEntryNotFound = 58
  MetalUniformblockMslBufferSlotOutOfRange = 59
  MetalStoragebufferMslBufferSlotOutOfRange = 60
  MetalStorageimageMslTextureSlotOutOfRange = 61
  MetalImageMslTextureSlotOutOfRange = 62
  MetalSamplerMslSamplerSlotOutOfRange = 63
  MetalCreateCpsFailed = 64
  MetalCreateCpsOutput = 65
  MetalCreateRpsFailed = 66
  MetalCreateRpsOutput = 67
  MetalCreateDssFailed = 68
  MetalCreateTextureviewFailed = 69
  WgpuBindgroupsPoolExhausted = 70
  WgpuBindgroupscacheSizeGreaterOne = 71
  WgpuBindgroupscacheSizePow2 = 72
  WgpuCreatebindgroupFailed = 73
  WgpuCreateBufferFailed = 74
  WgpuCreateTextureFailed = 75
  WgpuCreateTextureViewFailed = 76
  WgpuCreateSamplerFailed = 77
  WgpuCreateShaderModuleFailed = 78
  WgpuShaderCreateBindgroupLayoutFailed = 79
  WgpuUniformblockWgslGroup0BindingOutOfRange = 80
  WgpuTextureWgslGroup1BindingOutOfRange = 81
  WgpuStoragebufferWgslGroup1BindingOutOfRange = 82
  WgpuStorageimageWgslGroup1BindingOutOfRange = 83
  WgpuSamplerWgslGroup1BindingOutOfRange = 84
  WgpuCreatePipelineLayoutFailed = 85
  WgpuCreateRenderPipelineFailed = 86
  WgpuCreateComputePipelineFailed = 87
  VulkanRequiredExtensionFunctionMissing = 88
  VulkanAllocDeviceMemoryNoSuitableMemoryType = 89
  VulkanAllocateMemoryFailed = 90
  VulkanAllocBufferDeviceMemoryFailed = 91
  VulkanAllocImageDeviceMemoryFailed = 92
  VulkanDeleteQueueExhausted = 93
  VulkanStagingCreateBufferFailed = 94
  VulkanStagingAllocateMemoryFailed = 95
  VulkanStagingBindBufferMemoryFailed = 96
  VulkanStagingTransientBufferOverflow = 97
  VulkanStagingImageRowPitchGreaterStagingBuffer = 98
  VulkanCreateSharedBufferFailed = 99
  VulkanAllocateSharedBufferMemoryFailed = 100
  VulkanBindSharedBufferMemoryFailed = 101
  VulkanMapSharedBufferMemoryFailed = 102
  VulkanCreateBufferFailed = 103
  VulkanBindBufferMemoryFailed = 104
  VulkanCreateImageFailed = 105
  VulkanBindImageMemoryFailed = 106
  VulkanCreateShaderModuleFailed = 107
  VulkanUniformblockSpirvSet0BindingOutOfRange = 108
  VulkanTextureSpirvSet1BindingOutOfRange = 109
  VulkanStoragebufferSpirvSet1BindingOutOfRange = 110
  VulkanStorageimageSpirvSet1BindingOutOfRange = 111
  VulkanSamplerSpirvSet1BindingOutOfRange = 112
  VulkanCreateDescriptorSetLayoutFailed = 113
  VulkanShaderUniformDescriptorSetSizeVsCacheSize = 114
  VulkanCreatePipelineLayoutFailed = 115
  VulkanCreateGraphicsPipelineFailed = 116
  VulkanCreateComputePipelineFailed = 117
  VulkanCreateImageViewFailed = 118
  VulkanViewMaxDescriptorSize = 119
  VulkanCreateSamplerFailed = 120
  VulkanSamplerMaxDescriptorSize = 121
  VulkanWaitForFenceFailed = 122
  VulkanUniformBufferOverflow = 123
  VulkanDescriptorBufferOverflow = 124
  IdenticalCommitListener = 125
  CommitListenerArrayFull = 126
  TraceHooksNotEnabled = 127
  DeallocBufferInvalidState = 128
  DeallocImageInvalidState = 129
  DeallocSamplerInvalidState = 130
  DeallocShaderInvalidState = 131
  DeallocPipelineInvalidState = 132
  DeallocViewInvalidState = 133
  InitBufferInvalidState = 134
  InitImageInvalidState = 135
  InitSamplerInvalidState = 136
  InitShaderInvalidState = 137
  InitPipelineInvalidState = 138
  InitViewInvalidState = 139
  UninitBufferInvalidState = 140
  UninitImageInvalidState = 141
  UninitSamplerInvalidState = 142
  UninitShaderInvalidState = 143
  UninitPipelineInvalidState = 144
  UninitViewInvalidState = 145
  FailBufferInvalidState = 146
  FailImageInvalidState = 147
  FailSamplerInvalidState = 148
  FailShaderInvalidState = 149
  FailPipelineInvalidState = 150
  FailViewInvalidState = 151
  BufferPoolExhausted = 152
  ImagePoolExhausted = 153
  SamplerPoolExhausted = 154
  ShaderPoolExhausted = 155
  PipelinePoolExhausted = 156
  ViewPoolExhausted = 157
  BeginpassTooManyColorAttachments = 158
  BeginpassTooManyResolveAttachments = 159
  BeginpassAttachmentsAlive = 160
  DrawWithoutBindings = 161
  WriteBufferTransientBufferAlive = 162
  WriteBufferTransientBufferValid = 163
  WriteImageTransientImageAlive = 164
  WriteImageTransientImageValid = 165
  WriteBufferUnsealedBufferAlive = 166
  WriteBufferUnsealedBufferUnsealed = 167
  WriteImageUnsealedImageAlive = 168
  WriteImageUnsealedImageUnsealed = 169
  SealBufferAlive = 170
  SealImageAlive = 171
  CopyBufferToBufferSrcAlive = 172
  CopyBufferToBufferDstAlive = 173
  CopyBufferToBufferSrcValid = 174
  CopyBufferToBufferDstValid = 175
  CopyBufferToImageSrcAlive = 176
  CopyBufferToImageDstAlive = 177
  CopyBufferToImageSrcValid = 178
  CopyBufferToImageDstValid = 179
  CopyImageToImageSrcAlive = 180
  CopyImageToImageDstAlive = 181
  CopyImageToImageSrcValid = 182
  CopyImageToImageDstValid = 183
  ShaderdescTooManyVertexstageTextures = 184
  ShaderdescTooManyFragmentstageTextures = 185
  ShaderdescTooManyComputestageTextures = 186
  ShaderdescTooManyVertexstageStoragebuffers = 187
  ShaderdescTooManyFragmentstageStoragebuffers = 188
  ShaderdescTooManyComputestageStoragebuffers = 189
  ShaderdescTooManyVertexstageStorageimages = 190
  ShaderdescTooManyFragmentstageStorageimages = 191
  ShaderdescTooManyComputestageStorageimages = 192
  ShaderdescTooManyVertexstageTexturesamplerpairs = 193
  ShaderdescTooManyFragmentstageTexturesamplerpairs = 194
  ShaderdescTooManyComputestageTexturesamplerpairs = 195
  ValidateBufferdescCanary = 196
  ValidateBufferdescExpectNonzeroSize = 197
  ValidateBufferdescStagingVsVertexbuffer = 198
  ValidateBufferdescStagingVsIndexbuffer = 199
  ValidateBufferdescStagingVsStoragebuffer = 200
  ValidateBufferdescStagingVsInjected = 201
  ValidateBufferdescStagingVsCopydst = 202
  ValidateBufferdescStagingVsInitialdata = 203
  ValidateBufferdescStagingCopysrc = 204
  ValidateBufferdescSeparateBufferTypes = 205
  ValidateBufferdescWriteunsealedVsWritetransient = 206
  ValidateBufferdescWriteunsealedVsStaging = 207
  ValidateBufferdescWriteunsealedVsInitialdata = 208
  ValidateBufferdescWritetransientVsCopydst = 209
  ValidateBufferdescWritetransientVsInitialdata = 210
  ValidateBufferdescWritetransientVsInjected = 211
  ValidateBufferdescExpectMatchingDataSize = 212
  ValidateBufferdescExpectZeroDataSize = 213
  ValidateBufferdescExpectData = 214
  ValidateBufferdescStoragebufferSupported = 215
  ValidateBufferdescStoragebufferSizeMultiple4 = 216
  ValidateImagedescDataSize = 217
  ValidateImagedescCanary = 218
  ValidateImagedescAnyAttachmentVsCopydst = 219
  ValidateImagedescAnyAttachmentVsInitialdata = 220
  ValidateImagedescAnyAttachmentVsWritetransient = 221
  ValidateImagedescAnyAttachmentVsWriteunsealed = 222
  ValidateImagedescColorAttachmentPixelformat = 223
  ValidateImagedescColorAttachmentVsDepthstencilAttachment = 224
  ValidateImagedescResolveAttachmentExpectNoMsaa = 225
  ValidateImagedescResolveAttachmentVsDepthstencilAttachment = 226
  ValidateImagedescDepthformatVsInitialdata = 227
  ValidateImagedescDepthformatVsWriteunsealed = 228
  ValidateImagedescDepthformat3dImage = 229
  ValidateImagedescDepthformatAttachmentOrCopydst = 230
  ValidateImagedescDepthstencilAttachmentPixelformat = 231
  ValidateImagedescDepthstencilAttachmentVsStorageimage = 232
  ValidateImagedescStorageimageVsWritetransient = 233
  ValidateImagedescWritetransientVsCopydst = 234
  ValidateImagedescWritetransientVsInitialdata = 235
  ValidateImagedescWritetransientVsInjected = 236
  ValidateImagedescWriteunsealedVsInitialdata = 237
  ValidateImagedescWriteunsealedVsWritetransient = 238
  ValidateImagedescInitialDataRequired = 239
  ValidateImagedescInjectedExpectNoData = 240
  ValidateImagedescNoDataButSizeSet = 241
  ValidateImagedescImagetype2dNumslices = 242
  ValidateImagedescImagetypeCubeNumslices = 243
  ValidateImagedescImagetypeArrayNumslices = 244
  ValidateImagedescImagetype3dNumslices = 245
  ValidateImagedescWidth = 246
  ValidateImagedescHeight = 247
  ValidateImagedescNumMipmaps = 248
  ValidateImagedescMsaaButNoAttachment = 249
  ValidateImagedescAttachmentPixelformat = 250
  ValidateImagedescAttachmentMsaaVsCopy = 251
  ValidateImagedescAttachmentNoMsaaSupport = 252
  ValidateImagedescAttachmentMsaaNumMipmaps = 253
  ValidateImagedescAttachmentMsaa3dImage = 254
  ValidateImagedescAttachmentMsaaCubeImage = 255
  ValidateImagedescAttachmentMsaaArrayImage = 256
  ValidateImagedescStorageimagePixelformat = 257
  ValidateImagedescStorageimageExpectNoMsaa = 258
  ValidateSamplerdescCanary = 259
  ValidateSamplerdescAnistropicRequiresLinearFiltering = 260
  ValidateShaderdescCanary = 261
  ValidateShaderdescVertexSource = 262
  ValidateShaderdescFragmentSource = 263
  ValidateShaderdescComputeSource = 264
  ValidateShaderdescVertexSourceOrBytecode = 265
  ValidateShaderdescFragmentSourceOrBytecode = 266
  ValidateShaderdescComputeSourceOrBytecode = 267
  ValidateShaderdescInvalidShaderCombo = 268
  ValidateShaderdescNoBytecodeSize = 269
  ValidateShaderdescMetalThreadsPerThreadgroupInitialized = 270
  ValidateShaderdescMetalThreadsPerThreadgroupMultiple32 = 271
  ValidateShaderdescUniformblockNoContMembers = 272
  ValidateShaderdescUniformblockSizeIsZero = 273
  ValidateShaderdescUniformblockMetalBufferSlotCollision = 274
  ValidateShaderdescUniformblockHlslRegisterBCollision = 275
  ValidateShaderdescUniformblockWgslGroup0BindingCollision = 276
  ValidateShaderdescUniformblockSpirvSet0BindingCollision = 277
  ValidateShaderdescUniformblockNoMembers = 278
  ValidateShaderdescUniformblockUniformGlslName = 279
  ValidateShaderdescUniformblockSizeMismatch = 280
  ValidateShaderdescUniformblockArrayCount = 281
  ValidateShaderdescUniformblockStd140ArrayType = 282
  ValidateShaderdescViewStoragebufferVertexshaderReadwrite = 283
  ValidateShaderdescViewStoragebufferMetalBufferSlotCollision = 284
  ValidateShaderdescViewStoragebufferHlslRegisterTCollision = 285
  ValidateShaderdescViewStoragebufferHlslRegisterUCollision = 286
  ValidateShaderdescViewStoragebufferGlslBindingCollision = 287
  ValidateShaderdescViewStoragebufferWgslGroup1BindingCollision = 288
  ValidateShaderdescViewStoragebufferSpirvSet1BindingCollision = 289
  ValidateShaderdescViewStorageimageExpectComputeStage = 290
  ValidateShaderdescViewStorageimageMetalTextureSlotCollision = 291
  ValidateShaderdescViewStorageimageHlslRegisterUCollision = 292
  ValidateShaderdescViewStorageimageGlslBindingCollision = 293
  ValidateShaderdescViewStorageimageWgslGroup1BindingCollision = 294
  ValidateShaderdescViewStorageimageSpirvSet1BindingCollision = 295
  ValidateShaderdescViewTextureMetalTextureSlotCollision = 296
  ValidateShaderdescViewTextureHlslRegisterTCollision = 297
  ValidateShaderdescViewTextureWgslGroup1BindingCollision = 298
  ValidateShaderdescViewTextureSpirvSet1BindingCollision = 299
  ValidateShaderdescSamplerMetalSamplerSlotCollision = 300
  ValidateShaderdescSamplerHlslRegisterSCollision = 301
  ValidateShaderdescSamplerWgslGroup1BindingCollision = 302
  ValidateShaderdescSamplerSpirvSet1BindingCollision = 303
  ValidateShaderdescTextureSamplerPairViewSlotOutOfRange = 304
  ValidateShaderdescTextureSamplerPairSamplerSlotOutOfRange = 305
  ValidateShaderdescTextureSamplerPairTextureStageMismatch = 306
  ValidateShaderdescTextureSamplerPairExpectTextureView = 307
  ValidateShaderdescTextureSamplerPairSamplerStageMismatch = 308
  ValidateShaderdescTextureSamplerPairGlslName = 309
  ValidateShaderdescNonfilteringSamplerRequired = 310
  ValidateShaderdescComparisonSamplerRequired = 311
  ValidateShaderdescTexviewNotReferencedByTextureSamplerPairs = 312
  ValidateShaderdescSamplerNotReferencedByTextureSamplerPairs = 313
  ValidateShaderdescAttrStringTooLong = 314
  ValidatePipelinedescCanary = 315
  ValidatePipelinedescShader = 316
  ValidatePipelinedescComputeShaderExpected = 317
  ValidatePipelinedescNoComputeShaderExpected = 318
  ValidatePipelinedescNoContAttrs = 319
  ValidatePipelinedescAttrBasetypeMismatch = 320
  ValidatePipelinedescAttrVertexformatInt10N2NotSupported = 321
  ValidatePipelinedescLayoutStride4 = 322
  ValidatePipelinedescAttrSemantics = 323
  ValidatePipelinedescShaderReadonlyStoragebuffers = 324
  ValidatePipelinedescShaderHlslRegisterUVsColorCount = 325
  ValidatePipelinedescShaderHlslRegisterULimit = 326
  ValidatePipelinedescBlendopMinmaxRequiresBlendfactorOne = 327
  ValidatePipelinedescDualSourceBlendingNotSupported = 328
  ValidatePipelinedescDepthFormatNoneButDepthWriteEnabled = 329
  ValidatePipelinedescDepthFormatNoneCompareFuncMismatch = 330
  ValidatePipelinedescColorCount = 331
  ValidateViewdescCanary = 332
  ValidateViewdescUniqueViewtype = 333
  ValidateViewdescAnyViewtype = 334
  ValidateViewdescResourceAlive = 335
  ValidateViewdescResourceValid = 336
  ValidateViewdescImageValidUnsealed = 337
  ValidateViewdescStoragebufferOffsetVsBufferSize = 338
  ValidateViewdescStoragebufferOffsetMultiple256 = 339
  ValidateViewdescStoragebufferUsage = 340
  ValidateViewdescStorageimageUsage = 341
  ValidateViewdescColorattachmentUsage = 342
  ValidateViewdescResolveattachmentUsage = 343
  ValidateViewdescDepthstencilattachmentUsage = 344
  ValidateViewdescImageMiplevel = 345
  ValidateViewdescImage2dSlice = 346
  ValidateViewdescImageCubemapSlice = 347
  ValidateViewdescImageArraySlice = 348
  ValidateViewdescImage3dSlice = 349
  ValidateViewdescTextureExpectNoMsaa = 350
  ValidateViewdescTextureMiplevels = 351
  ValidateViewdescTexture2dSlices = 352
  ValidateViewdescTextureCubemapSlices = 353
  ValidateViewdescTextureArraySlices = 354
  ValidateViewdescTexture3dSlices = 355
  ValidateBeginpassCanary = 356
  ValidateBeginpassComputepassExpectNoAttachments = 357
  ValidateBeginpassSwapchainExpectWidth = 358
  ValidateBeginpassSwapchainExpectWidthNotset = 359
  ValidateBeginpassSwapchainExpectHeight = 360
  ValidateBeginpassSwapchainExpectHeightNotset = 361
  ValidateBeginpassSwapchainExpectSamplecount = 362
  ValidateBeginpassSwapchainExpectSamplecountNotset = 363
  ValidateBeginpassSwapchainExpectColorformat = 364
  ValidateBeginpassSwapchainExpectColorformatNotset = 365
  ValidateBeginpassSwapchainExpectDepthformatNotset = 366
  ValidateBeginpassSwapchainMetalExpectCurrentdrawable = 367
  ValidateBeginpassSwapchainMetalExpectCurrentdrawableNotset = 368
  ValidateBeginpassSwapchainMetalExpectDepthstenciltexture = 369
  ValidateBeginpassSwapchainMetalExpectDepthstenciltextureNotset = 370
  ValidateBeginpassSwapchainMetalExpectMsaacolortexture = 371
  ValidateBeginpassSwapchainMetalExpectMsaacolortextureNotset = 372
  ValidateBeginpassSwapchainD3d11ExpectRenderview = 373
  ValidateBeginpassSwapchainD3d11ExpectRenderviewNotset = 374
  ValidateBeginpassSwapchainD3d11ExpectResolveview = 375
  ValidateBeginpassSwapchainD3d11ExpectResolveviewNotset = 376
  ValidateBeginpassSwapchainD3d11ExpectDepthstencilview = 377
  ValidateBeginpassSwapchainD3d11ExpectDepthstencilviewNotset = 378
  ValidateBeginpassSwapchainWgpuExpectRenderview = 379
  ValidateBeginpassSwapchainWgpuExpectRenderviewNotset = 380
  ValidateBeginpassSwapchainWgpuExpectResolveview = 381
  ValidateBeginpassSwapchainWgpuExpectResolveviewNotset = 382
  ValidateBeginpassSwapchainWgpuExpectDepthstencilview = 383
  ValidateBeginpassSwapchainWgpuExpectDepthstencilviewNotset = 384
  ValidateBeginpassSwapchainGlExpectFramebufferNotset = 385
  ValidateBeginpassSwapchainVulkanExpectRenderimage = 386
  ValidateBeginpassSwapchainVulkanExpectRenderimageNotset = 387
  ValidateBeginpassSwapchainVulkanExpectRenderview = 388
  ValidateBeginpassSwapchainVulkanExpectRenderviewNotset = 389
  ValidateBeginpassSwapchainVulkanExpectDepthstencilimage = 390
  ValidateBeginpassSwapchainVulkanExpectDepthstencilimageNotset = 391
  ValidateBeginpassSwapchainVulkanExpectDepthstencilview = 392
  ValidateBeginpassSwapchainVulkanExpectDepthstencilviewNotset = 393
  ValidateBeginpassSwapchainVulkanExpectResolveimage = 394
  ValidateBeginpassSwapchainVulkanExpectResolveimageNotset = 395
  ValidateBeginpassSwapchainVulkanExpectResolveview = 396
  ValidateBeginpassSwapchainVulkanExpectResolveviewNotset = 397
  ValidateBeginpassSwapchainVulkanExpectRenderfinishedsemaphore = 398
  ValidateBeginpassSwapchainVulkanExpectRenderfinishedsemaphoreNotset = 399
  ValidateBeginpassSwapchainVulkanExpectPresentcompletesemaphore = 400
  ValidateBeginpassSwapchainVulkanExpectPresentcompletesemaphoreNotset = 401
  ValidateBeginpassColorattachmentviewsContinuous = 402
  ValidateBeginpassColorattachmentviewAlive = 403
  ValidateBeginpassColorattachmentviewValid = 404
  ValidateBeginpassColorattachmentviewType = 405
  ValidateBeginpassColorattachmentviewImageAlive = 406
  ValidateBeginpassColorattachmentviewImageValid = 407
  ValidateBeginpassColorattachmentviewSizes = 408
  ValidateBeginpassColorattachmentviewSamplecount = 409
  ValidateBeginpassColorattachmentviewSamplecountsEqual = 410
  ValidateBeginpassResolveattachmentviewNoColorattachmentview = 411
  ValidateBeginpassResolveattachmentviewAlive = 412
  ValidateBeginpassResolveattachmentviewValid = 413
  ValidateBeginpassResolveattachmentviewType = 414
  ValidateBeginpassResolveattachmentviewImageAlive = 415
  ValidateBeginpassResolveattachmentviewImageValid = 416
  ValidateBeginpassResolveattachmentviewSizes = 417
  ValidateBeginpassDepthstencilattachmentviewAlive = 418
  ValidateBeginpassDepthstencilattachmentviewValid = 419
  ValidateBeginpassDepthstencilattachmentviewType = 420
  ValidateBeginpassDepthstencilattachmentviewImageAlive = 421
  ValidateBeginpassDepthstencilattachmentviewImageValid = 422
  ValidateBeginpassDepthstencilattachmentviewSizes = 423
  ValidateBeginpassDepthstencilattachmentviewSamplecount = 424
  ValidateBeginpassAttachmentsExpected = 425
  ValidateAvpRenderpassExpected = 426
  ValidateAsrRenderpassExpected = 427
  ValidateApipPipelineValidId = 428
  ValidateApipPipelineExists = 429
  ValidateApipPipelineValid = 430
  ValidateApipPassExpected = 431
  ValidateApipPipelineShaderAlive = 432
  ValidateApipPipelineShaderValid = 433
  ValidateApipComputepassExpected = 434
  ValidateApipRenderpassExpected = 435
  ValidateApipSwapchainColorCount = 436
  ValidateApipSwapchainColorFormat = 437
  ValidateApipSwapchainDepthFormat = 438
  ValidateApipSwapchainSampleCount = 439
  ValidateApipAttachmentsAlive = 440
  ValidateApipColorattachmentsCount = 441
  ValidateApipColorattachmentsViewValid = 442
  ValidateApipColorattachmentsImageValid = 443
  ValidateApipColorattachmentsFormat = 444
  ValidateApipDepthstencilattachmentViewValid = 445
  ValidateApipDepthstencilattachmentImageValid = 446
  ValidateApipDepthstencilattachmentFormat = 447
  ValidateApipAttachmentSampleCount = 448
  ValidateAbndPassExpected = 449
  ValidateAbndEmptyBindings = 450
  ValidateAbndNoPipeline = 451
  ValidateAbndPipelineAlive = 452
  ValidateAbndPipelineValid = 453
  ValidateAbndPipelineShaderAlive = 454
  ValidateAbndPipelineShaderValid = 455
  ValidateAbndComputeExpectedNoVbufs = 456
  ValidateAbndComputeExpectedNoIbuf = 457
  ValidateAbndExpectedVbuf = 458
  ValidateAbndVbufAlive = 459
  ValidateAbndVbufUsage = 460
  ValidateAbndVbufVsSbviewReadwrite = 461
  ValidateAbndExpectedNoIbuf = 462
  ValidateAbndExpectedIbuf = 463
  ValidateAbndIbufAlive = 464
  ValidateAbndIbufUsage = 465
  ValidateAbndIbufVsSbviewReadwrite = 466
  ValidateAbndExpectedViewBinding = 467
  ValidateAbndViewAlive = 468
  ValidateAbndExpectTexview = 469
  ValidateAbndExpectSbview = 470
  ValidateAbndSbviewReadwriteVsWritetransient = 471
  ValidateAbndSbviewReadonlyVsReadwrite = 472
  ValidateAbndSbviewReadwriteVsRead = 473
  ValidateAbndExpectSimgview = 474
  ValidateAbndTexviewImagetypeMismatch = 475
  ValidateAbndTexviewExpectedMultisampledImage = 476
  ValidateAbndTexviewExpectedNonMultisampledImage = 477
  ValidateAbndTexviewExpectedFilterableImage = 478
  ValidateAbndTexviewExpectedDepthImage = 479
  ValidateAbndSimgviewComputePassExpected = 480
  ValidateAbndSimgviewImagetypeMismatch = 481
  ValidateAbndSimgviewAccessformat = 482
  ValidateAbndExpectedSamplerBinding = 483
  ValidateAbndUnexpectedSamplerCompareNever = 484
  ValidateAbndExpectedSamplerCompareNever = 485
  ValidateAbndExpectedNonfilteringSampler = 486
  ValidateAbndSamplerAlive = 487
  ValidateAbndSamplerValid = 488
  ValidateAbndTextureBindingVsDepthstencilAttachment = 489
  ValidateAbndTextureBindingVsColorAttachment = 490
  ValidateAbndTextureBindingVsResolveAttachment = 491
  ValidateAbndTextureVsStorageimageBinding = 492
  ValidateAuPassExpected = 493
  ValidateAuNoPipeline = 494
  ValidateAuPipelineAlive = 495
  ValidateAuPipelineValid = 496
  ValidateAuPipelineShaderAlive = 497
  ValidateAuPipelineShaderValid = 498
  ValidateAuNoUniformblockAtSlot = 499
  ValidateAuSize = 500
  ValidateDrawRenderpassExpected = 501
  ValidateDrawBaseelementGeZero = 502
  ValidateDrawNumelementsGeZero = 503
  ValidateDrawNuminstancesGeZero = 504
  ValidateDrawExRenderpassExpected = 505
  ValidateDrawExBaseelementGeZero = 506
  ValidateDrawExNumelementsGeZero = 507
  ValidateDrawExNuminstancesGeZero = 508
  ValidateDrawExBaseinstanceGeZero = 509
  ValidateDrawExBasevertexVsIndexed = 510
  ValidateDrawExBaseinstanceVsInstanced = 511
  ValidateDrawExBasevertexNotSupported = 512
  ValidateDrawExBaseinstanceNotSupported = 513
  ValidateDrawRequiredBindingsOrUniformsMissing = 514
  ValidateDrawWriteBufferTransientMissing = 515
  ValidateDrawWriteImageTransientMissing = 516
  ValidateDispatchComputepassExpected = 517
  ValidateDispatchNumgroupsx = 518
  ValidateDispatchNumgroupsy = 519
  ValidateDispatchNumgroupsz = 520
  ValidateDispatchWriteBufferTransientMissing = 521
  ValidateDispatchWriteImageTransientMissing = 522
  ValidateWritebufferunsealedUsage = 523
  ValidateWritebuffertransientUsage = 524
  ValidateWritebuffertransientWriteBeforeBind = 525
  ValidateWritebuffertransientWriteBeforeCopy = 526
  ValidateWritebuffertransientDstOffsetAlignment = 527
  ValidateWritebufferSrcDataPointer = 528
  ValidateWritebufferSrcDataSize = 529
  ValidateWritebufferSize = 530
  ValidateWritebufferWriteOverflow = 531
  ValidateWritebufferReadOverflow = 532
  ValidateWriteimageunsealedUsage = 533
  ValidateWriteimagetransientUsage = 534
  ValidateWriteimagetransientWriteBeforeBind = 535
  ValidateWriteimagetransientWriteBeforeCopy = 536
  ValidateWriteimageSrcDataPointer = 537
  ValidateWriteimageSrcDataSize = 538
  ValidateWriteimageBytesperrow = 539
  ValidateWriteimageBytesperslice = 540
  ValidateWriteimageBytesperrowTooSmall = 541
  ValidateWriteimageBytespersliceTooSmall = 542
  ValidateWriteimageMiplevel = 543
  ValidateWriteimageWidth = 544
  ValidateWriteimageHeight = 545
  ValidateWriteimageNumslices = 546
  ValidateWriteimageReadOverflow = 547
  ValidateWriteimageDstXRange = 548
  ValidateWriteimageDstYRange = 549
  ValidateWriteimageDstSliceRange = 550
  ValidateWriteimageWriteWidthOverflow = 551
  ValidateWriteimageWriteHeightOverflow = 552
  ValidateWriteimageWriteNumslicesOverflow = 553
  ValidateWriteimageDstXAlignment = 554
  ValidateWriteimageDstYAlignment = 555
  ValidateWriteimageWidthMultiple = 556
  ValidateWriteimageHeightMultiple = 557
  ValidateSealbufferResourcestate = 558
  ValidateSealimageResourcestate = 559
  ValidateCopybuffertobufferInsidePass = 560
  ValidateCopybuffertobufferSrcVsDstBuffer = 561
  ValidateCopybuffertobufferCopySrc = 562
  ValidateCopybuffertobufferCopyDst = 563
  ValidateCopybuffertobufferZeroSize = 564
  ValidateCopybuffertobufferSrcOffsetAlignment = 565
  ValidateCopybuffertobufferDstOffsetAlignment = 566
  ValidateCopybuffertobufferSrcOverflow = 567
  ValidateCopybuffertobufferDstOverflow = 568
  ValidateCopybuffertobufferWebgl2IndexBuffer = 569
  ValidateCopybuffertobufferSrcTransientMissing = 570
  ValidateCopybuffertoimageDepthFormatNotAllowed = 571
  ValidateCopybuffertoimageWebgl2IndexBuffer = 572
  ValidateCopybuffertoimageBytesperrowTooSmall = 573
  ValidateCopybuffertoimageBytespersliceTooSmall = 574
  ValidateCopybuffertoimageSrcStagingIndexBuffer = 575
  ValidateCopybuffertoimageSrcStagingBuffer = 576
  ValidateCopybuffertoimageInsidePass = 577
  ValidateCopybuffertoimageCopySrc = 578
  ValidateCopybuffertoimageCopyDst = 579
  ValidateCopybuffertoimageSrcOffsetAlignment = 580
  ValidateCopybuffertoimageBytesperrowMultipleBlocksize = 581
  ValidateCopybuffertoimageBytesperrowMultiple256 = 582
  ValidateCopybuffertoimageBytesperslice = 583
  ValidateCopybuffertoimageSrcOverflow = 584
  ValidateCopybuffertoimageDstMiplevel = 585
  ValidateCopybuffertoimageDstWidth = 586
  ValidateCopybuffertoimageDstHeight = 587
  ValidateCopybuffertoimageDstWidthMultiple = 588
  ValidateCopybuffertoimageDstHeightMultiple = 589
  ValidateCopybuffertoimageDstNumslices = 590
  ValidateCopybuffertoimageDstXRange = 591
  ValidateCopybuffertoimageDstYRange = 592
  ValidateCopybuffertoimageDstXAlignment = 593
  ValidateCopybuffertoimageDstYAlignment = 594
  ValidateCopybuffertoimageDstSliceRange = 595
  ValidateCopybuffertoimageDstWidthOverflow = 596
  ValidateCopybuffertoimageDstHeightOverflow = 597
  ValidateCopybuffertoimageDstNumslicesOverflow = 598
  ValidateCopybuffertoimageSrcTransientMissing = 599
  ValidateCopyimagetoimageSrcVsDstImage = 600
  ValidateCopyimagetoimageInsidePass = 601
  ValidateCopyimagetoimageCopySrc = 602
  ValidateCopyimagetoimageCopyDst = 603
  ValidateCopyimagetoimage3dVsOther = 604
  ValidateCopyimagetoimageSrcVsDstFormat = 605
  ValidateCopyimagetoimageRenderable = 606
  ValidateCopyimagetoimageMsaa = 607
  ValidateCopyimagetoimageWholeMiplevel = 608
  ValidateCopyimagetoimageSrcVsDstSize = 609
  ValidateCopyimagetoimageSrcMiplevel = 610
  ValidateCopyimagetoimageSrcWidth = 611
  ValidateCopyimagetoimageSrcHeight = 612
  ValidateCopyimagetoimageDstMiplevel = 613
  ValidateCopyimagetoimageDstWidth = 614
  ValidateCopyimagetoimageDstHeight = 615
  ValidateCopyimagetoimageSrcWidthMultiple = 616
  ValidateCopyimagetoimageSrcHeightMultiple = 617
  ValidateCopyimagetoimageDstWidthMultiple = 618
  ValidateCopyimagetoimageDstHeightMultiple = 619
  ValidateCopyimagetoimageSrcNumslices = 620
  ValidateCopyimagetoimageDstNumslices = 621
  ValidateCopyimagetoimageSrcXRange = 622
  ValidateCopyimagetoimageDstXRange = 623
  ValidateCopyimagetoimageSrcYRange = 624
  ValidateCopyimagetoimageDstYRange = 625
  ValidateCopyimagetoimageSrcXAlignment = 626
  ValidateCopyimagetoimageDstXAlignment = 627
  ValidateCopyimagetoimageSrcYAlignment = 628
  ValidateCopyimagetoimageDstYAlignment = 629
  ValidateCopyimagetoimageSrcSliceRange = 630
  ValidateCopyimagetoimageDstSliceRange = 631
  ValidateCopyimagetoimageSrcWidthOverflow = 632
  ValidateCopyimagetoimageDstWidthOverflow = 633
  ValidateCopyimagetoimageSrcHeightOverflow = 634
  ValidateCopyimagetoimageDstHeightOverflow = 635
  ValidateCopyimagetoimageSrcNumslicesOverflow = 636
  ValidateCopyimagetoimageDstNumslicesOverflow = 637
  ValidateCopyimagetoimageSrcTransientMissing = 638
  ValidationFailed = 639
}

///|
pub extend LogItem with Eq::{equal, not_equal}

///|
pub extend LogItem with @debug.Debug::{to_repr}

///|
pub fn LogItem::to_int(self : LogItem) -> Int32 {
  sg_log_item_int(self)
}

///|
/// Owned C value. copy() creates an independent copy.
pub type EnvironmentDefaults

///|
pub fn EnvironmentDefaults::new() -> EnvironmentDefaults {
  sg_environment_defaults_new()
}

///|
pub fn EnvironmentDefaults::copy(
  self : EnvironmentDefaults,
) -> EnvironmentDefaults {
  sg_environment_defaults_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn EnvironmentDefaults::unsafe_native_handle(
  self : EnvironmentDefaults,
) -> @native.Handle {
  sg_environment_defaults_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn EnvironmentDefaults::unsafe_from_native(
  ptr : @native.Handle,
) -> EnvironmentDefaults {
  sg_environment_defaults_from_native(ptr)
}

///|
pub fn EnvironmentDefaults::color_format(
  self : EnvironmentDefaults,
) -> PixelFormat {
  sg_environment_defaults_get_color_format(self)
}

///|
pub fn EnvironmentDefaults::set_color_format(
  self : EnvironmentDefaults,
  value : PixelFormat,
) -> EnvironmentDefaults {
  sg_environment_defaults_set_color_format(self, value)
  self
}

///|
pub fn EnvironmentDefaults::depth_format(
  self : EnvironmentDefaults,
) -> PixelFormat {
  sg_environment_defaults_get_depth_format(self)
}

///|
pub fn EnvironmentDefaults::set_depth_format(
  self : EnvironmentDefaults,
  value : PixelFormat,
) -> EnvironmentDefaults {
  sg_environment_defaults_set_depth_format(self, value)
  self
}

///|
pub fn EnvironmentDefaults::sample_count(self : EnvironmentDefaults) -> Int32 {
  sg_environment_defaults_get_sample_count(self)
}

///|
pub fn EnvironmentDefaults::set_sample_count(
  self : EnvironmentDefaults,
  value : Int32,
) -> EnvironmentDefaults {
  sg_environment_defaults_set_sample_count(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type MetalEnvironment

///|
pub fn MetalEnvironment::new() -> MetalEnvironment {
  sg_metal_environment_new()
}

///|
pub fn MetalEnvironment::copy(self : MetalEnvironment) -> MetalEnvironment {
  sg_metal_environment_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn MetalEnvironment::unsafe_native_handle(
  self : MetalEnvironment,
) -> @native.Handle {
  sg_metal_environment_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn MetalEnvironment::unsafe_from_native(
  ptr : @native.Handle,
) -> MetalEnvironment {
  sg_metal_environment_from_native(ptr)
}

///|
pub fn MetalEnvironment::device(self : MetalEnvironment) -> @native.Handle {
  sg_metal_environment_get_device(self)
}

///|
pub fn MetalEnvironment::set_device(
  self : MetalEnvironment,
  value : @native.Handle,
) -> MetalEnvironment {
  sg_metal_environment_set_device(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type D3d11Environment

///|
pub fn D3d11Environment::new() -> D3d11Environment {
  sg_d3d11_environment_new()
}

///|
pub fn D3d11Environment::copy(self : D3d11Environment) -> D3d11Environment {
  sg_d3d11_environment_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn D3d11Environment::unsafe_native_handle(
  self : D3d11Environment,
) -> @native.Handle {
  sg_d3d11_environment_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn D3d11Environment::unsafe_from_native(
  ptr : @native.Handle,
) -> D3d11Environment {
  sg_d3d11_environment_from_native(ptr)
}

///|
pub fn D3d11Environment::device(self : D3d11Environment) -> @native.Handle {
  sg_d3d11_environment_get_device(self)
}

///|
pub fn D3d11Environment::set_device(
  self : D3d11Environment,
  value : @native.Handle,
) -> D3d11Environment {
  sg_d3d11_environment_set_device(self, value)
  self
}

///|
pub fn D3d11Environment::device_context(
  self : D3d11Environment,
) -> @native.Handle {
  sg_d3d11_environment_get_device_context(self)
}

///|
pub fn D3d11Environment::set_device_context(
  self : D3d11Environment,
  value : @native.Handle,
) -> D3d11Environment {
  sg_d3d11_environment_set_device_context(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type WgpuEnvironment

///|
pub fn WgpuEnvironment::new() -> WgpuEnvironment {
  sg_wgpu_environment_new()
}

///|
pub fn WgpuEnvironment::copy(self : WgpuEnvironment) -> WgpuEnvironment {
  sg_wgpu_environment_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WgpuEnvironment::unsafe_native_handle(
  self : WgpuEnvironment,
) -> @native.Handle {
  sg_wgpu_environment_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WgpuEnvironment::unsafe_from_native(
  ptr : @native.Handle,
) -> WgpuEnvironment {
  sg_wgpu_environment_from_native(ptr)
}

///|
pub fn WgpuEnvironment::device(self : WgpuEnvironment) -> @native.Handle {
  sg_wgpu_environment_get_device(self)
}

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
pub type VulkanEnvironment

///|
pub fn VulkanEnvironment::new() -> VulkanEnvironment {
  sg_vulkan_environment_new()
}

///|
pub fn VulkanEnvironment::copy(self : VulkanEnvironment) -> VulkanEnvironment {
  sg_vulkan_environment_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn VulkanEnvironment::unsafe_native_handle(
  self : VulkanEnvironment,
) -> @native.Handle {
  sg_vulkan_environment_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn VulkanEnvironment::unsafe_from_native(
  ptr : @native.Handle,
) -> VulkanEnvironment {
  sg_vulkan_environment_from_native(ptr)
}

///|
pub fn VulkanEnvironment::instance(self : VulkanEnvironment) -> @native.Handle {
  sg_vulkan_environment_get_instance(self)
}

///|
pub fn VulkanEnvironment::set_instance(
  self : VulkanEnvironment,
  value : @native.Handle,
) -> VulkanEnvironment {
  sg_vulkan_environment_set_instance(self, value)
  self
}

///|
pub fn VulkanEnvironment::physical_device(
  self : VulkanEnvironment,
) -> @native.Handle {
  sg_vulkan_environment_get_physical_device(self)
}

///|
pub fn VulkanEnvironment::set_physical_device(
  self : VulkanEnvironment,
  value : @native.Handle,
) -> VulkanEnvironment {
  sg_vulkan_environment_set_physical_device(self, value)
  self
}

///|
pub fn VulkanEnvironment::device(self : VulkanEnvironment) -> @native.Handle {
  sg_vulkan_environment_get_device(self)
}

///|
pub fn VulkanEnvironment::set_device(
  self : VulkanEnvironment,
  value : @native.Handle,
) -> VulkanEnvironment {
  sg_vulkan_environment_set_device(self, value)
  self
}

///|
pub fn VulkanEnvironment::queue(self : VulkanEnvironment) -> @native.Handle {
  sg_vulkan_environment_get_queue(self)
}

///|
pub fn VulkanEnvironment::set_queue(
  self : VulkanEnvironment,
  value : @native.Handle,
) -> VulkanEnvironment {
  sg_vulkan_environment_set_queue(self, value)
  self
}

///|
pub fn VulkanEnvironment::queue_family_index(
  self : VulkanEnvironment,
) -> UInt32 {
  sg_vulkan_environment_get_queue_family_index(self)
}

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
pub type Environment

///|
pub fn Environment::new() -> Environment {
  sg_environment_new()
}

///|
pub fn Environment::copy(self : Environment) -> Environment {
  sg_environment_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Environment::unsafe_native_handle(self : Environment) -> @native.Handle {
  sg_environment_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Environment::unsafe_from_native(ptr : @native.Handle) -> Environment {
  sg_environment_from_native(ptr)
}

///|
pub fn Environment::defaults(self : Environment) -> EnvironmentDefaults {
  sg_environment_get_defaults(self)
}

///|
pub fn Environment::set_defaults(
  self : Environment,
  value : EnvironmentDefaults,
) -> Environment {
  sg_environment_set_defaults(self, value)
  self
}

///|
pub fn Environment::metal(self : Environment) -> MetalEnvironment {
  sg_environment_get_metal(self)
}

///|
pub fn Environment::set_metal(
  self : Environment,
  value : MetalEnvironment,
) -> Environment {
  sg_environment_set_metal(self, value)
  self
}

///|
pub fn Environment::d3d11(self : Environment) -> D3d11Environment {
  sg_environment_get_d3d11(self)
}

///|
pub fn Environment::set_d3d11(
  self : Environment,
  value : D3d11Environment,
) -> Environment {
  sg_environment_set_d3d11(self, value)
  self
}

///|
pub fn Environment::wgpu(self : Environment) -> WgpuEnvironment {
  sg_environment_get_wgpu(self)
}

///|
pub fn Environment::set_wgpu(
  self : Environment,
  value : WgpuEnvironment,
) -> Environment {
  sg_environment_set_wgpu(self, value)
  self
}

///|
pub fn Environment::vulkan(self : Environment) -> VulkanEnvironment {
  sg_environment_get_vulkan(self)
}

///|
pub fn Environment::set_vulkan(
  self : Environment,
  value : VulkanEnvironment,
) -> Environment {
  sg_environment_set_vulkan(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type CommitListener

///|
pub fn CommitListener::new() -> CommitListener {
  sg_commit_listener_new()
}

///|
pub fn CommitListener::copy(self : CommitListener) -> CommitListener {
  sg_commit_listener_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn CommitListener::unsafe_native_handle(
  self : CommitListener,
) -> @native.Handle {
  sg_commit_listener_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn CommitListener::unsafe_from_native(
  ptr : @native.Handle,
) -> CommitListener {
  sg_commit_listener_from_native(ptr)
}

///|
pub fn CommitListener::func(self : CommitListener) -> @native.Handle {
  sg_commit_listener_get_func(self)
}

///|
pub fn CommitListener::set_func(
  self : CommitListener,
  value : @native.Handle,
) -> CommitListener {
  sg_commit_listener_set_func(self, value)
  self
}

///|
pub fn CommitListener::user_data(self : CommitListener) -> @native.Handle {
  sg_commit_listener_get_user_data(self)
}

///|
pub fn CommitListener::set_user_data(
  self : CommitListener,
  value : @native.Handle,
) -> CommitListener {
  sg_commit_listener_set_user_data(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Allocator

///|
pub fn Allocator::new() -> Allocator {
  sg_allocator_new()
}

///|
pub fn Allocator::copy(self : Allocator) -> Allocator {
  sg_allocator_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Allocator::unsafe_native_handle(self : Allocator) -> @native.Handle {
  sg_allocator_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Allocator::unsafe_from_native(ptr : @native.Handle) -> Allocator {
  sg_allocator_from_native(ptr)
}

///|
pub fn Allocator::alloc_fn(self : Allocator) -> @native.Handle {
  sg_allocator_get_alloc_fn(self)
}

///|
pub fn Allocator::set_alloc_fn(
  self : Allocator,
  value : @native.Handle,
) -> Allocator {
  sg_allocator_set_alloc_fn(self, value)
  self
}

///|
pub fn Allocator::free_fn(self : Allocator) -> @native.Handle {
  sg_allocator_get_free_fn(self)
}

///|
pub fn Allocator::set_free_fn(
  self : Allocator,
  value : @native.Handle,
) -> Allocator {
  sg_allocator_set_free_fn(self, value)
  self
}

///|
pub fn Allocator::user_data(self : Allocator) -> @native.Handle {
  sg_allocator_get_user_data(self)
}

///|
pub fn Allocator::set_user_data(
  self : Allocator,
  value : @native.Handle,
) -> Allocator {
  sg_allocator_set_user_data(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Logger

///|
pub fn Logger::new() -> Logger {
  sg_logger_new()
}

///|
pub fn Logger::copy(self : Logger) -> Logger {
  sg_logger_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Logger::unsafe_native_handle(self : Logger) -> @native.Handle {
  sg_logger_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Logger::unsafe_from_native(ptr : @native.Handle) -> Logger {
  sg_logger_from_native(ptr)
}

///|
pub fn Logger::func(self : Logger) -> @native.Handle {
  sg_logger_get_func(self)
}

///|
pub fn Logger::set_func(self : Logger, value : @native.Handle) -> Logger {
  sg_logger_set_func(self, value)
  self
}

///|
pub fn Logger::user_data(self : Logger) -> @native.Handle {
  sg_logger_get_user_data(self)
}

///|
pub fn Logger::set_user_data(self : Logger, value : @native.Handle) -> Logger {
  sg_logger_set_user_data(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type D3d11Desc

///|
pub fn D3d11Desc::new() -> D3d11Desc {
  sg_d3d11_desc_new()
}

///|
pub fn D3d11Desc::copy(self : D3d11Desc) -> D3d11Desc {
  sg_d3d11_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn D3d11Desc::unsafe_native_handle(self : D3d11Desc) -> @native.Handle {
  sg_d3d11_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn D3d11Desc::unsafe_from_native(ptr : @native.Handle) -> D3d11Desc {
  sg_d3d11_desc_from_native(ptr)
}

///|
pub fn D3d11Desc::shader_debugging(self : D3d11Desc) -> Bool {
  sg_d3d11_desc_get_shader_debugging(self)
}

///|
pub fn D3d11Desc::set_shader_debugging(
  self : D3d11Desc,
  value : Bool,
) -> D3d11Desc {
  sg_d3d11_desc_set_shader_debugging(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type MetalDesc

///|
pub fn MetalDesc::new() -> MetalDesc {
  sg_metal_desc_new()
}

///|
pub fn MetalDesc::copy(self : MetalDesc) -> MetalDesc {
  sg_metal_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn MetalDesc::unsafe_native_handle(self : MetalDesc) -> @native.Handle {
  sg_metal_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn MetalDesc::unsafe_from_native(ptr : @native.Handle) -> MetalDesc {
  sg_metal_desc_from_native(ptr)
}

///|
pub fn MetalDesc::force_managed_storage_mode(self : MetalDesc) -> Bool {
  sg_metal_desc_get_force_managed_storage_mode(self)
}

///|
pub fn MetalDesc::set_force_managed_storage_mode(
  self : MetalDesc,
  value : Bool,
) -> MetalDesc {
  sg_metal_desc_set_force_managed_storage_mode(self, value)
  self
}

///|
pub fn MetalDesc::use_command_buffer_with_retained_references(
  self : MetalDesc,
) -> Bool {
  sg_metal_desc_get_use_command_buffer_with_retained_references(self)
}

///|
pub fn MetalDesc::set_use_command_buffer_with_retained_references(
  self : MetalDesc,
  value : Bool,
) -> MetalDesc {
  sg_metal_desc_set_use_command_buffer_with_retained_references(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type WgpuDesc

///|
pub fn WgpuDesc::new() -> WgpuDesc {
  sg_wgpu_desc_new()
}

///|
pub fn WgpuDesc::copy(self : WgpuDesc) -> WgpuDesc {
  sg_wgpu_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WgpuDesc::unsafe_native_handle(self : WgpuDesc) -> @native.Handle {
  sg_wgpu_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WgpuDesc::unsafe_from_native(ptr : @native.Handle) -> WgpuDesc {
  sg_wgpu_desc_from_native(ptr)
}

///|
pub fn WgpuDesc::disable_bindgroups_cache(self : WgpuDesc) -> Bool {
  sg_wgpu_desc_get_disable_bindgroups_cache(self)
}

///|
pub fn WgpuDesc::set_disable_bindgroups_cache(
  self : WgpuDesc,
  value : Bool,
) -> WgpuDesc {
  sg_wgpu_desc_set_disable_bindgroups_cache(self, value)
  self
}

///|
pub fn WgpuDesc::bindgroups_cache_size(self : WgpuDesc) -> Int32 {
  sg_wgpu_desc_get_bindgroups_cache_size(self)
}

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
pub type VulkanDesc

///|
pub fn VulkanDesc::new() -> VulkanDesc {
  sg_vulkan_desc_new()
}

///|
pub fn VulkanDesc::copy(self : VulkanDesc) -> VulkanDesc {
  sg_vulkan_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn VulkanDesc::unsafe_native_handle(self : VulkanDesc) -> @native.Handle {
  sg_vulkan_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn VulkanDesc::unsafe_from_native(ptr : @native.Handle) -> VulkanDesc {
  sg_vulkan_desc_from_native(ptr)
}

///|
pub fn VulkanDesc::copy_staging_buffer_size(self : VulkanDesc) -> Int32 {
  sg_vulkan_desc_get_copy_staging_buffer_size(self)
}

///|
pub fn VulkanDesc::set_copy_staging_buffer_size(
  self : VulkanDesc,
  value : Int32,
) -> VulkanDesc {
  sg_vulkan_desc_set_copy_staging_buffer_size(self, value)
  self
}

///|
pub fn VulkanDesc::transient_staging_buffer_size(self : VulkanDesc) -> Int32 {
  sg_vulkan_desc_get_transient_staging_buffer_size(self)
}

///|
pub fn VulkanDesc::set_transient_staging_buffer_size(
  self : VulkanDesc,
  value : Int32,
) -> VulkanDesc {
  sg_vulkan_desc_set_transient_staging_buffer_size(self, value)
  self
}

///|
pub fn VulkanDesc::descriptor_buffer_size(self : VulkanDesc) -> Int32 {
  sg_vulkan_desc_get_descriptor_buffer_size(self)
}

///|
pub fn VulkanDesc::set_descriptor_buffer_size(
  self : VulkanDesc,
  value : Int32,
) -> VulkanDesc {
  sg_vulkan_desc_set_descriptor_buffer_size(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type Desc

///|
pub fn Desc::new() -> Desc {
  sg_desc_new()
}

///|
pub fn Desc::copy(self : Desc) -> Desc {
  sg_desc_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Desc::unsafe_native_handle(self : Desc) -> @native.Handle {
  sg_desc_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Desc::unsafe_from_native(ptr : @native.Handle) -> Desc {
  sg_desc_from_native(ptr)
}

///|
pub fn Desc::buffer_pool_size(self : Desc) -> Int32 {
  sg_desc_get_buffer_pool_size(self)
}

///|
pub fn Desc::set_buffer_pool_size(self : Desc, value : Int32) -> Desc {
  sg_desc_set_buffer_pool_size(self, value)
  self
}

///|
pub fn Desc::image_pool_size(self : Desc) -> Int32 {
  sg_desc_get_image_pool_size(self)
}

///|
pub fn Desc::set_image_pool_size(self : Desc, value : Int32) -> Desc {
  sg_desc_set_image_pool_size(self, value)
  self
}

///|
pub fn Desc::sampler_pool_size(self : Desc) -> Int32 {
  sg_desc_get_sampler_pool_size(self)
}

///|
pub fn Desc::set_sampler_pool_size(self : Desc, value : Int32) -> Desc {
  sg_desc_set_sampler_pool_size(self, value)
  self
}

///|
pub fn Desc::shader_pool_size(self : Desc) -> Int32 {
  sg_desc_get_shader_pool_size(self)
}

///|
pub fn Desc::set_shader_pool_size(self : Desc, value : Int32) -> Desc {
  sg_desc_set_shader_pool_size(self, value)
  self
}

///|
pub fn Desc::pipeline_pool_size(self : Desc) -> Int32 {
  sg_desc_get_pipeline_pool_size(self)
}

///|
pub fn Desc::set_pipeline_pool_size(self : Desc, value : Int32) -> Desc {
  sg_desc_set_pipeline_pool_size(self, value)
  self
}

///|
pub fn Desc::view_pool_size(self : Desc) -> Int32 {
  sg_desc_get_view_pool_size(self)
}

///|
pub fn Desc::set_view_pool_size(self : Desc, value : Int32) -> Desc {
  sg_desc_set_view_pool_size(self, value)
  self
}

///|
pub fn Desc::uniform_buffer_size(self : Desc) -> Int32 {
  sg_desc_get_uniform_buffer_size(self)
}

///|
pub fn Desc::set_uniform_buffer_size(self : Desc, value : Int32) -> Desc {
  sg_desc_set_uniform_buffer_size(self, value)
  self
}

///|
pub fn Desc::max_commit_listeners(self : Desc) -> Int32 {
  sg_desc_get_max_commit_listeners(self)
}

///|
pub fn Desc::set_max_commit_listeners(self : Desc, value : Int32) -> Desc {
  sg_desc_set_max_commit_listeners(self, value)
  self
}

///|
pub fn Desc::disable_validation(self : Desc) -> Bool {
  sg_desc_get_disable_validation(self)
}

///|
pub fn Desc::set_disable_validation(self : Desc, value : Bool) -> Desc {
  sg_desc_set_disable_validation(self, value)
  self
}

///|
pub fn Desc::enforce_portable_limits(self : Desc) -> Bool {
  sg_desc_get_enforce_portable_limits(self)
}

///|
pub fn Desc::set_enforce_portable_limits(self : Desc, value : Bool) -> Desc {
  sg_desc_set_enforce_portable_limits(self, value)
  self
}

///|
pub fn Desc::d3d11(self : Desc) -> D3d11Desc {
  sg_desc_get_d3d11(self)
}

///|
pub fn Desc::set_d3d11(self : Desc, value : D3d11Desc) -> Desc {
  sg_desc_set_d3d11(self, value)
  self
}

///|
pub fn Desc::metal(self : Desc) -> MetalDesc {
  sg_desc_get_metal(self)
}

///|
pub fn Desc::set_metal(self : Desc, value : MetalDesc) -> Desc {
  sg_desc_set_metal(self, value)
  self
}

///|
pub fn Desc::wgpu(self : Desc) -> WgpuDesc {
  sg_desc_get_wgpu(self)
}

///|
pub fn Desc::set_wgpu(self : Desc, value : WgpuDesc) -> Desc {
  sg_desc_set_wgpu(self, value)
  self
}

///|
pub fn Desc::vulkan(self : Desc) -> VulkanDesc {
  sg_desc_get_vulkan(self)
}

///|
pub fn Desc::set_vulkan(self : Desc, value : VulkanDesc) -> Desc {
  sg_desc_set_vulkan(self, value)
  self
}

///|
pub fn Desc::allocator(self : Desc) -> Allocator {
  sg_desc_get_allocator(self)
}

///|
pub fn Desc::set_allocator(self : Desc, value : Allocator) -> Desc {
  sg_desc_set_allocator(self, value)
  self
}

///|
pub fn Desc::logger(self : Desc) -> Logger {
  sg_desc_get_logger(self)
}

///|
pub fn Desc::set_logger(self : Desc, value : Logger) -> Desc {
  sg_desc_set_logger(self, value)
  self
}

///|
pub fn Desc::environment(self : Desc) -> Environment {
  sg_desc_get_environment(self)
}

///|
pub fn Desc::set_environment(self : Desc, value : Environment) -> Desc {
  sg_desc_set_environment(self, value)
  self
}

///|
pub fn setup(desc : Desc) -> Unit {
  sg_setup(desc)
}

///|
pub fn isvalid() -> Bool {
  sg_isvalid()
}

///|
pub fn reset_state_cache() -> Unit {
  sg_reset_state_cache()
}

///|
pub fn push_debug_group(name : String) -> Unit {
  sg_push_debug_group(@native.cstring(name))
}

///|
pub fn pop_debug_group() -> Unit {
  sg_pop_debug_group()
}

///|
pub fn make_buffer(desc : BufferDesc) -> Buffer {
  Buffer(sg_make_buffer(desc))
}

///|
pub fn make_image(desc : ImageDesc) -> Image {
  Image(sg_make_image(desc))
}

///|
pub fn make_sampler(desc : SamplerDesc) -> Sampler {
  Sampler(sg_make_sampler(desc))
}

///|
pub fn make_shader(desc : ShaderDesc) -> Shader {
  Shader(sg_make_shader(desc))
}

///|
pub fn make_pipeline(desc : PipelineDesc) -> Pipeline {
  Pipeline(sg_make_pipeline(desc))
}

///|
pub fn make_view(desc : ViewDesc) -> View {
  View(sg_make_view(desc))
}

///|
pub fn destroy_buffer(buf : Buffer) -> Unit {
  sg_destroy_buffer(buf.0)
}

///|
pub fn destroy_image(img : Image) -> Unit {
  sg_destroy_image(img.0)
}

///|
pub fn destroy_sampler(smp : Sampler) -> Unit {
  sg_destroy_sampler(smp.0)
}

///|
pub fn destroy_shader(shd : Shader) -> Unit {
  sg_destroy_shader(shd.0)
}

///|
pub fn destroy_pipeline(pip : Pipeline) -> Unit {
  sg_destroy_pipeline(pip.0)
}

///|
pub fn destroy_view(view : View) -> Unit {
  sg_destroy_view(view.0)
}

///|
pub fn begin_pass(pass : Pass) -> Unit {
  sg_begin_pass(pass)
}

///|
pub fn apply_viewport(
  x : Int32,
  y : Int32,
  width : Int32,
  height : Int32,
  origin_top_left : Bool,
) -> Unit {
  sg_apply_viewport(x, y, width, height, origin_top_left)
}

///|
pub fn apply_viewportf(
  x : Float,
  y : Float,
  width : Float,
  height : Float,
  origin_top_left : Bool,
) -> Unit {
  sg_apply_viewportf(x, y, width, height, origin_top_left)
}

///|
pub fn apply_scissor_rect(
  x : Int32,
  y : Int32,
  width : Int32,
  height : Int32,
  origin_top_left : Bool,
) -> Unit {
  sg_apply_scissor_rect(x, y, width, height, origin_top_left)
}

///|
pub fn apply_scissor_rectf(
  x : Float,
  y : Float,
  width : Float,
  height : Float,
  origin_top_left : Bool,
) -> Unit {
  sg_apply_scissor_rectf(x, y, width, height, origin_top_left)
}

///|
pub fn apply_pipeline(pip : Pipeline) -> Unit {
  sg_apply_pipeline(pip.0)
}

///|
pub fn apply_bindings(bindings : Bindings) -> Unit {
  sg_apply_bindings(bindings)
}

///|
pub fn apply_uniforms(ub_slot : Int32, data : Range) -> Unit {
  sg_apply_uniforms(ub_slot, data)
}

///|
pub fn draw(
  base_element : Int32,
  num_elements : Int32,
  num_instances : Int32,
) -> Unit {
  sg_draw(base_element, num_elements, num_instances)
}

///|
pub fn draw_ex(
  base_element : Int32,
  num_elements : Int32,
  num_instances : Int32,
  base_vertex : Int32,
  base_instance : Int32,
) -> Unit {
  sg_draw_ex(
    base_element, num_elements, num_instances, base_vertex, base_instance,
  )
}

///|
pub fn dispatch(
  num_groups_x : Int32,
  num_groups_y : Int32,
  num_groups_z : Int32,
) -> Unit {
  sg_dispatch(num_groups_x, num_groups_y, num_groups_z)
}

///|
pub fn end_pass() -> Unit {
  sg_end_pass()
}

///|
pub fn commit() -> Unit {
  sg_commit()
}

///|
pub fn write_buffer_transient(desc : WriteBufferDesc) -> Unit {
  sg_write_buffer_transient(desc)
}

///|
pub fn write_image_transient(desc : WriteImageDesc) -> Unit {
  sg_write_image_transient(desc)
}

///|
pub fn write_buffer_unsealed(desc : WriteBufferDesc) -> Unit {
  sg_write_buffer_unsealed(desc)
}

///|
pub fn write_image_unsealed(desc : WriteImageDesc) -> Unit {
  sg_write_image_unsealed(desc)
}

///|
pub fn seal_buffer(buf : Buffer) -> Unit {
  sg_seal_buffer(buf.0)
}

///|
pub fn seal_image(img : Image) -> Unit {
  sg_seal_image(img.0)
}

///|
pub fn copy_buffer_to_buffer(desc : CopyBufferToBufferDesc) -> Unit {
  sg_copy_buffer_to_buffer(desc)
}

///|
pub fn copy_buffer_to_image(desc : CopyBufferToImageDesc) -> Unit {
  sg_copy_buffer_to_image(desc)
}

///|
pub fn copy_image_to_image(desc : CopyImageToImageDesc) -> Unit {
  sg_copy_image_to_image(desc)
}

///|
pub fn query_desc() -> Desc {
  sg_query_desc()
}

///|
pub fn query_backend() -> Backend {
  sg_query_backend()
}

///|
pub fn query_features() -> Features {
  sg_query_features()
}

///|
pub fn query_limits() -> Limits {
  sg_query_limits()
}

///|
pub fn query_pixelformat(fmt : PixelFormat) -> PixelformatInfo {
  sg_query_pixelformat(fmt)
}

///|
pub fn query_row_pitch(
  fmt : PixelFormat,
  width : Int32,
  row_align_bytes : Int32,
) -> Int32 {
  sg_query_row_pitch(fmt, width, row_align_bytes)
}

///|
pub fn query_surface_pitch(
  fmt : PixelFormat,
  width : Int32,
  height : Int32,
  row_align_bytes : Int32,
) -> Int32 {
  sg_query_surface_pitch(fmt, width, height, row_align_bytes)
}

///|
pub fn query_pass_state() -> PassState {
  sg_query_pass_state()
}

///|
pub fn query_buffer_state(buf : Buffer) -> ResourceState {
  sg_query_buffer_state(buf.0)
}

///|
pub fn query_image_state(img : Image) -> ResourceState {
  sg_query_image_state(img.0)
}

///|
pub fn query_sampler_state(smp : Sampler) -> ResourceState {
  sg_query_sampler_state(smp.0)
}

///|
pub fn query_shader_state(shd : Shader) -> ResourceState {
  sg_query_shader_state(shd.0)
}

///|
pub fn query_pipeline_state(pip : Pipeline) -> ResourceState {
  sg_query_pipeline_state(pip.0)
}

///|
pub fn query_view_state(view : View) -> ResourceState {
  sg_query_view_state(view.0)
}

///|
pub fn query_buffer_info(buf : Buffer) -> BufferInfo {
  sg_query_buffer_info(buf.0)
}

///|
pub fn query_image_info(img : Image) -> ImageInfo {
  sg_query_image_info(img.0)
}

///|
pub fn query_sampler_info(smp : Sampler) -> SamplerInfo {
  sg_query_sampler_info(smp.0)
}

///|
pub fn query_shader_info(shd : Shader) -> ShaderInfo {
  sg_query_shader_info(shd.0)
}

///|
pub fn query_pipeline_info(pip : Pipeline) -> PipelineInfo {
  sg_query_pipeline_info(pip.0)
}

///|
pub fn query_view_info(view : View) -> ViewInfo {
  sg_query_view_info(view.0)
}

///|
pub fn query_buffer_desc(buf : Buffer) -> BufferDesc {
  sg_query_buffer_desc(buf.0)
}

///|
pub fn query_image_desc(img : Image) -> ImageDesc {
  sg_query_image_desc(img.0)
}

///|
pub fn query_sampler_desc(smp : Sampler) -> SamplerDesc {
  sg_query_sampler_desc(smp.0)
}

///|
pub fn query_shader_desc(shd : Shader) -> ShaderDesc {
  sg_query_shader_desc(shd.0)
}

///|
pub fn query_pipeline_desc(pip : Pipeline) -> PipelineDesc {
  sg_query_pipeline_desc(pip.0)
}

///|
pub fn query_view_desc(view : View) -> ViewDesc {
  sg_query_view_desc(view.0)
}

///|
pub fn query_buffer_defaults(desc : BufferDesc) -> BufferDesc {
  sg_query_buffer_defaults(desc)
}

///|
pub fn query_image_defaults(desc : ImageDesc) -> ImageDesc {
  sg_query_image_defaults(desc)
}

///|
pub fn query_sampler_defaults(desc : SamplerDesc) -> SamplerDesc {
  sg_query_sampler_defaults(desc)
}

///|
pub fn query_shader_defaults(desc : ShaderDesc) -> ShaderDesc {
  sg_query_shader_defaults(desc)
}

///|
pub fn query_pipeline_defaults(desc : PipelineDesc) -> PipelineDesc {
  sg_query_pipeline_defaults(desc)
}

///|
pub fn query_view_defaults(desc : ViewDesc) -> ViewDesc {
  sg_query_view_defaults(desc)
}

///|
pub fn query_buffer_size(buf : Buffer) -> UInt64 {
  sg_query_buffer_size(buf.0)
}

///|
pub fn query_buffer_usage(buf : Buffer) -> BufferUsage {
  sg_query_buffer_usage(buf.0)
}

///|
pub fn query_image_type(img : Image) -> ImageType {
  sg_query_image_type(img.0)
}

///|
pub fn query_image_width(img : Image) -> Int32 {
  sg_query_image_width(img.0)
}

///|
pub fn query_image_height(img : Image) -> Int32 {
  sg_query_image_height(img.0)
}

///|
pub fn query_image_num_slices(img : Image) -> Int32 {
  sg_query_image_num_slices(img.0)
}

///|
pub fn query_image_num_mipmaps(img : Image) -> Int32 {
  sg_query_image_num_mipmaps(img.0)
}

///|
pub fn query_image_pixelformat(img : Image) -> PixelFormat {
  sg_query_image_pixelformat(img.0)
}

///|
pub fn query_image_usage(img : Image) -> ImageUsage {
  sg_query_image_usage(img.0)
}

///|
pub fn query_image_sample_count(img : Image) -> Int32 {
  sg_query_image_sample_count(img.0)
}

///|
pub fn query_view_type(view : View) -> ViewType {
  sg_query_view_type(view.0)
}

///|
pub fn query_view_image(view : View) -> Image {
  Image(sg_query_view_image(view.0))
}

///|
pub fn query_view_buffer(view : View) -> Buffer {
  Buffer(sg_query_view_buffer(view.0))
}

///|
pub fn alloc_buffer() -> Buffer {
  Buffer(sg_alloc_buffer())
}

///|
pub fn alloc_image() -> Image {
  Image(sg_alloc_image())
}

///|
pub fn alloc_sampler() -> Sampler {
  Sampler(sg_alloc_sampler())
}

///|
pub fn alloc_shader() -> Shader {
  Shader(sg_alloc_shader())
}

///|
pub fn alloc_pipeline() -> Pipeline {
  Pipeline(sg_alloc_pipeline())
}

///|
pub fn alloc_view() -> View {
  View(sg_alloc_view())
}

///|
pub fn dealloc_buffer(buf : Buffer) -> Unit {
  sg_dealloc_buffer(buf.0)
}

///|
pub fn dealloc_image(img : Image) -> Unit {
  sg_dealloc_image(img.0)
}

///|
pub fn dealloc_sampler(smp : Sampler) -> Unit {
  sg_dealloc_sampler(smp.0)
}

///|
pub fn dealloc_shader(shd : Shader) -> Unit {
  sg_dealloc_shader(shd.0)
}

///|
pub fn dealloc_pipeline(pip : Pipeline) -> Unit {
  sg_dealloc_pipeline(pip.0)
}

///|
pub fn dealloc_view(view : View) -> Unit {
  sg_dealloc_view(view.0)
}

///|
pub fn init_buffer(buf : Buffer, desc : BufferDesc) -> Unit {
  sg_init_buffer(buf.0, desc)
}

///|
pub fn init_image(img : Image, desc : ImageDesc) -> Unit {
  sg_init_image(img.0, desc)
}

///|
pub fn init_sampler(smg : Sampler, desc : SamplerDesc) -> Unit {
  sg_init_sampler(smg.0, desc)
}

///|
pub fn init_shader(shd : Shader, desc : ShaderDesc) -> Unit {
  sg_init_shader(shd.0, desc)
}

///|
pub fn init_pipeline(pip : Pipeline, desc : PipelineDesc) -> Unit {
  sg_init_pipeline(pip.0, desc)
}

///|
pub fn init_view(view : View, desc : ViewDesc) -> Unit {
  sg_init_view(view.0, desc)
}

///|
pub fn uninit_buffer(buf : Buffer) -> Unit {
  sg_uninit_buffer(buf.0)
}

///|
pub fn uninit_image(img : Image) -> Unit {
  sg_uninit_image(img.0)
}

///|
pub fn uninit_sampler(smp : Sampler) -> Unit {
  sg_uninit_sampler(smp.0)
}

///|
pub fn uninit_shader(shd : Shader) -> Unit {
  sg_uninit_shader(shd.0)
}

///|
pub fn uninit_pipeline(pip : Pipeline) -> Unit {
  sg_uninit_pipeline(pip.0)
}

///|
pub fn uninit_view(view : View) -> Unit {
  sg_uninit_view(view.0)
}

///|
pub fn fail_buffer(buf : Buffer) -> Unit {
  sg_fail_buffer(buf.0)
}

///|
pub fn fail_image(img : Image) -> Unit {
  sg_fail_image(img.0)
}

///|
pub fn fail_sampler(smp : Sampler) -> Unit {
  sg_fail_sampler(smp.0)
}

///|
pub fn fail_shader(shd : Shader) -> Unit {
  sg_fail_shader(shd.0)
}

///|
pub fn fail_pipeline(pip : Pipeline) -> Unit {
  sg_fail_pipeline(pip.0)
}

///|
pub fn fail_view(view : View) -> Unit {
  sg_fail_view(view.0)
}

///|
pub fn enable_stats() -> Unit {
  sg_enable_stats()
}

///|
pub fn disable_stats() -> Unit {
  sg_disable_stats()
}

///|
pub fn stats_enabled() -> Bool {
  sg_stats_enabled()
}

///|
pub fn query_stats() -> Stats {
  sg_query_stats()
}

///|
/// Owned C value. copy() creates an independent copy.
pub type D3d11BufferInfo

///|
pub fn D3d11BufferInfo::new() -> D3d11BufferInfo {
  sg_d3d11_buffer_info_new()
}

///|
pub fn D3d11BufferInfo::copy(self : D3d11BufferInfo) -> D3d11BufferInfo {
  sg_d3d11_buffer_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn D3d11BufferInfo::unsafe_native_handle(
  self : D3d11BufferInfo,
) -> @native.Handle {
  sg_d3d11_buffer_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn D3d11BufferInfo::unsafe_from_native(
  ptr : @native.Handle,
) -> D3d11BufferInfo {
  sg_d3d11_buffer_info_from_native(ptr)
}

///|
pub fn D3d11BufferInfo::buf(self : D3d11BufferInfo) -> @native.Handle {
  sg_d3d11_buffer_info_get_buf(self)
}

///|
pub fn D3d11BufferInfo::set_buf(
  self : D3d11BufferInfo,
  value : @native.Handle,
) -> D3d11BufferInfo {
  sg_d3d11_buffer_info_set_buf(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type D3d11ImageInfo

///|
pub fn D3d11ImageInfo::new() -> D3d11ImageInfo {
  sg_d3d11_image_info_new()
}

///|
pub fn D3d11ImageInfo::copy(self : D3d11ImageInfo) -> D3d11ImageInfo {
  sg_d3d11_image_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn D3d11ImageInfo::unsafe_native_handle(
  self : D3d11ImageInfo,
) -> @native.Handle {
  sg_d3d11_image_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn D3d11ImageInfo::unsafe_from_native(
  ptr : @native.Handle,
) -> D3d11ImageInfo {
  sg_d3d11_image_info_from_native(ptr)
}

///|
pub fn D3d11ImageInfo::tex2d(self : D3d11ImageInfo) -> @native.Handle {
  sg_d3d11_image_info_get_tex2d(self)
}

///|
pub fn D3d11ImageInfo::set_tex2d(
  self : D3d11ImageInfo,
  value : @native.Handle,
) -> D3d11ImageInfo {
  sg_d3d11_image_info_set_tex2d(self, value)
  self
}

///|
pub fn D3d11ImageInfo::tex3d(self : D3d11ImageInfo) -> @native.Handle {
  sg_d3d11_image_info_get_tex3d(self)
}

///|
pub fn D3d11ImageInfo::set_tex3d(
  self : D3d11ImageInfo,
  value : @native.Handle,
) -> D3d11ImageInfo {
  sg_d3d11_image_info_set_tex3d(self, value)
  self
}

///|
pub fn D3d11ImageInfo::res(self : D3d11ImageInfo) -> @native.Handle {
  sg_d3d11_image_info_get_res(self)
}

///|
pub fn D3d11ImageInfo::set_res(
  self : D3d11ImageInfo,
  value : @native.Handle,
) -> D3d11ImageInfo {
  sg_d3d11_image_info_set_res(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type D3d11SamplerInfo

///|
pub fn D3d11SamplerInfo::new() -> D3d11SamplerInfo {
  sg_d3d11_sampler_info_new()
}

///|
pub fn D3d11SamplerInfo::copy(self : D3d11SamplerInfo) -> D3d11SamplerInfo {
  sg_d3d11_sampler_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn D3d11SamplerInfo::unsafe_native_handle(
  self : D3d11SamplerInfo,
) -> @native.Handle {
  sg_d3d11_sampler_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn D3d11SamplerInfo::unsafe_from_native(
  ptr : @native.Handle,
) -> D3d11SamplerInfo {
  sg_d3d11_sampler_info_from_native(ptr)
}

///|
pub fn D3d11SamplerInfo::smp(self : D3d11SamplerInfo) -> @native.Handle {
  sg_d3d11_sampler_info_get_smp(self)
}

///|
pub fn D3d11SamplerInfo::set_smp(
  self : D3d11SamplerInfo,
  value : @native.Handle,
) -> D3d11SamplerInfo {
  sg_d3d11_sampler_info_set_smp(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type D3d11ShaderInfo

///|
pub fn D3d11ShaderInfo::new() -> D3d11ShaderInfo {
  sg_d3d11_shader_info_new()
}

///|
pub fn D3d11ShaderInfo::copy(self : D3d11ShaderInfo) -> D3d11ShaderInfo {
  sg_d3d11_shader_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn D3d11ShaderInfo::unsafe_native_handle(
  self : D3d11ShaderInfo,
) -> @native.Handle {
  sg_d3d11_shader_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn D3d11ShaderInfo::unsafe_from_native(
  ptr : @native.Handle,
) -> D3d11ShaderInfo {
  sg_d3d11_shader_info_from_native(ptr)
}

///|
pub fn D3d11ShaderInfo::cbufs(
  self : D3d11ShaderInfo,
  i0 : Int32,
) -> @native.Handle {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sg_d3d11_shader_info_get_cbufs(self, i0)
}

///|
pub fn D3d11ShaderInfo::set_cbufs(
  self : D3d11ShaderInfo,
  i0 : Int32,
  value : @native.Handle,
) -> D3d11ShaderInfo {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sg_d3d11_shader_info_set_cbufs(self, i0, value)
  self
}

///|
pub fn D3d11ShaderInfo::vs(self : D3d11ShaderInfo) -> @native.Handle {
  sg_d3d11_shader_info_get_vs(self)
}

///|
pub fn D3d11ShaderInfo::set_vs(
  self : D3d11ShaderInfo,
  value : @native.Handle,
) -> D3d11ShaderInfo {
  sg_d3d11_shader_info_set_vs(self, value)
  self
}

///|
pub fn D3d11ShaderInfo::fs(self : D3d11ShaderInfo) -> @native.Handle {
  sg_d3d11_shader_info_get_fs(self)
}

///|
pub fn D3d11ShaderInfo::set_fs(
  self : D3d11ShaderInfo,
  value : @native.Handle,
) -> D3d11ShaderInfo {
  sg_d3d11_shader_info_set_fs(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type D3d11PipelineInfo

///|
pub fn D3d11PipelineInfo::new() -> D3d11PipelineInfo {
  sg_d3d11_pipeline_info_new()
}

///|
pub fn D3d11PipelineInfo::copy(self : D3d11PipelineInfo) -> D3d11PipelineInfo {
  sg_d3d11_pipeline_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn D3d11PipelineInfo::unsafe_native_handle(
  self : D3d11PipelineInfo,
) -> @native.Handle {
  sg_d3d11_pipeline_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn D3d11PipelineInfo::unsafe_from_native(
  ptr : @native.Handle,
) -> D3d11PipelineInfo {
  sg_d3d11_pipeline_info_from_native(ptr)
}

///|
pub fn D3d11PipelineInfo::il(self : D3d11PipelineInfo) -> @native.Handle {
  sg_d3d11_pipeline_info_get_il(self)
}

///|
pub fn D3d11PipelineInfo::set_il(
  self : D3d11PipelineInfo,
  value : @native.Handle,
) -> D3d11PipelineInfo {
  sg_d3d11_pipeline_info_set_il(self, value)
  self
}

///|
pub fn D3d11PipelineInfo::rs(self : D3d11PipelineInfo) -> @native.Handle {
  sg_d3d11_pipeline_info_get_rs(self)
}

///|
pub fn D3d11PipelineInfo::set_rs(
  self : D3d11PipelineInfo,
  value : @native.Handle,
) -> D3d11PipelineInfo {
  sg_d3d11_pipeline_info_set_rs(self, value)
  self
}

///|
pub fn D3d11PipelineInfo::dss(self : D3d11PipelineInfo) -> @native.Handle {
  sg_d3d11_pipeline_info_get_dss(self)
}

///|
pub fn D3d11PipelineInfo::set_dss(
  self : D3d11PipelineInfo,
  value : @native.Handle,
) -> D3d11PipelineInfo {
  sg_d3d11_pipeline_info_set_dss(self, value)
  self
}

///|
pub fn D3d11PipelineInfo::bs(self : D3d11PipelineInfo) -> @native.Handle {
  sg_d3d11_pipeline_info_get_bs(self)
}

///|
pub fn D3d11PipelineInfo::set_bs(
  self : D3d11PipelineInfo,
  value : @native.Handle,
) -> D3d11PipelineInfo {
  sg_d3d11_pipeline_info_set_bs(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type D3d11ViewInfo

///|
pub fn D3d11ViewInfo::new() -> D3d11ViewInfo {
  sg_d3d11_view_info_new()
}

///|
pub fn D3d11ViewInfo::copy(self : D3d11ViewInfo) -> D3d11ViewInfo {
  sg_d3d11_view_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn D3d11ViewInfo::unsafe_native_handle(
  self : D3d11ViewInfo,
) -> @native.Handle {
  sg_d3d11_view_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn D3d11ViewInfo::unsafe_from_native(ptr : @native.Handle) -> D3d11ViewInfo {
  sg_d3d11_view_info_from_native(ptr)
}

///|
pub fn D3d11ViewInfo::srv(self : D3d11ViewInfo) -> @native.Handle {
  sg_d3d11_view_info_get_srv(self)
}

///|
pub fn D3d11ViewInfo::set_srv(
  self : D3d11ViewInfo,
  value : @native.Handle,
) -> D3d11ViewInfo {
  sg_d3d11_view_info_set_srv(self, value)
  self
}

///|
pub fn D3d11ViewInfo::uav(self : D3d11ViewInfo) -> @native.Handle {
  sg_d3d11_view_info_get_uav(self)
}

///|
pub fn D3d11ViewInfo::set_uav(
  self : D3d11ViewInfo,
  value : @native.Handle,
) -> D3d11ViewInfo {
  sg_d3d11_view_info_set_uav(self, value)
  self
}

///|
pub fn D3d11ViewInfo::rtv(self : D3d11ViewInfo) -> @native.Handle {
  sg_d3d11_view_info_get_rtv(self)
}

///|
pub fn D3d11ViewInfo::set_rtv(
  self : D3d11ViewInfo,
  value : @native.Handle,
) -> D3d11ViewInfo {
  sg_d3d11_view_info_set_rtv(self, value)
  self
}

///|
pub fn D3d11ViewInfo::dsv(self : D3d11ViewInfo) -> @native.Handle {
  sg_d3d11_view_info_get_dsv(self)
}

///|
pub fn D3d11ViewInfo::set_dsv(
  self : D3d11ViewInfo,
  value : @native.Handle,
) -> D3d11ViewInfo {
  sg_d3d11_view_info_set_dsv(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type MtlBufferInfo

///|
pub fn MtlBufferInfo::new() -> MtlBufferInfo {
  sg_mtl_buffer_info_new()
}

///|
pub fn MtlBufferInfo::copy(self : MtlBufferInfo) -> MtlBufferInfo {
  sg_mtl_buffer_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn MtlBufferInfo::unsafe_native_handle(
  self : MtlBufferInfo,
) -> @native.Handle {
  sg_mtl_buffer_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn MtlBufferInfo::unsafe_from_native(ptr : @native.Handle) -> MtlBufferInfo {
  sg_mtl_buffer_info_from_native(ptr)
}

///|
pub fn MtlBufferInfo::buf(self : MtlBufferInfo, i0 : Int32) -> @native.Handle {
  guard i0 >= 0 && i0 < 2 else { abort("descriptor array index out of bounds") }
  sg_mtl_buffer_info_get_buf(self, i0)
}

///|
pub fn MtlBufferInfo::set_buf(
  self : MtlBufferInfo,
  i0 : Int32,
  value : @native.Handle,
) -> MtlBufferInfo {
  guard i0 >= 0 && i0 < 2 else { abort("descriptor array index out of bounds") }
  sg_mtl_buffer_info_set_buf(self, i0, value)
  self
}

///|
pub fn MtlBufferInfo::active_slot(self : MtlBufferInfo) -> Int32 {
  sg_mtl_buffer_info_get_active_slot(self)
}

///|
pub fn MtlBufferInfo::set_active_slot(
  self : MtlBufferInfo,
  value : Int32,
) -> MtlBufferInfo {
  sg_mtl_buffer_info_set_active_slot(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type MtlImageInfo

///|
pub fn MtlImageInfo::new() -> MtlImageInfo {
  sg_mtl_image_info_new()
}

///|
pub fn MtlImageInfo::copy(self : MtlImageInfo) -> MtlImageInfo {
  sg_mtl_image_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn MtlImageInfo::unsafe_native_handle(
  self : MtlImageInfo,
) -> @native.Handle {
  sg_mtl_image_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn MtlImageInfo::unsafe_from_native(ptr : @native.Handle) -> MtlImageInfo {
  sg_mtl_image_info_from_native(ptr)
}

///|
pub fn MtlImageInfo::tex(self : MtlImageInfo, i0 : Int32) -> @native.Handle {
  guard i0 >= 0 && i0 < 2 else { abort("descriptor array index out of bounds") }
  sg_mtl_image_info_get_tex(self, i0)
}

///|
pub fn MtlImageInfo::set_tex(
  self : MtlImageInfo,
  i0 : Int32,
  value : @native.Handle,
) -> MtlImageInfo {
  guard i0 >= 0 && i0 < 2 else { abort("descriptor array index out of bounds") }
  sg_mtl_image_info_set_tex(self, i0, value)
  self
}

///|
pub fn MtlImageInfo::active_slot(self : MtlImageInfo) -> Int32 {
  sg_mtl_image_info_get_active_slot(self)
}

///|
pub fn MtlImageInfo::set_active_slot(
  self : MtlImageInfo,
  value : Int32,
) -> MtlImageInfo {
  sg_mtl_image_info_set_active_slot(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type MtlSamplerInfo

///|
pub fn MtlSamplerInfo::new() -> MtlSamplerInfo {
  sg_mtl_sampler_info_new()
}

///|
pub fn MtlSamplerInfo::copy(self : MtlSamplerInfo) -> MtlSamplerInfo {
  sg_mtl_sampler_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn MtlSamplerInfo::unsafe_native_handle(
  self : MtlSamplerInfo,
) -> @native.Handle {
  sg_mtl_sampler_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn MtlSamplerInfo::unsafe_from_native(
  ptr : @native.Handle,
) -> MtlSamplerInfo {
  sg_mtl_sampler_info_from_native(ptr)
}

///|
pub fn MtlSamplerInfo::smp(self : MtlSamplerInfo) -> @native.Handle {
  sg_mtl_sampler_info_get_smp(self)
}

///|
pub fn MtlSamplerInfo::set_smp(
  self : MtlSamplerInfo,
  value : @native.Handle,
) -> MtlSamplerInfo {
  sg_mtl_sampler_info_set_smp(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type MtlShaderInfo

///|
pub fn MtlShaderInfo::new() -> MtlShaderInfo {
  sg_mtl_shader_info_new()
}

///|
pub fn MtlShaderInfo::copy(self : MtlShaderInfo) -> MtlShaderInfo {
  sg_mtl_shader_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn MtlShaderInfo::unsafe_native_handle(
  self : MtlShaderInfo,
) -> @native.Handle {
  sg_mtl_shader_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn MtlShaderInfo::unsafe_from_native(ptr : @native.Handle) -> MtlShaderInfo {
  sg_mtl_shader_info_from_native(ptr)
}

///|
pub fn MtlShaderInfo::vertex_lib(self : MtlShaderInfo) -> @native.Handle {
  sg_mtl_shader_info_get_vertex_lib(self)
}

///|
pub fn MtlShaderInfo::set_vertex_lib(
  self : MtlShaderInfo,
  value : @native.Handle,
) -> MtlShaderInfo {
  sg_mtl_shader_info_set_vertex_lib(self, value)
  self
}

///|
pub fn MtlShaderInfo::fragment_lib(self : MtlShaderInfo) -> @native.Handle {
  sg_mtl_shader_info_get_fragment_lib(self)
}

///|
pub fn MtlShaderInfo::set_fragment_lib(
  self : MtlShaderInfo,
  value : @native.Handle,
) -> MtlShaderInfo {
  sg_mtl_shader_info_set_fragment_lib(self, value)
  self
}

///|
pub fn MtlShaderInfo::vertex_func(self : MtlShaderInfo) -> @native.Handle {
  sg_mtl_shader_info_get_vertex_func(self)
}

///|
pub fn MtlShaderInfo::set_vertex_func(
  self : MtlShaderInfo,
  value : @native.Handle,
) -> MtlShaderInfo {
  sg_mtl_shader_info_set_vertex_func(self, value)
  self
}

///|
pub fn MtlShaderInfo::fragment_func(self : MtlShaderInfo) -> @native.Handle {
  sg_mtl_shader_info_get_fragment_func(self)
}

///|
pub fn MtlShaderInfo::set_fragment_func(
  self : MtlShaderInfo,
  value : @native.Handle,
) -> MtlShaderInfo {
  sg_mtl_shader_info_set_fragment_func(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type MtlPipelineInfo

///|
pub fn MtlPipelineInfo::new() -> MtlPipelineInfo {
  sg_mtl_pipeline_info_new()
}

///|
pub fn MtlPipelineInfo::copy(self : MtlPipelineInfo) -> MtlPipelineInfo {
  sg_mtl_pipeline_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn MtlPipelineInfo::unsafe_native_handle(
  self : MtlPipelineInfo,
) -> @native.Handle {
  sg_mtl_pipeline_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn MtlPipelineInfo::unsafe_from_native(
  ptr : @native.Handle,
) -> MtlPipelineInfo {
  sg_mtl_pipeline_info_from_native(ptr)
}

///|
pub fn MtlPipelineInfo::rps(self : MtlPipelineInfo) -> @native.Handle {
  sg_mtl_pipeline_info_get_rps(self)
}

///|
pub fn MtlPipelineInfo::set_rps(
  self : MtlPipelineInfo,
  value : @native.Handle,
) -> MtlPipelineInfo {
  sg_mtl_pipeline_info_set_rps(self, value)
  self
}

///|
pub fn MtlPipelineInfo::dss(self : MtlPipelineInfo) -> @native.Handle {
  sg_mtl_pipeline_info_get_dss(self)
}

///|
pub fn MtlPipelineInfo::set_dss(
  self : MtlPipelineInfo,
  value : @native.Handle,
) -> MtlPipelineInfo {
  sg_mtl_pipeline_info_set_dss(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type WgpuBufferInfo

///|
pub fn WgpuBufferInfo::new() -> WgpuBufferInfo {
  sg_wgpu_buffer_info_new()
}

///|
pub fn WgpuBufferInfo::copy(self : WgpuBufferInfo) -> WgpuBufferInfo {
  sg_wgpu_buffer_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WgpuBufferInfo::unsafe_native_handle(
  self : WgpuBufferInfo,
) -> @native.Handle {
  sg_wgpu_buffer_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WgpuBufferInfo::unsafe_from_native(
  ptr : @native.Handle,
) -> WgpuBufferInfo {
  sg_wgpu_buffer_info_from_native(ptr)
}

///|
pub fn WgpuBufferInfo::buf(self : WgpuBufferInfo) -> @native.Handle {
  sg_wgpu_buffer_info_get_buf(self)
}

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
pub fn WgpuImageInfo::new() -> WgpuImageInfo {
  sg_wgpu_image_info_new()
}

///|
pub fn WgpuImageInfo::copy(self : WgpuImageInfo) -> WgpuImageInfo {
  sg_wgpu_image_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WgpuImageInfo::unsafe_native_handle(
  self : WgpuImageInfo,
) -> @native.Handle {
  sg_wgpu_image_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WgpuImageInfo::unsafe_from_native(ptr : @native.Handle) -> WgpuImageInfo {
  sg_wgpu_image_info_from_native(ptr)
}

///|
pub fn WgpuImageInfo::tex(self : WgpuImageInfo) -> @native.Handle {
  sg_wgpu_image_info_get_tex(self)
}

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
pub fn WgpuSamplerInfo::new() -> WgpuSamplerInfo {
  sg_wgpu_sampler_info_new()
}

///|
pub fn WgpuSamplerInfo::copy(self : WgpuSamplerInfo) -> WgpuSamplerInfo {
  sg_wgpu_sampler_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WgpuSamplerInfo::unsafe_native_handle(
  self : WgpuSamplerInfo,
) -> @native.Handle {
  sg_wgpu_sampler_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WgpuSamplerInfo::unsafe_from_native(
  ptr : @native.Handle,
) -> WgpuSamplerInfo {
  sg_wgpu_sampler_info_from_native(ptr)
}

///|
pub fn WgpuSamplerInfo::smp(self : WgpuSamplerInfo) -> @native.Handle {
  sg_wgpu_sampler_info_get_smp(self)
}

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
pub fn WgpuShaderInfo::new() -> WgpuShaderInfo {
  sg_wgpu_shader_info_new()
}

///|
pub fn WgpuShaderInfo::copy(self : WgpuShaderInfo) -> WgpuShaderInfo {
  sg_wgpu_shader_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WgpuShaderInfo::unsafe_native_handle(
  self : WgpuShaderInfo,
) -> @native.Handle {
  sg_wgpu_shader_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WgpuShaderInfo::unsafe_from_native(
  ptr : @native.Handle,
) -> WgpuShaderInfo {
  sg_wgpu_shader_info_from_native(ptr)
}

///|
pub fn WgpuShaderInfo::vs_mod(self : WgpuShaderInfo) -> @native.Handle {
  sg_wgpu_shader_info_get_vs_mod(self)
}

///|
pub fn WgpuShaderInfo::set_vs_mod(
  self : WgpuShaderInfo,
  value : @native.Handle,
) -> WgpuShaderInfo {
  sg_wgpu_shader_info_set_vs_mod(self, value)
  self
}

///|
pub fn WgpuShaderInfo::fs_mod(self : WgpuShaderInfo) -> @native.Handle {
  sg_wgpu_shader_info_get_fs_mod(self)
}

///|
pub fn WgpuShaderInfo::set_fs_mod(
  self : WgpuShaderInfo,
  value : @native.Handle,
) -> WgpuShaderInfo {
  sg_wgpu_shader_info_set_fs_mod(self, value)
  self
}

///|
pub fn WgpuShaderInfo::bgl(self : WgpuShaderInfo) -> @native.Handle {
  sg_wgpu_shader_info_get_bgl(self)
}

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
pub fn WgpuPipelineInfo::new() -> WgpuPipelineInfo {
  sg_wgpu_pipeline_info_new()
}

///|
pub fn WgpuPipelineInfo::copy(self : WgpuPipelineInfo) -> WgpuPipelineInfo {
  sg_wgpu_pipeline_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WgpuPipelineInfo::unsafe_native_handle(
  self : WgpuPipelineInfo,
) -> @native.Handle {
  sg_wgpu_pipeline_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WgpuPipelineInfo::unsafe_from_native(
  ptr : @native.Handle,
) -> WgpuPipelineInfo {
  sg_wgpu_pipeline_info_from_native(ptr)
}

///|
pub fn WgpuPipelineInfo::render_pipeline(
  self : WgpuPipelineInfo,
) -> @native.Handle {
  sg_wgpu_pipeline_info_get_render_pipeline(self)
}

///|
pub fn WgpuPipelineInfo::set_render_pipeline(
  self : WgpuPipelineInfo,
  value : @native.Handle,
) -> WgpuPipelineInfo {
  sg_wgpu_pipeline_info_set_render_pipeline(self, value)
  self
}

///|
pub fn WgpuPipelineInfo::compute_pipeline(
  self : WgpuPipelineInfo,
) -> @native.Handle {
  sg_wgpu_pipeline_info_get_compute_pipeline(self)
}

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
pub fn WgpuViewInfo::new() -> WgpuViewInfo {
  sg_wgpu_view_info_new()
}

///|
pub fn WgpuViewInfo::copy(self : WgpuViewInfo) -> WgpuViewInfo {
  sg_wgpu_view_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn WgpuViewInfo::unsafe_native_handle(
  self : WgpuViewInfo,
) -> @native.Handle {
  sg_wgpu_view_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn WgpuViewInfo::unsafe_from_native(ptr : @native.Handle) -> WgpuViewInfo {
  sg_wgpu_view_info_from_native(ptr)
}

///|
pub fn WgpuViewInfo::view(self : WgpuViewInfo) -> @native.Handle {
  sg_wgpu_view_info_get_view(self)
}

///|
pub fn WgpuViewInfo::set_view(
  self : WgpuViewInfo,
  value : @native.Handle,
) -> WgpuViewInfo {
  sg_wgpu_view_info_set_view(self, value)
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type GlBufferInfo

///|
pub fn GlBufferInfo::new() -> GlBufferInfo {
  sg_gl_buffer_info_new()
}

///|
pub fn GlBufferInfo::copy(self : GlBufferInfo) -> GlBufferInfo {
  sg_gl_buffer_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn GlBufferInfo::unsafe_native_handle(
  self : GlBufferInfo,
) -> @native.Handle {
  sg_gl_buffer_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn GlBufferInfo::unsafe_from_native(ptr : @native.Handle) -> GlBufferInfo {
  sg_gl_buffer_info_from_native(ptr)
}

///|
pub fn GlBufferInfo::buf(self : GlBufferInfo, i0 : Int32) -> UInt32 {
  guard i0 >= 0 && i0 < 2 else { abort("descriptor array index out of bounds") }
  sg_gl_buffer_info_get_buf(self, i0)
}

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
pub fn GlBufferInfo::active_slot(self : GlBufferInfo) -> Int32 {
  sg_gl_buffer_info_get_active_slot(self)
}

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
pub fn GlImageInfo::new() -> GlImageInfo {
  sg_gl_image_info_new()
}

///|
pub fn GlImageInfo::copy(self : GlImageInfo) -> GlImageInfo {
  sg_gl_image_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn GlImageInfo::unsafe_native_handle(self : GlImageInfo) -> @native.Handle {
  sg_gl_image_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn GlImageInfo::unsafe_from_native(ptr : @native.Handle) -> GlImageInfo {
  sg_gl_image_info_from_native(ptr)
}

///|
pub fn GlImageInfo::tex(self : GlImageInfo, i0 : Int32) -> UInt32 {
  guard i0 >= 0 && i0 < 2 else { abort("descriptor array index out of bounds") }
  sg_gl_image_info_get_tex(self, i0)
}

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
pub fn GlImageInfo::tex_target(self : GlImageInfo) -> UInt32 {
  sg_gl_image_info_get_tex_target(self)
}

///|
pub fn GlImageInfo::set_tex_target(
  self : GlImageInfo,
  value : UInt32,
) -> GlImageInfo {
  sg_gl_image_info_set_tex_target(self, value)
  self
}

///|
pub fn GlImageInfo::active_slot(self : GlImageInfo) -> Int32 {
  sg_gl_image_info_get_active_slot(self)
}

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
pub fn GlSamplerInfo::new() -> GlSamplerInfo {
  sg_gl_sampler_info_new()
}

///|
pub fn GlSamplerInfo::copy(self : GlSamplerInfo) -> GlSamplerInfo {
  sg_gl_sampler_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn GlSamplerInfo::unsafe_native_handle(
  self : GlSamplerInfo,
) -> @native.Handle {
  sg_gl_sampler_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn GlSamplerInfo::unsafe_from_native(ptr : @native.Handle) -> GlSamplerInfo {
  sg_gl_sampler_info_from_native(ptr)
}

///|
pub fn GlSamplerInfo::smp(self : GlSamplerInfo) -> UInt32 {
  sg_gl_sampler_info_get_smp(self)
}

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
pub fn GlShaderInfo::new() -> GlShaderInfo {
  sg_gl_shader_info_new()
}

///|
pub fn GlShaderInfo::copy(self : GlShaderInfo) -> GlShaderInfo {
  sg_gl_shader_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn GlShaderInfo::unsafe_native_handle(
  self : GlShaderInfo,
) -> @native.Handle {
  sg_gl_shader_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn GlShaderInfo::unsafe_from_native(ptr : @native.Handle) -> GlShaderInfo {
  sg_gl_shader_info_from_native(ptr)
}

///|
pub fn GlShaderInfo::prog(self : GlShaderInfo) -> UInt32 {
  sg_gl_shader_info_get_prog(self)
}

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
pub fn GlViewInfo::new() -> GlViewInfo {
  sg_gl_view_info_new()
}

///|
pub fn GlViewInfo::copy(self : GlViewInfo) -> GlViewInfo {
  sg_gl_view_info_copy(self)
}

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn GlViewInfo::unsafe_native_handle(self : GlViewInfo) -> @native.Handle {
  sg_gl_view_info_native(self)
}

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn GlViewInfo::unsafe_from_native(ptr : @native.Handle) -> GlViewInfo {
  sg_gl_view_info_from_native(ptr)
}

///|
pub fn GlViewInfo::tex_view(self : GlViewInfo, i0 : Int32) -> UInt32 {
  guard i0 >= 0 && i0 < 2 else { abort("descriptor array index out of bounds") }
  sg_gl_view_info_get_tex_view(self, i0)
}

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
pub fn GlViewInfo::msaa_render_buffer(self : GlViewInfo) -> UInt32 {
  sg_gl_view_info_get_msaa_render_buffer(self)
}

///|
pub fn GlViewInfo::set_msaa_render_buffer(
  self : GlViewInfo,
  value : UInt32,
) -> GlViewInfo {
  sg_gl_view_info_set_msaa_render_buffer(self, value)
  self
}

///|
pub fn GlViewInfo::msaa_resolve_frame_buffer(self : GlViewInfo) -> UInt32 {
  sg_gl_view_info_get_msaa_resolve_frame_buffer(self)
}

///|
pub fn GlViewInfo::set_msaa_resolve_frame_buffer(
  self : GlViewInfo,
  value : UInt32,
) -> GlViewInfo {
  sg_gl_view_info_set_msaa_resolve_frame_buffer(self, value)
  self
}

///|
pub fn d3d11_device() -> @native.Handle {
  sg_d3d11_device()
}

///|
pub fn d3d11_device_context() -> @native.Handle {
  sg_d3d11_device_context()
}

///|
pub fn d3d11_query_buffer_info(buf : Buffer) -> D3d11BufferInfo {
  sg_d3d11_query_buffer_info(buf.0)
}

///|
pub fn d3d11_query_image_info(img : Image) -> D3d11ImageInfo {
  sg_d3d11_query_image_info(img.0)
}

///|
pub fn d3d11_query_sampler_info(smp : Sampler) -> D3d11SamplerInfo {
  sg_d3d11_query_sampler_info(smp.0)
}

///|
pub fn d3d11_query_shader_info(shd : Shader) -> D3d11ShaderInfo {
  sg_d3d11_query_shader_info(shd.0)
}

///|
pub fn d3d11_query_pipeline_info(pip : Pipeline) -> D3d11PipelineInfo {
  sg_d3d11_query_pipeline_info(pip.0)
}

///|
pub fn d3d11_query_view_info(view : View) -> D3d11ViewInfo {
  sg_d3d11_query_view_info(view.0)
}

///|
pub fn mtl_device() -> @native.Handle {
  sg_mtl_device()
}

///|
pub fn mtl_render_command_encoder() -> @native.Handle {
  sg_mtl_render_command_encoder()
}

///|
pub fn mtl_compute_command_encoder() -> @native.Handle {
  sg_mtl_compute_command_encoder()
}

///|
pub fn mtl_command_queue() -> @native.Handle {
  sg_mtl_command_queue()
}

///|
pub fn mtl_query_buffer_info(buf : Buffer) -> MtlBufferInfo {
  sg_mtl_query_buffer_info(buf.0)
}

///|
pub fn mtl_query_image_info(img : Image) -> MtlImageInfo {
  sg_mtl_query_image_info(img.0)
}

///|
pub fn mtl_query_sampler_info(smp : Sampler) -> MtlSamplerInfo {
  sg_mtl_query_sampler_info(smp.0)
}

///|
pub fn mtl_query_shader_info(shd : Shader) -> MtlShaderInfo {
  sg_mtl_query_shader_info(shd.0)
}

///|
pub fn mtl_query_pipeline_info(pip : Pipeline) -> MtlPipelineInfo {
  sg_mtl_query_pipeline_info(pip.0)
}

///|
pub fn wgpu_device() -> @native.Handle {
  sg_wgpu_device()
}

///|
pub fn wgpu_queue() -> @native.Handle {
  sg_wgpu_queue()
}

///|
pub fn wgpu_command_encoder() -> @native.Handle {
  sg_wgpu_command_encoder()
}

///|
pub fn wgpu_render_pass_encoder() -> @native.Handle {
  sg_wgpu_render_pass_encoder()
}

///|
pub fn wgpu_compute_pass_encoder() -> @native.Handle {
  sg_wgpu_compute_pass_encoder()
}

///|
pub fn wgpu_query_buffer_info(buf : Buffer) -> WgpuBufferInfo {
  sg_wgpu_query_buffer_info(buf.0)
}

///|
pub fn wgpu_query_image_info(img : Image) -> WgpuImageInfo {
  sg_wgpu_query_image_info(img.0)
}

///|
pub fn wgpu_query_sampler_info(smp : Sampler) -> WgpuSamplerInfo {
  sg_wgpu_query_sampler_info(smp.0)
}

///|
pub fn wgpu_query_shader_info(shd : Shader) -> WgpuShaderInfo {
  sg_wgpu_query_shader_info(shd.0)
}

///|
pub fn wgpu_query_pipeline_info(pip : Pipeline) -> WgpuPipelineInfo {
  sg_wgpu_query_pipeline_info(pip.0)
}

///|
pub fn wgpu_query_view_info(view : View) -> WgpuViewInfo {
  sg_wgpu_query_view_info(view.0)
}

///|
pub fn gl_query_buffer_info(buf : Buffer) -> GlBufferInfo {
  sg_gl_query_buffer_info(buf.0)
}

///|
pub fn gl_query_image_info(img : Image) -> GlImageInfo {
  sg_gl_query_image_info(img.0)
}

///|
pub fn gl_query_sampler_info(smp : Sampler) -> GlSamplerInfo {
  sg_gl_query_sampler_info(smp.0)
}

///|
pub fn gl_query_shader_info(shd : Shader) -> GlShaderInfo {
  sg_gl_query_shader_info(shd.0)
}

///|
pub fn gl_query_view_info(view : View) -> GlViewInfo {
  sg_gl_query_view_info(view.0)
}

///|
pub fn Logger::default() -> Logger {
  sg_logger_default()
}
