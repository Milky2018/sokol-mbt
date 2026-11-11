"""Source-file organization only; these groups never decide ABI or ownership."""

# Keep related public methods and private FFI declarations in the same file.
# Every aggregate in the two large packages must have an explicit home.
GFX_TYPES = {
    "data": "sg_range sg_color",
    "capabilities": "sg_pixelformat_info sg_features sg_limits",
    "pass": """sg_color_attachment_action sg_depth_attachment_action
        sg_stencil_attachment_action sg_pass_action sg_swapchain sg_attachments
        sg_pass sg_bindings""",
    "buffer": "sg_buffer sg_buffer_usage sg_buffer_desc sg_buffer_info",
    "image": "sg_image sg_image_usage sg_image_desc sg_image_info",
    "sampler": "sg_sampler sg_sampler_desc sg_sampler_info",
    "shader": "sg_shader sg_shader_function sg_shader_desc sg_shader_info",
    "shader_reflection": """sg_shader_vertex_attr sg_glsl_shader_uniform
        sg_shader_uniform_block sg_shader_texture_view sg_shader_storage_buffer_view
        sg_shader_storage_image_view sg_shader_view sg_shader_sampler
        sg_shader_texture_sampler_pair sg_mtl_shader_threads_per_threadgroup""",
    "pipeline": "sg_pipeline sg_pipeline_desc sg_pipeline_info",
    "vertex_layout": "sg_vertex_buffer_layout_state sg_vertex_attr_state sg_vertex_layout_state",
    "render_state": """sg_stencil_face_state sg_stencil_state sg_depth_state
        sg_blend_state sg_color_target_state""",
    "view": """sg_view sg_buffer_view_desc sg_image_view_desc sg_texture_view_range
        sg_texture_view_desc sg_view_desc sg_view_info""",
    "upload": """sg_image_extent sg_image_location sg_write_image_source
        sg_write_image_desc sg_buffer_location sg_buffer_image_location
        sg_write_buffer_source sg_write_buffer_desc sg_copy_buffer_to_buffer_desc
        sg_copy_buffer_to_image_desc sg_copy_image_to_image_desc""",
    "trace_hooks": "sg_trace_hooks",
    "commit_listener": "sg_commit_listener",
    "context": """sg_slot_info sg_environment_defaults sg_environment sg_allocator
        sg_logger sg_desc""",
    "statistics": """sg_frame_resource_stats sg_total_resource_stats sg_total_stats
        sg_frame_stats sg_stats""",
    "metal": """sg_metal_swapchain sg_metal_environment sg_metal_desc
        sg_mtl_buffer_info sg_mtl_image_info sg_mtl_sampler_info sg_mtl_shader_info
        sg_mtl_pipeline_info""",
    "metal_statistics": """sg_frame_stats_metal_idpool sg_frame_stats_metal_pipeline
        sg_frame_stats_metal_bindings sg_frame_stats_metal_uniforms sg_frame_stats_metal""",
    "d3d11": """sg_d3d11_swapchain sg_d3d11_environment sg_d3d11_desc
        sg_d3d11_buffer_info sg_d3d11_image_info sg_d3d11_sampler_info
        sg_d3d11_shader_info sg_d3d11_pipeline_info sg_d3d11_view_info""",
    "d3d11_statistics": """sg_frame_stats_d3d11_pass sg_frame_stats_d3d11_pipeline
        sg_frame_stats_d3d11_bindings sg_frame_stats_d3d11_draw sg_frame_stats_d3d11""",
    "wgpu": """sg_wgpu_swapchain sg_wgpu_environment sg_wgpu_desc
        sg_wgpu_buffer_info sg_wgpu_image_info sg_wgpu_sampler_info
        sg_wgpu_shader_info sg_wgpu_pipeline_info sg_wgpu_view_info""",
    "wgpu_statistics": "sg_frame_stats_wgpu_uniforms sg_frame_stats_wgpu_bindings sg_frame_stats_wgpu",
    "vulkan": "sg_vulkan_swapchain sg_vulkan_environment sg_vulkan_desc sg_frame_stats_vk",
    "gl": """sg_gl_swapchain sg_gl_buffer_info sg_gl_image_info sg_gl_sampler_info
        sg_gl_shader_info sg_gl_view_info sg_frame_stats_gl""",
}

APP_TYPES = {
    "event": "sapp_touchpoint sapp_event",
    "icon": "sapp_range sapp_image_desc sapp_icon_desc",
    "context": "sapp_allocator sapp_logger sapp_desc",
    "environment": """sapp_environment_defaults sapp_metal_environment
        sapp_d3d11_environment sapp_wgpu_environment sapp_vulkan_environment sapp_environment""",
    "swapchain": """sapp_metal_swapchain sapp_d3d11_swapchain sapp_wgpu_swapchain
        sapp_vulkan_swapchain sapp_gl_swapchain sapp_swapchain""",
    "platform": """sapp_gl_desc sapp_win32_desc sapp_html5_desc sapp_ios_desc
        sapp_metal_desc sapp_android_desc""",
    "html5": "sapp_html5_fetch_response sapp_html5_fetch_request",
}

TYPE_SECTIONS = {
    module: {
        name: section for section, names in groups.items() for name in names.split()
    }
    for module, groups in [("gfx", GFX_TYPES), ("app", APP_TYPES)]
}


def section_for(module, declaration):
    """Choose a file, independently of any conversion/lifetime decisions."""
    kind = declaration["kind"]
    name = declaration.get("name", "")
    if module not in TYPE_SECTIONS:
        return "bindings"
    if kind == "enum":
        return "log_items" if "log_item" in name else "enums"
    if kind == "consts":
        return "constants"
    if kind == "struct":
        # Fail on an upstream addition rather than silently filling a misc file.
        return TYPE_SECTIONS[module][name]
    if module == "gfx":
        return gfx_function_section(name)
    return app_function_section(name)


def gfx_function_section(name):
    if name.startswith(("sg_write_", "sg_copy_", "sg_seal_")):
        return "upload"
    for backend in ["d3d11", "mtl", "wgpu", "gl"]:
        if name.startswith(f"sg_{backend}_"):
            return "metal" if backend == "mtl" else backend
    if "stats" in name:
        return "statistics"
    if name.startswith(
        ("sg_begin_", "sg_end_", "sg_apply_", "sg_draw", "sg_dispatch", "sg_commit")
    ):
        return "pass"
    for resource in ["buffer", "image", "sampler", "shader", "pipeline", "view"]:
        if f"_{resource}" in name:
            return resource
    if name in {
        "sg_query_features",
        "sg_query_limits",
        "sg_query_pixelformat",
        "sg_query_row_pitch",
        "sg_query_surface_pitch",
        "sg_query_backend",
    }:
        return "capabilities"
    return "context"


def app_function_section(name):
    if name == "sapp_get_environment":
        return "environment"
    if name == "sapp_acquire_swapchain":
        return "swapchain"
    if name.startswith("sapp_html5_"):
        return "html5"
    if name.startswith(
        (
            "sapp_egl_",
            "sapp_macos_",
            "sapp_ios_",
            "sapp_d3d11_",
            "sapp_win32_",
            "sapp_gl_",
            "sapp_x11_",
            "sapp_android_",
        )
    ):
        return "platform"
    if "icon" in name or "cursor_image" in name:
        return "icon"
    return "window"
