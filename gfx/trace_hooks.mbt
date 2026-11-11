///|
/// Owned C value. copy() creates an independent copy.
pub type TraceHooks

///|
extern "c" fn sg_trace_hooks_new() -> TraceHooks = "mb_gfx_sg_trace_hooks_new"

///|
pub fn TraceHooks::new() -> TraceHooks {
  sg_trace_hooks_new()
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_copy(object_ : TraceHooks) -> TraceHooks = "mb_gfx_sg_trace_hooks_copy"

///|
pub fn TraceHooks::copy(self : TraceHooks) -> TraceHooks {
  sg_trace_hooks_copy(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_native(object_ : TraceHooks) -> @native.Handle = "mb_gfx_sg_trace_hooks_native"

///|
/// Unowned pointer. Keep this object alive across the native operation.
pub fn TraceHooks::unsafe_native_handle(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_native(self)
}

///|
extern "c" fn sg_trace_hooks_from_native(ptr : @native.Handle) -> TraceHooks = "mb_gfx_sg_trace_hooks_from_native"

///|
/// The pointer and its owned string/range fields must be readable for this call.
pub fn TraceHooks::unsafe_from_native(ptr : @native.Handle) -> TraceHooks {
  sg_trace_hooks_from_native(ptr)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_user_data(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_user_data"

///|
pub fn TraceHooks::user_data(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_user_data(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_user_data(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_user_data"

///|
pub fn TraceHooks::set_user_data(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_user_data(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_reset_state_cache(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_reset_state_cache"

///|
pub fn TraceHooks::reset_state_cache(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_reset_state_cache(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_reset_state_cache(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_reset_state_cache"

///|
pub fn TraceHooks::set_reset_state_cache(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_reset_state_cache(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_make_buffer(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_make_buffer"

///|
pub fn TraceHooks::make_buffer(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_make_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_make_buffer(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_make_buffer"

///|
pub fn TraceHooks::set_make_buffer(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_make_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_make_image(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_make_image"

///|
pub fn TraceHooks::make_image(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_make_image(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_make_image(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_make_image"

///|
pub fn TraceHooks::set_make_image(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_make_image(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_make_sampler(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_make_sampler"

///|
pub fn TraceHooks::make_sampler(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_make_sampler(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_make_sampler(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_make_sampler"

///|
pub fn TraceHooks::set_make_sampler(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_make_sampler(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_make_shader(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_make_shader"

///|
pub fn TraceHooks::make_shader(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_make_shader(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_make_shader(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_make_shader"

///|
pub fn TraceHooks::set_make_shader(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_make_shader(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_make_pipeline(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_make_pipeline"

///|
pub fn TraceHooks::make_pipeline(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_make_pipeline(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_make_pipeline(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_make_pipeline"

///|
pub fn TraceHooks::set_make_pipeline(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_make_pipeline(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_make_view(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_make_view"

///|
pub fn TraceHooks::make_view(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_make_view(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_make_view(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_make_view"

///|
pub fn TraceHooks::set_make_view(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_make_view(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_destroy_buffer(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_destroy_buffer"

///|
pub fn TraceHooks::destroy_buffer(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_destroy_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_destroy_buffer(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_destroy_buffer"

///|
pub fn TraceHooks::set_destroy_buffer(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_destroy_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_destroy_image(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_destroy_image"

///|
pub fn TraceHooks::destroy_image(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_destroy_image(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_destroy_image(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_destroy_image"

///|
pub fn TraceHooks::set_destroy_image(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_destroy_image(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_destroy_sampler(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_destroy_sampler"

///|
pub fn TraceHooks::destroy_sampler(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_destroy_sampler(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_destroy_sampler(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_destroy_sampler"

///|
pub fn TraceHooks::set_destroy_sampler(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_destroy_sampler(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_destroy_shader(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_destroy_shader"

///|
pub fn TraceHooks::destroy_shader(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_destroy_shader(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_destroy_shader(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_destroy_shader"

///|
pub fn TraceHooks::set_destroy_shader(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_destroy_shader(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_destroy_pipeline(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_destroy_pipeline"

///|
pub fn TraceHooks::destroy_pipeline(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_destroy_pipeline(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_destroy_pipeline(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_destroy_pipeline"

///|
pub fn TraceHooks::set_destroy_pipeline(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_destroy_pipeline(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_destroy_view(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_destroy_view"

///|
pub fn TraceHooks::destroy_view(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_destroy_view(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_destroy_view(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_destroy_view"

///|
pub fn TraceHooks::set_destroy_view(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_destroy_view(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_write_buffer_transient(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_write_buffer_transient"

///|
pub fn TraceHooks::write_buffer_transient(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_write_buffer_transient(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_write_buffer_transient(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_write_buffer_transient"

///|
pub fn TraceHooks::set_write_buffer_transient(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_write_buffer_transient(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_write_image_transient(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_write_image_transient"

///|
pub fn TraceHooks::write_image_transient(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_write_image_transient(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_write_image_transient(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_write_image_transient"

///|
pub fn TraceHooks::set_write_image_transient(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_write_image_transient(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_write_buffer_unsealed(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_write_buffer_unsealed"

///|
pub fn TraceHooks::write_buffer_unsealed(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_write_buffer_unsealed(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_write_buffer_unsealed(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_write_buffer_unsealed"

///|
pub fn TraceHooks::set_write_buffer_unsealed(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_write_buffer_unsealed(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_write_image_unsealed(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_write_image_unsealed"

///|
pub fn TraceHooks::write_image_unsealed(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_write_image_unsealed(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_write_image_unsealed(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_write_image_unsealed"

///|
pub fn TraceHooks::set_write_image_unsealed(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_write_image_unsealed(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_seal_buffer(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_seal_buffer"

///|
pub fn TraceHooks::seal_buffer(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_seal_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_seal_buffer(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_seal_buffer"

///|
pub fn TraceHooks::set_seal_buffer(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_seal_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_seal_image(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_seal_image"

///|
pub fn TraceHooks::seal_image(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_seal_image(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_seal_image(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_seal_image"

///|
pub fn TraceHooks::set_seal_image(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_seal_image(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_copy_buffer_to_buffer(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_copy_buffer_to_buffer"

///|
pub fn TraceHooks::copy_buffer_to_buffer(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_copy_buffer_to_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_copy_buffer_to_buffer(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_copy_buffer_to_buffer"

///|
pub fn TraceHooks::set_copy_buffer_to_buffer(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_copy_buffer_to_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_copy_buffer_to_image(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_copy_buffer_to_image"

///|
pub fn TraceHooks::copy_buffer_to_image(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_copy_buffer_to_image(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_copy_buffer_to_image(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_copy_buffer_to_image"

///|
pub fn TraceHooks::set_copy_buffer_to_image(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_copy_buffer_to_image(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_copy_image_to_image(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_copy_image_to_image"

///|
pub fn TraceHooks::copy_image_to_image(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_copy_image_to_image(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_copy_image_to_image(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_copy_image_to_image"

///|
pub fn TraceHooks::set_copy_image_to_image(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_copy_image_to_image(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_begin_pass(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_begin_pass"

///|
pub fn TraceHooks::begin_pass(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_begin_pass(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_begin_pass(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_begin_pass"

///|
pub fn TraceHooks::set_begin_pass(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_begin_pass(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_apply_viewport(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_apply_viewport"

///|
pub fn TraceHooks::apply_viewport(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_apply_viewport(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_apply_viewport(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_apply_viewport"

///|
pub fn TraceHooks::set_apply_viewport(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_apply_viewport(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_apply_scissor_rect(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_apply_scissor_rect"

///|
pub fn TraceHooks::apply_scissor_rect(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_apply_scissor_rect(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_apply_scissor_rect(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_apply_scissor_rect"

///|
pub fn TraceHooks::set_apply_scissor_rect(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_apply_scissor_rect(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_apply_pipeline(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_apply_pipeline"

///|
pub fn TraceHooks::apply_pipeline(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_apply_pipeline(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_apply_pipeline(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_apply_pipeline"

///|
pub fn TraceHooks::set_apply_pipeline(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_apply_pipeline(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_apply_bindings(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_apply_bindings"

///|
pub fn TraceHooks::apply_bindings(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_apply_bindings(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_apply_bindings(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_apply_bindings"

///|
pub fn TraceHooks::set_apply_bindings(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_apply_bindings(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_apply_uniforms(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_apply_uniforms"

///|
pub fn TraceHooks::apply_uniforms(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_apply_uniforms(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_apply_uniforms(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_apply_uniforms"

///|
pub fn TraceHooks::set_apply_uniforms(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_apply_uniforms(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_draw(object_ : TraceHooks) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_draw"

///|
pub fn TraceHooks::draw(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_draw(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_draw(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_draw"

///|
pub fn TraceHooks::set_draw(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_draw(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_draw_ex(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_draw_ex"

///|
pub fn TraceHooks::draw_ex(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_draw_ex(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_draw_ex(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_draw_ex"

///|
pub fn TraceHooks::set_draw_ex(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_draw_ex(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_dispatch(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_dispatch"

///|
pub fn TraceHooks::dispatch(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_dispatch(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_dispatch(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_dispatch"

///|
pub fn TraceHooks::set_dispatch(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_dispatch(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_end_pass(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_end_pass"

///|
pub fn TraceHooks::end_pass(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_end_pass(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_end_pass(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_end_pass"

///|
pub fn TraceHooks::set_end_pass(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_end_pass(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_commit(object_ : TraceHooks) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_commit"

///|
pub fn TraceHooks::commit(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_commit(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_commit(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_commit"

///|
pub fn TraceHooks::set_commit(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_commit(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_alloc_buffer(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_alloc_buffer"

///|
pub fn TraceHooks::alloc_buffer(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_alloc_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_alloc_buffer(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_alloc_buffer"

///|
pub fn TraceHooks::set_alloc_buffer(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_alloc_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_alloc_image(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_alloc_image"

///|
pub fn TraceHooks::alloc_image(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_alloc_image(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_alloc_image(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_alloc_image"

///|
pub fn TraceHooks::set_alloc_image(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_alloc_image(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_alloc_sampler(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_alloc_sampler"

///|
pub fn TraceHooks::alloc_sampler(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_alloc_sampler(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_alloc_sampler(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_alloc_sampler"

///|
pub fn TraceHooks::set_alloc_sampler(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_alloc_sampler(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_alloc_shader(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_alloc_shader"

///|
pub fn TraceHooks::alloc_shader(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_alloc_shader(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_alloc_shader(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_alloc_shader"

///|
pub fn TraceHooks::set_alloc_shader(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_alloc_shader(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_alloc_pipeline(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_alloc_pipeline"

///|
pub fn TraceHooks::alloc_pipeline(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_alloc_pipeline(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_alloc_pipeline(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_alloc_pipeline"

///|
pub fn TraceHooks::set_alloc_pipeline(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_alloc_pipeline(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_alloc_view(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_alloc_view"

///|
pub fn TraceHooks::alloc_view(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_alloc_view(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_alloc_view(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_alloc_view"

///|
pub fn TraceHooks::set_alloc_view(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_alloc_view(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_dealloc_buffer(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_dealloc_buffer"

///|
pub fn TraceHooks::dealloc_buffer(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_dealloc_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_dealloc_buffer(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_dealloc_buffer"

///|
pub fn TraceHooks::set_dealloc_buffer(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_dealloc_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_dealloc_image(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_dealloc_image"

///|
pub fn TraceHooks::dealloc_image(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_dealloc_image(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_dealloc_image(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_dealloc_image"

///|
pub fn TraceHooks::set_dealloc_image(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_dealloc_image(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_dealloc_sampler(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_dealloc_sampler"

///|
pub fn TraceHooks::dealloc_sampler(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_dealloc_sampler(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_dealloc_sampler(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_dealloc_sampler"

///|
pub fn TraceHooks::set_dealloc_sampler(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_dealloc_sampler(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_dealloc_shader(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_dealloc_shader"

///|
pub fn TraceHooks::dealloc_shader(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_dealloc_shader(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_dealloc_shader(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_dealloc_shader"

///|
pub fn TraceHooks::set_dealloc_shader(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_dealloc_shader(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_dealloc_pipeline(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_dealloc_pipeline"

///|
pub fn TraceHooks::dealloc_pipeline(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_dealloc_pipeline(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_dealloc_pipeline(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_dealloc_pipeline"

///|
pub fn TraceHooks::set_dealloc_pipeline(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_dealloc_pipeline(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_dealloc_view(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_dealloc_view"

///|
pub fn TraceHooks::dealloc_view(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_dealloc_view(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_dealloc_view(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_dealloc_view"

///|
pub fn TraceHooks::set_dealloc_view(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_dealloc_view(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_init_buffer(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_init_buffer"

///|
pub fn TraceHooks::init_buffer(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_init_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_init_buffer(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_init_buffer"

///|
pub fn TraceHooks::set_init_buffer(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_init_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_init_image(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_init_image"

///|
pub fn TraceHooks::init_image(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_init_image(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_init_image(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_init_image"

///|
pub fn TraceHooks::set_init_image(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_init_image(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_init_sampler(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_init_sampler"

///|
pub fn TraceHooks::init_sampler(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_init_sampler(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_init_sampler(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_init_sampler"

///|
pub fn TraceHooks::set_init_sampler(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_init_sampler(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_init_shader(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_init_shader"

///|
pub fn TraceHooks::init_shader(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_init_shader(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_init_shader(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_init_shader"

///|
pub fn TraceHooks::set_init_shader(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_init_shader(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_init_pipeline(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_init_pipeline"

///|
pub fn TraceHooks::init_pipeline(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_init_pipeline(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_init_pipeline(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_init_pipeline"

///|
pub fn TraceHooks::set_init_pipeline(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_init_pipeline(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_init_view(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_init_view"

///|
pub fn TraceHooks::init_view(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_init_view(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_init_view(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_init_view"

///|
pub fn TraceHooks::set_init_view(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_init_view(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_uninit_buffer(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_uninit_buffer"

///|
pub fn TraceHooks::uninit_buffer(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_uninit_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_uninit_buffer(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_uninit_buffer"

///|
pub fn TraceHooks::set_uninit_buffer(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_uninit_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_uninit_image(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_uninit_image"

///|
pub fn TraceHooks::uninit_image(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_uninit_image(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_uninit_image(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_uninit_image"

///|
pub fn TraceHooks::set_uninit_image(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_uninit_image(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_uninit_sampler(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_uninit_sampler"

///|
pub fn TraceHooks::uninit_sampler(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_uninit_sampler(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_uninit_sampler(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_uninit_sampler"

///|
pub fn TraceHooks::set_uninit_sampler(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_uninit_sampler(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_uninit_shader(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_uninit_shader"

///|
pub fn TraceHooks::uninit_shader(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_uninit_shader(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_uninit_shader(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_uninit_shader"

///|
pub fn TraceHooks::set_uninit_shader(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_uninit_shader(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_uninit_pipeline(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_uninit_pipeline"

///|
pub fn TraceHooks::uninit_pipeline(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_uninit_pipeline(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_uninit_pipeline(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_uninit_pipeline"

///|
pub fn TraceHooks::set_uninit_pipeline(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_uninit_pipeline(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_uninit_view(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_uninit_view"

///|
pub fn TraceHooks::uninit_view(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_uninit_view(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_uninit_view(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_uninit_view"

///|
pub fn TraceHooks::set_uninit_view(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_uninit_view(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_fail_buffer(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_fail_buffer"

///|
pub fn TraceHooks::fail_buffer(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_fail_buffer(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_fail_buffer(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_fail_buffer"

///|
pub fn TraceHooks::set_fail_buffer(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_fail_buffer(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_fail_image(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_fail_image"

///|
pub fn TraceHooks::fail_image(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_fail_image(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_fail_image(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_fail_image"

///|
pub fn TraceHooks::set_fail_image(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_fail_image(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_fail_sampler(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_fail_sampler"

///|
pub fn TraceHooks::fail_sampler(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_fail_sampler(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_fail_sampler(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_fail_sampler"

///|
pub fn TraceHooks::set_fail_sampler(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_fail_sampler(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_fail_shader(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_fail_shader"

///|
pub fn TraceHooks::fail_shader(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_fail_shader(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_fail_shader(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_fail_shader"

///|
pub fn TraceHooks::set_fail_shader(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_fail_shader(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_fail_pipeline(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_fail_pipeline"

///|
pub fn TraceHooks::fail_pipeline(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_fail_pipeline(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_fail_pipeline(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_fail_pipeline"

///|
pub fn TraceHooks::set_fail_pipeline(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_fail_pipeline(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_fail_view(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_fail_view"

///|
pub fn TraceHooks::fail_view(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_fail_view(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_fail_view(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_fail_view"

///|
pub fn TraceHooks::set_fail_view(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_fail_view(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_push_debug_group(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_push_debug_group"

///|
pub fn TraceHooks::push_debug_group(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_push_debug_group(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_push_debug_group(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_push_debug_group"

///|
pub fn TraceHooks::set_push_debug_group(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_push_debug_group(self, value)
  self
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_get_pop_debug_group(
  object_ : TraceHooks,
) -> @native.Handle = "mb_gfx_sg_trace_hooks_get_pop_debug_group"

///|
pub fn TraceHooks::pop_debug_group(self : TraceHooks) -> @native.Handle {
  sg_trace_hooks_get_pop_debug_group(self)
}

///|
#borrow(object_)
extern "c" fn sg_trace_hooks_set_pop_debug_group(
  object_ : TraceHooks,
  replacement : @native.Handle,
) -> Unit = "mb_gfx_sg_trace_hooks_set_pop_debug_group"

///|
pub fn TraceHooks::set_pop_debug_group(
  self : TraceHooks,
  value : @native.Handle,
) -> TraceHooks {
  sg_trace_hooks_set_pop_debug_group(self, value)
  self
}
