///|
extern "c" fn device_ffi() -> @native.Handle = "mb_test_metal_device"

///|
extern "c" fn pixel_ffi(
  texture : @native.Handle,
  queue : @native.Handle,
  x : Int32,
  y : Int32,
) -> UInt32 = "mb_test_pixel"

///|
fn main {
  let device = device_ffi()
  guard !device.is_null() && !@gfx.is_headless() else {
    abort("offscreen validation requires macOS Metal")
  }
  let defaults = @gfx.EnvironmentDefaults::new()
    .with_color_format(Rgba8)
    .with_depth_format(None)
    .with_sample_count(1)
  let environment = @gfx.Environment::new()
    .with_defaults(defaults)
    .with_metal(@gfx.MetalEnvironment::new().with_device(device))
  @gfx.setup(
    @gfx.Desc::new()
    .with_environment(environment)
    .with_logger(@gfx.Logger::default()),
  )
  let image = @gfx.make_image(
    @gfx.ImageDesc::new()
    .with_width(64)
    .with_height(64)
    .with_pixel_format(Rgba8)
    .with_usage(@gfx.ImageUsage::new().with_color_attachment(true)),
  )
  let view = @gfx.make_view(
    @gfx.ViewDesc::new().with_color_attachment(
      @gfx.ImageViewDesc::new().with_image(image),
    ),
  )
  let buffer = @gfx.make_buffer(
    @gfx.BufferDesc::new().with_data(
      @gfx.Range::from_floats([
        0.0F,
        0.9F,
        1.0F,
        0.0F,
        0.0F,
        1.0F,
        -0.9F,
        -0.9F,
        0.0F,
        1.0F,
        0.0F,
        1.0F,
        0.9F,
        -0.9F,
        0.0F,
        0.0F,
        1.0F,
        1.0F,
      ]),
    ),
  )
  let shader = @gfx.make_shader(@shaders.triangle())
  let layout = @gfx.VertexLayoutState::new()
    .with_attrs(0, @gfx.VertexAttrState::new().with_format(Float2))
    .with_attrs(1, @gfx.VertexAttrState::new().with_format(Float4))
  let pipeline = @gfx.make_pipeline(
    @gfx.PipelineDesc::new()
    .with_shader(shader)
    .with_layout(layout)
    .with_colors(0, @gfx.ColorTargetState::new().with_pixel_format(Rgba8))
    .with_depth(@gfx.DepthState::new().with_pixel_format(None)),
  )
  guard @gfx.query_pipeline_state(pipeline) == Valid else {
    abort("offscreen pipeline failed")
  }
  let action = @gfx.PassAction::new().with_colors(
    0,
    @gfx.ColorAttachmentAction::new()
    .with_store_action(Store)
    .with_clear_value(@gfx.Color::new().with_a(1.0F)),
  )
  @gfx.begin_pass(
    @gfx.Pass::new()
    .with_action(action)
    .with_attachments(@gfx.Attachments::new().with_colors(0, view)),
  )
  @gfx.apply_pipeline(pipeline)
  @gfx.apply_bindings(@gfx.Bindings::new().with_vertex_buffers(0, buffer))
  @gfx.draw(0, 3, 1)
  @gfx.end_pass()
  @gfx.commit()
  let info = @gfx.mtl_query_image_info(image)
  let rgba = pixel_ffi(
    info.tex(info.active_slot()),
    @gfx.mtl_command_queue(),
    32,
    32,
  )
  let r = rgba & 255U
  let g = (rgba >> 8) & 255U
  let b = (rgba >> 16) & 255U
  guard r > 20U && g > 20U && b > 20U && rgba >> 24 == 255U else {
    abort("GPU pixel readback failed")
  }
  println("Metal offscreen triangle verified: RGBA=\{rgba}")
  @gfx.destroy_pipeline(pipeline)
  @gfx.destroy_shader(shader)
  @gfx.destroy_buffer(buffer)
  @gfx.destroy_view(view)
  @gfx.destroy_image(image)
  verify_compute()
  verify_image_copy()
  @gfx.shutdown()
}

///|
extern "c" fn buffer_ffi(
  buffer : @native.Handle,
  queue : @native.Handle,
) -> Bytes = "mb_test_buffer"

