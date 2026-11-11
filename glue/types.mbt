// C API declarations and field adapters maintained by scripts/generate.py.

///|
pub fn environment() -> @gfx.Environment {
  guard @app.isvalid() else { abort("app must be initialized") }
  sglue_environment()
}

///|
pub fn swapchain() -> @gfx.Swapchain {
  guard @app.isvalid() else { abort("app must be initialized") }
  sglue_swapchain()
}
