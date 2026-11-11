///|
/// Owned C value. copy() creates an independent copy.
pub type PixelformatInfo

///|
extern "c" fn sg_pixelformat_info_new() -> PixelformatInfo = "mb_gfx_sg_pixelformat_info_new"

///|
pub fn PixelformatInfo::new() -> PixelformatInfo {
  sg_pixelformat_info_new()
}

///|
#borrow(object_)
extern "c" fn sg_pixelformat_info_copy(
  object_ : PixelformatInfo,
) -> PixelformatInfo = "mb_gfx_sg_pixelformat_info_copy"

///|
pub fn PixelformatInfo::copy(self : PixelformatInfo) -> PixelformatInfo {
  sg_pixelformat_info_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_pixelformat_info_native(
  object_ : PixelformatInfo,
) -> @native.Handle = "mb_gfx_sg_pixelformat_info_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn PixelformatInfo::unsafe_native_handle(
  self : PixelformatInfo,
) -> @native.Handle {
  sg_pixelformat_info_native(self)
}

///|
extern "c" fn sg_pixelformat_info_from_native(
  ptr : @native.Handle,
) -> PixelformatInfo = "mb_gfx_sg_pixelformat_info_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn PixelformatInfo::unsafe_from_native(
  ptr : @native.Handle,
) -> PixelformatInfo {
  sg_pixelformat_info_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_pixelformat_info_get_sample(object_ : PixelformatInfo) -> Bool = "mb_gfx_sg_pixelformat_info_get_sample"

///|
pub fn PixelformatInfo::sample(self : PixelformatInfo) -> Bool {
  sg_pixelformat_info_get_sample(self)
}

///|
#borrow(object_)
extern "c" fn sg_pixelformat_info_set_sample(
  object_ : PixelformatInfo,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_pixelformat_info_set_sample"

///|
pub fn PixelformatInfo::set_sample(
  self : PixelformatInfo,
  value : Bool,
) -> PixelformatInfo {
  sg_pixelformat_info_set_sample(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_pixelformat_info_get_filter(object_ : PixelformatInfo) -> Bool = "mb_gfx_sg_pixelformat_info_get_filter"

///|
pub fn PixelformatInfo::filter(self : PixelformatInfo) -> Bool {
  sg_pixelformat_info_get_filter(self)
}

///|
#borrow(object_)
extern "c" fn sg_pixelformat_info_set_filter(
  object_ : PixelformatInfo,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_pixelformat_info_set_filter"

///|
pub fn PixelformatInfo::set_filter(
  self : PixelformatInfo,
  value : Bool,
) -> PixelformatInfo {
  sg_pixelformat_info_set_filter(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_pixelformat_info_get_render(object_ : PixelformatInfo) -> Bool = "mb_gfx_sg_pixelformat_info_get_render"

///|
pub fn PixelformatInfo::render(self : PixelformatInfo) -> Bool {
  sg_pixelformat_info_get_render(self)
}

///|
#borrow(object_)
extern "c" fn sg_pixelformat_info_set_render(
  object_ : PixelformatInfo,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_pixelformat_info_set_render"

///|
pub fn PixelformatInfo::set_render(
  self : PixelformatInfo,
  value : Bool,
) -> PixelformatInfo {
  sg_pixelformat_info_set_render(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_pixelformat_info_get_blend(object_ : PixelformatInfo) -> Bool = "mb_gfx_sg_pixelformat_info_get_blend"

///|
pub fn PixelformatInfo::blend(self : PixelformatInfo) -> Bool {
  sg_pixelformat_info_get_blend(self)
}

///|
#borrow(object_)
extern "c" fn sg_pixelformat_info_set_blend(
  object_ : PixelformatInfo,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_pixelformat_info_set_blend"

///|
pub fn PixelformatInfo::set_blend(
  self : PixelformatInfo,
  value : Bool,
) -> PixelformatInfo {
  sg_pixelformat_info_set_blend(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_pixelformat_info_get_msaa(object_ : PixelformatInfo) -> Bool = "mb_gfx_sg_pixelformat_info_get_msaa"

///|
pub fn PixelformatInfo::msaa(self : PixelformatInfo) -> Bool {
  sg_pixelformat_info_get_msaa(self)
}

///|
#borrow(object_)
extern "c" fn sg_pixelformat_info_set_msaa(
  object_ : PixelformatInfo,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_pixelformat_info_set_msaa"

///|
pub fn PixelformatInfo::set_msaa(
  self : PixelformatInfo,
  value : Bool,
) -> PixelformatInfo {
  sg_pixelformat_info_set_msaa(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_pixelformat_info_get_depth(object_ : PixelformatInfo) -> Bool = "mb_gfx_sg_pixelformat_info_get_depth"

///|
pub fn PixelformatInfo::depth(self : PixelformatInfo) -> Bool {
  sg_pixelformat_info_get_depth(self)
}

///|
#borrow(object_)
extern "c" fn sg_pixelformat_info_set_depth(
  object_ : PixelformatInfo,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_pixelformat_info_set_depth"

///|
pub fn PixelformatInfo::set_depth(
  self : PixelformatInfo,
  value : Bool,
) -> PixelformatInfo {
  sg_pixelformat_info_set_depth(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_pixelformat_info_get_compressed(
  object_ : PixelformatInfo,
) -> Bool = "mb_gfx_sg_pixelformat_info_get_compressed"

///|
pub fn PixelformatInfo::compressed(self : PixelformatInfo) -> Bool {
  sg_pixelformat_info_get_compressed(self)
}

///|
#borrow(object_)
extern "c" fn sg_pixelformat_info_set_compressed(
  object_ : PixelformatInfo,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_pixelformat_info_set_compressed"

///|
pub fn PixelformatInfo::set_compressed(
  self : PixelformatInfo,
  value : Bool,
) -> PixelformatInfo {
  sg_pixelformat_info_set_compressed(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_pixelformat_info_get_read(object_ : PixelformatInfo) -> Bool = "mb_gfx_sg_pixelformat_info_get_read"

///|
pub fn PixelformatInfo::read(self : PixelformatInfo) -> Bool {
  sg_pixelformat_info_get_read(self)
}

///|
#borrow(object_)
extern "c" fn sg_pixelformat_info_set_read(
  object_ : PixelformatInfo,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_pixelformat_info_set_read"

///|
pub fn PixelformatInfo::set_read(
  self : PixelformatInfo,
  value : Bool,
) -> PixelformatInfo {
  sg_pixelformat_info_set_read(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_pixelformat_info_get_write(object_ : PixelformatInfo) -> Bool = "mb_gfx_sg_pixelformat_info_get_write"

///|
pub fn PixelformatInfo::write(self : PixelformatInfo) -> Bool {
  sg_pixelformat_info_get_write(self)
}

///|
#borrow(object_)
extern "c" fn sg_pixelformat_info_set_write(
  object_ : PixelformatInfo,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_pixelformat_info_set_write"

///|
pub fn PixelformatInfo::set_write(
  self : PixelformatInfo,
  value : Bool,
) -> PixelformatInfo {
  sg_pixelformat_info_set_write(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_pixelformat_info_get_bytes_per_pixel(
  object_ : PixelformatInfo,
) -> Int32 = "mb_gfx_sg_pixelformat_info_get_bytes_per_pixel"

///|
pub fn PixelformatInfo::bytes_per_pixel(self : PixelformatInfo) -> Int32 {
  sg_pixelformat_info_get_bytes_per_pixel(self)
}

///|
#borrow(object_)
extern "c" fn sg_pixelformat_info_set_bytes_per_pixel(
  object_ : PixelformatInfo,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_pixelformat_info_set_bytes_per_pixel"

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
extern "c" fn sg_features_new() -> Features = "mb_gfx_sg_features_new"

///|
pub fn Features::new() -> Features {
  sg_features_new()
}

///|
#borrow(object_)
extern "c" fn sg_features_copy(object_ : Features) -> Features = "mb_gfx_sg_features_copy"

///|
pub fn Features::copy(self : Features) -> Features {
  sg_features_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_features_native(object_ : Features) -> @native.Handle = "mb_gfx_sg_features_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Features::unsafe_native_handle(self : Features) -> @native.Handle {
  sg_features_native(self)
}

///|
extern "c" fn sg_features_from_native(ptr : @native.Handle) -> Features = "mb_gfx_sg_features_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Features::unsafe_from_native(ptr : @native.Handle) -> Features {
  sg_features_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_features_get_origin_top_left(object_ : Features) -> Bool = "mb_gfx_sg_features_get_origin_top_left"

///|
pub fn Features::origin_top_left(self : Features) -> Bool {
  sg_features_get_origin_top_left(self)
}

///|
#borrow(object_)
extern "c" fn sg_features_set_origin_top_left(
  object_ : Features,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_features_set_origin_top_left"

///|
pub fn Features::set_origin_top_left(self : Features, value : Bool) -> Features {
  sg_features_set_origin_top_left(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_features_get_image_clamp_to_border(object_ : Features) -> Bool = "mb_gfx_sg_features_get_image_clamp_to_border"

///|
pub fn Features::image_clamp_to_border(self : Features) -> Bool {
  sg_features_get_image_clamp_to_border(self)
}

///|
#borrow(object_)
extern "c" fn sg_features_set_image_clamp_to_border(
  object_ : Features,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_features_set_image_clamp_to_border"

///|
pub fn Features::set_image_clamp_to_border(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_image_clamp_to_border(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_features_get_mrt_independent_blend_state(
  object_ : Features,
) -> Bool = "mb_gfx_sg_features_get_mrt_independent_blend_state"

///|
pub fn Features::mrt_independent_blend_state(self : Features) -> Bool {
  sg_features_get_mrt_independent_blend_state(self)
}

///|
#borrow(object_)
extern "c" fn sg_features_set_mrt_independent_blend_state(
  object_ : Features,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_features_set_mrt_independent_blend_state"

///|
pub fn Features::set_mrt_independent_blend_state(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_mrt_independent_blend_state(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_features_get_mrt_independent_write_mask(
  object_ : Features,
) -> Bool = "mb_gfx_sg_features_get_mrt_independent_write_mask"

///|
pub fn Features::mrt_independent_write_mask(self : Features) -> Bool {
  sg_features_get_mrt_independent_write_mask(self)
}

///|
#borrow(object_)
extern "c" fn sg_features_set_mrt_independent_write_mask(
  object_ : Features,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_features_set_mrt_independent_write_mask"

///|
pub fn Features::set_mrt_independent_write_mask(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_mrt_independent_write_mask(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_features_get_compute(object_ : Features) -> Bool = "mb_gfx_sg_features_get_compute"

///|
pub fn Features::compute(self : Features) -> Bool {
  sg_features_get_compute(self)
}

///|
#borrow(object_)
extern "c" fn sg_features_set_compute(
  object_ : Features,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_features_set_compute"

///|
pub fn Features::set_compute(self : Features, value : Bool) -> Features {
  sg_features_set_compute(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_features_get_msaa_texture_bindings(object_ : Features) -> Bool = "mb_gfx_sg_features_get_msaa_texture_bindings"

///|
pub fn Features::msaa_texture_bindings(self : Features) -> Bool {
  sg_features_get_msaa_texture_bindings(self)
}

///|
#borrow(object_)
extern "c" fn sg_features_set_msaa_texture_bindings(
  object_ : Features,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_features_set_msaa_texture_bindings"

///|
pub fn Features::set_msaa_texture_bindings(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_msaa_texture_bindings(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_features_get_separate_buffer_types(object_ : Features) -> Bool = "mb_gfx_sg_features_get_separate_buffer_types"

///|
pub fn Features::separate_buffer_types(self : Features) -> Bool {
  sg_features_get_separate_buffer_types(self)
}

///|
#borrow(object_)
extern "c" fn sg_features_set_separate_buffer_types(
  object_ : Features,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_features_set_separate_buffer_types"

///|
pub fn Features::set_separate_buffer_types(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_separate_buffer_types(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_features_get_draw_base_vertex(object_ : Features) -> Bool = "mb_gfx_sg_features_get_draw_base_vertex"

///|
pub fn Features::draw_base_vertex(self : Features) -> Bool {
  sg_features_get_draw_base_vertex(self)
}

///|
#borrow(object_)
extern "c" fn sg_features_set_draw_base_vertex(
  object_ : Features,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_features_set_draw_base_vertex"

///|
pub fn Features::set_draw_base_vertex(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_draw_base_vertex(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_features_get_draw_base_instance(object_ : Features) -> Bool = "mb_gfx_sg_features_get_draw_base_instance"

///|
pub fn Features::draw_base_instance(self : Features) -> Bool {
  sg_features_get_draw_base_instance(self)
}

///|
#borrow(object_)
extern "c" fn sg_features_set_draw_base_instance(
  object_ : Features,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_features_set_draw_base_instance"

///|
pub fn Features::set_draw_base_instance(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_draw_base_instance(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_features_get_dual_source_blending(object_ : Features) -> Bool = "mb_gfx_sg_features_get_dual_source_blending"

///|
pub fn Features::dual_source_blending(self : Features) -> Bool {
  sg_features_get_dual_source_blending(self)
}

///|
#borrow(object_)
extern "c" fn sg_features_set_dual_source_blending(
  object_ : Features,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_features_set_dual_source_blending"

///|
pub fn Features::set_dual_source_blending(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_dual_source_blending(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_features_get_vertexformat_int10_n2(object_ : Features) -> Bool = "mb_gfx_sg_features_get_vertexformat_int10_n2"

///|
pub fn Features::vertexformat_int10_n2(self : Features) -> Bool {
  sg_features_get_vertexformat_int10_n2(self)
}

///|
#borrow(object_)
extern "c" fn sg_features_set_vertexformat_int10_n2(
  object_ : Features,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_features_set_vertexformat_int10_n2"

///|
pub fn Features::set_vertexformat_int10_n2(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_vertexformat_int10_n2(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_features_get_copy_buffer_to_image_relaxed_buffer_type(
  object_ : Features,
) -> Bool = "mb_gfx_sg_features_get_copy_buffer_to_image_relaxed_buffer_type"

///|
pub fn Features::copy_buffer_to_image_relaxed_buffer_type(
  self : Features,
) -> Bool {
  sg_features_get_copy_buffer_to_image_relaxed_buffer_type(self)
}

///|
#borrow(object_)
extern "c" fn sg_features_set_copy_buffer_to_image_relaxed_buffer_type(
  object_ : Features,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_features_set_copy_buffer_to_image_relaxed_buffer_type"

///|
pub fn Features::set_copy_buffer_to_image_relaxed_buffer_type(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_copy_buffer_to_image_relaxed_buffer_type(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_features_get_copy_buffer_to_image_relaxed_bytes_per_row(
  object_ : Features,
) -> Bool = "mb_gfx_sg_features_get_copy_buffer_to_image_relaxed_bytes_per_row"

///|
pub fn Features::copy_buffer_to_image_relaxed_bytes_per_row(
  self : Features,
) -> Bool {
  sg_features_get_copy_buffer_to_image_relaxed_bytes_per_row(self)
}

///|
#borrow(object_)
extern "c" fn sg_features_set_copy_buffer_to_image_relaxed_bytes_per_row(
  object_ : Features,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_features_set_copy_buffer_to_image_relaxed_bytes_per_row"

///|
pub fn Features::set_copy_buffer_to_image_relaxed_bytes_per_row(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_copy_buffer_to_image_relaxed_bytes_per_row(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_features_get_copy_image_to_image_relaxed_pixel_format(
  object_ : Features,
) -> Bool = "mb_gfx_sg_features_get_copy_image_to_image_relaxed_pixel_format"

///|
pub fn Features::copy_image_to_image_relaxed_pixel_format(
  self : Features,
) -> Bool {
  sg_features_get_copy_image_to_image_relaxed_pixel_format(self)
}

///|
#borrow(object_)
extern "c" fn sg_features_set_copy_image_to_image_relaxed_pixel_format(
  object_ : Features,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_features_set_copy_image_to_image_relaxed_pixel_format"

///|
pub fn Features::set_copy_image_to_image_relaxed_pixel_format(
  self : Features,
  value : Bool,
) -> Features {
  sg_features_set_copy_image_to_image_relaxed_pixel_format(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_features_get_gl_texture_views(object_ : Features) -> Bool = "mb_gfx_sg_features_get_gl_texture_views"

///|
pub fn Features::gl_texture_views(self : Features) -> Bool {
  sg_features_get_gl_texture_views(self)
}

///|
#borrow(object_)
extern "c" fn sg_features_set_gl_texture_views(
  object_ : Features,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_features_set_gl_texture_views"

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
extern "c" fn sg_limits_new() -> Limits = "mb_gfx_sg_limits_new"

///|
pub fn Limits::new() -> Limits {
  sg_limits_new()
}

///|
#borrow(object_)
extern "c" fn sg_limits_copy(object_ : Limits) -> Limits = "mb_gfx_sg_limits_copy"

///|
pub fn Limits::copy(self : Limits) -> Limits {
  sg_limits_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_limits_native(object_ : Limits) -> @native.Handle = "mb_gfx_sg_limits_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn Limits::unsafe_native_handle(self : Limits) -> @native.Handle {
  sg_limits_native(self)
}

///|
extern "c" fn sg_limits_from_native(ptr : @native.Handle) -> Limits = "mb_gfx_sg_limits_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn Limits::unsafe_from_native(ptr : @native.Handle) -> Limits {
  sg_limits_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_limits_get_max_image_size_2d(object_ : Limits) -> Int32 = "mb_gfx_sg_limits_get_max_image_size_2d"

///|
pub fn Limits::max_image_size_2d(self : Limits) -> Int32 {
  sg_limits_get_max_image_size_2d(self)
}

///|
#borrow(object_)
extern "c" fn sg_limits_set_max_image_size_2d(
  object_ : Limits,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_limits_set_max_image_size_2d"

///|
pub fn Limits::set_max_image_size_2d(self : Limits, value : Int32) -> Limits {
  sg_limits_set_max_image_size_2d(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_limits_get_max_image_size_cube(object_ : Limits) -> Int32 = "mb_gfx_sg_limits_get_max_image_size_cube"

///|
pub fn Limits::max_image_size_cube(self : Limits) -> Int32 {
  sg_limits_get_max_image_size_cube(self)
}

///|
#borrow(object_)
extern "c" fn sg_limits_set_max_image_size_cube(
  object_ : Limits,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_limits_set_max_image_size_cube"

///|
pub fn Limits::set_max_image_size_cube(self : Limits, value : Int32) -> Limits {
  sg_limits_set_max_image_size_cube(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_limits_get_max_image_size_3d(object_ : Limits) -> Int32 = "mb_gfx_sg_limits_get_max_image_size_3d"

///|
pub fn Limits::max_image_size_3d(self : Limits) -> Int32 {
  sg_limits_get_max_image_size_3d(self)
}

///|
#borrow(object_)
extern "c" fn sg_limits_set_max_image_size_3d(
  object_ : Limits,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_limits_set_max_image_size_3d"

///|
pub fn Limits::set_max_image_size_3d(self : Limits, value : Int32) -> Limits {
  sg_limits_set_max_image_size_3d(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_limits_get_max_image_size_array(object_ : Limits) -> Int32 = "mb_gfx_sg_limits_get_max_image_size_array"

///|
pub fn Limits::max_image_size_array(self : Limits) -> Int32 {
  sg_limits_get_max_image_size_array(self)
}

///|
#borrow(object_)
extern "c" fn sg_limits_set_max_image_size_array(
  object_ : Limits,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_limits_set_max_image_size_array"

///|
pub fn Limits::set_max_image_size_array(self : Limits, value : Int32) -> Limits {
  sg_limits_set_max_image_size_array(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_limits_get_max_image_array_layers(object_ : Limits) -> Int32 = "mb_gfx_sg_limits_get_max_image_array_layers"

///|
pub fn Limits::max_image_array_layers(self : Limits) -> Int32 {
  sg_limits_get_max_image_array_layers(self)
}

///|
#borrow(object_)
extern "c" fn sg_limits_set_max_image_array_layers(
  object_ : Limits,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_limits_set_max_image_array_layers"

///|
pub fn Limits::set_max_image_array_layers(
  self : Limits,
  value : Int32,
) -> Limits {
  sg_limits_set_max_image_array_layers(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_limits_get_max_vertex_attrs(object_ : Limits) -> Int32 = "mb_gfx_sg_limits_get_max_vertex_attrs"

///|
pub fn Limits::max_vertex_attrs(self : Limits) -> Int32 {
  sg_limits_get_max_vertex_attrs(self)
}

///|
#borrow(object_)
extern "c" fn sg_limits_set_max_vertex_attrs(
  object_ : Limits,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_limits_set_max_vertex_attrs"

///|
pub fn Limits::set_max_vertex_attrs(self : Limits, value : Int32) -> Limits {
  sg_limits_set_max_vertex_attrs(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_limits_get_max_color_attachments(object_ : Limits) -> Int32 = "mb_gfx_sg_limits_get_max_color_attachments"

///|
pub fn Limits::max_color_attachments(self : Limits) -> Int32 {
  sg_limits_get_max_color_attachments(self)
}

///|
#borrow(object_)
extern "c" fn sg_limits_set_max_color_attachments(
  object_ : Limits,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_limits_set_max_color_attachments"

///|
pub fn Limits::set_max_color_attachments(
  self : Limits,
  value : Int32,
) -> Limits {
  sg_limits_set_max_color_attachments(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_limits_get_max_texture_bindings_per_stage(
  object_ : Limits,
) -> Int32 = "mb_gfx_sg_limits_get_max_texture_bindings_per_stage"

///|
pub fn Limits::max_texture_bindings_per_stage(self : Limits) -> Int32 {
  sg_limits_get_max_texture_bindings_per_stage(self)
}

///|
#borrow(object_)
extern "c" fn sg_limits_set_max_texture_bindings_per_stage(
  object_ : Limits,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_limits_set_max_texture_bindings_per_stage"

///|
pub fn Limits::set_max_texture_bindings_per_stage(
  self : Limits,
  value : Int32,
) -> Limits {
  sg_limits_set_max_texture_bindings_per_stage(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_limits_get_max_storage_buffer_bindings_per_stage(
  object_ : Limits,
) -> Int32 = "mb_gfx_sg_limits_get_max_storage_buffer_bindings_per_stage"

///|
pub fn Limits::max_storage_buffer_bindings_per_stage(self : Limits) -> Int32 {
  sg_limits_get_max_storage_buffer_bindings_per_stage(self)
}

///|
#borrow(object_)
extern "c" fn sg_limits_set_max_storage_buffer_bindings_per_stage(
  object_ : Limits,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_limits_set_max_storage_buffer_bindings_per_stage"

///|
pub fn Limits::set_max_storage_buffer_bindings_per_stage(
  self : Limits,
  value : Int32,
) -> Limits {
  sg_limits_set_max_storage_buffer_bindings_per_stage(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_limits_get_max_storage_image_bindings_per_stage(
  object_ : Limits,
) -> Int32 = "mb_gfx_sg_limits_get_max_storage_image_bindings_per_stage"

///|
pub fn Limits::max_storage_image_bindings_per_stage(self : Limits) -> Int32 {
  sg_limits_get_max_storage_image_bindings_per_stage(self)
}

///|
#borrow(object_)
extern "c" fn sg_limits_set_max_storage_image_bindings_per_stage(
  object_ : Limits,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_limits_set_max_storage_image_bindings_per_stage"

///|
pub fn Limits::set_max_storage_image_bindings_per_stage(
  self : Limits,
  value : Int32,
) -> Limits {
  sg_limits_set_max_storage_image_bindings_per_stage(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_limits_get_gl_max_vertex_uniform_components(
  object_ : Limits,
) -> Int32 = "mb_gfx_sg_limits_get_gl_max_vertex_uniform_components"

///|
pub fn Limits::gl_max_vertex_uniform_components(self : Limits) -> Int32 {
  sg_limits_get_gl_max_vertex_uniform_components(self)
}

///|
#borrow(object_)
extern "c" fn sg_limits_set_gl_max_vertex_uniform_components(
  object_ : Limits,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_limits_set_gl_max_vertex_uniform_components"

///|
pub fn Limits::set_gl_max_vertex_uniform_components(
  self : Limits,
  value : Int32,
) -> Limits {
  sg_limits_set_gl_max_vertex_uniform_components(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_limits_get_gl_max_combined_texture_image_units(
  object_ : Limits,
) -> Int32 = "mb_gfx_sg_limits_get_gl_max_combined_texture_image_units"

///|
pub fn Limits::gl_max_combined_texture_image_units(self : Limits) -> Int32 {
  sg_limits_get_gl_max_combined_texture_image_units(self)
}

///|
#borrow(object_)
extern "c" fn sg_limits_set_gl_max_combined_texture_image_units(
  object_ : Limits,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_limits_set_gl_max_combined_texture_image_units"

///|
pub fn Limits::set_gl_max_combined_texture_image_units(
  self : Limits,
  value : Int32,
) -> Limits {
  sg_limits_set_gl_max_combined_texture_image_units(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_limits_get_d3d11_max_unordered_access_views(
  object_ : Limits,
) -> Int32 = "mb_gfx_sg_limits_get_d3d11_max_unordered_access_views"

///|
pub fn Limits::d3d11_max_unordered_access_views(self : Limits) -> Int32 {
  sg_limits_get_d3d11_max_unordered_access_views(self)
}

///|
#borrow(object_)
extern "c" fn sg_limits_set_d3d11_max_unordered_access_views(
  object_ : Limits,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_limits_set_d3d11_max_unordered_access_views"

///|
pub fn Limits::set_d3d11_max_unordered_access_views(
  self : Limits,
  value : Int32,
) -> Limits {
  sg_limits_set_d3d11_max_unordered_access_views(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_limits_get_vk_min_uniform_buffer_offset_alignment(
  object_ : Limits,
) -> Int32 = "mb_gfx_sg_limits_get_vk_min_uniform_buffer_offset_alignment"

///|
pub fn Limits::vk_min_uniform_buffer_offset_alignment(self : Limits) -> Int32 {
  sg_limits_get_vk_min_uniform_buffer_offset_alignment(self)
}

///|
#borrow(object_)
extern "c" fn sg_limits_set_vk_min_uniform_buffer_offset_alignment(
  object_ : Limits,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_limits_set_vk_min_uniform_buffer_offset_alignment"

///|
pub fn Limits::set_vk_min_uniform_buffer_offset_alignment(
  self : Limits,
  value : Int32,
) -> Limits {
  sg_limits_set_vk_min_uniform_buffer_offset_alignment(self, value)
  self
}

///|
extern "c" fn sg_query_backend() -> Backend = "sg_query_backend"

///|
pub fn query_backend() -> Backend {
  sg_query_backend()
}

///|
extern "c" fn sg_query_features() -> Features = "mb_gfx_sg_query_features"

///|
pub fn query_features() -> Features {
  sg_query_features()
}

///|
extern "c" fn sg_query_limits() -> Limits = "mb_gfx_sg_query_limits"

///|
pub fn query_limits() -> Limits {
  sg_query_limits()
}

///|
extern "c" fn sg_query_pixelformat(fmt : PixelFormat) -> PixelformatInfo = "mb_gfx_sg_query_pixelformat"

///|
pub fn query_pixelformat(fmt : PixelFormat) -> PixelformatInfo {
  sg_query_pixelformat(fmt)
}

///|
extern "c" fn sg_query_row_pitch(
  fmt : PixelFormat,
  width : Int32,
  row_align_bytes : Int32,
) -> Int32 = "sg_query_row_pitch"

///|
pub fn query_row_pitch(
  fmt : PixelFormat,
  width : Int32,
  row_align_bytes : Int32,
) -> Int32 {
  sg_query_row_pitch(fmt, width, row_align_bytes)
}

///|
extern "c" fn sg_query_surface_pitch(
  fmt : PixelFormat,
  width : Int32,
  height : Int32,
  row_align_bytes : Int32,
) -> Int32 = "sg_query_surface_pitch"

///|
pub fn query_surface_pitch(
  fmt : PixelFormat,
  width : Int32,
  height : Int32,
  row_align_bytes : Int32,
) -> Int32 {
  sg_query_surface_pitch(fmt, width, height, row_align_bytes)
}