///|
fn verify_compute() -> Unit {
  let source =
    #|#include <metal_stdlib>
    #|using namespace metal;
    #|kernel void cs_main(device uint* values [[buffer(8)]], uint index [[thread_position_in_grid]]) {
    #|  if (index < 4) { values[index] *= 3; }
    #|}
  let data = @gfx.Range::from_uints([1U, 2U, 3U, 4U])
  let buffer = @gfx.make_buffer(
    @gfx.BufferDesc::new()
    .with_size(16UL)
    .with_usage(
      @gfx.BufferUsage::new()
      .with_storage_buffer(true)
      .with_write_unsealed(true),
    ),
  )
  @gfx.write_buffer_unsealed(
    @gfx.WriteBufferDesc::new()
    .with_src(@gfx.WriteBufferSource::new().with_data(data))
    .with_dst(@gfx.BufferLocation::new().with_buffer(buffer)),
  )
  @gfx.seal_buffer(buffer)
  let view = @gfx.make_view(
    @gfx.ViewDesc::new().with_storage_buffer(
      @gfx.BufferViewDesc::new().with_buffer(buffer),
    ),
  )
  let shader = @gfx.make_shader(
    @gfx.ShaderDesc::new()
    .with_compute_func(
      @gfx.ShaderFunction::new().with_source(source).with_entry("cs_main"),
    )
    .with_views(
      0,
      @gfx.ShaderView::new().with_storage_buffer(
        @gfx.ShaderStorageBufferView::new()
        .with_stage(Compute)
        .with_msl_buffer_n(8),
      ),
    )
    .with_mtl_threads_per_threadgroup(
      @gfx.MtlShaderThreadsPerThreadgroup::new().with_x(32).with_y(1).with_z(1),
    ),
  )
  let pipeline = @gfx.make_pipeline(
    @gfx.PipelineDesc::new().with_compute(true).with_shader(shader),
  )
  guard @gfx.query_pipeline_state(pipeline) == Valid else {
    abort("compute pipeline failed")
  }
  @gfx.begin_pass(@gfx.Pass::new().with_compute(true))
  @gfx.apply_pipeline(pipeline)
  @gfx.apply_bindings(@gfx.Bindings::new().with_views(0, view))
  @gfx.dispatch(1, 1, 1)
  @gfx.end_pass()
  @gfx.commit()
  let info = @gfx.mtl_query_buffer_info(buffer)
  let result = buffer_ffi(
    info.buf(info.active_slot()),
    @gfx.mtl_command_queue(),
  )
  guard result == @gfx.Range::from_uints([3U, 6U, 9U, 12U]).bytes() else {
    abort("compute readback failed")
  }
  println("Metal compute and unsealed buffer upload verified")
  @gfx.destroy_pipeline(pipeline)
  @gfx.destroy_shader(shader)
  @gfx.destroy_view(view)
  @gfx.destroy_buffer(buffer)
}

///|
fn verify_image_copy() -> Unit {
  let src = @gfx.make_image(
    @gfx.ImageDesc::new()
    .with_width(2)
    .with_height(2)
    .with_usage(@gfx.ImageUsage::new().with_copy_src(true))
    .with_data(
      @gfx.Range::from_bytes(
        b"\xff\x00\x00\xff\xff\x00\x00\xff\xff\x00\x00\xff\xff\x00\x00\xff",
      ),
    ),
  )
  let dst = @gfx.make_image(
    @gfx.ImageDesc::new()
    .with_width(2)
    .with_height(2)
    .with_usage(@gfx.ImageUsage::new().with_copy_dst(true)),
  )
  @gfx.copy_image_to_image(
    @gfx.CopyImageToImageDesc::new()
    .with_src(@gfx.ImageLocation::new().with_image(src))
    .with_dst(@gfx.ImageLocation::new().with_image(dst)),
  )
  @gfx.commit()
  let info = @gfx.mtl_query_image_info(dst)
  let rgba = pixel_ffi(
    info.tex(info.active_slot()),
    @gfx.mtl_command_queue(),
    0,
    0,
  )
  guard rgba == 0xff0000ffU else { abort("texture copy readback failed") }
  println("Metal texture upload and image copy verified")
  @gfx.destroy_image(src)
  @gfx.destroy_image(dst)
}
