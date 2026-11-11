///|
test "application descriptors retain nested unicode strings and pixel data" {
  let pixels = b"\x01\x02\x03\x04"
  let image = @app.ImageDesc::new()
    .set_width(1)
    .set_height(1)
    .set_pixels(@app.Range::from_bytes(pixels))
  let desc = @app.Desc::new()
    .set_window_title("MoonBit 月兔")
    .set_icon(@app.IconDesc::new().set_images(0, image))
  let changed = desc.copy().set_width(1024)
  assert_eq(desc.width(), 0)
  assert_eq(changed.width(), 1024)
  assert_eq(changed.window_title(), "MoonBit 月兔")
  assert_eq(changed.icon().images(0).pixels().bytes(), pixels)
}
