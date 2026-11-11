///|
type Probe

///|
extern "c" fn new_probe() -> Probe = "mb_test_probe_new"

///|
#borrow(probe)
extern "c" fn touch_probe(probe : Probe) = "mb_test_probe_touch"

///|
extern "c" fn live_probes() -> Int32 = "mb_test_probe_live"

///|
fn replaced_hook() -> @gfx.TraceHooks {
  let probe = new_probe()
  let first = @gfx.TraceHooks::new().on_commit(fn() { touch_probe(probe) })
  first.on_commit(fn() {  })
}

///|
test "replacing a callback immediately releases its obsolete capture" {
  assert_eq(live_probes(), 0)
  let hook = replaced_hook()
  assert_eq(live_probes(), 0)
  ignore(hook.copy())
}

///|
fn register_hook() -> Unit {
  let probe = new_probe()
  ignore(
    @gfx.install_trace_hooks(
      @gfx.TraceHooks::new().on_commit(fn() {
        touch_probe(probe)
        ignore(@gfx.install_trace_hooks(@gfx.TraceHooks::new()))
        touch_probe(probe)
      }),
    ),
  )
}

///|
test "a hook can unregister itself without freeing its running closure" {
  if @gfx.is_headless() {
    @gfx.setup(@gfx.Desc::new())
    register_hook()
    assert_eq(live_probes(), 1)
    @gfx.commit()
    assert_eq(live_probes(), 0)
    @gfx.shutdown()
  }
}

///|
fn register_listener() -> Bool {
  let probe = new_probe()
  @gfx.add_commit_listener(
    @gfx.CommitListener::new().on_func(fn() { touch_probe(probe) }),
  )
}

///|
test "listener rejection and shutdown release exactly the owned captures" {
  if @gfx.is_headless() {
    @gfx.setup(@gfx.Desc::new().set_max_commit_listeners(1))
    assert_true(register_listener())
    assert_true(!register_listener())
    assert_eq(live_probes(), 1)
    @gfx.commit()
    @gfx.shutdown()
    assert_eq(live_probes(), 0)
  }
}

///|
fn queue_request(finished : Ref[Bool]) -> @fetch.Handle {
  let probe = new_probe()
  @fetch.send(
    @fetch.Request::new()
    .set_path("native/SOKOL-LICENSE")
    .set_buffer(@fetch.Range::allocate(16384)),
    fn(response) {
      touch_probe(probe)
      if response.finished() {
        finished.val = true
      }
    },
  )
}

///|
test "fetch retains a capture until completion and releases rejected callbacks" {
  @fetch.setup(@fetch.Desc::new().set_max_requests(1U))
  let finished = Ref(false)
  let handle = queue_request(finished)
  assert_true(handle.id() != 0U)
  let rejected = queue_request(Ref(false))
  assert_eq(rejected.id(), 0U)
  assert_eq(live_probes(), 1)
  @time.setup()
  let start = @time.now()
  while !finished.val && @time.sec(@time.since(start)) < 5.0 {
    @fetch.dowork()
  }
  assert_true(finished.val)
  assert_eq(live_probes(), 0)
  @fetch.shutdown()
}

///|
test "fetch shutdown releases pending callback captures without a final callback" {
  @fetch.setup(@fetch.Desc::new())
  let finished = Ref(false)
  ignore(queue_request(finished))
  assert_eq(live_probes(), 1)
  @fetch.shutdown()
  assert_true(!finished.val)
  assert_eq(live_probes(), 0)
}

///|
extern "c" fn response_fixture(empty : Bool) -> @native.Handle = "mb_test_response_fixture"

///|
fn copy_response() -> @fetch.Response {
  @fetch.Response::unsafe_from_native(response_fixture(false)).copy()
}

///|
test "response copies preserve subranges and have independent ownership" {
  let response = copy_response()
  assert_eq(response.data().bytes(), b"\x02\x03")
  assert_eq(response.buffer().bytes(), b"\x01\x02\x03\x04")
  let empty = @fetch.Response::unsafe_from_native(response_fixture(true)).copy()
  assert_eq(empty.data().bytes(), b"")
  assert_eq(empty.buffer().bytes(), b"")
}
