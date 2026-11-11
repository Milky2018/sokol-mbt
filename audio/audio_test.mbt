///|
test "audio configuration and interleaved push" {
  let desc = @audio.Desc::new().with_sample_rate(44100).with_num_channels(2)
  assert_eq(desc.sample_rate(), 44100)
  if @audio.is_headless() {
    @audio.setup(desc)
    assert_true(@audio.isvalid())
    assert_eq(@audio.channels(), 2)
    assert_eq(@audio.sample_rate(), 44100)
    assert_eq(@audio.query_desc().num_channels(), 2)
    let accepted = @audio.push(FixedArray::make(512, 0.0F))
    assert_true(accepted >= 0 && accepted <= 256)
    @audio.shutdown()
    assert_true(!@audio.isvalid())
  }
}
