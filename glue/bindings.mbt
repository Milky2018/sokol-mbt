///|
extern "c" fn sglue_environment() -> @gfx.Environment = "mb_glue_sglue_environment"

///|
pub fn environment() -> @gfx.Environment {
  guard @app.isvalid() else { abort("app must be initialized") }
  sglue_environment()
}

///|
extern "c" fn sglue_swapchain() -> @gfx.Swapchain = "mb_glue_sglue_swapchain"

///|
pub fn swapchain() -> @gfx.Swapchain {
  guard @app.isvalid() else { abort("app must be initialized") }
  sglue_swapchain()
}
