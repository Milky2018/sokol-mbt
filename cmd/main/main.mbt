///|
fn main {
  let buffer = Ref(@gfx.Buffer::new())
  let shader = Ref(@gfx.Shader::new())
  let pipeline = Ref(@gfx.Pipeline::new())
  let bindings = Ref(@gfx.Bindings::new())
  let smoke = @env.args().contains("--smoke")
  @app.run(
    @app.Desc::new()
    .set_width(800)
    .set_height(600)
    .set_window_title("MoonBit + Sokol")
    .set_logger(@app.Logger::default()),
    init=fn() {
      @gfx.setup(
        @gfx.Desc::new()
        .set_environment(@glue.environment())
        .set_logger(@gfx.Logger::default()),
      )
      buffer.val = @gfx.make_buffer(
        @gfx.BufferDesc::new().set_data(
          @gfx.Range::from_floats([
            0.0F,
            0.65F,
            1.0F,
            0.2F,
            0.2F,
            1.0F,
            -0.65F,
            -0.5F,
            0.2F,
            1.0F,
            0.2F,
            1.0F,
            0.65F,
            -0.5F,
            0.2F,
            0.4F,
            1.0F,
            1.0F,
          ]),
        ),
      )
      shader.val = @gfx.make_shader(@shaders.triangle())
      let layout = @gfx.VertexLayoutState::new()
        .set_attrs(0, @gfx.VertexAttrState::new().set_format(Float2))
        .set_attrs(1, @gfx.VertexAttrState::new().set_format(Float4))
      pipeline.val = @gfx.make_pipeline(
        @gfx.PipelineDesc::new().set_shader(shader.val).set_layout(layout),
      )
      guard @gfx.query_pipeline_state(pipeline.val) == Valid else {
        abort("pipeline creation failed")
      }
      bindings.val = @gfx.Bindings::new().set_vertex_buffers(0, buffer.val)
    },
    frame=fn() {
      let action = @gfx.PassAction::new().set_colors(
        0,
        @gfx.ColorAttachmentAction::new().set_clear_value(
          @gfx.Color::new().set_r(0.06F).set_g(0.08F).set_b(0.12F).set_a(1.0F),
        ),
      )
      @gfx.begin_pass(
        @gfx.Pass::new().set_action(action).set_swapchain(@glue.swapchain()),
      )
      @gfx.apply_pipeline(pipeline.val)
      @gfx.apply_bindings(bindings.val)
      @gfx.draw(0, 3, 1)
      @gfx.end_pass()
      @gfx.commit()
      if smoke && @app.frame_count() >= 10UL {
        println("Rendered 10 frames with Sokol")
        @app.quit()
      }
    },
    event=fn(event) {
      if event.type_() == KeyDown && event.key_code() == Escape {
        @app.request_quit()
      }
    },
    cleanup=fn() {
      @gfx.destroy_pipeline(pipeline.val)
      @gfx.destroy_shader(shader.val)
      @gfx.destroy_buffer(buffer.val)
      @gfx.shutdown()
    },
  )
}
