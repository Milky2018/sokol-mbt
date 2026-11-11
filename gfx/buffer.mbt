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
extern "c" fn sg_buffer_read_id(ptr : @native.Handle) -> UInt32 = "mb_gfx_sg_buffer_read_id"

///|
/// The pointer must identify a live `sg_buffer`.
pub fn Buffer::unsafe_from_native(ptr : @native.Handle) -> Buffer {
  Buffer(sg_buffer_read_id(ptr))
}

///|
/// Owned C value. copy() creates an independent copy.
pub type BufferUsage

///|
extern "c" fn sg_buffer_usage_new() -> BufferUsage = "mb_gfx_sg_buffer_usage_new"

///|
pub fn BufferUsage::new() -> BufferUsage {
  sg_buffer_usage_new()
}

///|
#borrow(object_)
extern "c" fn sg_buffer_usage_copy(object_ : BufferUsage) -> BufferUsage = "mb_gfx_sg_buffer_usage_copy"

///|
pub fn BufferUsage::copy(self : BufferUsage) -> BufferUsage {
  sg_buffer_usage_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_usage_native(object_ : BufferUsage) -> @native.Handle = "mb_gfx_sg_buffer_usage_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn BufferUsage::unsafe_native_handle(self : BufferUsage) -> @native.Handle {
  sg_buffer_usage_native(self)
}

///|
extern "c" fn sg_buffer_usage_from_native(ptr : @native.Handle) -> BufferUsage = "mb_gfx_sg_buffer_usage_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn BufferUsage::unsafe_from_native(ptr : @native.Handle) -> BufferUsage {
  sg_buffer_usage_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_usage_get_vertex_buffer(object_ : BufferUsage) -> Bool = "mb_gfx_sg_buffer_usage_get_vertex_buffer"

