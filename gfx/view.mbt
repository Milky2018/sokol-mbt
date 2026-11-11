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
extern "c" fn sg_view_read_id(ptr : @native.Handle) -> UInt32 = "mb_gfx_sg_view_read_id"

///|
/// The pointer must identify a live `sg_view`.
pub fn View::unsafe_from_native(ptr : @native.Handle) -> View {
  View(sg_view_read_id(ptr))
}

///|
/// Owned C value. copy() creates an independent copy.
pub type BufferViewDesc

///|
extern "c" fn sg_buffer_view_desc_new() -> BufferViewDesc = "mb_gfx_sg_buffer_view_desc_new"

///|
pub fn BufferViewDesc::new() -> BufferViewDesc {
  sg_buffer_view_desc_new()
}

///|
#borrow(object_)
extern "c" fn sg_buffer_view_desc_copy(
  object_ : BufferViewDesc,
) -> BufferViewDesc = "mb_gfx_sg_buffer_view_desc_copy"

///|
pub fn BufferViewDesc::copy(self : BufferViewDesc) -> BufferViewDesc {
  sg_buffer_view_desc_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_view_desc_native(
  object_ : BufferViewDesc,
) -> @native.Handle = "mb_gfx_sg_buffer_view_desc_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn BufferViewDesc::unsafe_native_handle(
  self : BufferViewDesc,
) -> @native.Handle {
  sg_buffer_view_desc_native(self)
}

