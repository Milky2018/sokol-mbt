///|
/// Owned C value. copy() creates an independent copy.
pub type VertexBufferLayoutState

///|
extern "c" fn sg_vertex_buffer_layout_state_new() -> VertexBufferLayoutState = "mb_gfx_sg_vertex_buffer_layout_state_new"

///|
pub fn VertexBufferLayoutState::new() -> VertexBufferLayoutState {
  sg_vertex_buffer_layout_state_new()
}

///|
#borrow(object_)
extern "c" fn sg_vertex_buffer_layout_state_copy(
  object_ : VertexBufferLayoutState,
) -> VertexBufferLayoutState = "mb_gfx_sg_vertex_buffer_layout_state_copy"

///|
pub fn VertexBufferLayoutState::copy(
  self : VertexBufferLayoutState,
) -> VertexBufferLayoutState {
  sg_vertex_buffer_layout_state_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_vertex_buffer_layout_state_native(
  object_ : VertexBufferLayoutState,
) -> @native.Handle = "mb_gfx_sg_vertex_buffer_layout_state_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn VertexBufferLayoutState::unsafe_native_handle(
  self : VertexBufferLayoutState,
) -> @native.Handle {
  sg_vertex_buffer_layout_state_native(self)
}

///|
extern "c" fn sg_vertex_buffer_layout_state_from_native(
  ptr : @native.Handle,
) -> VertexBufferLayoutState = "mb_gfx_sg_vertex_buffer_layout_state_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn VertexBufferLayoutState::unsafe_from_native(
  ptr : @native.Handle,
) -> VertexBufferLayoutState {
  sg_vertex_buffer_layout_state_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_vertex_buffer_layout_state_get_stride(
  object_ : VertexBufferLayoutState,
) -> Int32 = "mb_gfx_sg_vertex_buffer_layout_state_get_stride"

///|
pub fn VertexBufferLayoutState::stride(self : VertexBufferLayoutState) -> Int32 {
  sg_vertex_buffer_layout_state_get_stride(self)
}

///|
#borrow(object_)
extern "c" fn sg_vertex_buffer_layout_state_set_stride(
  object_ : VertexBufferLayoutState,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_vertex_buffer_layout_state_set_stride"

///|
pub fn VertexBufferLayoutState::set_stride(
  self : VertexBufferLayoutState,
  value : Int32,
) -> VertexBufferLayoutState {
  sg_vertex_buffer_layout_state_set_stride(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_vertex_buffer_layout_state_get_step_func(
  object_ : VertexBufferLayoutState,
) -> VertexStep = "mb_gfx_sg_vertex_buffer_layout_state_get_step_func"

///|
pub fn VertexBufferLayoutState::step_func(
  self : VertexBufferLayoutState,
) -> VertexStep {
  sg_vertex_buffer_layout_state_get_step_func(self)
}

///|
#borrow(object_)
extern "c" fn sg_vertex_buffer_layout_state_set_step_func(
  object_ : VertexBufferLayoutState,
  replacement : VertexStep,
) -> Unit = "mb_gfx_sg_vertex_buffer_layout_state_set_step_func"

///|
pub fn VertexBufferLayoutState::set_step_func(
  self : VertexBufferLayoutState,
  value : VertexStep,
) -> VertexBufferLayoutState {
  sg_vertex_buffer_layout_state_set_step_func(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_vertex_buffer_layout_state_get_step_rate(
  object_ : VertexBufferLayoutState,
) -> Int32 = "mb_gfx_sg_vertex_buffer_layout_state_get_step_rate"

///|
pub fn VertexBufferLayoutState::step_rate(
  self : VertexBufferLayoutState,
) -> Int32 {
  sg_vertex_buffer_layout_state_get_step_rate(self)
}

///|
#borrow(object_)
extern "c" fn sg_vertex_buffer_layout_state_set_step_rate(
  object_ : VertexBufferLayoutState,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_vertex_buffer_layout_state_set_step_rate"

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
extern "c" fn sg_vertex_attr_state_new() -> VertexAttrState = "mb_gfx_sg_vertex_attr_state_new"

///|
pub fn VertexAttrState::new() -> VertexAttrState {
  sg_vertex_attr_state_new()
}

///|
#borrow(object_)
extern "c" fn sg_vertex_attr_state_copy(
  object_ : VertexAttrState,
) -> VertexAttrState = "mb_gfx_sg_vertex_attr_state_copy"

///|
pub fn VertexAttrState::copy(self : VertexAttrState) -> VertexAttrState {
  sg_vertex_attr_state_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_vertex_attr_state_native(
  object_ : VertexAttrState,
) -> @native.Handle = "mb_gfx_sg_vertex_attr_state_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn VertexAttrState::unsafe_native_handle(
  self : VertexAttrState,
) -> @native.Handle {
  sg_vertex_attr_state_native(self)
}

///|
extern "c" fn sg_vertex_attr_state_from_native(
  ptr : @native.Handle,
) -> VertexAttrState = "mb_gfx_sg_vertex_attr_state_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn VertexAttrState::unsafe_from_native(
  ptr : @native.Handle,
) -> VertexAttrState {
  sg_vertex_attr_state_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_vertex_attr_state_get_buffer_index(
  object_ : VertexAttrState,
) -> Int32 = "mb_gfx_sg_vertex_attr_state_get_buffer_index"

///|
pub fn VertexAttrState::buffer_index(self : VertexAttrState) -> Int32 {
  sg_vertex_attr_state_get_buffer_index(self)
}

///|
#borrow(object_)
extern "c" fn sg_vertex_attr_state_set_buffer_index(
  object_ : VertexAttrState,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_vertex_attr_state_set_buffer_index"

///|
pub fn VertexAttrState::set_buffer_index(
  self : VertexAttrState,
  value : Int32,
) -> VertexAttrState {
  sg_vertex_attr_state_set_buffer_index(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_vertex_attr_state_get_offset(
  object_ : VertexAttrState,
) -> Int32 = "mb_gfx_sg_vertex_attr_state_get_offset"

///|
pub fn VertexAttrState::offset(self : VertexAttrState) -> Int32 {
  sg_vertex_attr_state_get_offset(self)
}

///|
#borrow(object_)
extern "c" fn sg_vertex_attr_state_set_offset(
  object_ : VertexAttrState,
  replacement : Int32,
) -> Unit = "mb_gfx_sg_vertex_attr_state_set_offset"

///|
pub fn VertexAttrState::set_offset(
  self : VertexAttrState,
  value : Int32,
) -> VertexAttrState {
  sg_vertex_attr_state_set_offset(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_vertex_attr_state_get_format(
  object_ : VertexAttrState,
) -> VertexFormat = "mb_gfx_sg_vertex_attr_state_get_format"

///|
pub fn VertexAttrState::format(self : VertexAttrState) -> VertexFormat {
  sg_vertex_attr_state_get_format(self)
}

///|
#borrow(object_)
extern "c" fn sg_vertex_attr_state_set_format(
  object_ : VertexAttrState,
  replacement : VertexFormat,
) -> Unit = "mb_gfx_sg_vertex_attr_state_set_format"

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
extern "c" fn sg_vertex_layout_state_new() -> VertexLayoutState = "mb_gfx_sg_vertex_layout_state_new"

///|
pub fn VertexLayoutState::new() -> VertexLayoutState {
  sg_vertex_layout_state_new()
}

///|
#borrow(object_)
extern "c" fn sg_vertex_layout_state_copy(
  object_ : VertexLayoutState,
) -> VertexLayoutState = "mb_gfx_sg_vertex_layout_state_copy"

///|
pub fn VertexLayoutState::copy(self : VertexLayoutState) -> VertexLayoutState {
  sg_vertex_layout_state_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_vertex_layout_state_native(
  object_ : VertexLayoutState,
) -> @native.Handle = "mb_gfx_sg_vertex_layout_state_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn VertexLayoutState::unsafe_native_handle(
  self : VertexLayoutState,
) -> @native.Handle {
  sg_vertex_layout_state_native(self)
}

///|
extern "c" fn sg_vertex_layout_state_from_native(
  ptr : @native.Handle,
) -> VertexLayoutState = "mb_gfx_sg_vertex_layout_state_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn VertexLayoutState::unsafe_from_native(
  ptr : @native.Handle,
) -> VertexLayoutState {
  sg_vertex_layout_state_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_vertex_layout_state_get_buffers(
  object_ : VertexLayoutState,
  i0 : Int32,
) -> VertexBufferLayoutState = "mb_gfx_sg_vertex_layout_state_get_buffers"

///|
pub fn VertexLayoutState::buffers(
  self : VertexLayoutState,
  i0 : Int32,
) -> VertexBufferLayoutState {
  guard i0 >= 0 && i0 < 8 else { abort("descriptor array index out of bounds") }
  sg_vertex_layout_state_get_buffers(self, i0)
}

///|
#borrow(object_, replacement)
extern "c" fn sg_vertex_layout_state_set_buffers(
  object_ : VertexLayoutState,
  i0 : Int32,
  replacement : VertexBufferLayoutState,
) -> Unit = "mb_gfx_sg_vertex_layout_state_set_buffers"

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
#borrow(object_)
extern "c" fn sg_vertex_layout_state_get_attrs(
  object_ : VertexLayoutState,
  i0 : Int32,
) -> VertexAttrState = "mb_gfx_sg_vertex_layout_state_get_attrs"

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
#borrow(object_, replacement)
extern "c" fn sg_vertex_layout_state_set_attrs(
  object_ : VertexLayoutState,
  i0 : Int32,
  replacement : VertexAttrState,
) -> Unit = "mb_gfx_sg_vertex_layout_state_set_attrs"

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
