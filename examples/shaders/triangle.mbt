///|
/// Shader sources for each desktop backend selected by build.mbtx.
pub fn triangle() -> @gfx.ShaderDesc {
  let (vertex, fragment, entry) = match @gfx.query_backend() {
    MetalMacos | MetalIos | MetalSimulator =>
      (
        (
          #|#include <metal_stdlib>
          #|using namespace metal;
          #|struct Input { float2 position [[attribute(0)]]; float4 color [[attribute(1)]]; };
          #|struct Output { float4 position [[position]]; float4 color; };
          #|vertex Output vs_main(Input in [[stage_in]]) { return { float4(in.position, 0, 1), in.color }; }
          #|fragment float4 fs_main(Output in [[stage_in]]) { return in.color; }
        ),
        "",
        "vs_main",
      )
    D3d11 =>
      (
        (
          #|struct Input { float2 position : POSITION; float4 color : COLOR0; };
          #|struct Output { float4 position : SV_Position; float4 color : COLOR0; };
          #|Output main(Input i) { Output o; o.position=float4(i.position,0,1); o.color=i.color; return o; }
        ),
        (
          #|float4 main(float4 position : SV_Position, float4 color : COLOR0) : SV_Target0 { return color; }
        ),
        "main",
      )
    _ =>
      (
        (
          #|#version 410
          #|layout(location=0) in vec2 position;
          #|layout(location=1) in vec4 color;
          #|out vec4 v_color;
          #|void main() { gl_Position=vec4(position,0,1); v_color=color; }
        ),
        (
          #|#version 410
          #|in vec4 v_color;
          #|out vec4 frag_color;
          #|void main() { frag_color=v_color; }
        ),
        "main",
      )
  }
  let fs_source = if fragment == "" { vertex } else { fragment }
  let fs_entry = if @gfx.query_backend()
    is (MetalMacos | MetalIos | MetalSimulator) {
    "fs_main"
  } else {
    entry
  }
  @gfx.ShaderDesc::new()
  .with_vertex_func(
    @gfx.ShaderFunction::new().with_source(vertex).with_entry(entry),
  )
  .with_fragment_func(
    @gfx.ShaderFunction::new().with_source(fs_source).with_entry(fs_entry),
  )
  .with_attrs(
    0,
    @gfx.ShaderVertexAttr::new()
    .with_base_type(Float)
    .with_hlsl_sem_name("POSITION"),
  )
  .with_attrs(
    1,
    @gfx.ShaderVertexAttr::new()
    .with_base_type(Float)
    .with_hlsl_sem_name("COLOR"),
  )
}
