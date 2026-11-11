///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_reset_state_cache_ffi(
  value : TraceHooks,
  call : FuncRef[(() -> Unit) -> Unit],
  callback : () -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_reset_state_cache"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_reset_state_cache(
  self : TraceHooks,
  callback : () -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_reset_state_cache_ffi(
    self,
    fn(callback) { callback() },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_make_buffer_ffi(
  value : TraceHooks,
  call : FuncRef[((BufferDesc, Buffer) -> Unit, BufferDesc, UInt32) -> Unit],
  callback : (BufferDesc, Buffer) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_make_buffer"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_make_buffer(
  self : TraceHooks,
  callback : (BufferDesc, Buffer) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_make_buffer_ffi(
    self,
    fn(callback, a0, a1) { callback(a0, Buffer(a1)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_make_image_ffi(
  value : TraceHooks,
  call : FuncRef[((ImageDesc, Image) -> Unit, ImageDesc, UInt32) -> Unit],
  callback : (ImageDesc, Image) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_make_image"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_make_image(
  self : TraceHooks,
  callback : (ImageDesc, Image) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_make_image_ffi(
    self,
    fn(callback, a0, a1) { callback(a0, Image(a1)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_make_sampler_ffi(
  value : TraceHooks,
  call : FuncRef[((SamplerDesc, Sampler) -> Unit, SamplerDesc, UInt32) -> Unit],
  callback : (SamplerDesc, Sampler) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_make_sampler"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_make_sampler(
  self : TraceHooks,
  callback : (SamplerDesc, Sampler) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_make_sampler_ffi(
    self,
    fn(callback, a0, a1) { callback(a0, Sampler(a1)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_make_shader_ffi(
  value : TraceHooks,
  call : FuncRef[((ShaderDesc, Shader) -> Unit, ShaderDesc, UInt32) -> Unit],
  callback : (ShaderDesc, Shader) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_make_shader"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_make_shader(
  self : TraceHooks,
  callback : (ShaderDesc, Shader) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_make_shader_ffi(
    self,
    fn(callback, a0, a1) { callback(a0, Shader(a1)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_make_pipeline_ffi(
  value : TraceHooks,
  call : FuncRef[
    ((PipelineDesc, Pipeline) -> Unit, PipelineDesc, UInt32) -> Unit,
  ],
  callback : (PipelineDesc, Pipeline) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_make_pipeline"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_make_pipeline(
  self : TraceHooks,
  callback : (PipelineDesc, Pipeline) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_make_pipeline_ffi(
    self,
    fn(callback, a0, a1) { callback(a0, Pipeline(a1)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_make_view_ffi(
  value : TraceHooks,
  call : FuncRef[((ViewDesc, View) -> Unit, ViewDesc, UInt32) -> Unit],
  callback : (ViewDesc, View) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_make_view"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_make_view(
  self : TraceHooks,
  callback : (ViewDesc, View) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_make_view_ffi(
    self,
    fn(callback, a0, a1) { callback(a0, View(a1)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_destroy_buffer_ffi(
  value : TraceHooks,
  call : FuncRef[((Buffer) -> Unit, UInt32) -> Unit],
  callback : (Buffer) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_destroy_buffer"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_destroy_buffer(
  self : TraceHooks,
  callback : (Buffer) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_destroy_buffer_ffi(
    self,
    fn(callback, a0) { callback(Buffer(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_destroy_image_ffi(
  value : TraceHooks,
  call : FuncRef[((Image) -> Unit, UInt32) -> Unit],
  callback : (Image) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_destroy_image"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_destroy_image(
  self : TraceHooks,
  callback : (Image) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_destroy_image_ffi(
    self,
    fn(callback, a0) { callback(Image(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_destroy_sampler_ffi(
  value : TraceHooks,
  call : FuncRef[((Sampler) -> Unit, UInt32) -> Unit],
  callback : (Sampler) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_destroy_sampler"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_destroy_sampler(
  self : TraceHooks,
  callback : (Sampler) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_destroy_sampler_ffi(
    self,
    fn(callback, a0) { callback(Sampler(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_destroy_shader_ffi(
  value : TraceHooks,
  call : FuncRef[((Shader) -> Unit, UInt32) -> Unit],
  callback : (Shader) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_destroy_shader"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_destroy_shader(
  self : TraceHooks,
  callback : (Shader) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_destroy_shader_ffi(
    self,
    fn(callback, a0) { callback(Shader(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_destroy_pipeline_ffi(
  value : TraceHooks,
  call : FuncRef[((Pipeline) -> Unit, UInt32) -> Unit],
  callback : (Pipeline) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_destroy_pipeline"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_destroy_pipeline(
  self : TraceHooks,
  callback : (Pipeline) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_destroy_pipeline_ffi(
    self,
    fn(callback, a0) { callback(Pipeline(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_destroy_view_ffi(
  value : TraceHooks,
  call : FuncRef[((View) -> Unit, UInt32) -> Unit],
  callback : (View) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_destroy_view"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_destroy_view(
  self : TraceHooks,
  callback : (View) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_destroy_view_ffi(
    self,
    fn(callback, a0) { callback(View(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_write_buffer_transient_ffi(
  value : TraceHooks,
  call : FuncRef[((WriteBufferDesc) -> Unit, WriteBufferDesc) -> Unit],
  callback : (WriteBufferDesc) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_write_buffer_transient"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_write_buffer_transient(
  self : TraceHooks,
  callback : (WriteBufferDesc) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_write_buffer_transient_ffi(
    self,
    fn(callback, a0) { callback(a0) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_write_image_transient_ffi(
  value : TraceHooks,
  call : FuncRef[((WriteImageDesc) -> Unit, WriteImageDesc) -> Unit],
  callback : (WriteImageDesc) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_write_image_transient"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_write_image_transient(
  self : TraceHooks,
  callback : (WriteImageDesc) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_write_image_transient_ffi(
    self,
    fn(callback, a0) { callback(a0) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_write_buffer_unsealed_ffi(
  value : TraceHooks,
  call : FuncRef[((WriteBufferDesc) -> Unit, WriteBufferDesc) -> Unit],
  callback : (WriteBufferDesc) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_write_buffer_unsealed"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_write_buffer_unsealed(
  self : TraceHooks,
  callback : (WriteBufferDesc) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_write_buffer_unsealed_ffi(
    self,
    fn(callback, a0) { callback(a0) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_write_image_unsealed_ffi(
  value : TraceHooks,
  call : FuncRef[((WriteImageDesc) -> Unit, WriteImageDesc) -> Unit],
  callback : (WriteImageDesc) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_write_image_unsealed"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_write_image_unsealed(
  self : TraceHooks,
  callback : (WriteImageDesc) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_write_image_unsealed_ffi(
    self,
    fn(callback, a0) { callback(a0) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_seal_buffer_ffi(
  value : TraceHooks,
  call : FuncRef[((Buffer) -> Unit, UInt32) -> Unit],
  callback : (Buffer) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_seal_buffer"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_seal_buffer(
  self : TraceHooks,
  callback : (Buffer) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_seal_buffer_ffi(
    self,
    fn(callback, a0) { callback(Buffer(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_seal_image_ffi(
  value : TraceHooks,
  call : FuncRef[((Image) -> Unit, UInt32) -> Unit],
  callback : (Image) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_seal_image"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_seal_image(
  self : TraceHooks,
  callback : (Image) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_seal_image_ffi(
    self,
    fn(callback, a0) { callback(Image(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_copy_buffer_to_buffer_ffi(
  value : TraceHooks,
  call : FuncRef[
    ((CopyBufferToBufferDesc) -> Unit, CopyBufferToBufferDesc) -> Unit,
  ],
  callback : (CopyBufferToBufferDesc) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_copy_buffer_to_buffer"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_copy_buffer_to_buffer(
  self : TraceHooks,
  callback : (CopyBufferToBufferDesc) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_copy_buffer_to_buffer_ffi(
    self,
    fn(callback, a0) { callback(a0) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_copy_buffer_to_image_ffi(
  value : TraceHooks,
  call : FuncRef[
    ((CopyBufferToImageDesc) -> Unit, CopyBufferToImageDesc) -> Unit,
  ],
  callback : (CopyBufferToImageDesc) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_copy_buffer_to_image"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_copy_buffer_to_image(
  self : TraceHooks,
  callback : (CopyBufferToImageDesc) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_copy_buffer_to_image_ffi(
    self,
    fn(callback, a0) { callback(a0) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_copy_image_to_image_ffi(
  value : TraceHooks,
  call : FuncRef[((CopyImageToImageDesc) -> Unit, CopyImageToImageDesc) -> Unit],
  callback : (CopyImageToImageDesc) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_copy_image_to_image"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_copy_image_to_image(
  self : TraceHooks,
  callback : (CopyImageToImageDesc) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_copy_image_to_image_ffi(
    self,
    fn(callback, a0) { callback(a0) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_begin_pass_ffi(
  value : TraceHooks,
  call : FuncRef[((Pass) -> Unit, Pass) -> Unit],
  callback : (Pass) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_begin_pass"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_begin_pass(
  self : TraceHooks,
  callback : (Pass) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_begin_pass_ffi(
    self,
    fn(callback, a0) { callback(a0) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_apply_viewport_ffi(
  value : TraceHooks,
  call : FuncRef[
    (
      (Int32, Int32, Int32, Int32, Bool) -> Unit,
      Int32,
      Int32,
      Int32,
      Int32,
      Bool,
    ) -> Unit,
  ],
  callback : (Int32, Int32, Int32, Int32, Bool) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_apply_viewport"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_apply_viewport(
  self : TraceHooks,
  callback : (Int32, Int32, Int32, Int32, Bool) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_apply_viewport_ffi(
    self,
    fn(callback, a0, a1, a2, a3, a4) { callback(a0, a1, a2, a3, a4) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_apply_scissor_rect_ffi(
  value : TraceHooks,
  call : FuncRef[
    (
      (Int32, Int32, Int32, Int32, Bool) -> Unit,
      Int32,
      Int32,
      Int32,
      Int32,
      Bool,
    ) -> Unit,
  ],
  callback : (Int32, Int32, Int32, Int32, Bool) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_apply_scissor_rect"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_apply_scissor_rect(
  self : TraceHooks,
  callback : (Int32, Int32, Int32, Int32, Bool) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_apply_scissor_rect_ffi(
    self,
    fn(callback, a0, a1, a2, a3, a4) { callback(a0, a1, a2, a3, a4) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_apply_pipeline_ffi(
  value : TraceHooks,
  call : FuncRef[((Pipeline) -> Unit, UInt32) -> Unit],
  callback : (Pipeline) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_apply_pipeline"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_apply_pipeline(
  self : TraceHooks,
  callback : (Pipeline) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_apply_pipeline_ffi(
    self,
    fn(callback, a0) { callback(Pipeline(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_apply_bindings_ffi(
  value : TraceHooks,
  call : FuncRef[((Bindings) -> Unit, Bindings) -> Unit],
  callback : (Bindings) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_apply_bindings"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_apply_bindings(
  self : TraceHooks,
  callback : (Bindings) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_apply_bindings_ffi(
    self,
    fn(callback, a0) { callback(a0) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_apply_uniforms_ffi(
  value : TraceHooks,
  call : FuncRef[((Int32, Range) -> Unit, Int32, Range) -> Unit],
  callback : (Int32, Range) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_apply_uniforms"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_apply_uniforms(
  self : TraceHooks,
  callback : (Int32, Range) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_apply_uniforms_ffi(
    self,
    fn(callback, a0, a1) { callback(a0, a1) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_draw_ffi(
  value : TraceHooks,
  call : FuncRef[((Int32, Int32, Int32) -> Unit, Int32, Int32, Int32) -> Unit],
  callback : (Int32, Int32, Int32) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_draw"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_draw(
  self : TraceHooks,
  callback : (Int32, Int32, Int32) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_draw_ffi(
    self,
    fn(callback, a0, a1, a2) { callback(a0, a1, a2) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_draw_ex_ffi(
  value : TraceHooks,
  call : FuncRef[
    (
      (Int32, Int32, Int32, Int32, Int32) -> Unit,
      Int32,
      Int32,
      Int32,
      Int32,
      Int32,
    ) -> Unit,
  ],
  callback : (Int32, Int32, Int32, Int32, Int32) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_draw_ex"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_draw_ex(
  self : TraceHooks,
  callback : (Int32, Int32, Int32, Int32, Int32) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_draw_ex_ffi(
    self,
    fn(callback, a0, a1, a2, a3, a4) { callback(a0, a1, a2, a3, a4) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_dispatch_ffi(
  value : TraceHooks,
  call : FuncRef[((Int32, Int32, Int32) -> Unit, Int32, Int32, Int32) -> Unit],
  callback : (Int32, Int32, Int32) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_dispatch"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_dispatch(
  self : TraceHooks,
  callback : (Int32, Int32, Int32) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_dispatch_ffi(
    self,
    fn(callback, a0, a1, a2) { callback(a0, a1, a2) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_end_pass_ffi(
  value : TraceHooks,
  call : FuncRef[(() -> Unit) -> Unit],
  callback : () -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_end_pass"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_end_pass(
  self : TraceHooks,
  callback : () -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_end_pass_ffi(self, fn(callback) { callback() }, callback)
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_commit_ffi(
  value : TraceHooks,
  call : FuncRef[(() -> Unit) -> Unit],
  callback : () -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_commit"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_commit(
  self : TraceHooks,
  callback : () -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_commit_ffi(self, fn(callback) { callback() }, callback)
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_alloc_buffer_ffi(
  value : TraceHooks,
  call : FuncRef[((Buffer) -> Unit, UInt32) -> Unit],
  callback : (Buffer) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_alloc_buffer"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_alloc_buffer(
  self : TraceHooks,
  callback : (Buffer) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_alloc_buffer_ffi(
    self,
    fn(callback, a0) { callback(Buffer(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_alloc_image_ffi(
  value : TraceHooks,
  call : FuncRef[((Image) -> Unit, UInt32) -> Unit],
  callback : (Image) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_alloc_image"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_alloc_image(
  self : TraceHooks,
  callback : (Image) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_alloc_image_ffi(
    self,
    fn(callback, a0) { callback(Image(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_alloc_sampler_ffi(
  value : TraceHooks,
  call : FuncRef[((Sampler) -> Unit, UInt32) -> Unit],
  callback : (Sampler) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_alloc_sampler"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_alloc_sampler(
  self : TraceHooks,
  callback : (Sampler) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_alloc_sampler_ffi(
    self,
    fn(callback, a0) { callback(Sampler(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_alloc_shader_ffi(
  value : TraceHooks,
  call : FuncRef[((Shader) -> Unit, UInt32) -> Unit],
  callback : (Shader) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_alloc_shader"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_alloc_shader(
  self : TraceHooks,
  callback : (Shader) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_alloc_shader_ffi(
    self,
    fn(callback, a0) { callback(Shader(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_alloc_pipeline_ffi(
  value : TraceHooks,
  call : FuncRef[((Pipeline) -> Unit, UInt32) -> Unit],
  callback : (Pipeline) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_alloc_pipeline"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_alloc_pipeline(
  self : TraceHooks,
  callback : (Pipeline) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_alloc_pipeline_ffi(
    self,
    fn(callback, a0) { callback(Pipeline(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_alloc_view_ffi(
  value : TraceHooks,
  call : FuncRef[((View) -> Unit, UInt32) -> Unit],
  callback : (View) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_alloc_view"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_alloc_view(
  self : TraceHooks,
  callback : (View) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_alloc_view_ffi(
    self,
    fn(callback, a0) { callback(View(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_dealloc_buffer_ffi(
  value : TraceHooks,
  call : FuncRef[((Buffer) -> Unit, UInt32) -> Unit],
  callback : (Buffer) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_dealloc_buffer"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_dealloc_buffer(
  self : TraceHooks,
  callback : (Buffer) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_dealloc_buffer_ffi(
    self,
    fn(callback, a0) { callback(Buffer(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_dealloc_image_ffi(
  value : TraceHooks,
  call : FuncRef[((Image) -> Unit, UInt32) -> Unit],
  callback : (Image) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_dealloc_image"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_dealloc_image(
  self : TraceHooks,
  callback : (Image) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_dealloc_image_ffi(
    self,
    fn(callback, a0) { callback(Image(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_dealloc_sampler_ffi(
  value : TraceHooks,
  call : FuncRef[((Sampler) -> Unit, UInt32) -> Unit],
  callback : (Sampler) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_dealloc_sampler"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_dealloc_sampler(
  self : TraceHooks,
  callback : (Sampler) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_dealloc_sampler_ffi(
    self,
    fn(callback, a0) { callback(Sampler(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_dealloc_shader_ffi(
  value : TraceHooks,
  call : FuncRef[((Shader) -> Unit, UInt32) -> Unit],
  callback : (Shader) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_dealloc_shader"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_dealloc_shader(
  self : TraceHooks,
  callback : (Shader) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_dealloc_shader_ffi(
    self,
    fn(callback, a0) { callback(Shader(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_dealloc_pipeline_ffi(
  value : TraceHooks,
  call : FuncRef[((Pipeline) -> Unit, UInt32) -> Unit],
  callback : (Pipeline) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_dealloc_pipeline"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_dealloc_pipeline(
  self : TraceHooks,
  callback : (Pipeline) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_dealloc_pipeline_ffi(
    self,
    fn(callback, a0) { callback(Pipeline(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_dealloc_view_ffi(
  value : TraceHooks,
  call : FuncRef[((View) -> Unit, UInt32) -> Unit],
  callback : (View) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_dealloc_view"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_dealloc_view(
  self : TraceHooks,
  callback : (View) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_dealloc_view_ffi(
    self,
    fn(callback, a0) { callback(View(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_init_buffer_ffi(
  value : TraceHooks,
  call : FuncRef[((Buffer, BufferDesc) -> Unit, UInt32, BufferDesc) -> Unit],
  callback : (Buffer, BufferDesc) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_init_buffer"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_init_buffer(
  self : TraceHooks,
  callback : (Buffer, BufferDesc) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_init_buffer_ffi(
    self,
    fn(callback, a0, a1) { callback(Buffer(a0), a1) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_init_image_ffi(
  value : TraceHooks,
  call : FuncRef[((Image, ImageDesc) -> Unit, UInt32, ImageDesc) -> Unit],
  callback : (Image, ImageDesc) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_init_image"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_init_image(
  self : TraceHooks,
  callback : (Image, ImageDesc) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_init_image_ffi(
    self,
    fn(callback, a0, a1) { callback(Image(a0), a1) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_init_sampler_ffi(
  value : TraceHooks,
  call : FuncRef[((Sampler, SamplerDesc) -> Unit, UInt32, SamplerDesc) -> Unit],
  callback : (Sampler, SamplerDesc) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_init_sampler"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_init_sampler(
  self : TraceHooks,
  callback : (Sampler, SamplerDesc) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_init_sampler_ffi(
    self,
    fn(callback, a0, a1) { callback(Sampler(a0), a1) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_init_shader_ffi(
  value : TraceHooks,
  call : FuncRef[((Shader, ShaderDesc) -> Unit, UInt32, ShaderDesc) -> Unit],
  callback : (Shader, ShaderDesc) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_init_shader"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_init_shader(
  self : TraceHooks,
  callback : (Shader, ShaderDesc) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_init_shader_ffi(
    self,
    fn(callback, a0, a1) { callback(Shader(a0), a1) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_init_pipeline_ffi(
  value : TraceHooks,
  call : FuncRef[
    ((Pipeline, PipelineDesc) -> Unit, UInt32, PipelineDesc) -> Unit,
  ],
  callback : (Pipeline, PipelineDesc) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_init_pipeline"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_init_pipeline(
  self : TraceHooks,
  callback : (Pipeline, PipelineDesc) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_init_pipeline_ffi(
    self,
    fn(callback, a0, a1) { callback(Pipeline(a0), a1) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_init_view_ffi(
  value : TraceHooks,
  call : FuncRef[((View, ViewDesc) -> Unit, UInt32, ViewDesc) -> Unit],
  callback : (View, ViewDesc) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_init_view"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_init_view(
  self : TraceHooks,
  callback : (View, ViewDesc) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_init_view_ffi(
    self,
    fn(callback, a0, a1) { callback(View(a0), a1) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_uninit_buffer_ffi(
  value : TraceHooks,
  call : FuncRef[((Buffer) -> Unit, UInt32) -> Unit],
  callback : (Buffer) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_uninit_buffer"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_uninit_buffer(
  self : TraceHooks,
  callback : (Buffer) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_uninit_buffer_ffi(
    self,
    fn(callback, a0) { callback(Buffer(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_uninit_image_ffi(
  value : TraceHooks,
  call : FuncRef[((Image) -> Unit, UInt32) -> Unit],
  callback : (Image) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_uninit_image"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_uninit_image(
  self : TraceHooks,
  callback : (Image) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_uninit_image_ffi(
    self,
    fn(callback, a0) { callback(Image(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_uninit_sampler_ffi(
  value : TraceHooks,
  call : FuncRef[((Sampler) -> Unit, UInt32) -> Unit],
  callback : (Sampler) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_uninit_sampler"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_uninit_sampler(
  self : TraceHooks,
  callback : (Sampler) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_uninit_sampler_ffi(
    self,
    fn(callback, a0) { callback(Sampler(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_uninit_shader_ffi(
  value : TraceHooks,
  call : FuncRef[((Shader) -> Unit, UInt32) -> Unit],
  callback : (Shader) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_uninit_shader"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_uninit_shader(
  self : TraceHooks,
  callback : (Shader) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_uninit_shader_ffi(
    self,
    fn(callback, a0) { callback(Shader(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_uninit_pipeline_ffi(
  value : TraceHooks,
  call : FuncRef[((Pipeline) -> Unit, UInt32) -> Unit],
  callback : (Pipeline) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_uninit_pipeline"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_uninit_pipeline(
  self : TraceHooks,
  callback : (Pipeline) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_uninit_pipeline_ffi(
    self,
    fn(callback, a0) { callback(Pipeline(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_uninit_view_ffi(
  value : TraceHooks,
  call : FuncRef[((View) -> Unit, UInt32) -> Unit],
  callback : (View) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_uninit_view"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_uninit_view(
  self : TraceHooks,
  callback : (View) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_uninit_view_ffi(
    self,
    fn(callback, a0) { callback(View(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_fail_buffer_ffi(
  value : TraceHooks,
  call : FuncRef[((Buffer) -> Unit, UInt32) -> Unit],
  callback : (Buffer) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_fail_buffer"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_fail_buffer(
  self : TraceHooks,
  callback : (Buffer) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_fail_buffer_ffi(
    self,
    fn(callback, a0) { callback(Buffer(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_fail_image_ffi(
  value : TraceHooks,
  call : FuncRef[((Image) -> Unit, UInt32) -> Unit],
  callback : (Image) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_fail_image"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_fail_image(
  self : TraceHooks,
  callback : (Image) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_fail_image_ffi(
    self,
    fn(callback, a0) { callback(Image(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_fail_sampler_ffi(
  value : TraceHooks,
  call : FuncRef[((Sampler) -> Unit, UInt32) -> Unit],
  callback : (Sampler) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_fail_sampler"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_fail_sampler(
  self : TraceHooks,
  callback : (Sampler) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_fail_sampler_ffi(
    self,
    fn(callback, a0) { callback(Sampler(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_fail_shader_ffi(
  value : TraceHooks,
  call : FuncRef[((Shader) -> Unit, UInt32) -> Unit],
  callback : (Shader) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_fail_shader"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_fail_shader(
  self : TraceHooks,
  callback : (Shader) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_fail_shader_ffi(
    self,
    fn(callback, a0) { callback(Shader(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_fail_pipeline_ffi(
  value : TraceHooks,
  call : FuncRef[((Pipeline) -> Unit, UInt32) -> Unit],
  callback : (Pipeline) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_fail_pipeline"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_fail_pipeline(
  self : TraceHooks,
  callback : (Pipeline) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_fail_pipeline_ffi(
    self,
    fn(callback, a0) { callback(Pipeline(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_fail_view_ffi(
  value : TraceHooks,
  call : FuncRef[((View) -> Unit, UInt32) -> Unit],
  callback : (View) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_fail_view"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_fail_view(
  self : TraceHooks,
  callback : (View) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_fail_view_ffi(
    self,
    fn(callback, a0) { callback(View(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_push_debug_group_ffi(
  value : TraceHooks,
  call : FuncRef[((String) -> Unit, Bytes) -> Unit],
  callback : (String) -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_push_debug_group"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_push_debug_group(
  self : TraceHooks,
  callback : (String) -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_push_debug_group_ffi(
    self,
    fn(callback, a0) { callback(@utf8.decode_lossy(a0)) },
    callback,
  )
}

///|
#borrow(value)
#owned(callback)
extern "c" fn sg_trace_hooks_on_pop_debug_group_ffi(
  value : TraceHooks,
  call : FuncRef[(() -> Unit) -> Unit],
  callback : () -> Unit,
) -> TraceHooks = "mb_sg_trace_hooks_on_pop_debug_group"

///|
/// Return an independent callback configuration, replacing only this callback.
pub fn TraceHooks::on_pop_debug_group(
  self : TraceHooks,
  callback : () -> Unit,
) -> TraceHooks {
  sg_trace_hooks_on_pop_debug_group_ffi(
    self,
    fn(callback) { callback() },
    callback,
  )
}