///|
pub fn BufferUsage::vertex_buffer(self : BufferUsage) -> Bool {
  sg_buffer_usage_get_vertex_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_usage_set_vertex_buffer(
  object_ : BufferUsage,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_buffer_usage_set_vertex_buffer"

///|
pub fn BufferUsage::set_vertex_buffer(
  self : BufferUsage,
  value : Bool,
) -> BufferUsage {
  sg_buffer_usage_set_vertex_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_buffer_usage_get_index_buffer(object_ : BufferUsage) -> Bool = "mb_gfx_sg_buffer_usage_get_index_buffer"

///|
pub fn BufferUsage::index_buffer(self : BufferUsage) -> Bool {
  sg_buffer_usage_get_index_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_usage_set_index_buffer(
  object_ : BufferUsage,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_buffer_usage_set_index_buffer"

///|
pub fn BufferUsage::set_index_buffer(
  self : BufferUsage,
  value : Bool,
) -> BufferUsage {
  sg_buffer_usage_set_index_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_buffer_usage_get_storage_buffer(object_ : BufferUsage) -> Bool = "mb_gfx_sg_buffer_usage_get_storage_buffer"

///|
pub fn BufferUsage::storage_buffer(self : BufferUsage) -> Bool {
  sg_buffer_usage_get_storage_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_usage_set_storage_buffer(
  object_ : BufferUsage,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_buffer_usage_set_storage_buffer"

///|
pub fn BufferUsage::set_storage_buffer(
  self : BufferUsage,
  value : Bool,
) -> BufferUsage {
  sg_buffer_usage_set_storage_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_buffer_usage_get_staging_buffer(object_ : BufferUsage) -> Bool = "mb_gfx_sg_buffer_usage_get_staging_buffer"

///|
pub fn BufferUsage::staging_buffer(self : BufferUsage) -> Bool {
  sg_buffer_usage_get_staging_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_usage_set_staging_buffer(
  object_ : BufferUsage,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_buffer_usage_set_staging_buffer"

///|
pub fn BufferUsage::set_staging_buffer(
  self : BufferUsage,
  value : Bool,
) -> BufferUsage {
  sg_buffer_usage_set_staging_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_buffer_usage_get_staging_index_buffer(
  object_ : BufferUsage,
) -> Bool = "mb_gfx_sg_buffer_usage_get_staging_index_buffer"

///|
pub fn BufferUsage::staging_index_buffer(self : BufferUsage) -> Bool {
  sg_buffer_usage_get_staging_index_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_usage_set_staging_index_buffer(
  object_ : BufferUsage,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_buffer_usage_set_staging_index_buffer"

///|
pub fn BufferUsage::set_staging_index_buffer(
  self : BufferUsage,
  value : Bool,
) -> BufferUsage {
  sg_buffer_usage_set_staging_index_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_buffer_usage_get_write_unsealed(object_ : BufferUsage) -> Bool = "mb_gfx_sg_buffer_usage_get_write_unsealed"

///|
pub fn BufferUsage::write_unsealed(self : BufferUsage) -> Bool {
  sg_buffer_usage_get_write_unsealed(self)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_usage_set_write_unsealed(
  object_ : BufferUsage,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_buffer_usage_set_write_unsealed"

///|
pub fn BufferUsage::set_write_unsealed(
  self : BufferUsage,
  value : Bool,
) -> BufferUsage {
  sg_buffer_usage_set_write_unsealed(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_buffer_usage_get_write_transient(
  object_ : BufferUsage,
) -> Bool = "mb_gfx_sg_buffer_usage_get_write_transient"

///|
pub fn BufferUsage::write_transient(self : BufferUsage) -> Bool {
  sg_buffer_usage_get_write_transient(self)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_usage_set_write_transient(
  object_ : BufferUsage,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_buffer_usage_set_write_transient"

///|
pub fn BufferUsage::set_write_transient(
  self : BufferUsage,
  value : Bool,
) -> BufferUsage {
  sg_buffer_usage_set_write_transient(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_buffer_usage_get_copy_src(object_ : BufferUsage) -> Bool = "mb_gfx_sg_buffer_usage_get_copy_src"

///|
pub fn BufferUsage::copy_src(self : BufferUsage) -> Bool {
  sg_buffer_usage_get_copy_src(self)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_usage_set_copy_src(
  object_ : BufferUsage,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_buffer_usage_set_copy_src"

///|
pub fn BufferUsage::set_copy_src(
  self : BufferUsage,
  value : Bool,
) -> BufferUsage {
  sg_buffer_usage_set_copy_src(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_buffer_usage_get_copy_dst(object_ : BufferUsage) -> Bool = "mb_gfx_sg_buffer_usage_get_copy_dst"

///|
pub fn BufferUsage::copy_dst(self : BufferUsage) -> Bool {
  sg_buffer_usage_get_copy_dst(self)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_usage_set_copy_dst(
  object_ : BufferUsage,
  replacement : Bool,
) -> Unit = "mb_gfx_sg_buffer_usage_set_copy_dst"

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
extern "c" fn sg_buffer_desc_new() -> BufferDesc = "mb_gfx_sg_buffer_desc_new"

///|
pub fn BufferDesc::new() -> BufferDesc {
  sg_buffer_desc_new()
}

///|
#borrow(object_)
extern "c" fn sg_buffer_desc_copy(object_ : BufferDesc) -> BufferDesc = "mb_gfx_sg_buffer_desc_copy"

///|
pub fn BufferDesc::copy(self : BufferDesc) -> BufferDesc {
  sg_buffer_desc_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_desc_native(object_ : BufferDesc) -> @native.Handle = "mb_gfx_sg_buffer_desc_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn BufferDesc::unsafe_native_handle(self : BufferDesc) -> @native.Handle {
  sg_buffer_desc_native(self)
}

///|
extern "c" fn sg_buffer_desc_from_native(ptr : @native.Handle) -> BufferDesc = "mb_gfx_sg_buffer_desc_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn BufferDesc::unsafe_from_native(ptr : @native.Handle) -> BufferDesc {
  sg_buffer_desc_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_desc_get_size(object_ : BufferDesc) -> UInt64 = "mb_gfx_sg_buffer_desc_get_size"

///|
pub fn BufferDesc::size(self : BufferDesc) -> UInt64 {
  sg_buffer_desc_get_size(self)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_desc_set_size(
  object_ : BufferDesc,
  replacement : UInt64,
) -> Unit = "mb_gfx_sg_buffer_desc_set_size"

///|
pub fn BufferDesc::set_size(self : BufferDesc, value : UInt64) -> BufferDesc {
  sg_buffer_desc_set_size(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_buffer_desc_get_usage(object_ : BufferDesc) -> BufferUsage = "mb_gfx_sg_buffer_desc_get_usage"

///|
pub fn BufferDesc::usage(self : BufferDesc) -> BufferUsage {
  sg_buffer_desc_get_usage(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_buffer_desc_set_usage(
  object_ : BufferDesc,
  replacement : BufferUsage,
) -> Unit = "mb_gfx_sg_buffer_desc_set_usage"

///|
pub fn BufferDesc::set_usage(
  self : BufferDesc,
  value : BufferUsage,
) -> BufferDesc {
  sg_buffer_desc_set_usage(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_buffer_desc_get_data(object_ : BufferDesc) -> Range = "mb_gfx_sg_buffer_desc_get_data"

///|
pub fn BufferDesc::data(self : BufferDesc) -> Range {
  sg_buffer_desc_get_data(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_buffer_desc_set_data(
  object_ : BufferDesc,
  replacement : Range,
) -> Unit = "mb_gfx_sg_buffer_desc_set_data"

///|
pub fn BufferDesc::set_data(self : BufferDesc, value : Range) -> BufferDesc {
  sg_buffer_desc_set_data(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_buffer_desc_get_label(object_ : BufferDesc) -> Bytes = "mb_gfx_sg_buffer_desc_get_label"

///|
pub fn BufferDesc::label(self : BufferDesc) -> String {
  @utf8.decode_lossy(sg_buffer_desc_get_label(self))
}

///|
#borrow(object_, replacement)
extern "c" fn sg_buffer_desc_set_label(
  object_ : BufferDesc,
  replacement : Bytes,
) -> Unit = "mb_gfx_sg_buffer_desc_set_label"

///|
pub fn BufferDesc::set_label(self : BufferDesc, value : String) -> BufferDesc {
  sg_buffer_desc_set_label(self, @native.cstring(value))
  self
}

///|
#borrow(object_)
extern "c" fn sg_buffer_desc_get_gl_buffer(object_ : BufferDesc) -> UInt32 = "mb_gfx_sg_buffer_desc_get_gl_buffer"

///|
pub fn BufferDesc::gl_buffer(self : BufferDesc) -> UInt32 {
  sg_buffer_desc_get_gl_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_desc_set_gl_buffer(
  object_ : BufferDesc,
  replacement : UInt32,
) -> Unit = "mb_gfx_sg_buffer_desc_set_gl_buffer"

///|
pub fn BufferDesc::set_gl_buffer(
  self : BufferDesc,
  value : UInt32,
) -> BufferDesc {
  sg_buffer_desc_set_gl_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_buffer_desc_get_mtl_buffer(
  object_ : BufferDesc,
) -> @native.Handle = "mb_gfx_sg_buffer_desc_get_mtl_buffer"

///|
pub fn BufferDesc::mtl_buffer(self : BufferDesc) -> @native.Handle {
  sg_buffer_desc_get_mtl_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_desc_set_mtl_buffer(
  object_ : BufferDesc,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_buffer_desc_set_mtl_buffer"

///|
pub fn BufferDesc::set_mtl_buffer(
  self : BufferDesc,
  value : @native.Handle,
) -> BufferDesc {
  sg_buffer_desc_set_mtl_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_buffer_desc_get_d3d11_buffer(
  object_ : BufferDesc,
) -> @native.Handle = "mb_gfx_sg_buffer_desc_get_d3d11_buffer"

///|
pub fn BufferDesc::d3d11_buffer(self : BufferDesc) -> @native.Handle {
  sg_buffer_desc_get_d3d11_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_desc_set_d3d11_buffer(
  object_ : BufferDesc,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_buffer_desc_set_d3d11_buffer"

///|
pub fn BufferDesc::set_d3d11_buffer(
  self : BufferDesc,
  value : @native.Handle,
) -> BufferDesc {
  sg_buffer_desc_set_d3d11_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_buffer_desc_get_wgpu_buffer(
  object_ : BufferDesc,
) -> @native.Handle = "mb_gfx_sg_buffer_desc_get_wgpu_buffer"

///|
pub fn BufferDesc::wgpu_buffer(self : BufferDesc) -> @native.Handle {
  sg_buffer_desc_get_wgpu_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_desc_set_wgpu_buffer(
  object_ : BufferDesc,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_buffer_desc_set_wgpu_buffer"

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
pub type BufferInfo

///|
extern "c" fn sg_buffer_info_new() -> BufferInfo = "mb_gfx_sg_buffer_info_new"

///|
pub fn BufferInfo::new() -> BufferInfo {
  sg_buffer_info_new()
}

///|
#borrow(object_)
extern "c" fn sg_buffer_info_copy(object_ : BufferInfo) -> BufferInfo = "mb_gfx_sg_buffer_info_copy"

///|
pub fn BufferInfo::copy(self : BufferInfo) -> BufferInfo {
  sg_buffer_info_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_info_native(object_ : BufferInfo) -> @native.Handle = "mb_gfx_sg_buffer_info_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn BufferInfo::unsafe_native_handle(self : BufferInfo) -> @native.Handle {
  sg_buffer_info_native(self)
}

///|
extern "c" fn sg_buffer_info_from_native(ptr : @native.Handle) -> BufferInfo = "mb_gfx_sg_buffer_info_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn BufferInfo::unsafe_from_native(ptr : @native.Handle) -> BufferInfo {
  sg_buffer_info_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_info_get_slot(object_ : BufferInfo) -> SlotInfo = "mb_gfx_sg_buffer_info_get_slot"

///|
pub fn BufferInfo::slot(self : BufferInfo) -> SlotInfo {
  sg_buffer_info_get_slot(self)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_buffer_info_set_slot(
  object_ : BufferInfo,
  replacement : SlotInfo,
) -> Unit = "mb_gfx_sg_buffer_info_set_slot"

///|
pub fn BufferInfo::set_slot(self : BufferInfo, value : SlotInfo) -> BufferInfo {
  sg_buffer_info_set_slot(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_buffer_info_get_num_slots(object_ : BufferInfo) -> Int32 = "mb_gfx_sg_buffer_info_get_num_slots"

///|
pub fn BufferInfo::num_slots(self : BufferInfo) -> Int32 {
  sg_buffer_info_get_num_slots(self)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_info_set_num_slots(
  object_ : BufferInfo,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_buffer_info_set_num_slots"

///|
pub fn BufferInfo::set_num_slots(
  self : BufferInfo,
  value : Int32,
) -> BufferInfo {
  sg_buffer_info_set_num_slots(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_buffer_info_get_active_slot(object_ : BufferInfo) -> Int32 = "mb_gfx_sg_buffer_info_get_active_slot"

///|
pub fn BufferInfo::active_slot(self : BufferInfo) -> Int32 {
  sg_buffer_info_get_active_slot(self)
}

///|
#borrow(object_)
extern "c" fn sg_buffer_info_set_active_slot(
  object_ : BufferInfo,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_buffer_info_set_active_slot"

///|
pub fn BufferInfo::set_active_slot(
  self : BufferInfo,
  value : Int32,
) -> BufferInfo {
  sg_buffer_info_set_active_slot(self, value)
  self
}

///|
#borrow(desc)
extern "c" fn sg_make_buffer(desc : BufferDesc) -> UInt32 = "mb_gfx_sg_make_buffer"

///|
pub fn make_buffer(desc : BufferDesc) -> Buffer {
  Buffer(sg_make_buffer(desc))
}

///|
extern "c" fn sg_destroy_buffer(buf : UInt32) -> Unit = "mb_gfx_sg_destroy_buffer"

///|
pub fn destroy_buffer(buf : Buffer) -> Unit {
  sg_destroy_buffer(buf.0)
}

///|
extern "c" fn sg_query_buffer_state(buf : UInt32) -> ResourceState = "mb_gfx_sg_query_buffer_state"

///|
pub fn query_buffer_state(buf : Buffer) -> ResourceState {
  sg_query_buffer_state(buf.0)
}

///|
extern "c" fn sg_query_buffer_info(buf : UInt32) -> BufferInfo = "mb_gfx_sg_query_buffer_info"

///|
pub fn query_buffer_info(buf : Buffer) -> BufferInfo {
  sg_query_buffer_info(buf.0)
}

///|
extern "c" fn sg_query_buffer_desc(buf : UInt32) -> BufferDesc = "mb_gfx_sg_query_buffer_desc"

///|
pub fn query_buffer_desc(buf : Buffer) -> BufferDesc {
  sg_query_buffer_desc(buf.0)
}

///|
#borrow(desc)
extern "c" fn sg_query_buffer_defaults(desc : BufferDesc) -> BufferDesc = "mb_gfx_sg_query_buffer_defaults"

///|
pub fn query_buffer_defaults(desc : BufferDesc) -> BufferDesc {
  sg_query_buffer_defaults(desc)
}

///|
extern "c" fn sg_query_buffer_size(buf : UInt32) -> UInt64 = "mb_gfx_sg_query_buffer_size"

///|
pub fn query_buffer_size(buf : Buffer) -> UInt64 {
  sg_query_buffer_size(buf.0)
}

///|
extern "c" fn sg_query_buffer_usage(buf : UInt32) -> BufferUsage = "mb_gfx_sg_query_buffer_usage"

///|
pub fn query_buffer_usage(buf : Buffer) -> BufferUsage {
  sg_query_buffer_usage(buf.0)
}

///|
extern "c" fn sg_query_view_buffer(view : UInt32) -> UInt32 = "mb_gfx_sg_query_view_buffer"

///|
pub fn query_view_buffer(view : View) -> Buffer {
  Buffer(sg_query_view_buffer(view.0))
}

///|
extern "c" fn sg_alloc_buffer() -> UInt32 = "mb_gfx_sg_alloc_buffer"

///|
pub fn alloc_buffer() -> Buffer {
  Buffer(sg_alloc_buffer())
}

///|
extern "c" fn sg_dealloc_buffer(buf : UInt32) -> Unit = "mb_gfx_sg_dealloc_buffer"

///|
pub fn dealloc_buffer(buf : Buffer) -> Unit {
  sg_dealloc_buffer(buf.0)
}

///|
#borrow(desc)
extern "c" fn sg_init_buffer(buf : UInt32, desc : BufferDesc) -> Unit = "mb_gfx_sg_init_buffer"

///|
pub fn init_buffer(buf : Buffer, desc : BufferDesc) -> Unit {
  sg_init_buffer(buf.0, desc)
}

///|
extern "c" fn sg_uninit_buffer(buf : UInt32) -> Unit = "mb_gfx_sg_uninit_buffer"

///|
pub fn uninit_buffer(buf : Buffer) -> Unit {
  sg_uninit_buffer(buf.0)
}

///|
extern "c" fn sg_fail_buffer(buf : UInt32) -> Unit = "mb_gfx_sg_fail_buffer"

///|
pub fn fail_buffer(buf : Buffer) -> Unit {
  sg_fail_buffer(buf.0)
}
