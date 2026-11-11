///|
fn pump_until(done : () -> Bool) -> Unit {
  @time.setup()
  let start = @time.now()
  while !done() && @time.sec(@time.since(start)) < 5.0 {
    @fetch.dowork()
  }
}

///|
test "async fetch keeps closures and buffers alive through completion" {
  @fetch.setup(@fetch.Desc::new().set_logger(@fetch.Logger::default()))
  let saved : Array[@fetch.Response] = []
  let request = @fetch.Request::new()
    .set_path("native/SOKOL-LICENSE")
    .set_buffer(@fetch.Range::allocate(16384))
  let handle = @fetch.send(request, response => saved.push(response))
  assert_true(handle.id() != 0U)
  pump_until(fn() { saved.any(r => r.finished()) })
  assert_true(saved.any(r => r.finished()))
  assert_true(saved.any(r => r.fetched() && r.data().size() > 0UL))
  assert_true(!@fetch.handle_valid(handle))
  @fetch.shutdown()
  assert_eq(request.buffer().bytes(), Bytes::make(16384, 0))
  let completed = saved.filter(r => r.fetched())
  assert_true(completed[0].data().bytes().length() > 0)
  assert_eq(completed[0].path(), "native/SOKOL-LICENSE")
}

///|
test "missing file reports a terminal error and shutdown releases pending closures" {
  @fetch.setup(@fetch.Desc::new())
  let results : Array[@fetch.Response] = []
  ignore(
    @fetch.send(
      @fetch.Request::new()
      .set_path(".prepare/no-such-file")
      .set_buffer(@fetch.Range::allocate(64)),
      response => results.push(response),
    ),
  )
  pump_until(fn() { results.any(r => r.finished()) })
  assert_true(results.any(r => r.failed() && r.error_code() == FileNotFound))
  ignore(
    @fetch.send(
      @fetch.Request::new()
      .set_path("native/SOKOL-LICENSE")
      .set_buffer(@fetch.Range::allocate(16384)),
      _ => (),
    ),
  )
  @fetch.shutdown()
}

///|
test "cancellation delivers a final response" {
  @fetch.setup(@fetch.Desc::new())
  let results : Array[@fetch.Response] = []
  let handle = @fetch.send(
    @fetch.Request::new()
    .set_path("native/SOKOL-LICENSE")
    .set_buffer(@fetch.Range::allocate(16384)),
    r => results.push(r),
  )
  @fetch.cancel(handle)
  pump_until(fn() { results.any(r => r.finished()) })
  assert_true(results.any(r => r.finished() && r.cancelled()))
  @fetch.shutdown()
}

///|
test "streaming can bind and replace buffers inside callbacks" {
  @fetch.setup(@fetch.Desc::new())
  let chunks : Array[Bytes] = []
  let finished = Ref(false)
  let request = @fetch.Request::new()
    .set_path("native/SOKOL-LICENSE")
    .set_chunk_size(64U)
    .set_buffer(@fetch.Range::allocate(64))
  let handle = @fetch.send(request, fn(r) {
    if r.dispatched() {
      @fetch.bind_buffer(r.handle(), @fetch.Range::allocate(64))
    }
    if r.fetched() {
      chunks.push(r.data().bytes())
      ignore(@fetch.unbind_buffer(r.handle()))
      if !r.finished() {
        @fetch.bind_buffer(r.handle(), @fetch.Range::allocate(64))
      }
    }
    if r.finished() {
      finished.val = true
    }
  })
  assert_true(handle.id() != 0U)
  pump_until(fn() { finished.val })
  assert_true(finished.val)
  assert_true(chunks.length() > 1)
  assert_true(!@fetch.handle_valid(handle))
  @fetch.shutdown()
  assert_eq(chunks[0].length(), 64)
}

///|
test "a non-streaming request can acquire its buffer on dispatch" {
  @fetch.setup(@fetch.Desc::new())
  let dispatched = Ref(false)
  let finished = Ref(false)
  let handle = @fetch.send(
    @fetch.Request::new().set_path("native/SOKOL-LICENSE"),
    fn(r) {
      if r.dispatched() {
        dispatched.val = true
        @fetch.bind_buffer(r.handle(), @fetch.Range::allocate(16384))
      }
      if r.finished() {
        finished.val = true
      }
    },
  )
  assert_true(handle.id() != 0U)
  pump_until(fn() { finished.val })
  assert_true(dispatched.val && finished.val)
  @fetch.shutdown()
}

///|
test "rejected requests never invoke callbacks" {
  @fetch.setup(@fetch.Desc::new().set_max_requests(1U))
  let called = Ref(false)
  let request = @fetch.Request::new()
    .set_path("native/SOKOL-LICENSE")
    .set_buffer(@fetch.Range::allocate(16384))
  let accepted = @fetch.send(request, _ => called.val = true)
  let rejected = @fetch.send(request, _ => called.val = true)
  assert_true(accepted.id() != 0U)
  assert_eq(rejected.id(), 0U)
  @fetch.shutdown()
  assert_true(!called.val)
}