///|
extern "c" fn sg_buffer_view_desc_from_native(
  ptr : @native.Handle,
) -> BufferViewDesc = "mb_gfx_sg_buffer_view_desc_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn BufferViewDesc::unsafe_from_native(
  ptr : @native.Handle,
) -> BufferViewDesc {
  sg_buffer_view_desc_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_view_desc_get_buffer(
  object_ : BufferViewDesc,
) -> UInt32 = "mb_gfx_sg_buffer_view_desc_get_buffer"

///|
pub fn BufferViewDesc::buffer(self : BufferViewDesc) -> Buffer {
  Buffer(sg_buffer_view_desc_get_buffer(self))
}

///|
#borrow(object_)
extern "c" fn sg_buffer_view_desc_set_buffer(
  object_ : BufferViewDesc,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_buffer_view_desc_set_buffer"

///|
pub fn BufferViewDesc::set_buffer(
  self : BufferViewDesc,
  value : Buffer,
) -> BufferViewDesc {
  sg_buffer_view_desc_set_buffer(self, value.0)
  self
}

///|
#borrow(object_)
extern "c" fn sg_buffer_view_desc_get_offset(object_ : BufferViewDesc) -> Int32 = "mb_gfx_sg_buffer_view_desc_get_offset"

///|
pub fn BufferViewDesc::offset(self : BufferViewDesc) -> Int32 {
  sg_buffer_view_desc_get_offset(self)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_view_desc_set_offset(
  object_ : BufferViewDesc,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_buffer_view_desc_set_offset"

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
extern "c" fn sg_image_view_desc_new() -> ImageViewDesc = "mb_gfx_sg_image_view_desc_new"

///|
pub fn ImageViewDesc::new() -> ImageViewDesc {
  sg_image_view_desc_new()
}

///|
#borrow(object_)
extern "c" fn sg_image_view_desc_copy(object_ : ImageViewDesc) -> ImageViewDesc = "mb_gfx_sg_image_view_desc_copy"

///|
pub fn ImageViewDesc::copy(self : ImageViewDesc) -> ImageViewDesc {
  sg_image_view_desc_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_image_view_desc_native(
  object_ : ImageViewDesc,
) -> @native.Handle = "mb_gfx_sg_image_view_desc_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ImageViewDesc::unsafe_native_handle(
  self : ImageViewDesc,
) -> @native.Handle {
  sg_image_view_desc_native(self)
}

///|
extern "c" fn sg_image_view_desc_from_native(
  ptr : @native.Handle,
) -> ImageViewDesc = "mb_gfx_sg_image_view_desc_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ImageViewDesc::unsafe_from_native(ptr : @native.Handle) -> ImageViewDesc {
  sg_image_view_desc_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_image_view_desc_get_image(object_ : ImageViewDesc) -> UInt32 = "mb_gfx_sg_image_view_desc_get_image"

///|
pub fn ImageViewDesc::image(self : ImageViewDesc) -> Image {
  Image(sg_image_view_desc_get_image(self))
}

///|
#borrow(object_)
extern "c" fn sg_image_view_desc_set_image(
  object_ : ImageViewDesc,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_image_view_desc_set_image"

///|
pub fn ImageViewDesc::set_image(
  self : ImageViewDesc,
  value : Image,
) -> ImageViewDesc {
  sg_image_view_desc_set_image(self, value.0)
  self
}

///|
#borrow(object_)
extern "c" fn sg_image_view_desc_get_mip_level(
  object_ : ImageViewDesc,
) -> Int32 = "mb_gfx_sg_image_view_desc_get_mip_level"

///|
pub fn ImageViewDesc::mip_level(self : ImageViewDesc) -> Int32 {
  sg_image_view_desc_get_mip_level(self)
}

///|
#borrow(object_)
extern "c" fn sg_image_view_desc_set_mip_level(
  object_ : ImageViewDesc,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_image_view_desc_set_mip_level"

///|
pub fn ImageViewDesc::set_mip_level(
  self : ImageViewDesc,
  value : Int32,
) -> ImageViewDesc {
  sg_image_view_desc_set_mip_level(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_image_view_desc_get_slice(object_ : ImageViewDesc) -> Int32 = "mb_gfx_sg_image_view_desc_get_slice"

///|
pub fn ImageViewDesc::slice(self : ImageViewDesc) -> Int32 {
  sg_image_view_desc_get_slice(self)
}

///|
#borrow(object_)
extern "c" fn sg_image_view_desc_set_slice(
  object_ : ImageViewDesc,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_image_view_desc_set_slice"

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
extern "c" fn sg_texture_view_range_new() -> TextureViewRange = "mb_gfx_sg_texture_view_range_new"

///|
pub fn TextureViewRange::new() -> TextureViewRange {
  sg_texture_view_range_new()
}

///|
#borrow(object_)
extern "c" fn sg_texture_view_range_copy(
  object_ : TextureViewRange,
) -> TextureViewRange = "mb_gfx_sg_texture_view_range_copy"

///|
pub fn TextureViewRange::copy(self : TextureViewRange) -> TextureViewRange {
  sg_texture_view_range_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_texture_view_range_native(
  object_ : TextureViewRange,
) -> @native.Handle = "mb_gfx_sg_texture_view_range_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn TextureViewRange::unsafe_native_handle(
  self : TextureViewRange,
) -> @native.Handle {
  sg_texture_view_range_native(self)
}

///|
extern "c" fn sg_texture_view_range_from_native(
  ptr : @native.Handle,
) -> TextureViewRange = "mb_gfx_sg_texture_view_range_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn TextureViewRange::unsafe_from_native(
  ptr : @native.Handle,
) -> TextureViewRange {
  sg_texture_view_range_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_texture_view_range_get_base(
  object_ : TextureViewRange,
) -> Int32 = "mb_gfx_sg_texture_view_range_get_base"

///|
pub fn TextureViewRange::base(self : TextureViewRange) -> Int32 {
  sg_texture_view_range_get_base(self)
}

///|
#borrow(object_)
extern "c" fn sg_texture_view_range_set_base(
  object_ : TextureViewRange,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_texture_view_range_set_base"

///|
pub fn TextureViewRange::set_base(
  self : TextureViewRange,
  value : Int32,
) -> TextureViewRange {
  sg_texture_view_range_set_base(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_texture_view_range_get_count(
  object_ : TextureViewRange,
) -> Int32 = "mb_gfx_sg_texture_view_range_get_count"

///|
pub fn TextureViewRange::count(self : TextureViewRange) -> Int32 {
  sg_texture_view_range_get_count(self)
}

///|
#borrow(object_)
extern "c" fn sg_texture_view_range_set_count(
  object_ : TextureViewRange,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_texture_view_range_set_count"

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
extern "c" fn sg_texture_view_desc_new() -> TextureViewDesc = "mb_gfx_sg_texture_view_desc_new"

///|
pub fn TextureViewDesc::new() -> TextureViewDesc {
  sg_texture_view_desc_new()
}

///|
#borrow(object_)
extern "c" fn sg_texture_view_desc_copy(
  object_ : TextureViewDesc,
) -> TextureViewDesc = "mb_gfx_sg_texture_view_desc_copy"

///|
pub fn TextureViewDesc::copy(self : TextureViewDesc) -> TextureViewDesc {
  sg_texture_view_desc_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_texture_view_desc_native(
  object_ : TextureViewDesc,
) -> @native.Handle = "mb_gfx_sg_texture_view_desc_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn TextureViewDesc::unsafe_native_handle(
  self : TextureViewDesc,
) -> @native.Handle {
  sg_texture_view_desc_native(self)
}

///|
extern "c" fn sg_texture_view_desc_from_native(
  ptr : @native.Handle,
) -> TextureViewDesc = "mb_gfx_sg_texture_view_desc_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn TextureViewDesc::unsafe_from_native(
  ptr : @native.Handle,
) -> TextureViewDesc {
  sg_texture_view_desc_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_texture_view_desc_get_image(
  object_ : TextureViewDesc,
) -> UInt32 = "mb_gfx_sg_texture_view_desc_get_image"

///|
pub fn TextureViewDesc::image(self : TextureViewDesc) -> Image {
  Image(sg_texture_view_desc_get_image(self))
}

///|
#borrow(object_)
extern "c" fn sg_texture_view_desc_set_image(
  object_ : TextureViewDesc,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_texture_view_desc_set_image"

///|
pub fn TextureViewDesc::set_image(
  self : TextureViewDesc,
  value : Image,
) -> TextureViewDesc {
  sg_texture_view_desc_set_image(self, value.0)
  self
}

///|
#borrow(object_)
extern "c" fn sg_texture_view_desc_get_mip_levels(
  object_ : TextureViewDesc,
) -> TextureViewRange = "mb_gfx_sg_texture_view_desc_get_mip_levels"

///|
pub fn TextureViewDesc::mip_levels(self : TextureViewDesc) -> TextureViewRange {
  sg_texture_view_desc_get_mip_levels(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_texture_view_desc_set_mip_levels(
  object_ : TextureViewDesc,
  replacement : TextureViewRange,
) -> Unit = "mb_gfx_sg_texture_view_desc_set_mip_levels"

///|
pub fn TextureViewDesc::set_mip_levels(
  self : TextureViewDesc,
  value : TextureViewRange,
) -> TextureViewDesc {
  sg_texture_view_desc_set_mip_levels(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_texture_view_desc_get_slices(
  object_ : TextureViewDesc,
) -> TextureViewRange = "mb_gfx_sg_texture_view_desc_get_slices"

///|
pub fn TextureViewDesc::slices(self : TextureViewDesc) -> TextureViewRange {
  sg_texture_view_desc_get_slices(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_texture_view_desc_set_slices(
  object_ : TextureViewDesc,
  replacement : TextureViewRange,
) -> Unit = "mb_gfx_sg_texture_view_desc_set_slices"

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
extern "c" fn sg_view_desc_new() -> ViewDesc = "mb_gfx_sg_view_desc_new"

///|
pub fn ViewDesc::new() -> ViewDesc {
  sg_view_desc_new()
}

///|
#borrow(object_)
extern "c" fn sg_view_desc_copy(object_ : ViewDesc) -> ViewDesc = "mb_gfx_sg_view_desc_copy"

///|
pub fn ViewDesc::copy(self : ViewDesc) -> ViewDesc {
  sg_view_desc_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_view_desc_native(object_ : ViewDesc) -> @native.Handle = "mb_gfx_sg_view_desc_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ViewDesc::unsafe_native_handle(self : ViewDesc) -> @native.Handle {
  sg_view_desc_native(self)
}

///|
extern "c" fn sg_view_desc_from_native(ptr : @native.Handle) -> ViewDesc = "mb_gfx_sg_view_desc_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ViewDesc::unsafe_from_native(ptr : @native.Handle) -> ViewDesc {
  sg_view_desc_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_view_desc_get_texture(object_ : ViewDesc) -> TextureViewDesc = "mb_gfx_sg_view_desc_get_texture"

///|
pub fn ViewDesc::texture(self : ViewDesc) -> TextureViewDesc {
  sg_view_desc_get_texture(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_view_desc_set_texture(
  object_ : ViewDesc,
  replacement : TextureViewDesc,
) -> Unit = "mb_gfx_sg_view_desc_set_texture"

///|
pub fn ViewDesc::set_texture(
  self : ViewDesc,
  value : TextureViewDesc,
) -> ViewDesc {
  sg_view_desc_set_texture(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_view_desc_get_storage_buffer(
  object_ : ViewDesc,
) -> BufferViewDesc = "mb_gfx_sg_view_desc_get_storage_buffer"

///|
pub fn ViewDesc::storage_buffer(self : ViewDesc) -> BufferViewDesc {
  sg_view_desc_get_storage_buffer(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_view_desc_set_storage_buffer(
  object_ : ViewDesc,
  replacement : BufferViewDesc,
) -> Unit = "mb_gfx_sg_view_desc_set_storage_buffer"

///|
pub fn ViewDesc::set_storage_buffer(
  self : ViewDesc,
  value : BufferViewDesc,
) -> ViewDesc {
  sg_view_desc_set_storage_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_view_desc_get_storage_image(
  object_ : ViewDesc,
) -> ImageViewDesc = "mb_gfx_sg_view_desc_get_storage_image"

///|
pub fn ViewDesc::storage_image(self : ViewDesc) -> ImageViewDesc {
  sg_view_desc_get_storage_image(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_view_desc_set_storage_image(
  object_ : ViewDesc,
  replacement : ImageViewDesc,
) -> Unit = "mb_gfx_sg_view_desc_set_storage_image"

///|
pub fn ViewDesc::set_storage_image(
  self : ViewDesc,
  value : ImageViewDesc,
) -> ViewDesc {
  sg_view_desc_set_storage_image(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_view_desc_get_color_attachment(
  object_ : ViewDesc,
) -> ImageViewDesc = "mb_gfx_sg_view_desc_get_color_attachment"

///|
pub fn ViewDesc::color_attachment(self : ViewDesc) -> ImageViewDesc {
  sg_view_desc_get_color_attachment(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_view_desc_set_color_attachment(
  object_ : ViewDesc,
  replacement : ImageViewDesc,
) -> Unit = "mb_gfx_sg_view_desc_set_color_attachment"

///|
pub fn ViewDesc::set_color_attachment(
  self : ViewDesc,
  value : ImageViewDesc,
) -> ViewDesc {
  sg_view_desc_set_color_attachment(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_view_desc_get_resolve_attachment(
  object_ : ViewDesc,
) -> ImageViewDesc = "mb_gfx_sg_view_desc_get_resolve_attachment"

///|
pub fn ViewDesc::resolve_attachment(self : ViewDesc) -> ImageViewDesc {
  sg_view_desc_get_resolve_attachment(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_view_desc_set_resolve_attachment(
  object_ : ViewDesc,
  replacement : ImageViewDesc,
) -> Unit = "mb_gfx_sg_view_desc_set_resolve_attachment"

///|
pub fn ViewDesc::set_resolve_attachment(
  self : ViewDesc,
  value : ImageViewDesc,
) -> ViewDesc {
  sg_view_desc_set_resolve_attachment(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_view_desc_get_depth_stencil_attachment(
  object_ : ViewDesc,
) -> ImageViewDesc = "mb_gfx_sg_view_desc_get_depth_stencil_attachment"

///|
pub fn ViewDesc::depth_stencil_attachment(self : ViewDesc) -> ImageViewDesc {
  sg_view_desc_get_depth_stencil_attachment(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_view_desc_set_depth_stencil_attachment(
  object_ : ViewDesc,
  replacement : ImageViewDesc,
) -> Unit = "mb_gfx_sg_view_desc_set_depth_stencil_attachment"

///|
pub fn ViewDesc::set_depth_stencil_attachment(
  self : ViewDesc,
  value : ImageViewDesc,
) -> ViewDesc {
  sg_view_desc_set_depth_stencil_attachment(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_view_desc_get_label(object_ : ViewDesc) -> Bytes = "mb_gfx_sg_view_desc_get_label"

///|
pub fn ViewDesc::label(self : ViewDesc) -> String {
  @utf8.decode_lossy(sg_view_desc_get_label(self))
}

///|
#borrow(object_, replacement)
extern "c" fn sg_view_desc_set_label(
  object_ : ViewDesc,
  replacement : Bytes,
) -> Unit = "mb_gfx_sg_view_desc_set_label"

///|
pub fn ViewDesc::set_label(self : ViewDesc, value : String) -> ViewDesc {
  sg_view_desc_set_label(self, @native.cstring(value))
  self
}

///|
/// Owned C value. copy() creates an independent copy.
pub type ViewInfo

///|
extern "c" fn sg_view_info_new() -> ViewInfo = "mb_gfx_sg_view_info_new"

///|
pub fn ViewInfo::new() -> ViewInfo {
  sg_view_info_new()
}

///|
#borrow(object_)
extern "c" fn sg_view_info_copy(object_ : ViewInfo) -> ViewInfo = "mb_gfx_sg_view_info_copy"

///|
pub fn ViewInfo::copy(self : ViewInfo) -> ViewInfo {
  sg_view_info_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_view_info_native(object_ : ViewInfo) -> @native.Handle = "mb_gfx_sg_view_info_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn ViewInfo::unsafe_native_handle(self : ViewInfo) -> @native.Handle {
  sg_view_info_native(self)
}

///|
extern "c" fn sg_view_info_from_native(ptr : @native.Handle) -> ViewInfo = "mb_gfx_sg_view_info_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn ViewInfo::unsafe_from_native(ptr : @native.Handle) -> ViewInfo {
  sg_view_info_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_view_info_get_slot(object_ : ViewInfo) -> SlotInfo = "mb_gfx_sg_view_info_get_slot"

///|
pub fn ViewInfo::slot(self : ViewInfo) -> SlotInfo {
  sg_view_info_get_slot(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_view_info_set_slot(
  object_ : ViewInfo,
  replacement : SlotInfo,
) -> Unit = "mb_gfx_sg_view_info_set_slot"

///|
pub fn ViewInfo::set_slot(self : ViewInfo, value : SlotInfo) -> ViewInfo {
  sg_view_info_set_slot(self, value)
  self
}

///|
#borrow(desc)
extern "c" fn sg_make_view(desc : ViewDesc) -> UInt32 = "mb_gfx_sg_make_view"

///|
pub fn make_view(desc : ViewDesc) -> View {
  View(sg_make_view(desc))
}

///|
extern "c" fn sg_destroy_view(view : UInt32) -> Unit = "mb_gfx_sg_destroy_view"

///|
pub fn destroy_view(view : View) -> Unit {
  sg_destroy_view(view.0)
}

///|
extern "c" fn sg_query_view_state(view : UInt32) -> ResourceState = "mb_gfx_sg_query_view_state"

///|
pub fn query_view_state(view : View) -> ResourceState {
  sg_query_view_state(view.0)
}

///|
extern "c" fn sg_query_view_info(view : UInt32) -> ViewInfo = "mb_gfx_sg_query_view_info"

///|
pub fn query_view_info(view : View) -> ViewInfo {
  sg_query_view_info(view.0)
}

///|
extern "c" fn sg_query_view_desc(view : UInt32) -> ViewDesc = "mb_gfx_sg_query_view_desc"

///|
pub fn query_view_desc(view : View) -> ViewDesc {
  sg_query_view_desc(view.0)
}

///|
#borrow(desc)
extern "c" fn sg_query_view_defaults(desc : ViewDesc) -> ViewDesc = "mb_gfx_sg_query_view_defaults"

///|
pub fn query_view_defaults(desc : ViewDesc) -> ViewDesc {
  sg_query_view_defaults(desc)
}

///|
extern "c" fn sg_query_view_type(view : UInt32) -> ViewType = "mb_gfx_sg_query_view_type"

///|
pub fn query_view_type(view : View) -> ViewType {
  sg_query_view_type(view.0)
}

///|
extern "c" fn sg_alloc_view() -> UInt32 = "mb_gfx_sg_alloc_view"

///|
pub fn alloc_view() -> View {
  View(sg_alloc_view())
}

///|
extern "c" fn sg_dealloc_view(view : UInt32) -> Unit = "mb_gfx_sg_dealloc_view"

///|
pub fn dealloc_view(view : View) -> Unit {
  sg_dealloc_view(view.0)
}

///|
#borrow(desc)
extern "c" fn sg_init_view(view : UInt32, desc : ViewDesc) -> Unit = "mb_gfx_sg_init_view"

///|
pub fn init_view(view : View, desc : ViewDesc) -> Unit {
  sg_init_view(view.0, desc)
}

///|
extern "c" fn sg_uninit_view(view : UInt32) -> Unit = "mb_gfx_sg_uninit_view"

///|
pub fn uninit_view(view : View) -> Unit {
  sg_uninit_view(view.0)
}

///|
extern "c" fn sg_fail_view(view : UInt32) -> Unit = "mb_gfx_sg_fail_view"

///|
pub fn fail_view(view : View) -> Unit {
  sg_fail_view(view.0)
}
