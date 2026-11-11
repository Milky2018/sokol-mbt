///|
test "application descriptors retain nested unicode strings and pixel data" {
  let pixels = b"\x01\x02\x03\x04"
  let image = @app.ImageDesc::new()
    .with_width(1)
    .with_height(1)
    .with_pixels(@app.Range::from_bytes(pixels))
  let desc = @app.Desc::new()
    .with_window_title("MoonBit 月兔")
    .with_icon(@app.IconDesc::new().with_images(0, image))
  let changed = desc.with_width(1024)
  assert_eq(desc.width(), 0)
  assert_eq(changed.width(), 1024)
  assert_eq(changed.window_title(), "MoonBit 月兔")
  assert_eq(changed.icon().images(0).pixels().bytes(), pixels)
}
