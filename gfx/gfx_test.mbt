///|
test "descriptor copying isolates mutable configuration and byte ownership" {
  let data = @gfx.Range::from_bytes(b"abcdefgh")
  let original = @gfx.BufferDesc::new()
    .set_label("vertex 月兔")
    .set_data(data)
  let changed = original.copy().set_label("changed")
  assert_eq(original.label(), "vertex 月兔")
  assert_eq(changed.label(), "changed")
  assert_eq(changed.data().bytes(), b"abcdefgh")
  assert_eq(@gfx.PixelFormat::Rgba8.to_int(), 23)
  let bindings = @gfx.Bindings::new().set_vertex_buffers(
    0,
    @gfx.Buffer::from_id(123U),
  )
  assert_eq(bindings.vertex_buffers(0).id(), 123U)
}

///|
test "resource lifecycle rendering trace hooks and commit callbacks" {
  if @gfx.is_headless() {
    @gfx.setup(@gfx.Desc::new().set_logger(@gfx.Logger::default()))
    assert_true(@gfx.isvalid())
    let made : Array[UInt32] = []
    let commits = Ref(0)
    let hooks = @gfx.TraceHooks::new()
      .on_make_buffer(fn(desc, buffer) {
        assert_eq(desc.label(), "test") catch {
          _ => abort("trace descriptor lost")
        }
        made.push(buffer.id())
      })
      .on_commit(fn() { commits.val += 1 })
    ignore(@gfx.install_trace_hooks(hooks))
    let listener = @gfx.CommitListener::new().on_func(fn() { commits.val += 10 })
    assert_true(@gfx.add_commit_listener(listener))
    let buffer = @gfx.make_buffer(
      @gfx.BufferDesc::new()
      .set_label("test")
      .set_data(@gfx.Range::from_bytes(b"abcdefghijklmnop")),
    )
    assert_eq(@gfx.query_buffer_state(buffer), Valid)
    assert_eq(@gfx.query_buffer_size(buffer), 16UL)
    assert_eq(made.length(), 1)
    let info = @gfx.query_buffer_info(buffer)
    assert_eq(info.slot().state(), Valid)
    @gfx.begin_pass(
      @gfx.Pass::new().set_swapchain(
        @gfx.Swapchain::new().set_width(32).set_height(32),
      ),
    )
    @gfx.end_pass()
    @gfx.commit()
    assert_eq(commits.val, 11)
    assert_true(@gfx.remove_commit_listener(listener))
    let old = @gfx.install_trace_hooks(@gfx.TraceHooks::new())
    @gfx.commit()
    assert_eq(commits.val, 11)
    ignore(@gfx.install_trace_hooks(old))
    @gfx.commit()
    assert_eq(commits.val, 12)
    @gfx.destroy_buffer(buffer)
    assert_eq(@gfx.query_buffer_state(buffer), Invalid)
    @gfx.shutdown()
  }
}

///|
test "owned ranges detach mutable inputs" {
  let values : FixedArray[UInt32] = [7U]
  let range = @gfx.Range::from_uints(values)
  values[0] = 99U
  assert_eq(range.bytes(), b"\x07\x00\x00\x00")
  assert_eq(@gfx.Range::from_floats([1.0F, 2.0F]).size(), 8UL)
  assert_eq(@gfx.Range::from_ushorts([1, 2, 3]).size(), 6UL)
  assert_eq(@gfx.Range::from_uints([1U, 2U]).size(), 8UL)
}

///|
test "image sampler view and two-phase resource allocation" {
  if @gfx.is_headless() {
    @gfx.setup(@gfx.Desc::new().set_logger(@gfx.Logger::default()))
    let image = @gfx.alloc_image()
    assert_eq(@gfx.query_image_state(image), Alloc)
    @gfx.init_image(
      image,
      @gfx.ImageDesc::new()
      .set_width(2)
      .set_height(2)
      .set_data(@gfx.Range::from_bytes(Bytes::make(16, 255))),
    )
    assert_eq(@gfx.query_image_state(image), Valid)
    let view = @gfx.make_view(
      @gfx.ViewDesc::new().set_texture(
        @gfx.TextureViewDesc::new().set_image(image),
      ),
    )
    let sampler = @gfx.make_sampler(
      @gfx.SamplerDesc::new().set_min_filter(Linear).set_mag_filter(Linear),
    )
    assert_eq(@gfx.query_view_state(view), Valid)
    assert_eq(@gfx.query_view_image(view).id(), image.id())
    assert_eq(@gfx.query_sampler_desc(sampler).min_filter(), Linear)
    assert_eq(@gfx.query_image_width(image), 2)
    assert_eq(@gfx.query_image_height(image), 2)
    assert_true(@gfx.query_pixelformat(Rgba8).sample())
    assert_eq(@gfx.query_row_pitch(Rgba8, 2, 1), 8)
    assert_eq(@gfx.query_surface_pitch(Rgba8, 2, 2, 1), 16)
    @gfx.destroy_view(view)
    @gfx.destroy_sampler(sampler)
    @gfx.uninit_image(image)
    assert_eq(@gfx.query_image_state(image), Alloc)
    @gfx.dealloc_image(image)
    assert_eq(@gfx.query_image_state(image), Invalid)
    @gfx.shutdown()
  }
}

///|
test "panic descriptor arrays reject out-of-range indices" {
  ignore(@gfx.Bindings::new().vertex_buffers(-1))
}
