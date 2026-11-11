name = "Milky2018/sokol"

version = "0.1.0"

readme = "README.mbt.md"

repository = "https://github.com/Milky2018/sokol-mbt"

license = "Apache-2.0"

keywords = [ "sokol", "graphics", "audio", "native" ]

preferred_target = "native"

supported_targets = "+native"

description = "Native MoonBit bindings for the Sokol cross-platform C libraries"

options(
  "--moonbit-unstable-prebuild": "build.mbtx",
)
