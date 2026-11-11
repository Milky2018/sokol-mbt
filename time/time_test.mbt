///|
test "monotonic ticks and unit conversions" {
  @time.setup()
  let start = @time.now()
  while @time.now() == 0UL {

  }
  let last = Ref(0UL)
  assert_eq(@time.laptime(last), 0UL)
  assert_true(last.val >= start)
  while @time.now() <= last.val {

  }
  assert_true(@time.laptime(last) > 0UL)
  let elapsed = @time.since(start)
  assert_true(elapsed > 0UL)
  assert_eq(@time.diff(5UL, 10UL), 1UL)
  assert_true(
    (@time.ms(elapsed) - @time.sec(elapsed) * 1000.0).abs() < 0.000001,
  )
  assert_true(
    (@time.us(elapsed) - @time.sec(elapsed) * 1000000.0).abs() < 0.000001,
  )
  assert_true(
    (@time.ns(elapsed) - @time.sec(elapsed) * 1000000000.0).abs() < 0.000001,
  )
}
