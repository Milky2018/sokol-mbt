/* Header inputs: 6777d734bdf6ea45ecc095fdce90c1adb9336fc21cb3e514b9b1d484afa285fe. Regenerate after editing shared headers. */
/* C-layout adapters. Resource ownership is handled in support.c. */
#include "../native/common.h"
#define SOKOL_TRACE_HOOKS
#define SOKOL_API_IMPL MOONBIT_FFI_EXPORT
#define SOKOL_IMPL
#include "../native/sokol_gfx.h"
static void mb_clone_sg_allocator(sg_allocator*, const sg_allocator*);
static void mb_drop_sg_allocator(void*);
static void mb_clone_sg_attachments(sg_attachments*, const sg_attachments*);
static void mb_drop_sg_attachments(void*);
static void mb_clone_sg_bindings(sg_bindings*, const sg_bindings*);
static void mb_drop_sg_bindings(void*);
static void mb_clone_sg_blend_state(sg_blend_state*, const sg_blend_state*);
static void mb_drop_sg_blend_state(void*);
static void mb_clone_sg_buffer_desc(sg_buffer_desc*, const sg_buffer_desc*);
static void mb_drop_sg_buffer_desc(void*);
static void mb_clone_sg_buffer_image_location(sg_buffer_image_location*, const sg_buffer_image_location*);
static void mb_drop_sg_buffer_image_location(void*);
static void mb_clone_sg_buffer_info(sg_buffer_info*, const sg_buffer_info*);
static void mb_drop_sg_buffer_info(void*);
static void mb_clone_sg_buffer_location(sg_buffer_location*, const sg_buffer_location*);
static void mb_drop_sg_buffer_location(void*);
static void mb_clone_sg_buffer_usage(sg_buffer_usage*, const sg_buffer_usage*);
static void mb_drop_sg_buffer_usage(void*);
static void mb_clone_sg_buffer_view_desc(sg_buffer_view_desc*, const sg_buffer_view_desc*);
static void mb_drop_sg_buffer_view_desc(void*);
static void mb_clone_sg_color(sg_color*, const sg_color*);
static void mb_drop_sg_color(void*);
static void mb_clone_sg_color_attachment_action(sg_color_attachment_action*, const sg_color_attachment_action*);
static void mb_drop_sg_color_attachment_action(void*);
static void mb_clone_sg_color_target_state(sg_color_target_state*, const sg_color_target_state*);
static void mb_drop_sg_color_target_state(void*);
static void mb_clone_sg_commit_listener(sg_commit_listener*, const sg_commit_listener*);
static void mb_drop_sg_commit_listener(void*);
static void mb_clone_sg_copy_buffer_to_buffer_desc(sg_copy_buffer_to_buffer_desc*, const sg_copy_buffer_to_buffer_desc*);
static void mb_drop_sg_copy_buffer_to_buffer_desc(void*);
static void mb_clone_sg_copy_buffer_to_image_desc(sg_copy_buffer_to_image_desc*, const sg_copy_buffer_to_image_desc*);
static void mb_drop_sg_copy_buffer_to_image_desc(void*);
static void mb_clone_sg_copy_image_to_image_desc(sg_copy_image_to_image_desc*, const sg_copy_image_to_image_desc*);
static void mb_drop_sg_copy_image_to_image_desc(void*);
static void mb_clone_sg_d3d11_buffer_info(sg_d3d11_buffer_info*, const sg_d3d11_buffer_info*);
static void mb_drop_sg_d3d11_buffer_info(void*);
static void mb_clone_sg_d3d11_desc(sg_d3d11_desc*, const sg_d3d11_desc*);
static void mb_drop_sg_d3d11_desc(void*);
static void mb_clone_sg_d3d11_environment(sg_d3d11_environment*, const sg_d3d11_environment*);
static void mb_drop_sg_d3d11_environment(void*);
static void mb_clone_sg_d3d11_image_info(sg_d3d11_image_info*, const sg_d3d11_image_info*);
static void mb_drop_sg_d3d11_image_info(void*);
static void mb_clone_sg_d3d11_pipeline_info(sg_d3d11_pipeline_info*, const sg_d3d11_pipeline_info*);
static void mb_drop_sg_d3d11_pipeline_info(void*);
static void mb_clone_sg_d3d11_sampler_info(sg_d3d11_sampler_info*, const sg_d3d11_sampler_info*);
static void mb_drop_sg_d3d11_sampler_info(void*);
static void mb_clone_sg_d3d11_shader_info(sg_d3d11_shader_info*, const sg_d3d11_shader_info*);
static void mb_drop_sg_d3d11_shader_info(void*);
static void mb_clone_sg_d3d11_swapchain(sg_d3d11_swapchain*, const sg_d3d11_swapchain*);
static void mb_drop_sg_d3d11_swapchain(void*);
static void mb_clone_sg_d3d11_view_info(sg_d3d11_view_info*, const sg_d3d11_view_info*);
static void mb_drop_sg_d3d11_view_info(void*);
static void mb_clone_sg_depth_attachment_action(sg_depth_attachment_action*, const sg_depth_attachment_action*);
static void mb_drop_sg_depth_attachment_action(void*);
static void mb_clone_sg_depth_state(sg_depth_state*, const sg_depth_state*);
static void mb_drop_sg_depth_state(void*);
static void mb_clone_sg_desc(sg_desc*, const sg_desc*);
static void mb_drop_sg_desc(void*);
static void mb_clone_sg_environment(sg_environment*, const sg_environment*);
static void mb_drop_sg_environment(void*);
static void mb_clone_sg_environment_defaults(sg_environment_defaults*, const sg_environment_defaults*);
static void mb_drop_sg_environment_defaults(void*);
static void mb_clone_sg_features(sg_features*, const sg_features*);
static void mb_drop_sg_features(void*);
static void mb_clone_sg_frame_resource_stats(sg_frame_resource_stats*, const sg_frame_resource_stats*);
static void mb_drop_sg_frame_resource_stats(void*);
static void mb_clone_sg_frame_stats(sg_frame_stats*, const sg_frame_stats*);
static void mb_drop_sg_frame_stats(void*);
static void mb_clone_sg_frame_stats_d3d11(sg_frame_stats_d3d11*, const sg_frame_stats_d3d11*);
static void mb_drop_sg_frame_stats_d3d11(void*);
static void mb_clone_sg_frame_stats_d3d11_bindings(sg_frame_stats_d3d11_bindings*, const sg_frame_stats_d3d11_bindings*);
static void mb_drop_sg_frame_stats_d3d11_bindings(void*);
static void mb_clone_sg_frame_stats_d3d11_draw(sg_frame_stats_d3d11_draw*, const sg_frame_stats_d3d11_draw*);
static void mb_drop_sg_frame_stats_d3d11_draw(void*);
static void mb_clone_sg_frame_stats_d3d11_pass(sg_frame_stats_d3d11_pass*, const sg_frame_stats_d3d11_pass*);
static void mb_drop_sg_frame_stats_d3d11_pass(void*);
static void mb_clone_sg_frame_stats_d3d11_pipeline(sg_frame_stats_d3d11_pipeline*, const sg_frame_stats_d3d11_pipeline*);
static void mb_drop_sg_frame_stats_d3d11_pipeline(void*);
static void mb_clone_sg_frame_stats_gl(sg_frame_stats_gl*, const sg_frame_stats_gl*);
static void mb_drop_sg_frame_stats_gl(void*);
static void mb_clone_sg_frame_stats_metal(sg_frame_stats_metal*, const sg_frame_stats_metal*);
static void mb_drop_sg_frame_stats_metal(void*);
static void mb_clone_sg_frame_stats_metal_bindings(sg_frame_stats_metal_bindings*, const sg_frame_stats_metal_bindings*);
static void mb_drop_sg_frame_stats_metal_bindings(void*);
static void mb_clone_sg_frame_stats_metal_idpool(sg_frame_stats_metal_idpool*, const sg_frame_stats_metal_idpool*);
static void mb_drop_sg_frame_stats_metal_idpool(void*);
static void mb_clone_sg_frame_stats_metal_pipeline(sg_frame_stats_metal_pipeline*, const sg_frame_stats_metal_pipeline*);
static void mb_drop_sg_frame_stats_metal_pipeline(void*);
static void mb_clone_sg_frame_stats_metal_uniforms(sg_frame_stats_metal_uniforms*, const sg_frame_stats_metal_uniforms*);
static void mb_drop_sg_frame_stats_metal_uniforms(void*);
static void mb_clone_sg_frame_stats_vk(sg_frame_stats_vk*, const sg_frame_stats_vk*);
static void mb_drop_sg_frame_stats_vk(void*);
static void mb_clone_sg_frame_stats_wgpu(sg_frame_stats_wgpu*, const sg_frame_stats_wgpu*);
static void mb_drop_sg_frame_stats_wgpu(void*);
static void mb_clone_sg_frame_stats_wgpu_bindings(sg_frame_stats_wgpu_bindings*, const sg_frame_stats_wgpu_bindings*);
static void mb_drop_sg_frame_stats_wgpu_bindings(void*);
static void mb_clone_sg_frame_stats_wgpu_uniforms(sg_frame_stats_wgpu_uniforms*, const sg_frame_stats_wgpu_uniforms*);
static void mb_drop_sg_frame_stats_wgpu_uniforms(void*);
static void mb_clone_sg_gl_buffer_info(sg_gl_buffer_info*, const sg_gl_buffer_info*);
static void mb_drop_sg_gl_buffer_info(void*);
static void mb_clone_sg_gl_image_info(sg_gl_image_info*, const sg_gl_image_info*);
static void mb_drop_sg_gl_image_info(void*);
static void mb_clone_sg_gl_sampler_info(sg_gl_sampler_info*, const sg_gl_sampler_info*);
static void mb_drop_sg_gl_sampler_info(void*);
static void mb_clone_sg_gl_shader_info(sg_gl_shader_info*, const sg_gl_shader_info*);
static void mb_drop_sg_gl_shader_info(void*);
static void mb_clone_sg_gl_swapchain(sg_gl_swapchain*, const sg_gl_swapchain*);
static void mb_drop_sg_gl_swapchain(void*);
static void mb_clone_sg_gl_view_info(sg_gl_view_info*, const sg_gl_view_info*);
static void mb_drop_sg_gl_view_info(void*);
static void mb_clone_sg_glsl_shader_uniform(sg_glsl_shader_uniform*, const sg_glsl_shader_uniform*);
static void mb_drop_sg_glsl_shader_uniform(void*);
static void mb_clone_sg_image_desc(sg_image_desc*, const sg_image_desc*);
static void mb_drop_sg_image_desc(void*);
static void mb_clone_sg_image_extent(sg_image_extent*, const sg_image_extent*);
static void mb_drop_sg_image_extent(void*);
static void mb_clone_sg_image_info(sg_image_info*, const sg_image_info*);
static void mb_drop_sg_image_info(void*);
static void mb_clone_sg_image_location(sg_image_location*, const sg_image_location*);
static void mb_drop_sg_image_location(void*);
static void mb_clone_sg_image_usage(sg_image_usage*, const sg_image_usage*);
static void mb_drop_sg_image_usage(void*);
static void mb_clone_sg_image_view_desc(sg_image_view_desc*, const sg_image_view_desc*);
static void mb_drop_sg_image_view_desc(void*);
static void mb_clone_sg_limits(sg_limits*, const sg_limits*);
static void mb_drop_sg_limits(void*);
static void mb_clone_sg_logger(sg_logger*, const sg_logger*);
static void mb_drop_sg_logger(void*);
static void mb_clone_sg_metal_desc(sg_metal_desc*, const sg_metal_desc*);
static void mb_drop_sg_metal_desc(void*);
static void mb_clone_sg_metal_environment(sg_metal_environment*, const sg_metal_environment*);
static void mb_drop_sg_metal_environment(void*);
static void mb_clone_sg_metal_swapchain(sg_metal_swapchain*, const sg_metal_swapchain*);
static void mb_drop_sg_metal_swapchain(void*);
static void mb_clone_sg_mtl_buffer_info(sg_mtl_buffer_info*, const sg_mtl_buffer_info*);
static void mb_drop_sg_mtl_buffer_info(void*);
static void mb_clone_sg_mtl_image_info(sg_mtl_image_info*, const sg_mtl_image_info*);
static void mb_drop_sg_mtl_image_info(void*);
static void mb_clone_sg_mtl_pipeline_info(sg_mtl_pipeline_info*, const sg_mtl_pipeline_info*);
static void mb_drop_sg_mtl_pipeline_info(void*);
static void mb_clone_sg_mtl_sampler_info(sg_mtl_sampler_info*, const sg_mtl_sampler_info*);
static void mb_drop_sg_mtl_sampler_info(void*);
static void mb_clone_sg_mtl_shader_info(sg_mtl_shader_info*, const sg_mtl_shader_info*);
static void mb_drop_sg_mtl_shader_info(void*);
static void mb_clone_sg_mtl_shader_threads_per_threadgroup(sg_mtl_shader_threads_per_threadgroup*, const sg_mtl_shader_threads_per_threadgroup*);
static void mb_drop_sg_mtl_shader_threads_per_threadgroup(void*);
static void mb_clone_sg_pass(sg_pass*, const sg_pass*);
static void mb_drop_sg_pass(void*);
static void mb_clone_sg_pass_action(sg_pass_action*, const sg_pass_action*);
static void mb_drop_sg_pass_action(void*);
static void mb_clone_sg_pipeline_desc(sg_pipeline_desc*, const sg_pipeline_desc*);
static void mb_drop_sg_pipeline_desc(void*);
static void mb_clone_sg_pipeline_info(sg_pipeline_info*, const sg_pipeline_info*);
static void mb_drop_sg_pipeline_info(void*);
static void mb_clone_sg_pixelformat_info(sg_pixelformat_info*, const sg_pixelformat_info*);
static void mb_drop_sg_pixelformat_info(void*);
static void mb_clone_sg_range(sg_range*, const sg_range*);
static void mb_drop_sg_range(void*);
static void mb_clone_sg_sampler_desc(sg_sampler_desc*, const sg_sampler_desc*);
static void mb_drop_sg_sampler_desc(void*);
static void mb_clone_sg_sampler_info(sg_sampler_info*, const sg_sampler_info*);
static void mb_drop_sg_sampler_info(void*);
static void mb_clone_sg_shader_desc(sg_shader_desc*, const sg_shader_desc*);
static void mb_drop_sg_shader_desc(void*);
static void mb_clone_sg_shader_function(sg_shader_function*, const sg_shader_function*);
static void mb_drop_sg_shader_function(void*);
static void mb_clone_sg_shader_info(sg_shader_info*, const sg_shader_info*);
static void mb_drop_sg_shader_info(void*);
static void mb_clone_sg_shader_sampler(sg_shader_sampler*, const sg_shader_sampler*);
static void mb_drop_sg_shader_sampler(void*);
static void mb_clone_sg_shader_storage_buffer_view(sg_shader_storage_buffer_view*, const sg_shader_storage_buffer_view*);
static void mb_drop_sg_shader_storage_buffer_view(void*);
static void mb_clone_sg_shader_storage_image_view(sg_shader_storage_image_view*, const sg_shader_storage_image_view*);
static void mb_drop_sg_shader_storage_image_view(void*);
static void mb_clone_sg_shader_texture_sampler_pair(sg_shader_texture_sampler_pair*, const sg_shader_texture_sampler_pair*);
static void mb_drop_sg_shader_texture_sampler_pair(void*);
static void mb_clone_sg_shader_texture_view(sg_shader_texture_view*, const sg_shader_texture_view*);
static void mb_drop_sg_shader_texture_view(void*);
static void mb_clone_sg_shader_uniform_block(sg_shader_uniform_block*, const sg_shader_uniform_block*);
static void mb_drop_sg_shader_uniform_block(void*);
static void mb_clone_sg_shader_vertex_attr(sg_shader_vertex_attr*, const sg_shader_vertex_attr*);
static void mb_drop_sg_shader_vertex_attr(void*);
static void mb_clone_sg_shader_view(sg_shader_view*, const sg_shader_view*);
static void mb_drop_sg_shader_view(void*);
static void mb_clone_sg_slot_info(sg_slot_info*, const sg_slot_info*);
static void mb_drop_sg_slot_info(void*);
static void mb_clone_sg_stats(sg_stats*, const sg_stats*);
static void mb_drop_sg_stats(void*);
static void mb_clone_sg_stencil_attachment_action(sg_stencil_attachment_action*, const sg_stencil_attachment_action*);
static void mb_drop_sg_stencil_attachment_action(void*);
static void mb_clone_sg_stencil_face_state(sg_stencil_face_state*, const sg_stencil_face_state*);
static void mb_drop_sg_stencil_face_state(void*);
static void mb_clone_sg_stencil_state(sg_stencil_state*, const sg_stencil_state*);
static void mb_drop_sg_stencil_state(void*);
static void mb_clone_sg_swapchain(sg_swapchain*, const sg_swapchain*);
static void mb_drop_sg_swapchain(void*);
static void mb_clone_sg_texture_view_desc(sg_texture_view_desc*, const sg_texture_view_desc*);
static void mb_drop_sg_texture_view_desc(void*);
static void mb_clone_sg_texture_view_range(sg_texture_view_range*, const sg_texture_view_range*);
static void mb_drop_sg_texture_view_range(void*);
static void mb_clone_sg_total_resource_stats(sg_total_resource_stats*, const sg_total_resource_stats*);
static void mb_drop_sg_total_resource_stats(void*);
static void mb_clone_sg_total_stats(sg_total_stats*, const sg_total_stats*);
static void mb_drop_sg_total_stats(void*);
static void mb_clone_sg_trace_hooks(sg_trace_hooks*, const sg_trace_hooks*);
static void mb_drop_sg_trace_hooks(void*);
static void mb_clone_sg_vertex_attr_state(sg_vertex_attr_state*, const sg_vertex_attr_state*);
static void mb_drop_sg_vertex_attr_state(void*);
static void mb_clone_sg_vertex_buffer_layout_state(sg_vertex_buffer_layout_state*, const sg_vertex_buffer_layout_state*);
static void mb_drop_sg_vertex_buffer_layout_state(void*);
static void mb_clone_sg_vertex_layout_state(sg_vertex_layout_state*, const sg_vertex_layout_state*);
static void mb_drop_sg_vertex_layout_state(void*);
static void mb_clone_sg_view_desc(sg_view_desc*, const sg_view_desc*);
static void mb_drop_sg_view_desc(void*);
static void mb_clone_sg_view_info(sg_view_info*, const sg_view_info*);
static void mb_drop_sg_view_info(void*);
static void mb_clone_sg_vulkan_desc(sg_vulkan_desc*, const sg_vulkan_desc*);
static void mb_drop_sg_vulkan_desc(void*);
static void mb_clone_sg_vulkan_environment(sg_vulkan_environment*, const sg_vulkan_environment*);
static void mb_drop_sg_vulkan_environment(void*);
static void mb_clone_sg_vulkan_swapchain(sg_vulkan_swapchain*, const sg_vulkan_swapchain*);
static void mb_drop_sg_vulkan_swapchain(void*);
static void mb_clone_sg_wgpu_buffer_info(sg_wgpu_buffer_info*, const sg_wgpu_buffer_info*);
static void mb_drop_sg_wgpu_buffer_info(void*);
static void mb_clone_sg_wgpu_desc(sg_wgpu_desc*, const sg_wgpu_desc*);
static void mb_drop_sg_wgpu_desc(void*);
static void mb_clone_sg_wgpu_environment(sg_wgpu_environment*, const sg_wgpu_environment*);
static void mb_drop_sg_wgpu_environment(void*);
static void mb_clone_sg_wgpu_image_info(sg_wgpu_image_info*, const sg_wgpu_image_info*);
static void mb_drop_sg_wgpu_image_info(void*);
static void mb_clone_sg_wgpu_pipeline_info(sg_wgpu_pipeline_info*, const sg_wgpu_pipeline_info*);
static void mb_drop_sg_wgpu_pipeline_info(void*);
static void mb_clone_sg_wgpu_sampler_info(sg_wgpu_sampler_info*, const sg_wgpu_sampler_info*);
static void mb_drop_sg_wgpu_sampler_info(void*);
static void mb_clone_sg_wgpu_shader_info(sg_wgpu_shader_info*, const sg_wgpu_shader_info*);
static void mb_drop_sg_wgpu_shader_info(void*);
static void mb_clone_sg_wgpu_swapchain(sg_wgpu_swapchain*, const sg_wgpu_swapchain*);
static void mb_drop_sg_wgpu_swapchain(void*);
static void mb_clone_sg_wgpu_view_info(sg_wgpu_view_info*, const sg_wgpu_view_info*);
static void mb_drop_sg_wgpu_view_info(void*);
static void mb_clone_sg_write_buffer_desc(sg_write_buffer_desc*, const sg_write_buffer_desc*);
static void mb_drop_sg_write_buffer_desc(void*);
static void mb_clone_sg_write_buffer_source(sg_write_buffer_source*, const sg_write_buffer_source*);
static void mb_drop_sg_write_buffer_source(void*);
static void mb_clone_sg_write_image_desc(sg_write_image_desc*, const sg_write_image_desc*);
static void mb_drop_sg_write_image_desc(void*);
static void mb_clone_sg_write_image_source(sg_write_image_source*, const sg_write_image_source*);
static void mb_drop_sg_write_image_source(void*);
static void mb_clone_sg_commit_listener_callbacks(sg_commit_listener*, const sg_commit_listener*);
static void mb_drop_sg_commit_listener_callbacks(sg_commit_listener*);
static int mb_managed_sg_commit_listener(const sg_commit_listener*);
static void mb_clone_sg_trace_hooks_callbacks(sg_trace_hooks*, const sg_trace_hooks*);
static void mb_drop_sg_trace_hooks_callbacks(sg_trace_hooks*);
static int mb_managed_sg_trace_hooks(const sg_trace_hooks*);
static void mb_clone_sg_allocator(sg_allocator *dst, const sg_allocator *src) { *dst = *src;
}
static void mb_drop_sg_allocator(void *object) { sg_allocator *value = object;
}
_Static_assert(_Alignof(sg_allocator) <= _Alignof(void*), "external payload alignment");
static sg_allocator *mb_new_sg_allocator(void) { return mb_object_new(sizeof(sg_allocator), mb_drop_sg_allocator); }
static sg_allocator *mb_copy_sg_allocator(const sg_allocator *source) { sg_allocator *r = mb_new_sg_allocator(); mb_clone_sg_allocator(r, source); return r; }
static void mb_clone_sg_attachments(sg_attachments *dst, const sg_attachments *src) { *dst = *src;
}
static void mb_drop_sg_attachments(void *object) { sg_attachments *value = object;
}
_Static_assert(_Alignof(sg_attachments) <= _Alignof(void*), "external payload alignment");
static sg_attachments *mb_new_sg_attachments(void) { return mb_object_new(sizeof(sg_attachments), mb_drop_sg_attachments); }
static sg_attachments *mb_copy_sg_attachments(const sg_attachments *source) { sg_attachments *r = mb_new_sg_attachments(); mb_clone_sg_attachments(r, source); return r; }
static void mb_clone_sg_bindings(sg_bindings *dst, const sg_bindings *src) { *dst = *src;
}
static void mb_drop_sg_bindings(void *object) { sg_bindings *value = object;
}
_Static_assert(_Alignof(sg_bindings) <= _Alignof(void*), "external payload alignment");
static sg_bindings *mb_new_sg_bindings(void) { return mb_object_new(sizeof(sg_bindings), mb_drop_sg_bindings); }
static sg_bindings *mb_copy_sg_bindings(const sg_bindings *source) { sg_bindings *r = mb_new_sg_bindings(); mb_clone_sg_bindings(r, source); return r; }
static void mb_clone_sg_blend_state(sg_blend_state *dst, const sg_blend_state *src) { *dst = *src;
}
static void mb_drop_sg_blend_state(void *object) { sg_blend_state *value = object;
}
_Static_assert(_Alignof(sg_blend_state) <= _Alignof(void*), "external payload alignment");
static sg_blend_state *mb_new_sg_blend_state(void) { return mb_object_new(sizeof(sg_blend_state), mb_drop_sg_blend_state); }
static sg_blend_state *mb_copy_sg_blend_state(const sg_blend_state *source) { sg_blend_state *r = mb_new_sg_blend_state(); mb_clone_sg_blend_state(r, source); return r; }
static void mb_clone_sg_buffer_desc(sg_buffer_desc *dst, const sg_buffer_desc *src) { *dst = *src;
mb_clone_sg_buffer_usage(&dst->usage, &src->usage);
mb_clone_sg_range(&dst->data, &src->data);
dst->label = mb_string(src->label);
}
static void mb_drop_sg_buffer_desc(void *object) { sg_buffer_desc *value = object;
mb_drop_sg_buffer_usage(&value->usage);
mb_drop_sg_range(&value->data);
free((void*)value->label);
}
_Static_assert(_Alignof(sg_buffer_desc) <= _Alignof(void*), "external payload alignment");
static sg_buffer_desc *mb_new_sg_buffer_desc(void) { return mb_object_new(sizeof(sg_buffer_desc), mb_drop_sg_buffer_desc); }
static sg_buffer_desc *mb_copy_sg_buffer_desc(const sg_buffer_desc *source) { sg_buffer_desc *r = mb_new_sg_buffer_desc(); mb_clone_sg_buffer_desc(r, source); return r; }
static void mb_clone_sg_buffer_image_location(sg_buffer_image_location *dst, const sg_buffer_image_location *src) { *dst = *src;
}
static void mb_drop_sg_buffer_image_location(void *object) { sg_buffer_image_location *value = object;
}
_Static_assert(_Alignof(sg_buffer_image_location) <= _Alignof(void*), "external payload alignment");
static sg_buffer_image_location *mb_new_sg_buffer_image_location(void) { return mb_object_new(sizeof(sg_buffer_image_location), mb_drop_sg_buffer_image_location); }
static sg_buffer_image_location *mb_copy_sg_buffer_image_location(const sg_buffer_image_location *source) { sg_buffer_image_location *r = mb_new_sg_buffer_image_location(); mb_clone_sg_buffer_image_location(r, source); return r; }
static void mb_clone_sg_buffer_info(sg_buffer_info *dst, const sg_buffer_info *src) { *dst = *src;
mb_clone_sg_slot_info(&dst->slot, &src->slot);
}
static void mb_drop_sg_buffer_info(void *object) { sg_buffer_info *value = object;
mb_drop_sg_slot_info(&value->slot);
}
_Static_assert(_Alignof(sg_buffer_info) <= _Alignof(void*), "external payload alignment");
static sg_buffer_info *mb_new_sg_buffer_info(void) { return mb_object_new(sizeof(sg_buffer_info), mb_drop_sg_buffer_info); }
static sg_buffer_info *mb_copy_sg_buffer_info(const sg_buffer_info *source) { sg_buffer_info *r = mb_new_sg_buffer_info(); mb_clone_sg_buffer_info(r, source); return r; }
static void mb_clone_sg_buffer_location(sg_buffer_location *dst, const sg_buffer_location *src) { *dst = *src;
}
static void mb_drop_sg_buffer_location(void *object) { sg_buffer_location *value = object;
}
_Static_assert(_Alignof(sg_buffer_location) <= _Alignof(void*), "external payload alignment");
static sg_buffer_location *mb_new_sg_buffer_location(void) { return mb_object_new(sizeof(sg_buffer_location), mb_drop_sg_buffer_location); }
static sg_buffer_location *mb_copy_sg_buffer_location(const sg_buffer_location *source) { sg_buffer_location *r = mb_new_sg_buffer_location(); mb_clone_sg_buffer_location(r, source); return r; }
static void mb_clone_sg_buffer_usage(sg_buffer_usage *dst, const sg_buffer_usage *src) { *dst = *src;
}
static void mb_drop_sg_buffer_usage(void *object) { sg_buffer_usage *value = object;
}
_Static_assert(_Alignof(sg_buffer_usage) <= _Alignof(void*), "external payload alignment");
static sg_buffer_usage *mb_new_sg_buffer_usage(void) { return mb_object_new(sizeof(sg_buffer_usage), mb_drop_sg_buffer_usage); }
static sg_buffer_usage *mb_copy_sg_buffer_usage(const sg_buffer_usage *source) { sg_buffer_usage *r = mb_new_sg_buffer_usage(); mb_clone_sg_buffer_usage(r, source); return r; }
static void mb_clone_sg_buffer_view_desc(sg_buffer_view_desc *dst, const sg_buffer_view_desc *src) { *dst = *src;
}
static void mb_drop_sg_buffer_view_desc(void *object) { sg_buffer_view_desc *value = object;
}
_Static_assert(_Alignof(sg_buffer_view_desc) <= _Alignof(void*), "external payload alignment");
static sg_buffer_view_desc *mb_new_sg_buffer_view_desc(void) { return mb_object_new(sizeof(sg_buffer_view_desc), mb_drop_sg_buffer_view_desc); }
static sg_buffer_view_desc *mb_copy_sg_buffer_view_desc(const sg_buffer_view_desc *source) { sg_buffer_view_desc *r = mb_new_sg_buffer_view_desc(); mb_clone_sg_buffer_view_desc(r, source); return r; }
static void mb_clone_sg_color(sg_color *dst, const sg_color *src) { *dst = *src;
}
static void mb_drop_sg_color(void *object) { sg_color *value = object;
}
_Static_assert(_Alignof(sg_color) <= _Alignof(void*), "external payload alignment");
static sg_color *mb_new_sg_color(void) { return mb_object_new(sizeof(sg_color), mb_drop_sg_color); }
static sg_color *mb_copy_sg_color(const sg_color *source) { sg_color *r = mb_new_sg_color(); mb_clone_sg_color(r, source); return r; }
static void mb_clone_sg_color_attachment_action(sg_color_attachment_action *dst, const sg_color_attachment_action *src) { *dst = *src;
mb_clone_sg_color(&dst->clear_value, &src->clear_value);
}
static void mb_drop_sg_color_attachment_action(void *object) { sg_color_attachment_action *value = object;
mb_drop_sg_color(&value->clear_value);
}
_Static_assert(_Alignof(sg_color_attachment_action) <= _Alignof(void*), "external payload alignment");
static sg_color_attachment_action *mb_new_sg_color_attachment_action(void) { return mb_object_new(sizeof(sg_color_attachment_action), mb_drop_sg_color_attachment_action); }
static sg_color_attachment_action *mb_copy_sg_color_attachment_action(const sg_color_attachment_action *source) { sg_color_attachment_action *r = mb_new_sg_color_attachment_action(); mb_clone_sg_color_attachment_action(r, source); return r; }
static void mb_clone_sg_color_target_state(sg_color_target_state *dst, const sg_color_target_state *src) { *dst = *src;
mb_clone_sg_blend_state(&dst->blend, &src->blend);
}
static void mb_drop_sg_color_target_state(void *object) { sg_color_target_state *value = object;
mb_drop_sg_blend_state(&value->blend);
}
_Static_assert(_Alignof(sg_color_target_state) <= _Alignof(void*), "external payload alignment");
static sg_color_target_state *mb_new_sg_color_target_state(void) { return mb_object_new(sizeof(sg_color_target_state), mb_drop_sg_color_target_state); }
static sg_color_target_state *mb_copy_sg_color_target_state(const sg_color_target_state *source) { sg_color_target_state *r = mb_new_sg_color_target_state(); mb_clone_sg_color_target_state(r, source); return r; }
static void mb_clone_sg_commit_listener(sg_commit_listener *dst, const sg_commit_listener *src) { *dst = *src;
mb_clone_sg_commit_listener_callbacks(dst, src);
}
static void mb_drop_sg_commit_listener(void *object) { sg_commit_listener *value = object;
mb_drop_sg_commit_listener_callbacks(value);
}
_Static_assert(_Alignof(sg_commit_listener) <= _Alignof(void*), "external payload alignment");
static sg_commit_listener *mb_new_sg_commit_listener(void) { return mb_object_new(sizeof(sg_commit_listener), mb_drop_sg_commit_listener); }
static sg_commit_listener *mb_copy_sg_commit_listener(const sg_commit_listener *source) { sg_commit_listener *r = mb_new_sg_commit_listener(); mb_clone_sg_commit_listener(r, source); return r; }
static void mb_clone_sg_copy_buffer_to_buffer_desc(sg_copy_buffer_to_buffer_desc *dst, const sg_copy_buffer_to_buffer_desc *src) { *dst = *src;
mb_clone_sg_buffer_location(&dst->src, &src->src);
mb_clone_sg_buffer_location(&dst->dst, &src->dst);
}
static void mb_drop_sg_copy_buffer_to_buffer_desc(void *object) { sg_copy_buffer_to_buffer_desc *value = object;
mb_drop_sg_buffer_location(&value->src);
mb_drop_sg_buffer_location(&value->dst);
}
_Static_assert(_Alignof(sg_copy_buffer_to_buffer_desc) <= _Alignof(void*), "external payload alignment");
static sg_copy_buffer_to_buffer_desc *mb_new_sg_copy_buffer_to_buffer_desc(void) { return mb_object_new(sizeof(sg_copy_buffer_to_buffer_desc), mb_drop_sg_copy_buffer_to_buffer_desc); }
static sg_copy_buffer_to_buffer_desc *mb_copy_sg_copy_buffer_to_buffer_desc(const sg_copy_buffer_to_buffer_desc *source) { sg_copy_buffer_to_buffer_desc *r = mb_new_sg_copy_buffer_to_buffer_desc(); mb_clone_sg_copy_buffer_to_buffer_desc(r, source); return r; }
static void mb_clone_sg_copy_buffer_to_image_desc(sg_copy_buffer_to_image_desc *dst, const sg_copy_buffer_to_image_desc *src) { *dst = *src;
mb_clone_sg_buffer_image_location(&dst->src, &src->src);
mb_clone_sg_image_location(&dst->dst, &src->dst);
mb_clone_sg_image_extent(&dst->size, &src->size);
}
static void mb_drop_sg_copy_buffer_to_image_desc(void *object) { sg_copy_buffer_to_image_desc *value = object;
mb_drop_sg_buffer_image_location(&value->src);
mb_drop_sg_image_location(&value->dst);
mb_drop_sg_image_extent(&value->size);
}
_Static_assert(_Alignof(sg_copy_buffer_to_image_desc) <= _Alignof(void*), "external payload alignment");
static sg_copy_buffer_to_image_desc *mb_new_sg_copy_buffer_to_image_desc(void) { return mb_object_new(sizeof(sg_copy_buffer_to_image_desc), mb_drop_sg_copy_buffer_to_image_desc); }
static sg_copy_buffer_to_image_desc *mb_copy_sg_copy_buffer_to_image_desc(const sg_copy_buffer_to_image_desc *source) { sg_copy_buffer_to_image_desc *r = mb_new_sg_copy_buffer_to_image_desc(); mb_clone_sg_copy_buffer_to_image_desc(r, source); return r; }
static void mb_clone_sg_copy_image_to_image_desc(sg_copy_image_to_image_desc *dst, const sg_copy_image_to_image_desc *src) { *dst = *src;
mb_clone_sg_image_location(&dst->src, &src->src);
mb_clone_sg_image_location(&dst->dst, &src->dst);
mb_clone_sg_image_extent(&dst->size, &src->size);
}
static void mb_drop_sg_copy_image_to_image_desc(void *object) { sg_copy_image_to_image_desc *value = object;
mb_drop_sg_image_location(&value->src);
mb_drop_sg_image_location(&value->dst);
mb_drop_sg_image_extent(&value->size);
}
_Static_assert(_Alignof(sg_copy_image_to_image_desc) <= _Alignof(void*), "external payload alignment");
static sg_copy_image_to_image_desc *mb_new_sg_copy_image_to_image_desc(void) { return mb_object_new(sizeof(sg_copy_image_to_image_desc), mb_drop_sg_copy_image_to_image_desc); }
static sg_copy_image_to_image_desc *mb_copy_sg_copy_image_to_image_desc(const sg_copy_image_to_image_desc *source) { sg_copy_image_to_image_desc *r = mb_new_sg_copy_image_to_image_desc(); mb_clone_sg_copy_image_to_image_desc(r, source); return r; }
static void mb_clone_sg_d3d11_buffer_info(sg_d3d11_buffer_info *dst, const sg_d3d11_buffer_info *src) { *dst = *src;
}
static void mb_drop_sg_d3d11_buffer_info(void *object) { sg_d3d11_buffer_info *value = object;
}
_Static_assert(_Alignof(sg_d3d11_buffer_info) <= _Alignof(void*), "external payload alignment");
static sg_d3d11_buffer_info *mb_new_sg_d3d11_buffer_info(void) { return mb_object_new(sizeof(sg_d3d11_buffer_info), mb_drop_sg_d3d11_buffer_info); }
static sg_d3d11_buffer_info *mb_copy_sg_d3d11_buffer_info(const sg_d3d11_buffer_info *source) { sg_d3d11_buffer_info *r = mb_new_sg_d3d11_buffer_info(); mb_clone_sg_d3d11_buffer_info(r, source); return r; }
static void mb_clone_sg_d3d11_desc(sg_d3d11_desc *dst, const sg_d3d11_desc *src) { *dst = *src;
}
static void mb_drop_sg_d3d11_desc(void *object) { sg_d3d11_desc *value = object;
}
_Static_assert(_Alignof(sg_d3d11_desc) <= _Alignof(void*), "external payload alignment");
static sg_d3d11_desc *mb_new_sg_d3d11_desc(void) { return mb_object_new(sizeof(sg_d3d11_desc), mb_drop_sg_d3d11_desc); }
static sg_d3d11_desc *mb_copy_sg_d3d11_desc(const sg_d3d11_desc *source) { sg_d3d11_desc *r = mb_new_sg_d3d11_desc(); mb_clone_sg_d3d11_desc(r, source); return r; }
static void mb_clone_sg_d3d11_environment(sg_d3d11_environment *dst, const sg_d3d11_environment *src) { *dst = *src;
}
static void mb_drop_sg_d3d11_environment(void *object) { sg_d3d11_environment *value = object;
}
_Static_assert(_Alignof(sg_d3d11_environment) <= _Alignof(void*), "external payload alignment");
static sg_d3d11_environment *mb_new_sg_d3d11_environment(void) { return mb_object_new(sizeof(sg_d3d11_environment), mb_drop_sg_d3d11_environment); }
static sg_d3d11_environment *mb_copy_sg_d3d11_environment(const sg_d3d11_environment *source) { sg_d3d11_environment *r = mb_new_sg_d3d11_environment(); mb_clone_sg_d3d11_environment(r, source); return r; }
static void mb_clone_sg_d3d11_image_info(sg_d3d11_image_info *dst, const sg_d3d11_image_info *src) { *dst = *src;
}
static void mb_drop_sg_d3d11_image_info(void *object) { sg_d3d11_image_info *value = object;
}
_Static_assert(_Alignof(sg_d3d11_image_info) <= _Alignof(void*), "external payload alignment");
static sg_d3d11_image_info *mb_new_sg_d3d11_image_info(void) { return mb_object_new(sizeof(sg_d3d11_image_info), mb_drop_sg_d3d11_image_info); }
static sg_d3d11_image_info *mb_copy_sg_d3d11_image_info(const sg_d3d11_image_info *source) { sg_d3d11_image_info *r = mb_new_sg_d3d11_image_info(); mb_clone_sg_d3d11_image_info(r, source); return r; }
static void mb_clone_sg_d3d11_pipeline_info(sg_d3d11_pipeline_info *dst, const sg_d3d11_pipeline_info *src) { *dst = *src;
}
static void mb_drop_sg_d3d11_pipeline_info(void *object) { sg_d3d11_pipeline_info *value = object;
}
_Static_assert(_Alignof(sg_d3d11_pipeline_info) <= _Alignof(void*), "external payload alignment");
static sg_d3d11_pipeline_info *mb_new_sg_d3d11_pipeline_info(void) { return mb_object_new(sizeof(sg_d3d11_pipeline_info), mb_drop_sg_d3d11_pipeline_info); }
static sg_d3d11_pipeline_info *mb_copy_sg_d3d11_pipeline_info(const sg_d3d11_pipeline_info *source) { sg_d3d11_pipeline_info *r = mb_new_sg_d3d11_pipeline_info(); mb_clone_sg_d3d11_pipeline_info(r, source); return r; }
static void mb_clone_sg_d3d11_sampler_info(sg_d3d11_sampler_info *dst, const sg_d3d11_sampler_info *src) { *dst = *src;
}
static void mb_drop_sg_d3d11_sampler_info(void *object) { sg_d3d11_sampler_info *value = object;
}
_Static_assert(_Alignof(sg_d3d11_sampler_info) <= _Alignof(void*), "external payload alignment");
static sg_d3d11_sampler_info *mb_new_sg_d3d11_sampler_info(void) { return mb_object_new(sizeof(sg_d3d11_sampler_info), mb_drop_sg_d3d11_sampler_info); }
static sg_d3d11_sampler_info *mb_copy_sg_d3d11_sampler_info(const sg_d3d11_sampler_info *source) { sg_d3d11_sampler_info *r = mb_new_sg_d3d11_sampler_info(); mb_clone_sg_d3d11_sampler_info(r, source); return r; }
static void mb_clone_sg_d3d11_shader_info(sg_d3d11_shader_info *dst, const sg_d3d11_shader_info *src) { *dst = *src;
}
static void mb_drop_sg_d3d11_shader_info(void *object) { sg_d3d11_shader_info *value = object;
}
_Static_assert(_Alignof(sg_d3d11_shader_info) <= _Alignof(void*), "external payload alignment");
static sg_d3d11_shader_info *mb_new_sg_d3d11_shader_info(void) { return mb_object_new(sizeof(sg_d3d11_shader_info), mb_drop_sg_d3d11_shader_info); }
static sg_d3d11_shader_info *mb_copy_sg_d3d11_shader_info(const sg_d3d11_shader_info *source) { sg_d3d11_shader_info *r = mb_new_sg_d3d11_shader_info(); mb_clone_sg_d3d11_shader_info(r, source); return r; }
static void mb_clone_sg_d3d11_swapchain(sg_d3d11_swapchain *dst, const sg_d3d11_swapchain *src) { *dst = *src;
}
static void mb_drop_sg_d3d11_swapchain(void *object) { sg_d3d11_swapchain *value = object;
}
_Static_assert(_Alignof(sg_d3d11_swapchain) <= _Alignof(void*), "external payload alignment");
static sg_d3d11_swapchain *mb_new_sg_d3d11_swapchain(void) { return mb_object_new(sizeof(sg_d3d11_swapchain), mb_drop_sg_d3d11_swapchain); }
static sg_d3d11_swapchain *mb_copy_sg_d3d11_swapchain(const sg_d3d11_swapchain *source) { sg_d3d11_swapchain *r = mb_new_sg_d3d11_swapchain(); mb_clone_sg_d3d11_swapchain(r, source); return r; }
static void mb_clone_sg_d3d11_view_info(sg_d3d11_view_info *dst, const sg_d3d11_view_info *src) { *dst = *src;
}
static void mb_drop_sg_d3d11_view_info(void *object) { sg_d3d11_view_info *value = object;
}
_Static_assert(_Alignof(sg_d3d11_view_info) <= _Alignof(void*), "external payload alignment");
static sg_d3d11_view_info *mb_new_sg_d3d11_view_info(void) { return mb_object_new(sizeof(sg_d3d11_view_info), mb_drop_sg_d3d11_view_info); }
static sg_d3d11_view_info *mb_copy_sg_d3d11_view_info(const sg_d3d11_view_info *source) { sg_d3d11_view_info *r = mb_new_sg_d3d11_view_info(); mb_clone_sg_d3d11_view_info(r, source); return r; }
static void mb_clone_sg_depth_attachment_action(sg_depth_attachment_action *dst, const sg_depth_attachment_action *src) { *dst = *src;
}
static void mb_drop_sg_depth_attachment_action(void *object) { sg_depth_attachment_action *value = object;
}
_Static_assert(_Alignof(sg_depth_attachment_action) <= _Alignof(void*), "external payload alignment");
static sg_depth_attachment_action *mb_new_sg_depth_attachment_action(void) { return mb_object_new(sizeof(sg_depth_attachment_action), mb_drop_sg_depth_attachment_action); }
static sg_depth_attachment_action *mb_copy_sg_depth_attachment_action(const sg_depth_attachment_action *source) { sg_depth_attachment_action *r = mb_new_sg_depth_attachment_action(); mb_clone_sg_depth_attachment_action(r, source); return r; }
static void mb_clone_sg_depth_state(sg_depth_state *dst, const sg_depth_state *src) { *dst = *src;
}
static void mb_drop_sg_depth_state(void *object) { sg_depth_state *value = object;
}
_Static_assert(_Alignof(sg_depth_state) <= _Alignof(void*), "external payload alignment");
static sg_depth_state *mb_new_sg_depth_state(void) { return mb_object_new(sizeof(sg_depth_state), mb_drop_sg_depth_state); }
static sg_depth_state *mb_copy_sg_depth_state(const sg_depth_state *source) { sg_depth_state *r = mb_new_sg_depth_state(); mb_clone_sg_depth_state(r, source); return r; }
static void mb_clone_sg_desc(sg_desc *dst, const sg_desc *src) { *dst = *src;
mb_clone_sg_d3d11_desc(&dst->d3d11, &src->d3d11);
mb_clone_sg_metal_desc(&dst->metal, &src->metal);
mb_clone_sg_wgpu_desc(&dst->wgpu, &src->wgpu);
mb_clone_sg_vulkan_desc(&dst->vulkan, &src->vulkan);
mb_clone_sg_allocator(&dst->allocator, &src->allocator);
mb_clone_sg_logger(&dst->logger, &src->logger);
mb_clone_sg_environment(&dst->environment, &src->environment);
}
static void mb_drop_sg_desc(void *object) { sg_desc *value = object;
mb_drop_sg_d3d11_desc(&value->d3d11);
mb_drop_sg_metal_desc(&value->metal);
mb_drop_sg_wgpu_desc(&value->wgpu);
mb_drop_sg_vulkan_desc(&value->vulkan);
mb_drop_sg_allocator(&value->allocator);
mb_drop_sg_logger(&value->logger);
mb_drop_sg_environment(&value->environment);
}
_Static_assert(_Alignof(sg_desc) <= _Alignof(void*), "external payload alignment");
static sg_desc *mb_new_sg_desc(void) { return mb_object_new(sizeof(sg_desc), mb_drop_sg_desc); }
static sg_desc *mb_copy_sg_desc(const sg_desc *source) { sg_desc *r = mb_new_sg_desc(); mb_clone_sg_desc(r, source); return r; }
static void mb_clone_sg_environment(sg_environment *dst, const sg_environment *src) { *dst = *src;
mb_clone_sg_environment_defaults(&dst->defaults, &src->defaults);
mb_clone_sg_metal_environment(&dst->metal, &src->metal);
mb_clone_sg_d3d11_environment(&dst->d3d11, &src->d3d11);
mb_clone_sg_wgpu_environment(&dst->wgpu, &src->wgpu);
mb_clone_sg_vulkan_environment(&dst->vulkan, &src->vulkan);
}
static void mb_drop_sg_environment(void *object) { sg_environment *value = object;
mb_drop_sg_environment_defaults(&value->defaults);
mb_drop_sg_metal_environment(&value->metal);
mb_drop_sg_d3d11_environment(&value->d3d11);
mb_drop_sg_wgpu_environment(&value->wgpu);
mb_drop_sg_vulkan_environment(&value->vulkan);
}
_Static_assert(_Alignof(sg_environment) <= _Alignof(void*), "external payload alignment");
static sg_environment *mb_new_sg_environment(void) { return mb_object_new(sizeof(sg_environment), mb_drop_sg_environment); }
static sg_environment *mb_copy_sg_environment(const sg_environment *source) { sg_environment *r = mb_new_sg_environment(); mb_clone_sg_environment(r, source); return r; }
static void mb_clone_sg_environment_defaults(sg_environment_defaults *dst, const sg_environment_defaults *src) { *dst = *src;
}
static void mb_drop_sg_environment_defaults(void *object) { sg_environment_defaults *value = object;
}
_Static_assert(_Alignof(sg_environment_defaults) <= _Alignof(void*), "external payload alignment");
static sg_environment_defaults *mb_new_sg_environment_defaults(void) { return mb_object_new(sizeof(sg_environment_defaults), mb_drop_sg_environment_defaults); }
static sg_environment_defaults *mb_copy_sg_environment_defaults(const sg_environment_defaults *source) { sg_environment_defaults *r = mb_new_sg_environment_defaults(); mb_clone_sg_environment_defaults(r, source); return r; }
static void mb_clone_sg_features(sg_features *dst, const sg_features *src) { *dst = *src;
}
static void mb_drop_sg_features(void *object) { sg_features *value = object;
}
_Static_assert(_Alignof(sg_features) <= _Alignof(void*), "external payload alignment");
static sg_features *mb_new_sg_features(void) { return mb_object_new(sizeof(sg_features), mb_drop_sg_features); }
static sg_features *mb_copy_sg_features(const sg_features *source) { sg_features *r = mb_new_sg_features(); mb_clone_sg_features(r, source); return r; }
static void mb_clone_sg_frame_resource_stats(sg_frame_resource_stats *dst, const sg_frame_resource_stats *src) { *dst = *src;
}
static void mb_drop_sg_frame_resource_stats(void *object) { sg_frame_resource_stats *value = object;
}
_Static_assert(_Alignof(sg_frame_resource_stats) <= _Alignof(void*), "external payload alignment");
static sg_frame_resource_stats *mb_new_sg_frame_resource_stats(void) { return mb_object_new(sizeof(sg_frame_resource_stats), mb_drop_sg_frame_resource_stats); }
static sg_frame_resource_stats *mb_copy_sg_frame_resource_stats(const sg_frame_resource_stats *source) { sg_frame_resource_stats *r = mb_new_sg_frame_resource_stats(); mb_clone_sg_frame_resource_stats(r, source); return r; }
static void mb_clone_sg_frame_stats(sg_frame_stats *dst, const sg_frame_stats *src) { *dst = *src;
mb_clone_sg_frame_resource_stats(&dst->buffers, &src->buffers);
mb_clone_sg_frame_resource_stats(&dst->images, &src->images);
mb_clone_sg_frame_resource_stats(&dst->samplers, &src->samplers);
mb_clone_sg_frame_resource_stats(&dst->views, &src->views);
mb_clone_sg_frame_resource_stats(&dst->shaders, &src->shaders);
mb_clone_sg_frame_resource_stats(&dst->pipelines, &src->pipelines);
mb_clone_sg_frame_stats_gl(&dst->gl, &src->gl);
mb_clone_sg_frame_stats_d3d11(&dst->d3d11, &src->d3d11);
mb_clone_sg_frame_stats_metal(&dst->metal, &src->metal);
mb_clone_sg_frame_stats_wgpu(&dst->wgpu, &src->wgpu);
mb_clone_sg_frame_stats_vk(&dst->vk, &src->vk);
}
static void mb_drop_sg_frame_stats(void *object) { sg_frame_stats *value = object;
mb_drop_sg_frame_resource_stats(&value->buffers);
mb_drop_sg_frame_resource_stats(&value->images);
mb_drop_sg_frame_resource_stats(&value->samplers);
mb_drop_sg_frame_resource_stats(&value->views);
mb_drop_sg_frame_resource_stats(&value->shaders);
mb_drop_sg_frame_resource_stats(&value->pipelines);
mb_drop_sg_frame_stats_gl(&value->gl);
mb_drop_sg_frame_stats_d3d11(&value->d3d11);
mb_drop_sg_frame_stats_metal(&value->metal);
mb_drop_sg_frame_stats_wgpu(&value->wgpu);
mb_drop_sg_frame_stats_vk(&value->vk);
}
_Static_assert(_Alignof(sg_frame_stats) <= _Alignof(void*), "external payload alignment");
static sg_frame_stats *mb_new_sg_frame_stats(void) { return mb_object_new(sizeof(sg_frame_stats), mb_drop_sg_frame_stats); }
static sg_frame_stats *mb_copy_sg_frame_stats(const sg_frame_stats *source) { sg_frame_stats *r = mb_new_sg_frame_stats(); mb_clone_sg_frame_stats(r, source); return r; }
static void mb_clone_sg_frame_stats_d3d11(sg_frame_stats_d3d11 *dst, const sg_frame_stats_d3d11 *src) { *dst = *src;
mb_clone_sg_frame_stats_d3d11_pass(&dst->pass, &src->pass);
mb_clone_sg_frame_stats_d3d11_pipeline(&dst->pipeline, &src->pipeline);
mb_clone_sg_frame_stats_d3d11_bindings(&dst->bindings, &src->bindings);
mb_clone_sg_frame_stats_d3d11_draw(&dst->draw, &src->draw);
}
static void mb_drop_sg_frame_stats_d3d11(void *object) { sg_frame_stats_d3d11 *value = object;
mb_drop_sg_frame_stats_d3d11_pass(&value->pass);
mb_drop_sg_frame_stats_d3d11_pipeline(&value->pipeline);
mb_drop_sg_frame_stats_d3d11_bindings(&value->bindings);
mb_drop_sg_frame_stats_d3d11_draw(&value->draw);
}
_Static_assert(_Alignof(sg_frame_stats_d3d11) <= _Alignof(void*), "external payload alignment");
static sg_frame_stats_d3d11 *mb_new_sg_frame_stats_d3d11(void) { return mb_object_new(sizeof(sg_frame_stats_d3d11), mb_drop_sg_frame_stats_d3d11); }
static sg_frame_stats_d3d11 *mb_copy_sg_frame_stats_d3d11(const sg_frame_stats_d3d11 *source) { sg_frame_stats_d3d11 *r = mb_new_sg_frame_stats_d3d11(); mb_clone_sg_frame_stats_d3d11(r, source); return r; }
static void mb_clone_sg_frame_stats_d3d11_bindings(sg_frame_stats_d3d11_bindings *dst, const sg_frame_stats_d3d11_bindings *src) { *dst = *src;
}
static void mb_drop_sg_frame_stats_d3d11_bindings(void *object) { sg_frame_stats_d3d11_bindings *value = object;
}
_Static_assert(_Alignof(sg_frame_stats_d3d11_bindings) <= _Alignof(void*), "external payload alignment");
static sg_frame_stats_d3d11_bindings *mb_new_sg_frame_stats_d3d11_bindings(void) { return mb_object_new(sizeof(sg_frame_stats_d3d11_bindings), mb_drop_sg_frame_stats_d3d11_bindings); }
static sg_frame_stats_d3d11_bindings *mb_copy_sg_frame_stats_d3d11_bindings(const sg_frame_stats_d3d11_bindings *source) { sg_frame_stats_d3d11_bindings *r = mb_new_sg_frame_stats_d3d11_bindings(); mb_clone_sg_frame_stats_d3d11_bindings(r, source); return r; }
static void mb_clone_sg_frame_stats_d3d11_draw(sg_frame_stats_d3d11_draw *dst, const sg_frame_stats_d3d11_draw *src) { *dst = *src;
}
static void mb_drop_sg_frame_stats_d3d11_draw(void *object) { sg_frame_stats_d3d11_draw *value = object;
}
_Static_assert(_Alignof(sg_frame_stats_d3d11_draw) <= _Alignof(void*), "external payload alignment");
static sg_frame_stats_d3d11_draw *mb_new_sg_frame_stats_d3d11_draw(void) { return mb_object_new(sizeof(sg_frame_stats_d3d11_draw), mb_drop_sg_frame_stats_d3d11_draw); }
static sg_frame_stats_d3d11_draw *mb_copy_sg_frame_stats_d3d11_draw(const sg_frame_stats_d3d11_draw *source) { sg_frame_stats_d3d11_draw *r = mb_new_sg_frame_stats_d3d11_draw(); mb_clone_sg_frame_stats_d3d11_draw(r, source); return r; }
static void mb_clone_sg_frame_stats_d3d11_pass(sg_frame_stats_d3d11_pass *dst, const sg_frame_stats_d3d11_pass *src) { *dst = *src;
}
static void mb_drop_sg_frame_stats_d3d11_pass(void *object) { sg_frame_stats_d3d11_pass *value = object;
}
_Static_assert(_Alignof(sg_frame_stats_d3d11_pass) <= _Alignof(void*), "external payload alignment");
static sg_frame_stats_d3d11_pass *mb_new_sg_frame_stats_d3d11_pass(void) { return mb_object_new(sizeof(sg_frame_stats_d3d11_pass), mb_drop_sg_frame_stats_d3d11_pass); }
static sg_frame_stats_d3d11_pass *mb_copy_sg_frame_stats_d3d11_pass(const sg_frame_stats_d3d11_pass *source) { sg_frame_stats_d3d11_pass *r = mb_new_sg_frame_stats_d3d11_pass(); mb_clone_sg_frame_stats_d3d11_pass(r, source); return r; }
static void mb_clone_sg_frame_stats_d3d11_pipeline(sg_frame_stats_d3d11_pipeline *dst, const sg_frame_stats_d3d11_pipeline *src) { *dst = *src;
}
static void mb_drop_sg_frame_stats_d3d11_pipeline(void *object) { sg_frame_stats_d3d11_pipeline *value = object;
}
_Static_assert(_Alignof(sg_frame_stats_d3d11_pipeline) <= _Alignof(void*), "external payload alignment");
static sg_frame_stats_d3d11_pipeline *mb_new_sg_frame_stats_d3d11_pipeline(void) { return mb_object_new(sizeof(sg_frame_stats_d3d11_pipeline), mb_drop_sg_frame_stats_d3d11_pipeline); }
static sg_frame_stats_d3d11_pipeline *mb_copy_sg_frame_stats_d3d11_pipeline(const sg_frame_stats_d3d11_pipeline *source) { sg_frame_stats_d3d11_pipeline *r = mb_new_sg_frame_stats_d3d11_pipeline(); mb_clone_sg_frame_stats_d3d11_pipeline(r, source); return r; }
static void mb_clone_sg_frame_stats_gl(sg_frame_stats_gl *dst, const sg_frame_stats_gl *src) { *dst = *src;
}
static void mb_drop_sg_frame_stats_gl(void *object) { sg_frame_stats_gl *value = object;
}
_Static_assert(_Alignof(sg_frame_stats_gl) <= _Alignof(void*), "external payload alignment");
static sg_frame_stats_gl *mb_new_sg_frame_stats_gl(void) { return mb_object_new(sizeof(sg_frame_stats_gl), mb_drop_sg_frame_stats_gl); }
static sg_frame_stats_gl *mb_copy_sg_frame_stats_gl(const sg_frame_stats_gl *source) { sg_frame_stats_gl *r = mb_new_sg_frame_stats_gl(); mb_clone_sg_frame_stats_gl(r, source); return r; }
static void mb_clone_sg_frame_stats_metal(sg_frame_stats_metal *dst, const sg_frame_stats_metal *src) { *dst = *src;
mb_clone_sg_frame_stats_metal_idpool(&dst->idpool, &src->idpool);
mb_clone_sg_frame_stats_metal_pipeline(&dst->pipeline, &src->pipeline);
mb_clone_sg_frame_stats_metal_bindings(&dst->bindings, &src->bindings);
mb_clone_sg_frame_stats_metal_uniforms(&dst->uniforms, &src->uniforms);
}
static void mb_drop_sg_frame_stats_metal(void *object) { sg_frame_stats_metal *value = object;
mb_drop_sg_frame_stats_metal_idpool(&value->idpool);
mb_drop_sg_frame_stats_metal_pipeline(&value->pipeline);
mb_drop_sg_frame_stats_metal_bindings(&value->bindings);
mb_drop_sg_frame_stats_metal_uniforms(&value->uniforms);
}
_Static_assert(_Alignof(sg_frame_stats_metal) <= _Alignof(void*), "external payload alignment");
static sg_frame_stats_metal *mb_new_sg_frame_stats_metal(void) { return mb_object_new(sizeof(sg_frame_stats_metal), mb_drop_sg_frame_stats_metal); }
static sg_frame_stats_metal *mb_copy_sg_frame_stats_metal(const sg_frame_stats_metal *source) { sg_frame_stats_metal *r = mb_new_sg_frame_stats_metal(); mb_clone_sg_frame_stats_metal(r, source); return r; }
static void mb_clone_sg_frame_stats_metal_bindings(sg_frame_stats_metal_bindings *dst, const sg_frame_stats_metal_bindings *src) { *dst = *src;
}
static void mb_drop_sg_frame_stats_metal_bindings(void *object) { sg_frame_stats_metal_bindings *value = object;
}
_Static_assert(_Alignof(sg_frame_stats_metal_bindings) <= _Alignof(void*), "external payload alignment");
static sg_frame_stats_metal_bindings *mb_new_sg_frame_stats_metal_bindings(void) { return mb_object_new(sizeof(sg_frame_stats_metal_bindings), mb_drop_sg_frame_stats_metal_bindings); }
static sg_frame_stats_metal_bindings *mb_copy_sg_frame_stats_metal_bindings(const sg_frame_stats_metal_bindings *source) { sg_frame_stats_metal_bindings *r = mb_new_sg_frame_stats_metal_bindings(); mb_clone_sg_frame_stats_metal_bindings(r, source); return r; }
static void mb_clone_sg_frame_stats_metal_idpool(sg_frame_stats_metal_idpool *dst, const sg_frame_stats_metal_idpool *src) { *dst = *src;
}
static void mb_drop_sg_frame_stats_metal_idpool(void *object) { sg_frame_stats_metal_idpool *value = object;
}
_Static_assert(_Alignof(sg_frame_stats_metal_idpool) <= _Alignof(void*), "external payload alignment");
static sg_frame_stats_metal_idpool *mb_new_sg_frame_stats_metal_idpool(void) { return mb_object_new(sizeof(sg_frame_stats_metal_idpool), mb_drop_sg_frame_stats_metal_idpool); }
static sg_frame_stats_metal_idpool *mb_copy_sg_frame_stats_metal_idpool(const sg_frame_stats_metal_idpool *source) { sg_frame_stats_metal_idpool *r = mb_new_sg_frame_stats_metal_idpool(); mb_clone_sg_frame_stats_metal_idpool(r, source); return r; }
static void mb_clone_sg_frame_stats_metal_pipeline(sg_frame_stats_metal_pipeline *dst, const sg_frame_stats_metal_pipeline *src) { *dst = *src;
}
static void mb_drop_sg_frame_stats_metal_pipeline(void *object) { sg_frame_stats_metal_pipeline *value = object;
}
_Static_assert(_Alignof(sg_frame_stats_metal_pipeline) <= _Alignof(void*), "external payload alignment");
static sg_frame_stats_metal_pipeline *mb_new_sg_frame_stats_metal_pipeline(void) { return mb_object_new(sizeof(sg_frame_stats_metal_pipeline), mb_drop_sg_frame_stats_metal_pipeline); }
static sg_frame_stats_metal_pipeline *mb_copy_sg_frame_stats_metal_pipeline(const sg_frame_stats_metal_pipeline *source) { sg_frame_stats_metal_pipeline *r = mb_new_sg_frame_stats_metal_pipeline(); mb_clone_sg_frame_stats_metal_pipeline(r, source); return r; }
static void mb_clone_sg_frame_stats_metal_uniforms(sg_frame_stats_metal_uniforms *dst, const sg_frame_stats_metal_uniforms *src) { *dst = *src;
}
static void mb_drop_sg_frame_stats_metal_uniforms(void *object) { sg_frame_stats_metal_uniforms *value = object;
}
_Static_assert(_Alignof(sg_frame_stats_metal_uniforms) <= _Alignof(void*), "external payload alignment");
static sg_frame_stats_metal_uniforms *mb_new_sg_frame_stats_metal_uniforms(void) { return mb_object_new(sizeof(sg_frame_stats_metal_uniforms), mb_drop_sg_frame_stats_metal_uniforms); }
static sg_frame_stats_metal_uniforms *mb_copy_sg_frame_stats_metal_uniforms(const sg_frame_stats_metal_uniforms *source) { sg_frame_stats_metal_uniforms *r = mb_new_sg_frame_stats_metal_uniforms(); mb_clone_sg_frame_stats_metal_uniforms(r, source); return r; }
static void mb_clone_sg_frame_stats_vk(sg_frame_stats_vk *dst, const sg_frame_stats_vk *src) { *dst = *src;
}
static void mb_drop_sg_frame_stats_vk(void *object) { sg_frame_stats_vk *value = object;
}
_Static_assert(_Alignof(sg_frame_stats_vk) <= _Alignof(void*), "external payload alignment");
static sg_frame_stats_vk *mb_new_sg_frame_stats_vk(void) { return mb_object_new(sizeof(sg_frame_stats_vk), mb_drop_sg_frame_stats_vk); }
static sg_frame_stats_vk *mb_copy_sg_frame_stats_vk(const sg_frame_stats_vk *source) { sg_frame_stats_vk *r = mb_new_sg_frame_stats_vk(); mb_clone_sg_frame_stats_vk(r, source); return r; }
static void mb_clone_sg_frame_stats_wgpu(sg_frame_stats_wgpu *dst, const sg_frame_stats_wgpu *src) { *dst = *src;
mb_clone_sg_frame_stats_wgpu_uniforms(&dst->uniforms, &src->uniforms);
mb_clone_sg_frame_stats_wgpu_bindings(&dst->bindings, &src->bindings);
}
static void mb_drop_sg_frame_stats_wgpu(void *object) { sg_frame_stats_wgpu *value = object;
mb_drop_sg_frame_stats_wgpu_uniforms(&value->uniforms);
mb_drop_sg_frame_stats_wgpu_bindings(&value->bindings);
}
_Static_assert(_Alignof(sg_frame_stats_wgpu) <= _Alignof(void*), "external payload alignment");
static sg_frame_stats_wgpu *mb_new_sg_frame_stats_wgpu(void) { return mb_object_new(sizeof(sg_frame_stats_wgpu), mb_drop_sg_frame_stats_wgpu); }
static sg_frame_stats_wgpu *mb_copy_sg_frame_stats_wgpu(const sg_frame_stats_wgpu *source) { sg_frame_stats_wgpu *r = mb_new_sg_frame_stats_wgpu(); mb_clone_sg_frame_stats_wgpu(r, source); return r; }
static void mb_clone_sg_frame_stats_wgpu_bindings(sg_frame_stats_wgpu_bindings *dst, const sg_frame_stats_wgpu_bindings *src) { *dst = *src;
}
static void mb_drop_sg_frame_stats_wgpu_bindings(void *object) { sg_frame_stats_wgpu_bindings *value = object;
}
_Static_assert(_Alignof(sg_frame_stats_wgpu_bindings) <= _Alignof(void*), "external payload alignment");
static sg_frame_stats_wgpu_bindings *mb_new_sg_frame_stats_wgpu_bindings(void) { return mb_object_new(sizeof(sg_frame_stats_wgpu_bindings), mb_drop_sg_frame_stats_wgpu_bindings); }
static sg_frame_stats_wgpu_bindings *mb_copy_sg_frame_stats_wgpu_bindings(const sg_frame_stats_wgpu_bindings *source) { sg_frame_stats_wgpu_bindings *r = mb_new_sg_frame_stats_wgpu_bindings(); mb_clone_sg_frame_stats_wgpu_bindings(r, source); return r; }
static void mb_clone_sg_frame_stats_wgpu_uniforms(sg_frame_stats_wgpu_uniforms *dst, const sg_frame_stats_wgpu_uniforms *src) { *dst = *src;
}
static void mb_drop_sg_frame_stats_wgpu_uniforms(void *object) { sg_frame_stats_wgpu_uniforms *value = object;
}
_Static_assert(_Alignof(sg_frame_stats_wgpu_uniforms) <= _Alignof(void*), "external payload alignment");
static sg_frame_stats_wgpu_uniforms *mb_new_sg_frame_stats_wgpu_uniforms(void) { return mb_object_new(sizeof(sg_frame_stats_wgpu_uniforms), mb_drop_sg_frame_stats_wgpu_uniforms); }
static sg_frame_stats_wgpu_uniforms *mb_copy_sg_frame_stats_wgpu_uniforms(const sg_frame_stats_wgpu_uniforms *source) { sg_frame_stats_wgpu_uniforms *r = mb_new_sg_frame_stats_wgpu_uniforms(); mb_clone_sg_frame_stats_wgpu_uniforms(r, source); return r; }
static void mb_clone_sg_gl_buffer_info(sg_gl_buffer_info *dst, const sg_gl_buffer_info *src) { *dst = *src;
}
static void mb_drop_sg_gl_buffer_info(void *object) { sg_gl_buffer_info *value = object;
}
_Static_assert(_Alignof(sg_gl_buffer_info) <= _Alignof(void*), "external payload alignment");
static sg_gl_buffer_info *mb_new_sg_gl_buffer_info(void) { return mb_object_new(sizeof(sg_gl_buffer_info), mb_drop_sg_gl_buffer_info); }
static sg_gl_buffer_info *mb_copy_sg_gl_buffer_info(const sg_gl_buffer_info *source) { sg_gl_buffer_info *r = mb_new_sg_gl_buffer_info(); mb_clone_sg_gl_buffer_info(r, source); return r; }
static void mb_clone_sg_gl_image_info(sg_gl_image_info *dst, const sg_gl_image_info *src) { *dst = *src;
}
static void mb_drop_sg_gl_image_info(void *object) { sg_gl_image_info *value = object;
}
_Static_assert(_Alignof(sg_gl_image_info) <= _Alignof(void*), "external payload alignment");
static sg_gl_image_info *mb_new_sg_gl_image_info(void) { return mb_object_new(sizeof(sg_gl_image_info), mb_drop_sg_gl_image_info); }
static sg_gl_image_info *mb_copy_sg_gl_image_info(const sg_gl_image_info *source) { sg_gl_image_info *r = mb_new_sg_gl_image_info(); mb_clone_sg_gl_image_info(r, source); return r; }
static void mb_clone_sg_gl_sampler_info(sg_gl_sampler_info *dst, const sg_gl_sampler_info *src) { *dst = *src;
}
static void mb_drop_sg_gl_sampler_info(void *object) { sg_gl_sampler_info *value = object;
}
_Static_assert(_Alignof(sg_gl_sampler_info) <= _Alignof(void*), "external payload alignment");
static sg_gl_sampler_info *mb_new_sg_gl_sampler_info(void) { return mb_object_new(sizeof(sg_gl_sampler_info), mb_drop_sg_gl_sampler_info); }
static sg_gl_sampler_info *mb_copy_sg_gl_sampler_info(const sg_gl_sampler_info *source) { sg_gl_sampler_info *r = mb_new_sg_gl_sampler_info(); mb_clone_sg_gl_sampler_info(r, source); return r; }
static void mb_clone_sg_gl_shader_info(sg_gl_shader_info *dst, const sg_gl_shader_info *src) { *dst = *src;
}
static void mb_drop_sg_gl_shader_info(void *object) { sg_gl_shader_info *value = object;
}
_Static_assert(_Alignof(sg_gl_shader_info) <= _Alignof(void*), "external payload alignment");
static sg_gl_shader_info *mb_new_sg_gl_shader_info(void) { return mb_object_new(sizeof(sg_gl_shader_info), mb_drop_sg_gl_shader_info); }
static sg_gl_shader_info *mb_copy_sg_gl_shader_info(const sg_gl_shader_info *source) { sg_gl_shader_info *r = mb_new_sg_gl_shader_info(); mb_clone_sg_gl_shader_info(r, source); return r; }
static void mb_clone_sg_gl_swapchain(sg_gl_swapchain *dst, const sg_gl_swapchain *src) { *dst = *src;
}
static void mb_drop_sg_gl_swapchain(void *object) { sg_gl_swapchain *value = object;
}
_Static_assert(_Alignof(sg_gl_swapchain) <= _Alignof(void*), "external payload alignment");
static sg_gl_swapchain *mb_new_sg_gl_swapchain(void) { return mb_object_new(sizeof(sg_gl_swapchain), mb_drop_sg_gl_swapchain); }
static sg_gl_swapchain *mb_copy_sg_gl_swapchain(const sg_gl_swapchain *source) { sg_gl_swapchain *r = mb_new_sg_gl_swapchain(); mb_clone_sg_gl_swapchain(r, source); return r; }
static void mb_clone_sg_gl_view_info(sg_gl_view_info *dst, const sg_gl_view_info *src) { *dst = *src;
}
static void mb_drop_sg_gl_view_info(void *object) { sg_gl_view_info *value = object;
}
_Static_assert(_Alignof(sg_gl_view_info) <= _Alignof(void*), "external payload alignment");
static sg_gl_view_info *mb_new_sg_gl_view_info(void) { return mb_object_new(sizeof(sg_gl_view_info), mb_drop_sg_gl_view_info); }
static sg_gl_view_info *mb_copy_sg_gl_view_info(const sg_gl_view_info *source) { sg_gl_view_info *r = mb_new_sg_gl_view_info(); mb_clone_sg_gl_view_info(r, source); return r; }
static void mb_clone_sg_glsl_shader_uniform(sg_glsl_shader_uniform *dst, const sg_glsl_shader_uniform *src) { *dst = *src;
dst->glsl_name = mb_string(src->glsl_name);
}
static void mb_drop_sg_glsl_shader_uniform(void *object) { sg_glsl_shader_uniform *value = object;
free((void*)value->glsl_name);
}
_Static_assert(_Alignof(sg_glsl_shader_uniform) <= _Alignof(void*), "external payload alignment");
static sg_glsl_shader_uniform *mb_new_sg_glsl_shader_uniform(void) { return mb_object_new(sizeof(sg_glsl_shader_uniform), mb_drop_sg_glsl_shader_uniform); }
static sg_glsl_shader_uniform *mb_copy_sg_glsl_shader_uniform(const sg_glsl_shader_uniform *source) { sg_glsl_shader_uniform *r = mb_new_sg_glsl_shader_uniform(); mb_clone_sg_glsl_shader_uniform(r, source); return r; }
static void mb_clone_sg_image_desc(sg_image_desc *dst, const sg_image_desc *src) { *dst = *src;
mb_clone_sg_image_usage(&dst->usage, &src->usage);
mb_clone_sg_range(&dst->data, &src->data);
dst->label = mb_string(src->label);
}
static void mb_drop_sg_image_desc(void *object) { sg_image_desc *value = object;
mb_drop_sg_image_usage(&value->usage);
mb_drop_sg_range(&value->data);
free((void*)value->label);
}
_Static_assert(_Alignof(sg_image_desc) <= _Alignof(void*), "external payload alignment");
static sg_image_desc *mb_new_sg_image_desc(void) { return mb_object_new(sizeof(sg_image_desc), mb_drop_sg_image_desc); }
static sg_image_desc *mb_copy_sg_image_desc(const sg_image_desc *source) { sg_image_desc *r = mb_new_sg_image_desc(); mb_clone_sg_image_desc(r, source); return r; }
static void mb_clone_sg_image_extent(sg_image_extent *dst, const sg_image_extent *src) { *dst = *src;
}
static void mb_drop_sg_image_extent(void *object) { sg_image_extent *value = object;
}
_Static_assert(_Alignof(sg_image_extent) <= _Alignof(void*), "external payload alignment");
static sg_image_extent *mb_new_sg_image_extent(void) { return mb_object_new(sizeof(sg_image_extent), mb_drop_sg_image_extent); }
static sg_image_extent *mb_copy_sg_image_extent(const sg_image_extent *source) { sg_image_extent *r = mb_new_sg_image_extent(); mb_clone_sg_image_extent(r, source); return r; }
static void mb_clone_sg_image_info(sg_image_info *dst, const sg_image_info *src) { *dst = *src;
mb_clone_sg_slot_info(&dst->slot, &src->slot);
}
static void mb_drop_sg_image_info(void *object) { sg_image_info *value = object;
mb_drop_sg_slot_info(&value->slot);
}
_Static_assert(_Alignof(sg_image_info) <= _Alignof(void*), "external payload alignment");
static sg_image_info *mb_new_sg_image_info(void) { return mb_object_new(sizeof(sg_image_info), mb_drop_sg_image_info); }
static sg_image_info *mb_copy_sg_image_info(const sg_image_info *source) { sg_image_info *r = mb_new_sg_image_info(); mb_clone_sg_image_info(r, source); return r; }
static void mb_clone_sg_image_location(sg_image_location *dst, const sg_image_location *src) { *dst = *src;
}
static void mb_drop_sg_image_location(void *object) { sg_image_location *value = object;
}
_Static_assert(_Alignof(sg_image_location) <= _Alignof(void*), "external payload alignment");
static sg_image_location *mb_new_sg_image_location(void) { return mb_object_new(sizeof(sg_image_location), mb_drop_sg_image_location); }
static sg_image_location *mb_copy_sg_image_location(const sg_image_location *source) { sg_image_location *r = mb_new_sg_image_location(); mb_clone_sg_image_location(r, source); return r; }
static void mb_clone_sg_image_usage(sg_image_usage *dst, const sg_image_usage *src) { *dst = *src;
}
static void mb_drop_sg_image_usage(void *object) { sg_image_usage *value = object;
}
_Static_assert(_Alignof(sg_image_usage) <= _Alignof(void*), "external payload alignment");
static sg_image_usage *mb_new_sg_image_usage(void) { return mb_object_new(sizeof(sg_image_usage), mb_drop_sg_image_usage); }
static sg_image_usage *mb_copy_sg_image_usage(const sg_image_usage *source) { sg_image_usage *r = mb_new_sg_image_usage(); mb_clone_sg_image_usage(r, source); return r; }
static void mb_clone_sg_image_view_desc(sg_image_view_desc *dst, const sg_image_view_desc *src) { *dst = *src;
}
static void mb_drop_sg_image_view_desc(void *object) { sg_image_view_desc *value = object;
}
_Static_assert(_Alignof(sg_image_view_desc) <= _Alignof(void*), "external payload alignment");
static sg_image_view_desc *mb_new_sg_image_view_desc(void) { return mb_object_new(sizeof(sg_image_view_desc), mb_drop_sg_image_view_desc); }
static sg_image_view_desc *mb_copy_sg_image_view_desc(const sg_image_view_desc *source) { sg_image_view_desc *r = mb_new_sg_image_view_desc(); mb_clone_sg_image_view_desc(r, source); return r; }
static void mb_clone_sg_limits(sg_limits *dst, const sg_limits *src) { *dst = *src;
}
static void mb_drop_sg_limits(void *object) { sg_limits *value = object;
}
_Static_assert(_Alignof(sg_limits) <= _Alignof(void*), "external payload alignment");
static sg_limits *mb_new_sg_limits(void) { return mb_object_new(sizeof(sg_limits), mb_drop_sg_limits); }
static sg_limits *mb_copy_sg_limits(const sg_limits *source) { sg_limits *r = mb_new_sg_limits(); mb_clone_sg_limits(r, source); return r; }
static void mb_clone_sg_logger(sg_logger *dst, const sg_logger *src) { *dst = *src;
}
static void mb_drop_sg_logger(void *object) { sg_logger *value = object;
}
_Static_assert(_Alignof(sg_logger) <= _Alignof(void*), "external payload alignment");
static sg_logger *mb_new_sg_logger(void) { return mb_object_new(sizeof(sg_logger), mb_drop_sg_logger); }
static sg_logger *mb_copy_sg_logger(const sg_logger *source) { sg_logger *r = mb_new_sg_logger(); mb_clone_sg_logger(r, source); return r; }
static void mb_clone_sg_metal_desc(sg_metal_desc *dst, const sg_metal_desc *src) { *dst = *src;
}
static void mb_drop_sg_metal_desc(void *object) { sg_metal_desc *value = object;
}
_Static_assert(_Alignof(sg_metal_desc) <= _Alignof(void*), "external payload alignment");
static sg_metal_desc *mb_new_sg_metal_desc(void) { return mb_object_new(sizeof(sg_metal_desc), mb_drop_sg_metal_desc); }
static sg_metal_desc *mb_copy_sg_metal_desc(const sg_metal_desc *source) { sg_metal_desc *r = mb_new_sg_metal_desc(); mb_clone_sg_metal_desc(r, source); return r; }
static void mb_clone_sg_metal_environment(sg_metal_environment *dst, const sg_metal_environment *src) { *dst = *src;
}
static void mb_drop_sg_metal_environment(void *object) { sg_metal_environment *value = object;
}
_Static_assert(_Alignof(sg_metal_environment) <= _Alignof(void*), "external payload alignment");
static sg_metal_environment *mb_new_sg_metal_environment(void) { return mb_object_new(sizeof(sg_metal_environment), mb_drop_sg_metal_environment); }
static sg_metal_environment *mb_copy_sg_metal_environment(const sg_metal_environment *source) { sg_metal_environment *r = mb_new_sg_metal_environment(); mb_clone_sg_metal_environment(r, source); return r; }
static void mb_clone_sg_metal_swapchain(sg_metal_swapchain *dst, const sg_metal_swapchain *src) { *dst = *src;
}
static void mb_drop_sg_metal_swapchain(void *object) { sg_metal_swapchain *value = object;
}
_Static_assert(_Alignof(sg_metal_swapchain) <= _Alignof(void*), "external payload alignment");
static sg_metal_swapchain *mb_new_sg_metal_swapchain(void) { return mb_object_new(sizeof(sg_metal_swapchain), mb_drop_sg_metal_swapchain); }
static sg_metal_swapchain *mb_copy_sg_metal_swapchain(const sg_metal_swapchain *source) { sg_metal_swapchain *r = mb_new_sg_metal_swapchain(); mb_clone_sg_metal_swapchain(r, source); return r; }
static void mb_clone_sg_mtl_buffer_info(sg_mtl_buffer_info *dst, const sg_mtl_buffer_info *src) { *dst = *src;
}
static void mb_drop_sg_mtl_buffer_info(void *object) { sg_mtl_buffer_info *value = object;
}
_Static_assert(_Alignof(sg_mtl_buffer_info) <= _Alignof(void*), "external payload alignment");
static sg_mtl_buffer_info *mb_new_sg_mtl_buffer_info(void) { return mb_object_new(sizeof(sg_mtl_buffer_info), mb_drop_sg_mtl_buffer_info); }
static sg_mtl_buffer_info *mb_copy_sg_mtl_buffer_info(const sg_mtl_buffer_info *source) { sg_mtl_buffer_info *r = mb_new_sg_mtl_buffer_info(); mb_clone_sg_mtl_buffer_info(r, source); return r; }
static void mb_clone_sg_mtl_image_info(sg_mtl_image_info *dst, const sg_mtl_image_info *src) { *dst = *src;
}
static void mb_drop_sg_mtl_image_info(void *object) { sg_mtl_image_info *value = object;
}
_Static_assert(_Alignof(sg_mtl_image_info) <= _Alignof(void*), "external payload alignment");
static sg_mtl_image_info *mb_new_sg_mtl_image_info(void) { return mb_object_new(sizeof(sg_mtl_image_info), mb_drop_sg_mtl_image_info); }
static sg_mtl_image_info *mb_copy_sg_mtl_image_info(const sg_mtl_image_info *source) { sg_mtl_image_info *r = mb_new_sg_mtl_image_info(); mb_clone_sg_mtl_image_info(r, source); return r; }
static void mb_clone_sg_mtl_pipeline_info(sg_mtl_pipeline_info *dst, const sg_mtl_pipeline_info *src) { *dst = *src;
}
static void mb_drop_sg_mtl_pipeline_info(void *object) { sg_mtl_pipeline_info *value = object;
}
_Static_assert(_Alignof(sg_mtl_pipeline_info) <= _Alignof(void*), "external payload alignment");
static sg_mtl_pipeline_info *mb_new_sg_mtl_pipeline_info(void) { return mb_object_new(sizeof(sg_mtl_pipeline_info), mb_drop_sg_mtl_pipeline_info); }
static sg_mtl_pipeline_info *mb_copy_sg_mtl_pipeline_info(const sg_mtl_pipeline_info *source) { sg_mtl_pipeline_info *r = mb_new_sg_mtl_pipeline_info(); mb_clone_sg_mtl_pipeline_info(r, source); return r; }
static void mb_clone_sg_mtl_sampler_info(sg_mtl_sampler_info *dst, const sg_mtl_sampler_info *src) { *dst = *src;
}
static void mb_drop_sg_mtl_sampler_info(void *object) { sg_mtl_sampler_info *value = object;
}
_Static_assert(_Alignof(sg_mtl_sampler_info) <= _Alignof(void*), "external payload alignment");
static sg_mtl_sampler_info *mb_new_sg_mtl_sampler_info(void) { return mb_object_new(sizeof(sg_mtl_sampler_info), mb_drop_sg_mtl_sampler_info); }
static sg_mtl_sampler_info *mb_copy_sg_mtl_sampler_info(const sg_mtl_sampler_info *source) { sg_mtl_sampler_info *r = mb_new_sg_mtl_sampler_info(); mb_clone_sg_mtl_sampler_info(r, source); return r; }
static void mb_clone_sg_mtl_shader_info(sg_mtl_shader_info *dst, const sg_mtl_shader_info *src) { *dst = *src;
}
static void mb_drop_sg_mtl_shader_info(void *object) { sg_mtl_shader_info *value = object;
}
_Static_assert(_Alignof(sg_mtl_shader_info) <= _Alignof(void*), "external payload alignment");
static sg_mtl_shader_info *mb_new_sg_mtl_shader_info(void) { return mb_object_new(sizeof(sg_mtl_shader_info), mb_drop_sg_mtl_shader_info); }
static sg_mtl_shader_info *mb_copy_sg_mtl_shader_info(const sg_mtl_shader_info *source) { sg_mtl_shader_info *r = mb_new_sg_mtl_shader_info(); mb_clone_sg_mtl_shader_info(r, source); return r; }
static void mb_clone_sg_mtl_shader_threads_per_threadgroup(sg_mtl_shader_threads_per_threadgroup *dst, const sg_mtl_shader_threads_per_threadgroup *src) { *dst = *src;
}
static void mb_drop_sg_mtl_shader_threads_per_threadgroup(void *object) { sg_mtl_shader_threads_per_threadgroup *value = object;
}
_Static_assert(_Alignof(sg_mtl_shader_threads_per_threadgroup) <= _Alignof(void*), "external payload alignment");
static sg_mtl_shader_threads_per_threadgroup *mb_new_sg_mtl_shader_threads_per_threadgroup(void) { return mb_object_new(sizeof(sg_mtl_shader_threads_per_threadgroup), mb_drop_sg_mtl_shader_threads_per_threadgroup); }
static sg_mtl_shader_threads_per_threadgroup *mb_copy_sg_mtl_shader_threads_per_threadgroup(const sg_mtl_shader_threads_per_threadgroup *source) { sg_mtl_shader_threads_per_threadgroup *r = mb_new_sg_mtl_shader_threads_per_threadgroup(); mb_clone_sg_mtl_shader_threads_per_threadgroup(r, source); return r; }
static void mb_clone_sg_pass(sg_pass *dst, const sg_pass *src) { *dst = *src;
mb_clone_sg_pass_action(&dst->action, &src->action);
mb_clone_sg_attachments(&dst->attachments, &src->attachments);
mb_clone_sg_swapchain(&dst->swapchain, &src->swapchain);
dst->label = mb_string(src->label);
}
static void mb_drop_sg_pass(void *object) { sg_pass *value = object;
mb_drop_sg_pass_action(&value->action);
mb_drop_sg_attachments(&value->attachments);
mb_drop_sg_swapchain(&value->swapchain);
free((void*)value->label);
}
_Static_assert(_Alignof(sg_pass) <= _Alignof(void*), "external payload alignment");
static sg_pass *mb_new_sg_pass(void) { return mb_object_new(sizeof(sg_pass), mb_drop_sg_pass); }
static sg_pass *mb_copy_sg_pass(const sg_pass *source) { sg_pass *r = mb_new_sg_pass(); mb_clone_sg_pass(r, source); return r; }
static void mb_clone_sg_pass_action(sg_pass_action *dst, const sg_pass_action *src) { *dst = *src;
for (int i0=0; i0<8; i0++) { mb_clone_sg_color_attachment_action(&dst->colors[i0], &src->colors[i0]); }
mb_clone_sg_depth_attachment_action(&dst->depth, &src->depth);
mb_clone_sg_stencil_attachment_action(&dst->stencil, &src->stencil);
}
static void mb_drop_sg_pass_action(void *object) { sg_pass_action *value = object;
for (int i0=0; i0<8; i0++) { mb_drop_sg_color_attachment_action(&value->colors[i0]); }
mb_drop_sg_depth_attachment_action(&value->depth);
mb_drop_sg_stencil_attachment_action(&value->stencil);
}
_Static_assert(_Alignof(sg_pass_action) <= _Alignof(void*), "external payload alignment");
static sg_pass_action *mb_new_sg_pass_action(void) { return mb_object_new(sizeof(sg_pass_action), mb_drop_sg_pass_action); }
static sg_pass_action *mb_copy_sg_pass_action(const sg_pass_action *source) { sg_pass_action *r = mb_new_sg_pass_action(); mb_clone_sg_pass_action(r, source); return r; }
static void mb_clone_sg_pipeline_desc(sg_pipeline_desc *dst, const sg_pipeline_desc *src) { *dst = *src;
mb_clone_sg_vertex_layout_state(&dst->layout, &src->layout);
mb_clone_sg_depth_state(&dst->depth, &src->depth);
mb_clone_sg_stencil_state(&dst->stencil, &src->stencil);
for (int i0=0; i0<8; i0++) { mb_clone_sg_color_target_state(&dst->colors[i0], &src->colors[i0]); }
mb_clone_sg_color(&dst->blend_color, &src->blend_color);
dst->label = mb_string(src->label);
}
static void mb_drop_sg_pipeline_desc(void *object) { sg_pipeline_desc *value = object;
mb_drop_sg_vertex_layout_state(&value->layout);
mb_drop_sg_depth_state(&value->depth);
mb_drop_sg_stencil_state(&value->stencil);
for (int i0=0; i0<8; i0++) { mb_drop_sg_color_target_state(&value->colors[i0]); }
mb_drop_sg_color(&value->blend_color);
free((void*)value->label);
}
_Static_assert(_Alignof(sg_pipeline_desc) <= _Alignof(void*), "external payload alignment");
static sg_pipeline_desc *mb_new_sg_pipeline_desc(void) { return mb_object_new(sizeof(sg_pipeline_desc), mb_drop_sg_pipeline_desc); }
static sg_pipeline_desc *mb_copy_sg_pipeline_desc(const sg_pipeline_desc *source) { sg_pipeline_desc *r = mb_new_sg_pipeline_desc(); mb_clone_sg_pipeline_desc(r, source); return r; }
static void mb_clone_sg_pipeline_info(sg_pipeline_info *dst, const sg_pipeline_info *src) { *dst = *src;
mb_clone_sg_slot_info(&dst->slot, &src->slot);
}
static void mb_drop_sg_pipeline_info(void *object) { sg_pipeline_info *value = object;
mb_drop_sg_slot_info(&value->slot);
}
_Static_assert(_Alignof(sg_pipeline_info) <= _Alignof(void*), "external payload alignment");
static sg_pipeline_info *mb_new_sg_pipeline_info(void) { return mb_object_new(sizeof(sg_pipeline_info), mb_drop_sg_pipeline_info); }
static sg_pipeline_info *mb_copy_sg_pipeline_info(const sg_pipeline_info *source) { sg_pipeline_info *r = mb_new_sg_pipeline_info(); mb_clone_sg_pipeline_info(r, source); return r; }
static void mb_clone_sg_pixelformat_info(sg_pixelformat_info *dst, const sg_pixelformat_info *src) { *dst = *src;
}
static void mb_drop_sg_pixelformat_info(void *object) { sg_pixelformat_info *value = object;
}
_Static_assert(_Alignof(sg_pixelformat_info) <= _Alignof(void*), "external payload alignment");
static sg_pixelformat_info *mb_new_sg_pixelformat_info(void) { return mb_object_new(sizeof(sg_pixelformat_info), mb_drop_sg_pixelformat_info); }
static sg_pixelformat_info *mb_copy_sg_pixelformat_info(const sg_pixelformat_info *source) { sg_pixelformat_info *r = mb_new_sg_pixelformat_info(); mb_clone_sg_pixelformat_info(r, source); return r; }
static void mb_clone_sg_range(sg_range *dst, const sg_range *src) { *dst = *src;
dst->ptr = mb_copy(src->ptr, src->size);
}
static void mb_drop_sg_range(void *object) { sg_range *value = object;
free((void*)value->ptr);
}
_Static_assert(_Alignof(sg_range) <= _Alignof(void*), "external payload alignment");
static sg_range *mb_new_sg_range(void) { return mb_object_new(sizeof(sg_range), mb_drop_sg_range); }
static sg_range *mb_copy_sg_range(const sg_range *source) { sg_range *r = mb_new_sg_range(); mb_clone_sg_range(r, source); return r; }
static void mb_clone_sg_sampler_desc(sg_sampler_desc *dst, const sg_sampler_desc *src) { *dst = *src;
dst->label = mb_string(src->label);
}
static void mb_drop_sg_sampler_desc(void *object) { sg_sampler_desc *value = object;
free((void*)value->label);
}
_Static_assert(_Alignof(sg_sampler_desc) <= _Alignof(void*), "external payload alignment");
static sg_sampler_desc *mb_new_sg_sampler_desc(void) { return mb_object_new(sizeof(sg_sampler_desc), mb_drop_sg_sampler_desc); }
static sg_sampler_desc *mb_copy_sg_sampler_desc(const sg_sampler_desc *source) { sg_sampler_desc *r = mb_new_sg_sampler_desc(); mb_clone_sg_sampler_desc(r, source); return r; }
static void mb_clone_sg_sampler_info(sg_sampler_info *dst, const sg_sampler_info *src) { *dst = *src;
mb_clone_sg_slot_info(&dst->slot, &src->slot);
}
static void mb_drop_sg_sampler_info(void *object) { sg_sampler_info *value = object;
mb_drop_sg_slot_info(&value->slot);
}
_Static_assert(_Alignof(sg_sampler_info) <= _Alignof(void*), "external payload alignment");
static sg_sampler_info *mb_new_sg_sampler_info(void) { return mb_object_new(sizeof(sg_sampler_info), mb_drop_sg_sampler_info); }
static sg_sampler_info *mb_copy_sg_sampler_info(const sg_sampler_info *source) { sg_sampler_info *r = mb_new_sg_sampler_info(); mb_clone_sg_sampler_info(r, source); return r; }
static void mb_clone_sg_shader_desc(sg_shader_desc *dst, const sg_shader_desc *src) { *dst = *src;
mb_clone_sg_shader_function(&dst->vertex_func, &src->vertex_func);
mb_clone_sg_shader_function(&dst->fragment_func, &src->fragment_func);
mb_clone_sg_shader_function(&dst->compute_func, &src->compute_func);
for (int i0=0; i0<16; i0++) { mb_clone_sg_shader_vertex_attr(&dst->attrs[i0], &src->attrs[i0]); }
for (int i0=0; i0<8; i0++) { mb_clone_sg_shader_uniform_block(&dst->uniform_blocks[i0], &src->uniform_blocks[i0]); }
for (int i0=0; i0<32; i0++) { mb_clone_sg_shader_view(&dst->views[i0], &src->views[i0]); }
for (int i0=0; i0<14; i0++) { mb_clone_sg_shader_sampler(&dst->samplers[i0], &src->samplers[i0]); }
for (int i0=0; i0<32; i0++) { mb_clone_sg_shader_texture_sampler_pair(&dst->texture_sampler_pairs[i0], &src->texture_sampler_pairs[i0]); }
mb_clone_sg_mtl_shader_threads_per_threadgroup(&dst->mtl_threads_per_threadgroup, &src->mtl_threads_per_threadgroup);
dst->label = mb_string(src->label);
}
static void mb_drop_sg_shader_desc(void *object) { sg_shader_desc *value = object;
mb_drop_sg_shader_function(&value->vertex_func);
mb_drop_sg_shader_function(&value->fragment_func);
mb_drop_sg_shader_function(&value->compute_func);
for (int i0=0; i0<16; i0++) { mb_drop_sg_shader_vertex_attr(&value->attrs[i0]); }
for (int i0=0; i0<8; i0++) { mb_drop_sg_shader_uniform_block(&value->uniform_blocks[i0]); }
for (int i0=0; i0<32; i0++) { mb_drop_sg_shader_view(&value->views[i0]); }
for (int i0=0; i0<14; i0++) { mb_drop_sg_shader_sampler(&value->samplers[i0]); }
for (int i0=0; i0<32; i0++) { mb_drop_sg_shader_texture_sampler_pair(&value->texture_sampler_pairs[i0]); }
mb_drop_sg_mtl_shader_threads_per_threadgroup(&value->mtl_threads_per_threadgroup);
free((void*)value->label);
}
_Static_assert(_Alignof(sg_shader_desc) <= _Alignof(void*), "external payload alignment");
static sg_shader_desc *mb_new_sg_shader_desc(void) { return mb_object_new(sizeof(sg_shader_desc), mb_drop_sg_shader_desc); }
static sg_shader_desc *mb_copy_sg_shader_desc(const sg_shader_desc *source) { sg_shader_desc *r = mb_new_sg_shader_desc(); mb_clone_sg_shader_desc(r, source); return r; }
static void mb_clone_sg_shader_function(sg_shader_function *dst, const sg_shader_function *src) { *dst = *src;
dst->source = mb_string(src->source);
mb_clone_sg_range(&dst->bytecode, &src->bytecode);
dst->entry = mb_string(src->entry);
dst->d3d11_target = mb_string(src->d3d11_target);
dst->d3d11_filepath = mb_string(src->d3d11_filepath);
}
static void mb_drop_sg_shader_function(void *object) { sg_shader_function *value = object;
free((void*)value->source);
mb_drop_sg_range(&value->bytecode);
free((void*)value->entry);
free((void*)value->d3d11_target);
free((void*)value->d3d11_filepath);
}
_Static_assert(_Alignof(sg_shader_function) <= _Alignof(void*), "external payload alignment");
static sg_shader_function *mb_new_sg_shader_function(void) { return mb_object_new(sizeof(sg_shader_function), mb_drop_sg_shader_function); }
static sg_shader_function *mb_copy_sg_shader_function(const sg_shader_function *source) { sg_shader_function *r = mb_new_sg_shader_function(); mb_clone_sg_shader_function(r, source); return r; }
static void mb_clone_sg_shader_info(sg_shader_info *dst, const sg_shader_info *src) { *dst = *src;
mb_clone_sg_slot_info(&dst->slot, &src->slot);
}
static void mb_drop_sg_shader_info(void *object) { sg_shader_info *value = object;
mb_drop_sg_slot_info(&value->slot);
}
_Static_assert(_Alignof(sg_shader_info) <= _Alignof(void*), "external payload alignment");
static sg_shader_info *mb_new_sg_shader_info(void) { return mb_object_new(sizeof(sg_shader_info), mb_drop_sg_shader_info); }
static sg_shader_info *mb_copy_sg_shader_info(const sg_shader_info *source) { sg_shader_info *r = mb_new_sg_shader_info(); mb_clone_sg_shader_info(r, source); return r; }
static void mb_clone_sg_shader_sampler(sg_shader_sampler *dst, const sg_shader_sampler *src) { *dst = *src;
}
static void mb_drop_sg_shader_sampler(void *object) { sg_shader_sampler *value = object;
}
_Static_assert(_Alignof(sg_shader_sampler) <= _Alignof(void*), "external payload alignment");
static sg_shader_sampler *mb_new_sg_shader_sampler(void) { return mb_object_new(sizeof(sg_shader_sampler), mb_drop_sg_shader_sampler); }
static sg_shader_sampler *mb_copy_sg_shader_sampler(const sg_shader_sampler *source) { sg_shader_sampler *r = mb_new_sg_shader_sampler(); mb_clone_sg_shader_sampler(r, source); return r; }
static void mb_clone_sg_shader_storage_buffer_view(sg_shader_storage_buffer_view *dst, const sg_shader_storage_buffer_view *src) { *dst = *src;
}
static void mb_drop_sg_shader_storage_buffer_view(void *object) { sg_shader_storage_buffer_view *value = object;
}
_Static_assert(_Alignof(sg_shader_storage_buffer_view) <= _Alignof(void*), "external payload alignment");
static sg_shader_storage_buffer_view *mb_new_sg_shader_storage_buffer_view(void) { return mb_object_new(sizeof(sg_shader_storage_buffer_view), mb_drop_sg_shader_storage_buffer_view); }
static sg_shader_storage_buffer_view *mb_copy_sg_shader_storage_buffer_view(const sg_shader_storage_buffer_view *source) { sg_shader_storage_buffer_view *r = mb_new_sg_shader_storage_buffer_view(); mb_clone_sg_shader_storage_buffer_view(r, source); return r; }
static void mb_clone_sg_shader_storage_image_view(sg_shader_storage_image_view *dst, const sg_shader_storage_image_view *src) { *dst = *src;
}
static void mb_drop_sg_shader_storage_image_view(void *object) { sg_shader_storage_image_view *value = object;
}
_Static_assert(_Alignof(sg_shader_storage_image_view) <= _Alignof(void*), "external payload alignment");
static sg_shader_storage_image_view *mb_new_sg_shader_storage_image_view(void) { return mb_object_new(sizeof(sg_shader_storage_image_view), mb_drop_sg_shader_storage_image_view); }
static sg_shader_storage_image_view *mb_copy_sg_shader_storage_image_view(const sg_shader_storage_image_view *source) { sg_shader_storage_image_view *r = mb_new_sg_shader_storage_image_view(); mb_clone_sg_shader_storage_image_view(r, source); return r; }
static void mb_clone_sg_shader_texture_sampler_pair(sg_shader_texture_sampler_pair *dst, const sg_shader_texture_sampler_pair *src) { *dst = *src;
dst->glsl_name = mb_string(src->glsl_name);
}
static void mb_drop_sg_shader_texture_sampler_pair(void *object) { sg_shader_texture_sampler_pair *value = object;
free((void*)value->glsl_name);
}
_Static_assert(_Alignof(sg_shader_texture_sampler_pair) <= _Alignof(void*), "external payload alignment");
static sg_shader_texture_sampler_pair *mb_new_sg_shader_texture_sampler_pair(void) { return mb_object_new(sizeof(sg_shader_texture_sampler_pair), mb_drop_sg_shader_texture_sampler_pair); }
static sg_shader_texture_sampler_pair *mb_copy_sg_shader_texture_sampler_pair(const sg_shader_texture_sampler_pair *source) { sg_shader_texture_sampler_pair *r = mb_new_sg_shader_texture_sampler_pair(); mb_clone_sg_shader_texture_sampler_pair(r, source); return r; }
static void mb_clone_sg_shader_texture_view(sg_shader_texture_view *dst, const sg_shader_texture_view *src) { *dst = *src;
}
static void mb_drop_sg_shader_texture_view(void *object) { sg_shader_texture_view *value = object;
}
_Static_assert(_Alignof(sg_shader_texture_view) <= _Alignof(void*), "external payload alignment");
static sg_shader_texture_view *mb_new_sg_shader_texture_view(void) { return mb_object_new(sizeof(sg_shader_texture_view), mb_drop_sg_shader_texture_view); }
static sg_shader_texture_view *mb_copy_sg_shader_texture_view(const sg_shader_texture_view *source) { sg_shader_texture_view *r = mb_new_sg_shader_texture_view(); mb_clone_sg_shader_texture_view(r, source); return r; }
static void mb_clone_sg_shader_uniform_block(sg_shader_uniform_block *dst, const sg_shader_uniform_block *src) { *dst = *src;
for (int i0=0; i0<16; i0++) { mb_clone_sg_glsl_shader_uniform(&dst->glsl_uniforms[i0], &src->glsl_uniforms[i0]); }
}
static void mb_drop_sg_shader_uniform_block(void *object) { sg_shader_uniform_block *value = object;
for (int i0=0; i0<16; i0++) { mb_drop_sg_glsl_shader_uniform(&value->glsl_uniforms[i0]); }
}
_Static_assert(_Alignof(sg_shader_uniform_block) <= _Alignof(void*), "external payload alignment");
static sg_shader_uniform_block *mb_new_sg_shader_uniform_block(void) { return mb_object_new(sizeof(sg_shader_uniform_block), mb_drop_sg_shader_uniform_block); }
static sg_shader_uniform_block *mb_copy_sg_shader_uniform_block(const sg_shader_uniform_block *source) { sg_shader_uniform_block *r = mb_new_sg_shader_uniform_block(); mb_clone_sg_shader_uniform_block(r, source); return r; }
static void mb_clone_sg_shader_vertex_attr(sg_shader_vertex_attr *dst, const sg_shader_vertex_attr *src) { *dst = *src;
dst->glsl_name = mb_string(src->glsl_name);
dst->hlsl_sem_name = mb_string(src->hlsl_sem_name);
}
static void mb_drop_sg_shader_vertex_attr(void *object) { sg_shader_vertex_attr *value = object;
free((void*)value->glsl_name);
free((void*)value->hlsl_sem_name);
}
_Static_assert(_Alignof(sg_shader_vertex_attr) <= _Alignof(void*), "external payload alignment");
static sg_shader_vertex_attr *mb_new_sg_shader_vertex_attr(void) { return mb_object_new(sizeof(sg_shader_vertex_attr), mb_drop_sg_shader_vertex_attr); }
static sg_shader_vertex_attr *mb_copy_sg_shader_vertex_attr(const sg_shader_vertex_attr *source) { sg_shader_vertex_attr *r = mb_new_sg_shader_vertex_attr(); mb_clone_sg_shader_vertex_attr(r, source); return r; }
static void mb_clone_sg_shader_view(sg_shader_view *dst, const sg_shader_view *src) { *dst = *src;
mb_clone_sg_shader_texture_view(&dst->texture, &src->texture);
mb_clone_sg_shader_storage_buffer_view(&dst->storage_buffer, &src->storage_buffer);
mb_clone_sg_shader_storage_image_view(&dst->storage_image, &src->storage_image);
}
static void mb_drop_sg_shader_view(void *object) { sg_shader_view *value = object;
mb_drop_sg_shader_texture_view(&value->texture);
mb_drop_sg_shader_storage_buffer_view(&value->storage_buffer);
mb_drop_sg_shader_storage_image_view(&value->storage_image);
}
_Static_assert(_Alignof(sg_shader_view) <= _Alignof(void*), "external payload alignment");
static sg_shader_view *mb_new_sg_shader_view(void) { return mb_object_new(sizeof(sg_shader_view), mb_drop_sg_shader_view); }
static sg_shader_view *mb_copy_sg_shader_view(const sg_shader_view *source) { sg_shader_view *r = mb_new_sg_shader_view(); mb_clone_sg_shader_view(r, source); return r; }
static void mb_clone_sg_slot_info(sg_slot_info *dst, const sg_slot_info *src) { *dst = *src;
}
static void mb_drop_sg_slot_info(void *object) { sg_slot_info *value = object;
}
_Static_assert(_Alignof(sg_slot_info) <= _Alignof(void*), "external payload alignment");
static sg_slot_info *mb_new_sg_slot_info(void) { return mb_object_new(sizeof(sg_slot_info), mb_drop_sg_slot_info); }
static sg_slot_info *mb_copy_sg_slot_info(const sg_slot_info *source) { sg_slot_info *r = mb_new_sg_slot_info(); mb_clone_sg_slot_info(r, source); return r; }
static void mb_clone_sg_stats(sg_stats *dst, const sg_stats *src) { *dst = *src;
mb_clone_sg_frame_stats(&dst->prev_frame, &src->prev_frame);
mb_clone_sg_frame_stats(&dst->cur_frame, &src->cur_frame);
mb_clone_sg_total_stats(&dst->total, &src->total);
}
static void mb_drop_sg_stats(void *object) { sg_stats *value = object;
mb_drop_sg_frame_stats(&value->prev_frame);
mb_drop_sg_frame_stats(&value->cur_frame);
mb_drop_sg_total_stats(&value->total);
}
_Static_assert(_Alignof(sg_stats) <= _Alignof(void*), "external payload alignment");
static sg_stats *mb_new_sg_stats(void) { return mb_object_new(sizeof(sg_stats), mb_drop_sg_stats); }
static sg_stats *mb_copy_sg_stats(const sg_stats *source) { sg_stats *r = mb_new_sg_stats(); mb_clone_sg_stats(r, source); return r; }
static void mb_clone_sg_stencil_attachment_action(sg_stencil_attachment_action *dst, const sg_stencil_attachment_action *src) { *dst = *src;
}
static void mb_drop_sg_stencil_attachment_action(void *object) { sg_stencil_attachment_action *value = object;
}
_Static_assert(_Alignof(sg_stencil_attachment_action) <= _Alignof(void*), "external payload alignment");
static sg_stencil_attachment_action *mb_new_sg_stencil_attachment_action(void) { return mb_object_new(sizeof(sg_stencil_attachment_action), mb_drop_sg_stencil_attachment_action); }
static sg_stencil_attachment_action *mb_copy_sg_stencil_attachment_action(const sg_stencil_attachment_action *source) { sg_stencil_attachment_action *r = mb_new_sg_stencil_attachment_action(); mb_clone_sg_stencil_attachment_action(r, source); return r; }
static void mb_clone_sg_stencil_face_state(sg_stencil_face_state *dst, const sg_stencil_face_state *src) { *dst = *src;
}
static void mb_drop_sg_stencil_face_state(void *object) { sg_stencil_face_state *value = object;
}
_Static_assert(_Alignof(sg_stencil_face_state) <= _Alignof(void*), "external payload alignment");
static sg_stencil_face_state *mb_new_sg_stencil_face_state(void) { return mb_object_new(sizeof(sg_stencil_face_state), mb_drop_sg_stencil_face_state); }
static sg_stencil_face_state *mb_copy_sg_stencil_face_state(const sg_stencil_face_state *source) { sg_stencil_face_state *r = mb_new_sg_stencil_face_state(); mb_clone_sg_stencil_face_state(r, source); return r; }
static void mb_clone_sg_stencil_state(sg_stencil_state *dst, const sg_stencil_state *src) { *dst = *src;
mb_clone_sg_stencil_face_state(&dst->front, &src->front);
mb_clone_sg_stencil_face_state(&dst->back, &src->back);
}
static void mb_drop_sg_stencil_state(void *object) { sg_stencil_state *value = object;
mb_drop_sg_stencil_face_state(&value->front);
mb_drop_sg_stencil_face_state(&value->back);
}
_Static_assert(_Alignof(sg_stencil_state) <= _Alignof(void*), "external payload alignment");
static sg_stencil_state *mb_new_sg_stencil_state(void) { return mb_object_new(sizeof(sg_stencil_state), mb_drop_sg_stencil_state); }
static sg_stencil_state *mb_copy_sg_stencil_state(const sg_stencil_state *source) { sg_stencil_state *r = mb_new_sg_stencil_state(); mb_clone_sg_stencil_state(r, source); return r; }
static void mb_clone_sg_swapchain(sg_swapchain *dst, const sg_swapchain *src) { *dst = *src;
mb_clone_sg_metal_swapchain(&dst->metal, &src->metal);
mb_clone_sg_d3d11_swapchain(&dst->d3d11, &src->d3d11);
mb_clone_sg_wgpu_swapchain(&dst->wgpu, &src->wgpu);
mb_clone_sg_vulkan_swapchain(&dst->vulkan, &src->vulkan);
mb_clone_sg_gl_swapchain(&dst->gl, &src->gl);
}
static void mb_drop_sg_swapchain(void *object) { sg_swapchain *value = object;
mb_drop_sg_metal_swapchain(&value->metal);
mb_drop_sg_d3d11_swapchain(&value->d3d11);
mb_drop_sg_wgpu_swapchain(&value->wgpu);
mb_drop_sg_vulkan_swapchain(&value->vulkan);
mb_drop_sg_gl_swapchain(&value->gl);
}
_Static_assert(_Alignof(sg_swapchain) <= _Alignof(void*), "external payload alignment");
static sg_swapchain *mb_new_sg_swapchain(void) { return mb_object_new(sizeof(sg_swapchain), mb_drop_sg_swapchain); }
static sg_swapchain *mb_copy_sg_swapchain(const sg_swapchain *source) { sg_swapchain *r = mb_new_sg_swapchain(); mb_clone_sg_swapchain(r, source); return r; }
static void mb_clone_sg_texture_view_desc(sg_texture_view_desc *dst, const sg_texture_view_desc *src) { *dst = *src;
mb_clone_sg_texture_view_range(&dst->mip_levels, &src->mip_levels);
mb_clone_sg_texture_view_range(&dst->slices, &src->slices);
}
static void mb_drop_sg_texture_view_desc(void *object) { sg_texture_view_desc *value = object;
mb_drop_sg_texture_view_range(&value->mip_levels);
mb_drop_sg_texture_view_range(&value->slices);
}
_Static_assert(_Alignof(sg_texture_view_desc) <= _Alignof(void*), "external payload alignment");
static sg_texture_view_desc *mb_new_sg_texture_view_desc(void) { return mb_object_new(sizeof(sg_texture_view_desc), mb_drop_sg_texture_view_desc); }
static sg_texture_view_desc *mb_copy_sg_texture_view_desc(const sg_texture_view_desc *source) { sg_texture_view_desc *r = mb_new_sg_texture_view_desc(); mb_clone_sg_texture_view_desc(r, source); return r; }
static void mb_clone_sg_texture_view_range(sg_texture_view_range *dst, const sg_texture_view_range *src) { *dst = *src;
}
static void mb_drop_sg_texture_view_range(void *object) { sg_texture_view_range *value = object;
}
_Static_assert(_Alignof(sg_texture_view_range) <= _Alignof(void*), "external payload alignment");
static sg_texture_view_range *mb_new_sg_texture_view_range(void) { return mb_object_new(sizeof(sg_texture_view_range), mb_drop_sg_texture_view_range); }
static sg_texture_view_range *mb_copy_sg_texture_view_range(const sg_texture_view_range *source) { sg_texture_view_range *r = mb_new_sg_texture_view_range(); mb_clone_sg_texture_view_range(r, source); return r; }
static void mb_clone_sg_total_resource_stats(sg_total_resource_stats *dst, const sg_total_resource_stats *src) { *dst = *src;
}
static void mb_drop_sg_total_resource_stats(void *object) { sg_total_resource_stats *value = object;
}
_Static_assert(_Alignof(sg_total_resource_stats) <= _Alignof(void*), "external payload alignment");
static sg_total_resource_stats *mb_new_sg_total_resource_stats(void) { return mb_object_new(sizeof(sg_total_resource_stats), mb_drop_sg_total_resource_stats); }
static sg_total_resource_stats *mb_copy_sg_total_resource_stats(const sg_total_resource_stats *source) { sg_total_resource_stats *r = mb_new_sg_total_resource_stats(); mb_clone_sg_total_resource_stats(r, source); return r; }
static void mb_clone_sg_total_stats(sg_total_stats *dst, const sg_total_stats *src) { *dst = *src;
mb_clone_sg_total_resource_stats(&dst->buffers, &src->buffers);
mb_clone_sg_total_resource_stats(&dst->images, &src->images);
mb_clone_sg_total_resource_stats(&dst->samplers, &src->samplers);
mb_clone_sg_total_resource_stats(&dst->views, &src->views);
mb_clone_sg_total_resource_stats(&dst->shaders, &src->shaders);
mb_clone_sg_total_resource_stats(&dst->pipelines, &src->pipelines);
}
static void mb_drop_sg_total_stats(void *object) { sg_total_stats *value = object;
mb_drop_sg_total_resource_stats(&value->buffers);
mb_drop_sg_total_resource_stats(&value->images);
mb_drop_sg_total_resource_stats(&value->samplers);
mb_drop_sg_total_resource_stats(&value->views);
mb_drop_sg_total_resource_stats(&value->shaders);
mb_drop_sg_total_resource_stats(&value->pipelines);
}
_Static_assert(_Alignof(sg_total_stats) <= _Alignof(void*), "external payload alignment");
static sg_total_stats *mb_new_sg_total_stats(void) { return mb_object_new(sizeof(sg_total_stats), mb_drop_sg_total_stats); }
static sg_total_stats *mb_copy_sg_total_stats(const sg_total_stats *source) { sg_total_stats *r = mb_new_sg_total_stats(); mb_clone_sg_total_stats(r, source); return r; }
static void mb_clone_sg_trace_hooks(sg_trace_hooks *dst, const sg_trace_hooks *src) { *dst = *src;
mb_clone_sg_trace_hooks_callbacks(dst, src);
}
static void mb_drop_sg_trace_hooks(void *object) { sg_trace_hooks *value = object;
mb_drop_sg_trace_hooks_callbacks(value);
}
_Static_assert(_Alignof(sg_trace_hooks) <= _Alignof(void*), "external payload alignment");
static sg_trace_hooks *mb_new_sg_trace_hooks(void) { return mb_object_new(sizeof(sg_trace_hooks), mb_drop_sg_trace_hooks); }
static sg_trace_hooks *mb_copy_sg_trace_hooks(const sg_trace_hooks *source) { sg_trace_hooks *r = mb_new_sg_trace_hooks(); mb_clone_sg_trace_hooks(r, source); return r; }
static void mb_clone_sg_vertex_attr_state(sg_vertex_attr_state *dst, const sg_vertex_attr_state *src) { *dst = *src;
}
static void mb_drop_sg_vertex_attr_state(void *object) { sg_vertex_attr_state *value = object;
}
_Static_assert(_Alignof(sg_vertex_attr_state) <= _Alignof(void*), "external payload alignment");
static sg_vertex_attr_state *mb_new_sg_vertex_attr_state(void) { return mb_object_new(sizeof(sg_vertex_attr_state), mb_drop_sg_vertex_attr_state); }
static sg_vertex_attr_state *mb_copy_sg_vertex_attr_state(const sg_vertex_attr_state *source) { sg_vertex_attr_state *r = mb_new_sg_vertex_attr_state(); mb_clone_sg_vertex_attr_state(r, source); return r; }
static void mb_clone_sg_vertex_buffer_layout_state(sg_vertex_buffer_layout_state *dst, const sg_vertex_buffer_layout_state *src) { *dst = *src;
}
static void mb_drop_sg_vertex_buffer_layout_state(void *object) { sg_vertex_buffer_layout_state *value = object;
}
_Static_assert(_Alignof(sg_vertex_buffer_layout_state) <= _Alignof(void*), "external payload alignment");
static sg_vertex_buffer_layout_state *mb_new_sg_vertex_buffer_layout_state(void) { return mb_object_new(sizeof(sg_vertex_buffer_layout_state), mb_drop_sg_vertex_buffer_layout_state); }
static sg_vertex_buffer_layout_state *mb_copy_sg_vertex_buffer_layout_state(const sg_vertex_buffer_layout_state *source) { sg_vertex_buffer_layout_state *r = mb_new_sg_vertex_buffer_layout_state(); mb_clone_sg_vertex_buffer_layout_state(r, source); return r; }
static void mb_clone_sg_vertex_layout_state(sg_vertex_layout_state *dst, const sg_vertex_layout_state *src) { *dst = *src;
for (int i0=0; i0<8; i0++) { mb_clone_sg_vertex_buffer_layout_state(&dst->buffers[i0], &src->buffers[i0]); }
for (int i0=0; i0<16; i0++) { mb_clone_sg_vertex_attr_state(&dst->attrs[i0], &src->attrs[i0]); }
}
static void mb_drop_sg_vertex_layout_state(void *object) { sg_vertex_layout_state *value = object;
for (int i0=0; i0<8; i0++) { mb_drop_sg_vertex_buffer_layout_state(&value->buffers[i0]); }
for (int i0=0; i0<16; i0++) { mb_drop_sg_vertex_attr_state(&value->attrs[i0]); }
}
_Static_assert(_Alignof(sg_vertex_layout_state) <= _Alignof(void*), "external payload alignment");
static sg_vertex_layout_state *mb_new_sg_vertex_layout_state(void) { return mb_object_new(sizeof(sg_vertex_layout_state), mb_drop_sg_vertex_layout_state); }
static sg_vertex_layout_state *mb_copy_sg_vertex_layout_state(const sg_vertex_layout_state *source) { sg_vertex_layout_state *r = mb_new_sg_vertex_layout_state(); mb_clone_sg_vertex_layout_state(r, source); return r; }
static void mb_clone_sg_view_desc(sg_view_desc *dst, const sg_view_desc *src) { *dst = *src;
mb_clone_sg_texture_view_desc(&dst->texture, &src->texture);
mb_clone_sg_buffer_view_desc(&dst->storage_buffer, &src->storage_buffer);
mb_clone_sg_image_view_desc(&dst->storage_image, &src->storage_image);
mb_clone_sg_image_view_desc(&dst->color_attachment, &src->color_attachment);
mb_clone_sg_image_view_desc(&dst->resolve_attachment, &src->resolve_attachment);
mb_clone_sg_image_view_desc(&dst->depth_stencil_attachment, &src->depth_stencil_attachment);
dst->label = mb_string(src->label);
}
static void mb_drop_sg_view_desc(void *object) { sg_view_desc *value = object;
mb_drop_sg_texture_view_desc(&value->texture);
mb_drop_sg_buffer_view_desc(&value->storage_buffer);
mb_drop_sg_image_view_desc(&value->storage_image);
mb_drop_sg_image_view_desc(&value->color_attachment);
mb_drop_sg_image_view_desc(&value->resolve_attachment);
mb_drop_sg_image_view_desc(&value->depth_stencil_attachment);
free((void*)value->label);
}
_Static_assert(_Alignof(sg_view_desc) <= _Alignof(void*), "external payload alignment");
static sg_view_desc *mb_new_sg_view_desc(void) { return mb_object_new(sizeof(sg_view_desc), mb_drop_sg_view_desc); }
static sg_view_desc *mb_copy_sg_view_desc(const sg_view_desc *source) { sg_view_desc *r = mb_new_sg_view_desc(); mb_clone_sg_view_desc(r, source); return r; }
static void mb_clone_sg_view_info(sg_view_info *dst, const sg_view_info *src) { *dst = *src;
mb_clone_sg_slot_info(&dst->slot, &src->slot);
}
static void mb_drop_sg_view_info(void *object) { sg_view_info *value = object;
mb_drop_sg_slot_info(&value->slot);
}
_Static_assert(_Alignof(sg_view_info) <= _Alignof(void*), "external payload alignment");
static sg_view_info *mb_new_sg_view_info(void) { return mb_object_new(sizeof(sg_view_info), mb_drop_sg_view_info); }
static sg_view_info *mb_copy_sg_view_info(const sg_view_info *source) { sg_view_info *r = mb_new_sg_view_info(); mb_clone_sg_view_info(r, source); return r; }
static void mb_clone_sg_vulkan_desc(sg_vulkan_desc *dst, const sg_vulkan_desc *src) { *dst = *src;
}
static void mb_drop_sg_vulkan_desc(void *object) { sg_vulkan_desc *value = object;
}
_Static_assert(_Alignof(sg_vulkan_desc) <= _Alignof(void*), "external payload alignment");
static sg_vulkan_desc *mb_new_sg_vulkan_desc(void) { return mb_object_new(sizeof(sg_vulkan_desc), mb_drop_sg_vulkan_desc); }
static sg_vulkan_desc *mb_copy_sg_vulkan_desc(const sg_vulkan_desc *source) { sg_vulkan_desc *r = mb_new_sg_vulkan_desc(); mb_clone_sg_vulkan_desc(r, source); return r; }
static void mb_clone_sg_vulkan_environment(sg_vulkan_environment *dst, const sg_vulkan_environment *src) { *dst = *src;
}
static void mb_drop_sg_vulkan_environment(void *object) { sg_vulkan_environment *value = object;
}
_Static_assert(_Alignof(sg_vulkan_environment) <= _Alignof(void*), "external payload alignment");
static sg_vulkan_environment *mb_new_sg_vulkan_environment(void) { return mb_object_new(sizeof(sg_vulkan_environment), mb_drop_sg_vulkan_environment); }
static sg_vulkan_environment *mb_copy_sg_vulkan_environment(const sg_vulkan_environment *source) { sg_vulkan_environment *r = mb_new_sg_vulkan_environment(); mb_clone_sg_vulkan_environment(r, source); return r; }
static void mb_clone_sg_vulkan_swapchain(sg_vulkan_swapchain *dst, const sg_vulkan_swapchain *src) { *dst = *src;
}
static void mb_drop_sg_vulkan_swapchain(void *object) { sg_vulkan_swapchain *value = object;
}
_Static_assert(_Alignof(sg_vulkan_swapchain) <= _Alignof(void*), "external payload alignment");
static sg_vulkan_swapchain *mb_new_sg_vulkan_swapchain(void) { return mb_object_new(sizeof(sg_vulkan_swapchain), mb_drop_sg_vulkan_swapchain); }
static sg_vulkan_swapchain *mb_copy_sg_vulkan_swapchain(const sg_vulkan_swapchain *source) { sg_vulkan_swapchain *r = mb_new_sg_vulkan_swapchain(); mb_clone_sg_vulkan_swapchain(r, source); return r; }
static void mb_clone_sg_wgpu_buffer_info(sg_wgpu_buffer_info *dst, const sg_wgpu_buffer_info *src) { *dst = *src;
}
static void mb_drop_sg_wgpu_buffer_info(void *object) { sg_wgpu_buffer_info *value = object;
}
_Static_assert(_Alignof(sg_wgpu_buffer_info) <= _Alignof(void*), "external payload alignment");
static sg_wgpu_buffer_info *mb_new_sg_wgpu_buffer_info(void) { return mb_object_new(sizeof(sg_wgpu_buffer_info), mb_drop_sg_wgpu_buffer_info); }
static sg_wgpu_buffer_info *mb_copy_sg_wgpu_buffer_info(const sg_wgpu_buffer_info *source) { sg_wgpu_buffer_info *r = mb_new_sg_wgpu_buffer_info(); mb_clone_sg_wgpu_buffer_info(r, source); return r; }
static void mb_clone_sg_wgpu_desc(sg_wgpu_desc *dst, const sg_wgpu_desc *src) { *dst = *src;
}
static void mb_drop_sg_wgpu_desc(void *object) { sg_wgpu_desc *value = object;
}
_Static_assert(_Alignof(sg_wgpu_desc) <= _Alignof(void*), "external payload alignment");
static sg_wgpu_desc *mb_new_sg_wgpu_desc(void) { return mb_object_new(sizeof(sg_wgpu_desc), mb_drop_sg_wgpu_desc); }
static sg_wgpu_desc *mb_copy_sg_wgpu_desc(const sg_wgpu_desc *source) { sg_wgpu_desc *r = mb_new_sg_wgpu_desc(); mb_clone_sg_wgpu_desc(r, source); return r; }
static void mb_clone_sg_wgpu_environment(sg_wgpu_environment *dst, const sg_wgpu_environment *src) { *dst = *src;
}
static void mb_drop_sg_wgpu_environment(void *object) { sg_wgpu_environment *value = object;
}
_Static_assert(_Alignof(sg_wgpu_environment) <= _Alignof(void*), "external payload alignment");
static sg_wgpu_environment *mb_new_sg_wgpu_environment(void) { return mb_object_new(sizeof(sg_wgpu_environment), mb_drop_sg_wgpu_environment); }
static sg_wgpu_environment *mb_copy_sg_wgpu_environment(const sg_wgpu_environment *source) { sg_wgpu_environment *r = mb_new_sg_wgpu_environment(); mb_clone_sg_wgpu_environment(r, source); return r; }
static void mb_clone_sg_wgpu_image_info(sg_wgpu_image_info *dst, const sg_wgpu_image_info *src) { *dst = *src;
}
static void mb_drop_sg_wgpu_image_info(void *object) { sg_wgpu_image_info *value = object;
}
_Static_assert(_Alignof(sg_wgpu_image_info) <= _Alignof(void*), "external payload alignment");
static sg_wgpu_image_info *mb_new_sg_wgpu_image_info(void) { return mb_object_new(sizeof(sg_wgpu_image_info), mb_drop_sg_wgpu_image_info); }
static sg_wgpu_image_info *mb_copy_sg_wgpu_image_info(const sg_wgpu_image_info *source) { sg_wgpu_image_info *r = mb_new_sg_wgpu_image_info(); mb_clone_sg_wgpu_image_info(r, source); return r; }
static void mb_clone_sg_wgpu_pipeline_info(sg_wgpu_pipeline_info *dst, const sg_wgpu_pipeline_info *src) { *dst = *src;
}
static void mb_drop_sg_wgpu_pipeline_info(void *object) { sg_wgpu_pipeline_info *value = object;
}
_Static_assert(_Alignof(sg_wgpu_pipeline_info) <= _Alignof(void*), "external payload alignment");
static sg_wgpu_pipeline_info *mb_new_sg_wgpu_pipeline_info(void) { return mb_object_new(sizeof(sg_wgpu_pipeline_info), mb_drop_sg_wgpu_pipeline_info); }
static sg_wgpu_pipeline_info *mb_copy_sg_wgpu_pipeline_info(const sg_wgpu_pipeline_info *source) { sg_wgpu_pipeline_info *r = mb_new_sg_wgpu_pipeline_info(); mb_clone_sg_wgpu_pipeline_info(r, source); return r; }
static void mb_clone_sg_wgpu_sampler_info(sg_wgpu_sampler_info *dst, const sg_wgpu_sampler_info *src) { *dst = *src;
}
static void mb_drop_sg_wgpu_sampler_info(void *object) { sg_wgpu_sampler_info *value = object;
}
_Static_assert(_Alignof(sg_wgpu_sampler_info) <= _Alignof(void*), "external payload alignment");
static sg_wgpu_sampler_info *mb_new_sg_wgpu_sampler_info(void) { return mb_object_new(sizeof(sg_wgpu_sampler_info), mb_drop_sg_wgpu_sampler_info); }
static sg_wgpu_sampler_info *mb_copy_sg_wgpu_sampler_info(const sg_wgpu_sampler_info *source) { sg_wgpu_sampler_info *r = mb_new_sg_wgpu_sampler_info(); mb_clone_sg_wgpu_sampler_info(r, source); return r; }
static void mb_clone_sg_wgpu_shader_info(sg_wgpu_shader_info *dst, const sg_wgpu_shader_info *src) { *dst = *src;
}
static void mb_drop_sg_wgpu_shader_info(void *object) { sg_wgpu_shader_info *value = object;
}
_Static_assert(_Alignof(sg_wgpu_shader_info) <= _Alignof(void*), "external payload alignment");
static sg_wgpu_shader_info *mb_new_sg_wgpu_shader_info(void) { return mb_object_new(sizeof(sg_wgpu_shader_info), mb_drop_sg_wgpu_shader_info); }
static sg_wgpu_shader_info *mb_copy_sg_wgpu_shader_info(const sg_wgpu_shader_info *source) { sg_wgpu_shader_info *r = mb_new_sg_wgpu_shader_info(); mb_clone_sg_wgpu_shader_info(r, source); return r; }
static void mb_clone_sg_wgpu_swapchain(sg_wgpu_swapchain *dst, const sg_wgpu_swapchain *src) { *dst = *src;
}
static void mb_drop_sg_wgpu_swapchain(void *object) { sg_wgpu_swapchain *value = object;
}
_Static_assert(_Alignof(sg_wgpu_swapchain) <= _Alignof(void*), "external payload alignment");
static sg_wgpu_swapchain *mb_new_sg_wgpu_swapchain(void) { return mb_object_new(sizeof(sg_wgpu_swapchain), mb_drop_sg_wgpu_swapchain); }
static sg_wgpu_swapchain *mb_copy_sg_wgpu_swapchain(const sg_wgpu_swapchain *source) { sg_wgpu_swapchain *r = mb_new_sg_wgpu_swapchain(); mb_clone_sg_wgpu_swapchain(r, source); return r; }
static void mb_clone_sg_wgpu_view_info(sg_wgpu_view_info *dst, const sg_wgpu_view_info *src) { *dst = *src;
}
static void mb_drop_sg_wgpu_view_info(void *object) { sg_wgpu_view_info *value = object;
}
_Static_assert(_Alignof(sg_wgpu_view_info) <= _Alignof(void*), "external payload alignment");
static sg_wgpu_view_info *mb_new_sg_wgpu_view_info(void) { return mb_object_new(sizeof(sg_wgpu_view_info), mb_drop_sg_wgpu_view_info); }
static sg_wgpu_view_info *mb_copy_sg_wgpu_view_info(const sg_wgpu_view_info *source) { sg_wgpu_view_info *r = mb_new_sg_wgpu_view_info(); mb_clone_sg_wgpu_view_info(r, source); return r; }
static void mb_clone_sg_write_buffer_desc(sg_write_buffer_desc *dst, const sg_write_buffer_desc *src) { *dst = *src;
mb_clone_sg_write_buffer_source(&dst->src, &src->src);
mb_clone_sg_buffer_location(&dst->dst, &src->dst);
}
static void mb_drop_sg_write_buffer_desc(void *object) { sg_write_buffer_desc *value = object;
mb_drop_sg_write_buffer_source(&value->src);
mb_drop_sg_buffer_location(&value->dst);
}
_Static_assert(_Alignof(sg_write_buffer_desc) <= _Alignof(void*), "external payload alignment");
static sg_write_buffer_desc *mb_new_sg_write_buffer_desc(void) { return mb_object_new(sizeof(sg_write_buffer_desc), mb_drop_sg_write_buffer_desc); }
static sg_write_buffer_desc *mb_copy_sg_write_buffer_desc(const sg_write_buffer_desc *source) { sg_write_buffer_desc *r = mb_new_sg_write_buffer_desc(); mb_clone_sg_write_buffer_desc(r, source); return r; }
static void mb_clone_sg_write_buffer_source(sg_write_buffer_source *dst, const sg_write_buffer_source *src) { *dst = *src;
mb_clone_sg_range(&dst->data, &src->data);
}
static void mb_drop_sg_write_buffer_source(void *object) { sg_write_buffer_source *value = object;
mb_drop_sg_range(&value->data);
}
_Static_assert(_Alignof(sg_write_buffer_source) <= _Alignof(void*), "external payload alignment");
static sg_write_buffer_source *mb_new_sg_write_buffer_source(void) { return mb_object_new(sizeof(sg_write_buffer_source), mb_drop_sg_write_buffer_source); }
static sg_write_buffer_source *mb_copy_sg_write_buffer_source(const sg_write_buffer_source *source) { sg_write_buffer_source *r = mb_new_sg_write_buffer_source(); mb_clone_sg_write_buffer_source(r, source); return r; }
static void mb_clone_sg_write_image_desc(sg_write_image_desc *dst, const sg_write_image_desc *src) { *dst = *src;
mb_clone_sg_write_image_source(&dst->src, &src->src);
mb_clone_sg_image_location(&dst->dst, &src->dst);
mb_clone_sg_image_extent(&dst->size, &src->size);
}
static void mb_drop_sg_write_image_desc(void *object) { sg_write_image_desc *value = object;
mb_drop_sg_write_image_source(&value->src);
mb_drop_sg_image_location(&value->dst);
mb_drop_sg_image_extent(&value->size);
}
_Static_assert(_Alignof(sg_write_image_desc) <= _Alignof(void*), "external payload alignment");
static sg_write_image_desc *mb_new_sg_write_image_desc(void) { return mb_object_new(sizeof(sg_write_image_desc), mb_drop_sg_write_image_desc); }
static sg_write_image_desc *mb_copy_sg_write_image_desc(const sg_write_image_desc *source) { sg_write_image_desc *r = mb_new_sg_write_image_desc(); mb_clone_sg_write_image_desc(r, source); return r; }
static void mb_clone_sg_write_image_source(sg_write_image_source *dst, const sg_write_image_source *src) { *dst = *src;
mb_clone_sg_range(&dst->data, &src->data);
}
static void mb_drop_sg_write_image_source(void *object) { sg_write_image_source *value = object;
mb_drop_sg_range(&value->data);
}
_Static_assert(_Alignof(sg_write_image_source) <= _Alignof(void*), "external payload alignment");
static sg_write_image_source *mb_new_sg_write_image_source(void) { return mb_object_new(sizeof(sg_write_image_source), mb_drop_sg_write_image_source); }
static sg_write_image_source *mb_copy_sg_write_image_source(const sg_write_image_source *source) { sg_write_image_source *r = mb_new_sg_write_image_source(); mb_clone_sg_write_image_source(r, source); return r; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_buffer_read_id(void * ptr) { if (!ptr) abort(); uint32_t id; memcpy(&id, ptr, sizeof(id)); return id; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_image_read_id(void * ptr) { if (!ptr) abort(); uint32_t id; memcpy(&id, ptr, sizeof(id)); return id; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_sampler_read_id(void * ptr) { if (!ptr) abort(); uint32_t id; memcpy(&id, ptr, sizeof(id)); return id; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_shader_read_id(void * ptr) { if (!ptr) abort(); uint32_t id; memcpy(&id, ptr, sizeof(id)); return id; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_pipeline_read_id(void * ptr) { if (!ptr) abort(); uint32_t id; memcpy(&id, ptr, sizeof(id)); return id; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_view_read_id(void * ptr) { if (!ptr) abort(); uint32_t id; memcpy(&id, ptr, sizeof(id)); return id; }
MOONBIT_FFI_EXPORT sg_range * mb_gfx_sg_range_new(void) { return mb_new_sg_range(); }
MOONBIT_FFI_EXPORT sg_range * mb_gfx_sg_range_copy(sg_range * self) { return mb_copy_sg_range(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_range_native(sg_range * self) { return self; }
MOONBIT_FFI_EXPORT sg_range * mb_gfx_sg_range_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_range(ptr); }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_gfx_sg_range_bytes(sg_range * self) { sg_range *v = self; return mb_bytes(v->ptr, v->size); }
MOONBIT_FFI_EXPORT sg_range * mb_gfx_sg_range_data(moonbit_bytes_t data) { sg_range source = { .ptr = data, .size = Moonbit_array_length(data) }; return mb_copy_sg_range(&source); }
MOONBIT_FFI_EXPORT uint64_t mb_gfx_sg_range_get_size(sg_range * self) {  sg_range *v = self; return v->size; }
MOONBIT_FFI_EXPORT sg_color * mb_gfx_sg_color_new(void) { return mb_new_sg_color(); }
MOONBIT_FFI_EXPORT sg_color * mb_gfx_sg_color_copy(sg_color * self) { return mb_copy_sg_color(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_color_native(sg_color * self) { return self; }
MOONBIT_FFI_EXPORT sg_color * mb_gfx_sg_color_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_color(ptr); }
MOONBIT_FFI_EXPORT float mb_gfx_sg_color_get_r(sg_color * self) {  sg_color *v = self; return v->r; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_color_set_r(sg_color * self, float value) {  sg_color *v = self; v->r = (float)value; }
MOONBIT_FFI_EXPORT float mb_gfx_sg_color_get_g(sg_color * self) {  sg_color *v = self; return v->g; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_color_set_g(sg_color * self, float value) {  sg_color *v = self; v->g = (float)value; }
MOONBIT_FFI_EXPORT float mb_gfx_sg_color_get_b(sg_color * self) {  sg_color *v = self; return v->b; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_color_set_b(sg_color * self, float value) {  sg_color *v = self; v->b = (float)value; }
MOONBIT_FFI_EXPORT float mb_gfx_sg_color_get_a(sg_color * self) {  sg_color *v = self; return v->a; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_color_set_a(sg_color * self, float value) {  sg_color *v = self; v->a = (float)value; }
MOONBIT_FFI_EXPORT sg_pixelformat_info * mb_gfx_sg_pixelformat_info_new(void) { return mb_new_sg_pixelformat_info(); }
MOONBIT_FFI_EXPORT sg_pixelformat_info * mb_gfx_sg_pixelformat_info_copy(sg_pixelformat_info * self) { return mb_copy_sg_pixelformat_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_pixelformat_info_native(sg_pixelformat_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_pixelformat_info * mb_gfx_sg_pixelformat_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_pixelformat_info(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_pixelformat_info_get_sample(sg_pixelformat_info * self) {  sg_pixelformat_info *v = self; return v->sample; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pixelformat_info_set_sample(sg_pixelformat_info * self, int32_t value) {  sg_pixelformat_info *v = self; v->sample = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_pixelformat_info_get_filter(sg_pixelformat_info * self) {  sg_pixelformat_info *v = self; return v->filter; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pixelformat_info_set_filter(sg_pixelformat_info * self, int32_t value) {  sg_pixelformat_info *v = self; v->filter = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_pixelformat_info_get_render(sg_pixelformat_info * self) {  sg_pixelformat_info *v = self; return v->render; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pixelformat_info_set_render(sg_pixelformat_info * self, int32_t value) {  sg_pixelformat_info *v = self; v->render = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_pixelformat_info_get_blend(sg_pixelformat_info * self) {  sg_pixelformat_info *v = self; return v->blend; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pixelformat_info_set_blend(sg_pixelformat_info * self, int32_t value) {  sg_pixelformat_info *v = self; v->blend = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_pixelformat_info_get_msaa(sg_pixelformat_info * self) {  sg_pixelformat_info *v = self; return v->msaa; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pixelformat_info_set_msaa(sg_pixelformat_info * self, int32_t value) {  sg_pixelformat_info *v = self; v->msaa = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_pixelformat_info_get_depth(sg_pixelformat_info * self) {  sg_pixelformat_info *v = self; return v->depth; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pixelformat_info_set_depth(sg_pixelformat_info * self, int32_t value) {  sg_pixelformat_info *v = self; v->depth = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_pixelformat_info_get_compressed(sg_pixelformat_info * self) {  sg_pixelformat_info *v = self; return v->compressed; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pixelformat_info_set_compressed(sg_pixelformat_info * self, int32_t value) {  sg_pixelformat_info *v = self; v->compressed = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_pixelformat_info_get_read(sg_pixelformat_info * self) {  sg_pixelformat_info *v = self; return v->read; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pixelformat_info_set_read(sg_pixelformat_info * self, int32_t value) {  sg_pixelformat_info *v = self; v->read = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_pixelformat_info_get_write(sg_pixelformat_info * self) {  sg_pixelformat_info *v = self; return v->write; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pixelformat_info_set_write(sg_pixelformat_info * self, int32_t value) {  sg_pixelformat_info *v = self; v->write = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_pixelformat_info_get_bytes_per_pixel(sg_pixelformat_info * self) {  sg_pixelformat_info *v = self; return v->bytes_per_pixel; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pixelformat_info_set_bytes_per_pixel(sg_pixelformat_info * self, int32_t value) {  sg_pixelformat_info *v = self; v->bytes_per_pixel = (int)value; }
MOONBIT_FFI_EXPORT sg_features * mb_gfx_sg_features_new(void) { return mb_new_sg_features(); }
MOONBIT_FFI_EXPORT sg_features * mb_gfx_sg_features_copy(sg_features * self) { return mb_copy_sg_features(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_features_native(sg_features * self) { return self; }
MOONBIT_FFI_EXPORT sg_features * mb_gfx_sg_features_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_features(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_features_get_origin_top_left(sg_features * self) {  sg_features *v = self; return v->origin_top_left; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_features_set_origin_top_left(sg_features * self, int32_t value) {  sg_features *v = self; v->origin_top_left = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_features_get_image_clamp_to_border(sg_features * self) {  sg_features *v = self; return v->image_clamp_to_border; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_features_set_image_clamp_to_border(sg_features * self, int32_t value) {  sg_features *v = self; v->image_clamp_to_border = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_features_get_mrt_independent_blend_state(sg_features * self) {  sg_features *v = self; return v->mrt_independent_blend_state; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_features_set_mrt_independent_blend_state(sg_features * self, int32_t value) {  sg_features *v = self; v->mrt_independent_blend_state = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_features_get_mrt_independent_write_mask(sg_features * self) {  sg_features *v = self; return v->mrt_independent_write_mask; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_features_set_mrt_independent_write_mask(sg_features * self, int32_t value) {  sg_features *v = self; v->mrt_independent_write_mask = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_features_get_compute(sg_features * self) {  sg_features *v = self; return v->compute; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_features_set_compute(sg_features * self, int32_t value) {  sg_features *v = self; v->compute = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_features_get_msaa_texture_bindings(sg_features * self) {  sg_features *v = self; return v->msaa_texture_bindings; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_features_set_msaa_texture_bindings(sg_features * self, int32_t value) {  sg_features *v = self; v->msaa_texture_bindings = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_features_get_separate_buffer_types(sg_features * self) {  sg_features *v = self; return v->separate_buffer_types; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_features_set_separate_buffer_types(sg_features * self, int32_t value) {  sg_features *v = self; v->separate_buffer_types = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_features_get_draw_base_vertex(sg_features * self) {  sg_features *v = self; return v->draw_base_vertex; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_features_set_draw_base_vertex(sg_features * self, int32_t value) {  sg_features *v = self; v->draw_base_vertex = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_features_get_draw_base_instance(sg_features * self) {  sg_features *v = self; return v->draw_base_instance; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_features_set_draw_base_instance(sg_features * self, int32_t value) {  sg_features *v = self; v->draw_base_instance = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_features_get_dual_source_blending(sg_features * self) {  sg_features *v = self; return v->dual_source_blending; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_features_set_dual_source_blending(sg_features * self, int32_t value) {  sg_features *v = self; v->dual_source_blending = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_features_get_vertexformat_int10_n2(sg_features * self) {  sg_features *v = self; return v->vertexformat_int10_n2; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_features_set_vertexformat_int10_n2(sg_features * self, int32_t value) {  sg_features *v = self; v->vertexformat_int10_n2 = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_features_get_copy_buffer_to_image_relaxed_buffer_type(sg_features * self) {  sg_features *v = self; return v->copy_buffer_to_image_relaxed_buffer_type; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_features_set_copy_buffer_to_image_relaxed_buffer_type(sg_features * self, int32_t value) {  sg_features *v = self; v->copy_buffer_to_image_relaxed_buffer_type = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_features_get_copy_buffer_to_image_relaxed_bytes_per_row(sg_features * self) {  sg_features *v = self; return v->copy_buffer_to_image_relaxed_bytes_per_row; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_features_set_copy_buffer_to_image_relaxed_bytes_per_row(sg_features * self, int32_t value) {  sg_features *v = self; v->copy_buffer_to_image_relaxed_bytes_per_row = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_features_get_copy_image_to_image_relaxed_pixel_format(sg_features * self) {  sg_features *v = self; return v->copy_image_to_image_relaxed_pixel_format; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_features_set_copy_image_to_image_relaxed_pixel_format(sg_features * self, int32_t value) {  sg_features *v = self; v->copy_image_to_image_relaxed_pixel_format = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_features_get_gl_texture_views(sg_features * self) {  sg_features *v = self; return v->gl_texture_views; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_features_set_gl_texture_views(sg_features * self, int32_t value) {  sg_features *v = self; v->gl_texture_views = (bool)value; }
MOONBIT_FFI_EXPORT sg_limits * mb_gfx_sg_limits_new(void) { return mb_new_sg_limits(); }
MOONBIT_FFI_EXPORT sg_limits * mb_gfx_sg_limits_copy(sg_limits * self) { return mb_copy_sg_limits(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_limits_native(sg_limits * self) { return self; }
MOONBIT_FFI_EXPORT sg_limits * mb_gfx_sg_limits_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_limits(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_limits_get_max_image_size_2d(sg_limits * self) {  sg_limits *v = self; return v->max_image_size_2d; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_limits_set_max_image_size_2d(sg_limits * self, int32_t value) {  sg_limits *v = self; v->max_image_size_2d = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_limits_get_max_image_size_cube(sg_limits * self) {  sg_limits *v = self; return v->max_image_size_cube; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_limits_set_max_image_size_cube(sg_limits * self, int32_t value) {  sg_limits *v = self; v->max_image_size_cube = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_limits_get_max_image_size_3d(sg_limits * self) {  sg_limits *v = self; return v->max_image_size_3d; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_limits_set_max_image_size_3d(sg_limits * self, int32_t value) {  sg_limits *v = self; v->max_image_size_3d = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_limits_get_max_image_size_array(sg_limits * self) {  sg_limits *v = self; return v->max_image_size_array; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_limits_set_max_image_size_array(sg_limits * self, int32_t value) {  sg_limits *v = self; v->max_image_size_array = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_limits_get_max_image_array_layers(sg_limits * self) {  sg_limits *v = self; return v->max_image_array_layers; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_limits_set_max_image_array_layers(sg_limits * self, int32_t value) {  sg_limits *v = self; v->max_image_array_layers = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_limits_get_max_vertex_attrs(sg_limits * self) {  sg_limits *v = self; return v->max_vertex_attrs; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_limits_set_max_vertex_attrs(sg_limits * self, int32_t value) {  sg_limits *v = self; v->max_vertex_attrs = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_limits_get_max_color_attachments(sg_limits * self) {  sg_limits *v = self; return v->max_color_attachments; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_limits_set_max_color_attachments(sg_limits * self, int32_t value) {  sg_limits *v = self; v->max_color_attachments = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_limits_get_max_texture_bindings_per_stage(sg_limits * self) {  sg_limits *v = self; return v->max_texture_bindings_per_stage; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_limits_set_max_texture_bindings_per_stage(sg_limits * self, int32_t value) {  sg_limits *v = self; v->max_texture_bindings_per_stage = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_limits_get_max_storage_buffer_bindings_per_stage(sg_limits * self) {  sg_limits *v = self; return v->max_storage_buffer_bindings_per_stage; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_limits_set_max_storage_buffer_bindings_per_stage(sg_limits * self, int32_t value) {  sg_limits *v = self; v->max_storage_buffer_bindings_per_stage = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_limits_get_max_storage_image_bindings_per_stage(sg_limits * self) {  sg_limits *v = self; return v->max_storage_image_bindings_per_stage; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_limits_set_max_storage_image_bindings_per_stage(sg_limits * self, int32_t value) {  sg_limits *v = self; v->max_storage_image_bindings_per_stage = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_limits_get_gl_max_vertex_uniform_components(sg_limits * self) {  sg_limits *v = self; return v->gl_max_vertex_uniform_components; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_limits_set_gl_max_vertex_uniform_components(sg_limits * self, int32_t value) {  sg_limits *v = self; v->gl_max_vertex_uniform_components = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_limits_get_gl_max_combined_texture_image_units(sg_limits * self) {  sg_limits *v = self; return v->gl_max_combined_texture_image_units; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_limits_set_gl_max_combined_texture_image_units(sg_limits * self, int32_t value) {  sg_limits *v = self; v->gl_max_combined_texture_image_units = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_limits_get_d3d11_max_unordered_access_views(sg_limits * self) {  sg_limits *v = self; return v->d3d11_max_unordered_access_views; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_limits_set_d3d11_max_unordered_access_views(sg_limits * self, int32_t value) {  sg_limits *v = self; v->d3d11_max_unordered_access_views = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_limits_get_vk_min_uniform_buffer_offset_alignment(sg_limits * self) {  sg_limits *v = self; return v->vk_min_uniform_buffer_offset_alignment; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_limits_set_vk_min_uniform_buffer_offset_alignment(sg_limits * self, int32_t value) {  sg_limits *v = self; v->vk_min_uniform_buffer_offset_alignment = (int)value; }
MOONBIT_FFI_EXPORT sg_color_attachment_action * mb_gfx_sg_color_attachment_action_new(void) { return mb_new_sg_color_attachment_action(); }
MOONBIT_FFI_EXPORT sg_color_attachment_action * mb_gfx_sg_color_attachment_action_copy(sg_color_attachment_action * self) { return mb_copy_sg_color_attachment_action(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_color_attachment_action_native(sg_color_attachment_action * self) { return self; }
MOONBIT_FFI_EXPORT sg_color_attachment_action * mb_gfx_sg_color_attachment_action_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_color_attachment_action(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_color_attachment_action_get_load_action(sg_color_attachment_action * self) {  sg_color_attachment_action *v = self; return v->load_action; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_color_attachment_action_set_load_action(sg_color_attachment_action * self, int32_t value) {  sg_color_attachment_action *v = self; v->load_action = (sg_load_action)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_color_attachment_action_get_store_action(sg_color_attachment_action * self) {  sg_color_attachment_action *v = self; return v->store_action; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_color_attachment_action_set_store_action(sg_color_attachment_action * self, int32_t value) {  sg_color_attachment_action *v = self; v->store_action = (sg_store_action)value; }
MOONBIT_FFI_EXPORT sg_color * mb_gfx_sg_color_attachment_action_get_clear_value(sg_color_attachment_action * self) {  sg_color_attachment_action *v = self; return mb_copy_sg_color(&v->clear_value); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_color_attachment_action_set_clear_value(sg_color_attachment_action * self, sg_color * value) {  sg_color_attachment_action *v = self; sg_color replacement; mb_clone_sg_color(&replacement, value); mb_drop_sg_color(&v->clear_value); v->clear_value = replacement; }
MOONBIT_FFI_EXPORT sg_depth_attachment_action * mb_gfx_sg_depth_attachment_action_new(void) { return mb_new_sg_depth_attachment_action(); }
MOONBIT_FFI_EXPORT sg_depth_attachment_action * mb_gfx_sg_depth_attachment_action_copy(sg_depth_attachment_action * self) { return mb_copy_sg_depth_attachment_action(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_depth_attachment_action_native(sg_depth_attachment_action * self) { return self; }
MOONBIT_FFI_EXPORT sg_depth_attachment_action * mb_gfx_sg_depth_attachment_action_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_depth_attachment_action(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_depth_attachment_action_get_load_action(sg_depth_attachment_action * self) {  sg_depth_attachment_action *v = self; return v->load_action; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_depth_attachment_action_set_load_action(sg_depth_attachment_action * self, int32_t value) {  sg_depth_attachment_action *v = self; v->load_action = (sg_load_action)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_depth_attachment_action_get_store_action(sg_depth_attachment_action * self) {  sg_depth_attachment_action *v = self; return v->store_action; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_depth_attachment_action_set_store_action(sg_depth_attachment_action * self, int32_t value) {  sg_depth_attachment_action *v = self; v->store_action = (sg_store_action)value; }
MOONBIT_FFI_EXPORT float mb_gfx_sg_depth_attachment_action_get_clear_value(sg_depth_attachment_action * self) {  sg_depth_attachment_action *v = self; return v->clear_value; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_depth_attachment_action_set_clear_value(sg_depth_attachment_action * self, float value) {  sg_depth_attachment_action *v = self; v->clear_value = (float)value; }
MOONBIT_FFI_EXPORT sg_stencil_attachment_action * mb_gfx_sg_stencil_attachment_action_new(void) { return mb_new_sg_stencil_attachment_action(); }
MOONBIT_FFI_EXPORT sg_stencil_attachment_action * mb_gfx_sg_stencil_attachment_action_copy(sg_stencil_attachment_action * self) { return mb_copy_sg_stencil_attachment_action(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_stencil_attachment_action_native(sg_stencil_attachment_action * self) { return self; }
MOONBIT_FFI_EXPORT sg_stencil_attachment_action * mb_gfx_sg_stencil_attachment_action_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_stencil_attachment_action(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_stencil_attachment_action_get_load_action(sg_stencil_attachment_action * self) {  sg_stencil_attachment_action *v = self; return v->load_action; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_stencil_attachment_action_set_load_action(sg_stencil_attachment_action * self, int32_t value) {  sg_stencil_attachment_action *v = self; v->load_action = (sg_load_action)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_stencil_attachment_action_get_store_action(sg_stencil_attachment_action * self) {  sg_stencil_attachment_action *v = self; return v->store_action; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_stencil_attachment_action_set_store_action(sg_stencil_attachment_action * self, int32_t value) {  sg_stencil_attachment_action *v = self; v->store_action = (sg_store_action)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_stencil_attachment_action_get_clear_value(sg_stencil_attachment_action * self) {  sg_stencil_attachment_action *v = self; return v->clear_value; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_stencil_attachment_action_set_clear_value(sg_stencil_attachment_action * self, uint8_t value) {  sg_stencil_attachment_action *v = self; v->clear_value = (uint8_t)value; }
MOONBIT_FFI_EXPORT sg_pass_action * mb_gfx_sg_pass_action_new(void) { return mb_new_sg_pass_action(); }
MOONBIT_FFI_EXPORT sg_pass_action * mb_gfx_sg_pass_action_copy(sg_pass_action * self) { return mb_copy_sg_pass_action(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_pass_action_native(sg_pass_action * self) { return self; }
MOONBIT_FFI_EXPORT sg_pass_action * mb_gfx_sg_pass_action_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_pass_action(ptr); }
MOONBIT_FFI_EXPORT sg_color_attachment_action * mb_gfx_sg_pass_action_get_colors(sg_pass_action * self, int32_t i0) { if (i0<0 || i0>=8) abort(); sg_pass_action *v = self; return mb_copy_sg_color_attachment_action(&v->colors[i0]); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pass_action_set_colors(sg_pass_action * self, int32_t i0, sg_color_attachment_action * value) { if (i0<0 || i0>=8) abort(); sg_pass_action *v = self; sg_color_attachment_action replacement; mb_clone_sg_color_attachment_action(&replacement, value); mb_drop_sg_color_attachment_action(&v->colors[i0]); v->colors[i0] = replacement; }
MOONBIT_FFI_EXPORT sg_depth_attachment_action * mb_gfx_sg_pass_action_get_depth(sg_pass_action * self) {  sg_pass_action *v = self; return mb_copy_sg_depth_attachment_action(&v->depth); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pass_action_set_depth(sg_pass_action * self, sg_depth_attachment_action * value) {  sg_pass_action *v = self; sg_depth_attachment_action replacement; mb_clone_sg_depth_attachment_action(&replacement, value); mb_drop_sg_depth_attachment_action(&v->depth); v->depth = replacement; }
MOONBIT_FFI_EXPORT sg_stencil_attachment_action * mb_gfx_sg_pass_action_get_stencil(sg_pass_action * self) {  sg_pass_action *v = self; return mb_copy_sg_stencil_attachment_action(&v->stencil); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pass_action_set_stencil(sg_pass_action * self, sg_stencil_attachment_action * value) {  sg_pass_action *v = self; sg_stencil_attachment_action replacement; mb_clone_sg_stencil_attachment_action(&replacement, value); mb_drop_sg_stencil_attachment_action(&v->stencil); v->stencil = replacement; }
MOONBIT_FFI_EXPORT sg_metal_swapchain * mb_gfx_sg_metal_swapchain_new(void) { return mb_new_sg_metal_swapchain(); }
MOONBIT_FFI_EXPORT sg_metal_swapchain * mb_gfx_sg_metal_swapchain_copy(sg_metal_swapchain * self) { return mb_copy_sg_metal_swapchain(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_metal_swapchain_native(sg_metal_swapchain * self) { return self; }
MOONBIT_FFI_EXPORT sg_metal_swapchain * mb_gfx_sg_metal_swapchain_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_metal_swapchain(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_metal_swapchain_get_current_drawable(sg_metal_swapchain * self) {  sg_metal_swapchain *v = self; return (void*)v->current_drawable; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_metal_swapchain_set_current_drawable(sg_metal_swapchain * self, void * value) {  sg_metal_swapchain *v = self; v->current_drawable = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_metal_swapchain_get_depth_stencil_texture(sg_metal_swapchain * self) {  sg_metal_swapchain *v = self; return (void*)v->depth_stencil_texture; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_metal_swapchain_set_depth_stencil_texture(sg_metal_swapchain * self, void * value) {  sg_metal_swapchain *v = self; v->depth_stencil_texture = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_metal_swapchain_get_msaa_color_texture(sg_metal_swapchain * self) {  sg_metal_swapchain *v = self; return (void*)v->msaa_color_texture; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_metal_swapchain_set_msaa_color_texture(sg_metal_swapchain * self, void * value) {  sg_metal_swapchain *v = self; v->msaa_color_texture = value; }
MOONBIT_FFI_EXPORT sg_d3d11_swapchain * mb_gfx_sg_d3d11_swapchain_new(void) { return mb_new_sg_d3d11_swapchain(); }
MOONBIT_FFI_EXPORT sg_d3d11_swapchain * mb_gfx_sg_d3d11_swapchain_copy(sg_d3d11_swapchain * self) { return mb_copy_sg_d3d11_swapchain(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_swapchain_native(sg_d3d11_swapchain * self) { return self; }
MOONBIT_FFI_EXPORT sg_d3d11_swapchain * mb_gfx_sg_d3d11_swapchain_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_d3d11_swapchain(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_swapchain_get_render_view(sg_d3d11_swapchain * self) {  sg_d3d11_swapchain *v = self; return (void*)v->render_view; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_d3d11_swapchain_set_render_view(sg_d3d11_swapchain * self, void * value) {  sg_d3d11_swapchain *v = self; v->render_view = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_swapchain_get_resolve_view(sg_d3d11_swapchain * self) {  sg_d3d11_swapchain *v = self; return (void*)v->resolve_view; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_d3d11_swapchain_set_resolve_view(sg_d3d11_swapchain * self, void * value) {  sg_d3d11_swapchain *v = self; v->resolve_view = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_swapchain_get_depth_stencil_view(sg_d3d11_swapchain * self) {  sg_d3d11_swapchain *v = self; return (void*)v->depth_stencil_view; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_d3d11_swapchain_set_depth_stencil_view(sg_d3d11_swapchain * self, void * value) {  sg_d3d11_swapchain *v = self; v->depth_stencil_view = value; }
MOONBIT_FFI_EXPORT sg_wgpu_swapchain * mb_gfx_sg_wgpu_swapchain_new(void) { return mb_new_sg_wgpu_swapchain(); }
MOONBIT_FFI_EXPORT sg_wgpu_swapchain * mb_gfx_sg_wgpu_swapchain_copy(sg_wgpu_swapchain * self) { return mb_copy_sg_wgpu_swapchain(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_wgpu_swapchain_native(sg_wgpu_swapchain * self) { return self; }
MOONBIT_FFI_EXPORT sg_wgpu_swapchain * mb_gfx_sg_wgpu_swapchain_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_wgpu_swapchain(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_wgpu_swapchain_get_render_view(sg_wgpu_swapchain * self) {  sg_wgpu_swapchain *v = self; return (void*)v->render_view; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_swapchain_set_render_view(sg_wgpu_swapchain * self, void * value) {  sg_wgpu_swapchain *v = self; v->render_view = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_wgpu_swapchain_get_resolve_view(sg_wgpu_swapchain * self) {  sg_wgpu_swapchain *v = self; return (void*)v->resolve_view; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_swapchain_set_resolve_view(sg_wgpu_swapchain * self, void * value) {  sg_wgpu_swapchain *v = self; v->resolve_view = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_wgpu_swapchain_get_depth_stencil_view(sg_wgpu_swapchain * self) {  sg_wgpu_swapchain *v = self; return (void*)v->depth_stencil_view; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_swapchain_set_depth_stencil_view(sg_wgpu_swapchain * self, void * value) {  sg_wgpu_swapchain *v = self; v->depth_stencil_view = value; }
MOONBIT_FFI_EXPORT sg_vulkan_swapchain * mb_gfx_sg_vulkan_swapchain_new(void) { return mb_new_sg_vulkan_swapchain(); }
MOONBIT_FFI_EXPORT sg_vulkan_swapchain * mb_gfx_sg_vulkan_swapchain_copy(sg_vulkan_swapchain * self) { return mb_copy_sg_vulkan_swapchain(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_vulkan_swapchain_native(sg_vulkan_swapchain * self) { return self; }
MOONBIT_FFI_EXPORT sg_vulkan_swapchain * mb_gfx_sg_vulkan_swapchain_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_vulkan_swapchain(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_vulkan_swapchain_get_render_image(sg_vulkan_swapchain * self) {  sg_vulkan_swapchain *v = self; return (void*)v->render_image; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vulkan_swapchain_set_render_image(sg_vulkan_swapchain * self, void * value) {  sg_vulkan_swapchain *v = self; v->render_image = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_vulkan_swapchain_get_render_view(sg_vulkan_swapchain * self) {  sg_vulkan_swapchain *v = self; return (void*)v->render_view; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vulkan_swapchain_set_render_view(sg_vulkan_swapchain * self, void * value) {  sg_vulkan_swapchain *v = self; v->render_view = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_vulkan_swapchain_get_resolve_image(sg_vulkan_swapchain * self) {  sg_vulkan_swapchain *v = self; return (void*)v->resolve_image; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vulkan_swapchain_set_resolve_image(sg_vulkan_swapchain * self, void * value) {  sg_vulkan_swapchain *v = self; v->resolve_image = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_vulkan_swapchain_get_resolve_view(sg_vulkan_swapchain * self) {  sg_vulkan_swapchain *v = self; return (void*)v->resolve_view; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vulkan_swapchain_set_resolve_view(sg_vulkan_swapchain * self, void * value) {  sg_vulkan_swapchain *v = self; v->resolve_view = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_vulkan_swapchain_get_depth_stencil_image(sg_vulkan_swapchain * self) {  sg_vulkan_swapchain *v = self; return (void*)v->depth_stencil_image; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vulkan_swapchain_set_depth_stencil_image(sg_vulkan_swapchain * self, void * value) {  sg_vulkan_swapchain *v = self; v->depth_stencil_image = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_vulkan_swapchain_get_depth_stencil_view(sg_vulkan_swapchain * self) {  sg_vulkan_swapchain *v = self; return (void*)v->depth_stencil_view; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vulkan_swapchain_set_depth_stencil_view(sg_vulkan_swapchain * self, void * value) {  sg_vulkan_swapchain *v = self; v->depth_stencil_view = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_vulkan_swapchain_get_render_finished_semaphore(sg_vulkan_swapchain * self) {  sg_vulkan_swapchain *v = self; return (void*)v->render_finished_semaphore; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vulkan_swapchain_set_render_finished_semaphore(sg_vulkan_swapchain * self, void * value) {  sg_vulkan_swapchain *v = self; v->render_finished_semaphore = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_vulkan_swapchain_get_present_complete_semaphore(sg_vulkan_swapchain * self) {  sg_vulkan_swapchain *v = self; return (void*)v->present_complete_semaphore; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vulkan_swapchain_set_present_complete_semaphore(sg_vulkan_swapchain * self, void * value) {  sg_vulkan_swapchain *v = self; v->present_complete_semaphore = value; }
MOONBIT_FFI_EXPORT sg_gl_swapchain * mb_gfx_sg_gl_swapchain_new(void) { return mb_new_sg_gl_swapchain(); }
MOONBIT_FFI_EXPORT sg_gl_swapchain * mb_gfx_sg_gl_swapchain_copy(sg_gl_swapchain * self) { return mb_copy_sg_gl_swapchain(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_gl_swapchain_native(sg_gl_swapchain * self) { return self; }
MOONBIT_FFI_EXPORT sg_gl_swapchain * mb_gfx_sg_gl_swapchain_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_gl_swapchain(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_gl_swapchain_get_framebuffer(sg_gl_swapchain * self) {  sg_gl_swapchain *v = self; return v->framebuffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_gl_swapchain_set_framebuffer(sg_gl_swapchain * self, uint32_t value) {  sg_gl_swapchain *v = self; v->framebuffer = (uint32_t)value; }
MOONBIT_FFI_EXPORT sg_swapchain * mb_gfx_sg_swapchain_new(void) { return mb_new_sg_swapchain(); }
MOONBIT_FFI_EXPORT sg_swapchain * mb_gfx_sg_swapchain_copy(sg_swapchain * self) { return mb_copy_sg_swapchain(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_swapchain_native(sg_swapchain * self) { return self; }
MOONBIT_FFI_EXPORT sg_swapchain * mb_gfx_sg_swapchain_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_swapchain(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_swapchain_get_invalid(sg_swapchain * self) {  sg_swapchain *v = self; return v->invalid; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_swapchain_set_invalid(sg_swapchain * self, int32_t value) {  sg_swapchain *v = self; v->invalid = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_swapchain_get_width(sg_swapchain * self) {  sg_swapchain *v = self; return v->width; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_swapchain_set_width(sg_swapchain * self, int32_t value) {  sg_swapchain *v = self; v->width = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_swapchain_get_height(sg_swapchain * self) {  sg_swapchain *v = self; return v->height; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_swapchain_set_height(sg_swapchain * self, int32_t value) {  sg_swapchain *v = self; v->height = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_swapchain_get_sample_count(sg_swapchain * self) {  sg_swapchain *v = self; return v->sample_count; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_swapchain_set_sample_count(sg_swapchain * self, int32_t value) {  sg_swapchain *v = self; v->sample_count = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_swapchain_get_color_format(sg_swapchain * self) {  sg_swapchain *v = self; return v->color_format; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_swapchain_set_color_format(sg_swapchain * self, int32_t value) {  sg_swapchain *v = self; v->color_format = (sg_pixel_format)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_swapchain_get_depth_format(sg_swapchain * self) {  sg_swapchain *v = self; return v->depth_format; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_swapchain_set_depth_format(sg_swapchain * self, int32_t value) {  sg_swapchain *v = self; v->depth_format = (sg_pixel_format)value; }
MOONBIT_FFI_EXPORT sg_metal_swapchain * mb_gfx_sg_swapchain_get_metal(sg_swapchain * self) {  sg_swapchain *v = self; return mb_copy_sg_metal_swapchain(&v->metal); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_swapchain_set_metal(sg_swapchain * self, sg_metal_swapchain * value) {  sg_swapchain *v = self; sg_metal_swapchain replacement; mb_clone_sg_metal_swapchain(&replacement, value); mb_drop_sg_metal_swapchain(&v->metal); v->metal = replacement; }
MOONBIT_FFI_EXPORT sg_d3d11_swapchain * mb_gfx_sg_swapchain_get_d3d11(sg_swapchain * self) {  sg_swapchain *v = self; return mb_copy_sg_d3d11_swapchain(&v->d3d11); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_swapchain_set_d3d11(sg_swapchain * self, sg_d3d11_swapchain * value) {  sg_swapchain *v = self; sg_d3d11_swapchain replacement; mb_clone_sg_d3d11_swapchain(&replacement, value); mb_drop_sg_d3d11_swapchain(&v->d3d11); v->d3d11 = replacement; }
MOONBIT_FFI_EXPORT sg_wgpu_swapchain * mb_gfx_sg_swapchain_get_wgpu(sg_swapchain * self) {  sg_swapchain *v = self; return mb_copy_sg_wgpu_swapchain(&v->wgpu); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_swapchain_set_wgpu(sg_swapchain * self, sg_wgpu_swapchain * value) {  sg_swapchain *v = self; sg_wgpu_swapchain replacement; mb_clone_sg_wgpu_swapchain(&replacement, value); mb_drop_sg_wgpu_swapchain(&v->wgpu); v->wgpu = replacement; }
MOONBIT_FFI_EXPORT sg_vulkan_swapchain * mb_gfx_sg_swapchain_get_vulkan(sg_swapchain * self) {  sg_swapchain *v = self; return mb_copy_sg_vulkan_swapchain(&v->vulkan); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_swapchain_set_vulkan(sg_swapchain * self, sg_vulkan_swapchain * value) {  sg_swapchain *v = self; sg_vulkan_swapchain replacement; mb_clone_sg_vulkan_swapchain(&replacement, value); mb_drop_sg_vulkan_swapchain(&v->vulkan); v->vulkan = replacement; }
MOONBIT_FFI_EXPORT sg_gl_swapchain * mb_gfx_sg_swapchain_get_gl(sg_swapchain * self) {  sg_swapchain *v = self; return mb_copy_sg_gl_swapchain(&v->gl); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_swapchain_set_gl(sg_swapchain * self, sg_gl_swapchain * value) {  sg_swapchain *v = self; sg_gl_swapchain replacement; mb_clone_sg_gl_swapchain(&replacement, value); mb_drop_sg_gl_swapchain(&v->gl); v->gl = replacement; }
MOONBIT_FFI_EXPORT sg_attachments * mb_gfx_sg_attachments_new(void) { return mb_new_sg_attachments(); }
MOONBIT_FFI_EXPORT sg_attachments * mb_gfx_sg_attachments_copy(sg_attachments * self) { return mb_copy_sg_attachments(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_attachments_native(sg_attachments * self) { return self; }
MOONBIT_FFI_EXPORT sg_attachments * mb_gfx_sg_attachments_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_attachments(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_attachments_get_colors(sg_attachments * self, int32_t i0) { if (i0<0 || i0>=8) abort(); sg_attachments *v = self; return v->colors[i0].id; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_attachments_set_colors(sg_attachments * self, int32_t i0, uint32_t value) { if (i0<0 || i0>=8) abort(); sg_attachments *v = self; v->colors[i0] = (sg_view){ .id = value }; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_attachments_get_resolves(sg_attachments * self, int32_t i0) { if (i0<0 || i0>=8) abort(); sg_attachments *v = self; return v->resolves[i0].id; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_attachments_set_resolves(sg_attachments * self, int32_t i0, uint32_t value) { if (i0<0 || i0>=8) abort(); sg_attachments *v = self; v->resolves[i0] = (sg_view){ .id = value }; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_attachments_get_depth_stencil(sg_attachments * self) {  sg_attachments *v = self; return v->depth_stencil.id; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_attachments_set_depth_stencil(sg_attachments * self, uint32_t value) {  sg_attachments *v = self; v->depth_stencil = (sg_view){ .id = value }; }
MOONBIT_FFI_EXPORT sg_pass * mb_gfx_sg_pass_new(void) { return mb_new_sg_pass(); }
MOONBIT_FFI_EXPORT sg_pass * mb_gfx_sg_pass_copy(sg_pass * self) { return mb_copy_sg_pass(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_pass_native(sg_pass * self) { return self; }
MOONBIT_FFI_EXPORT sg_pass * mb_gfx_sg_pass_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_pass(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_pass_get_compute(sg_pass * self) {  sg_pass *v = self; return v->compute; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pass_set_compute(sg_pass * self, int32_t value) {  sg_pass *v = self; v->compute = (bool)value; }
MOONBIT_FFI_EXPORT sg_pass_action * mb_gfx_sg_pass_get_action(sg_pass * self) {  sg_pass *v = self; return mb_copy_sg_pass_action(&v->action); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pass_set_action(sg_pass * self, sg_pass_action * value) {  sg_pass *v = self; sg_pass_action replacement; mb_clone_sg_pass_action(&replacement, value); mb_drop_sg_pass_action(&v->action); v->action = replacement; }
MOONBIT_FFI_EXPORT sg_attachments * mb_gfx_sg_pass_get_attachments(sg_pass * self) {  sg_pass *v = self; return mb_copy_sg_attachments(&v->attachments); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pass_set_attachments(sg_pass * self, sg_attachments * value) {  sg_pass *v = self; sg_attachments replacement; mb_clone_sg_attachments(&replacement, value); mb_drop_sg_attachments(&v->attachments); v->attachments = replacement; }
MOONBIT_FFI_EXPORT sg_swapchain * mb_gfx_sg_pass_get_swapchain(sg_pass * self) {  sg_pass *v = self; return mb_copy_sg_swapchain(&v->swapchain); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pass_set_swapchain(sg_pass * self, sg_swapchain * value) {  sg_pass *v = self; sg_swapchain replacement; mb_clone_sg_swapchain(&replacement, value); mb_drop_sg_swapchain(&v->swapchain); v->swapchain = replacement; }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_gfx_sg_pass_get_label(sg_pass * self) {  sg_pass *v = self; return mb_utf8(v->label); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pass_set_label(sg_pass * self, moonbit_bytes_t value) {  sg_pass *v = self; const char *replacement = mb_string((const char*)value); free((void*)v->label); v->label = replacement; }
MOONBIT_FFI_EXPORT sg_bindings * mb_gfx_sg_bindings_new(void) { return mb_new_sg_bindings(); }
MOONBIT_FFI_EXPORT sg_bindings * mb_gfx_sg_bindings_copy(sg_bindings * self) { return mb_copy_sg_bindings(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_bindings_native(sg_bindings * self) { return self; }
MOONBIT_FFI_EXPORT sg_bindings * mb_gfx_sg_bindings_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_bindings(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_bindings_get_vertex_buffers(sg_bindings * self, int32_t i0) { if (i0<0 || i0>=8) abort(); sg_bindings *v = self; return v->vertex_buffers[i0].id; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_bindings_set_vertex_buffers(sg_bindings * self, int32_t i0, uint32_t value) { if (i0<0 || i0>=8) abort(); sg_bindings *v = self; v->vertex_buffers[i0] = (sg_buffer){ .id = value }; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_bindings_get_vertex_buffer_offsets(sg_bindings * self, int32_t i0) { if (i0<0 || i0>=8) abort(); sg_bindings *v = self; return v->vertex_buffer_offsets[i0]; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_bindings_set_vertex_buffer_offsets(sg_bindings * self, int32_t i0, int32_t value) { if (i0<0 || i0>=8) abort(); sg_bindings *v = self; v->vertex_buffer_offsets[i0] = (int)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_bindings_get_index_buffer(sg_bindings * self) {  sg_bindings *v = self; return v->index_buffer.id; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_bindings_set_index_buffer(sg_bindings * self, uint32_t value) {  sg_bindings *v = self; v->index_buffer = (sg_buffer){ .id = value }; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_bindings_get_index_buffer_offset(sg_bindings * self) {  sg_bindings *v = self; return v->index_buffer_offset; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_bindings_set_index_buffer_offset(sg_bindings * self, int32_t value) {  sg_bindings *v = self; v->index_buffer_offset = (int)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_bindings_get_views(sg_bindings * self, int32_t i0) { if (i0<0 || i0>=32) abort(); sg_bindings *v = self; return v->views[i0].id; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_bindings_set_views(sg_bindings * self, int32_t i0, uint32_t value) { if (i0<0 || i0>=32) abort(); sg_bindings *v = self; v->views[i0] = (sg_view){ .id = value }; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_bindings_get_samplers(sg_bindings * self, int32_t i0) { if (i0<0 || i0>=14) abort(); sg_bindings *v = self; return v->samplers[i0].id; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_bindings_set_samplers(sg_bindings * self, int32_t i0, uint32_t value) { if (i0<0 || i0>=14) abort(); sg_bindings *v = self; v->samplers[i0] = (sg_sampler){ .id = value }; }
MOONBIT_FFI_EXPORT sg_buffer_usage * mb_gfx_sg_buffer_usage_new(void) { return mb_new_sg_buffer_usage(); }
MOONBIT_FFI_EXPORT sg_buffer_usage * mb_gfx_sg_buffer_usage_copy(sg_buffer_usage * self) { return mb_copy_sg_buffer_usage(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_buffer_usage_native(sg_buffer_usage * self) { return self; }
MOONBIT_FFI_EXPORT sg_buffer_usage * mb_gfx_sg_buffer_usage_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_buffer_usage(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_buffer_usage_get_vertex_buffer(sg_buffer_usage * self) {  sg_buffer_usage *v = self; return v->vertex_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_usage_set_vertex_buffer(sg_buffer_usage * self, int32_t value) {  sg_buffer_usage *v = self; v->vertex_buffer = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_buffer_usage_get_index_buffer(sg_buffer_usage * self) {  sg_buffer_usage *v = self; return v->index_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_usage_set_index_buffer(sg_buffer_usage * self, int32_t value) {  sg_buffer_usage *v = self; v->index_buffer = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_buffer_usage_get_storage_buffer(sg_buffer_usage * self) {  sg_buffer_usage *v = self; return v->storage_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_usage_set_storage_buffer(sg_buffer_usage * self, int32_t value) {  sg_buffer_usage *v = self; v->storage_buffer = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_buffer_usage_get_staging_buffer(sg_buffer_usage * self) {  sg_buffer_usage *v = self; return v->staging_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_usage_set_staging_buffer(sg_buffer_usage * self, int32_t value) {  sg_buffer_usage *v = self; v->staging_buffer = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_buffer_usage_get_staging_index_buffer(sg_buffer_usage * self) {  sg_buffer_usage *v = self; return v->staging_index_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_usage_set_staging_index_buffer(sg_buffer_usage * self, int32_t value) {  sg_buffer_usage *v = self; v->staging_index_buffer = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_buffer_usage_get_write_unsealed(sg_buffer_usage * self) {  sg_buffer_usage *v = self; return v->write_unsealed; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_usage_set_write_unsealed(sg_buffer_usage * self, int32_t value) {  sg_buffer_usage *v = self; v->write_unsealed = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_buffer_usage_get_write_transient(sg_buffer_usage * self) {  sg_buffer_usage *v = self; return v->write_transient; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_usage_set_write_transient(sg_buffer_usage * self, int32_t value) {  sg_buffer_usage *v = self; v->write_transient = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_buffer_usage_get_copy_src(sg_buffer_usage * self) {  sg_buffer_usage *v = self; return v->copy_src; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_usage_set_copy_src(sg_buffer_usage * self, int32_t value) {  sg_buffer_usage *v = self; v->copy_src = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_buffer_usage_get_copy_dst(sg_buffer_usage * self) {  sg_buffer_usage *v = self; return v->copy_dst; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_usage_set_copy_dst(sg_buffer_usage * self, int32_t value) {  sg_buffer_usage *v = self; v->copy_dst = (bool)value; }
MOONBIT_FFI_EXPORT sg_buffer_desc * mb_gfx_sg_buffer_desc_new(void) { return mb_new_sg_buffer_desc(); }
MOONBIT_FFI_EXPORT sg_buffer_desc * mb_gfx_sg_buffer_desc_copy(sg_buffer_desc * self) { return mb_copy_sg_buffer_desc(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_buffer_desc_native(sg_buffer_desc * self) { return self; }
MOONBIT_FFI_EXPORT sg_buffer_desc * mb_gfx_sg_buffer_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_buffer_desc(ptr); }
MOONBIT_FFI_EXPORT uint64_t mb_gfx_sg_buffer_desc_get_size(sg_buffer_desc * self) {  sg_buffer_desc *v = self; return v->size; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_desc_set_size(sg_buffer_desc * self, uint64_t value) {  sg_buffer_desc *v = self; v->size = (size_t)value; }
MOONBIT_FFI_EXPORT sg_buffer_usage * mb_gfx_sg_buffer_desc_get_usage(sg_buffer_desc * self) {  sg_buffer_desc *v = self; return mb_copy_sg_buffer_usage(&v->usage); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_desc_set_usage(sg_buffer_desc * self, sg_buffer_usage * value) {  sg_buffer_desc *v = self; sg_buffer_usage replacement; mb_clone_sg_buffer_usage(&replacement, value); mb_drop_sg_buffer_usage(&v->usage); v->usage = replacement; }
MOONBIT_FFI_EXPORT sg_range * mb_gfx_sg_buffer_desc_get_data(sg_buffer_desc * self) {  sg_buffer_desc *v = self; return mb_copy_sg_range(&v->data); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_desc_set_data(sg_buffer_desc * self, sg_range * value) {  sg_buffer_desc *v = self; sg_range replacement; mb_clone_sg_range(&replacement, value); mb_drop_sg_range(&v->data); v->data = replacement; }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_gfx_sg_buffer_desc_get_label(sg_buffer_desc * self) {  sg_buffer_desc *v = self; return mb_utf8(v->label); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_desc_set_label(sg_buffer_desc * self, moonbit_bytes_t value) {  sg_buffer_desc *v = self; const char *replacement = mb_string((const char*)value); free((void*)v->label); v->label = replacement; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_buffer_desc_get_gl_buffer(sg_buffer_desc * self) {  sg_buffer_desc *v = self; return v->gl_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_desc_set_gl_buffer(sg_buffer_desc * self, uint32_t value) {  sg_buffer_desc *v = self; v->gl_buffer = (uint32_t)value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_buffer_desc_get_mtl_buffer(sg_buffer_desc * self) {  sg_buffer_desc *v = self; return (void*)v->mtl_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_desc_set_mtl_buffer(sg_buffer_desc * self, void * value) {  sg_buffer_desc *v = self; v->mtl_buffer = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_buffer_desc_get_d3d11_buffer(sg_buffer_desc * self) {  sg_buffer_desc *v = self; return (void*)v->d3d11_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_desc_set_d3d11_buffer(sg_buffer_desc * self, void * value) {  sg_buffer_desc *v = self; v->d3d11_buffer = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_buffer_desc_get_wgpu_buffer(sg_buffer_desc * self) {  sg_buffer_desc *v = self; return (void*)v->wgpu_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_desc_set_wgpu_buffer(sg_buffer_desc * self, void * value) {  sg_buffer_desc *v = self; v->wgpu_buffer = value; }
MOONBIT_FFI_EXPORT sg_image_usage * mb_gfx_sg_image_usage_new(void) { return mb_new_sg_image_usage(); }
MOONBIT_FFI_EXPORT sg_image_usage * mb_gfx_sg_image_usage_copy(sg_image_usage * self) { return mb_copy_sg_image_usage(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_image_usage_native(sg_image_usage * self) { return self; }
MOONBIT_FFI_EXPORT sg_image_usage * mb_gfx_sg_image_usage_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_image_usage(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_usage_get_storage_image(sg_image_usage * self) {  sg_image_usage *v = self; return v->storage_image; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_usage_set_storage_image(sg_image_usage * self, int32_t value) {  sg_image_usage *v = self; v->storage_image = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_usage_get_color_attachment(sg_image_usage * self) {  sg_image_usage *v = self; return v->color_attachment; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_usage_set_color_attachment(sg_image_usage * self, int32_t value) {  sg_image_usage *v = self; v->color_attachment = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_usage_get_resolve_attachment(sg_image_usage * self) {  sg_image_usage *v = self; return v->resolve_attachment; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_usage_set_resolve_attachment(sg_image_usage * self, int32_t value) {  sg_image_usage *v = self; v->resolve_attachment = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_usage_get_depth_stencil_attachment(sg_image_usage * self) {  sg_image_usage *v = self; return v->depth_stencil_attachment; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_usage_set_depth_stencil_attachment(sg_image_usage * self, int32_t value) {  sg_image_usage *v = self; v->depth_stencil_attachment = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_usage_get_write_unsealed(sg_image_usage * self) {  sg_image_usage *v = self; return v->write_unsealed; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_usage_set_write_unsealed(sg_image_usage * self, int32_t value) {  sg_image_usage *v = self; v->write_unsealed = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_usage_get_write_transient(sg_image_usage * self) {  sg_image_usage *v = self; return v->write_transient; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_usage_set_write_transient(sg_image_usage * self, int32_t value) {  sg_image_usage *v = self; v->write_transient = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_usage_get_copy_src(sg_image_usage * self) {  sg_image_usage *v = self; return v->copy_src; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_usage_set_copy_src(sg_image_usage * self, int32_t value) {  sg_image_usage *v = self; v->copy_src = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_usage_get_copy_dst(sg_image_usage * self) {  sg_image_usage *v = self; return v->copy_dst; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_usage_set_copy_dst(sg_image_usage * self, int32_t value) {  sg_image_usage *v = self; v->copy_dst = (bool)value; }
MOONBIT_FFI_EXPORT sg_image_extent * mb_gfx_sg_image_extent_new(void) { return mb_new_sg_image_extent(); }
MOONBIT_FFI_EXPORT sg_image_extent * mb_gfx_sg_image_extent_copy(sg_image_extent * self) { return mb_copy_sg_image_extent(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_image_extent_native(sg_image_extent * self) { return self; }
MOONBIT_FFI_EXPORT sg_image_extent * mb_gfx_sg_image_extent_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_image_extent(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_extent_get_width(sg_image_extent * self) {  sg_image_extent *v = self; return v->width; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_extent_set_width(sg_image_extent * self, int32_t value) {  sg_image_extent *v = self; v->width = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_extent_get_height(sg_image_extent * self) {  sg_image_extent *v = self; return v->height; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_extent_set_height(sg_image_extent * self, int32_t value) {  sg_image_extent *v = self; v->height = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_extent_get_num_slices(sg_image_extent * self) {  sg_image_extent *v = self; return v->num_slices; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_extent_set_num_slices(sg_image_extent * self, int32_t value) {  sg_image_extent *v = self; v->num_slices = (int)value; }
MOONBIT_FFI_EXPORT sg_image_location * mb_gfx_sg_image_location_new(void) { return mb_new_sg_image_location(); }
MOONBIT_FFI_EXPORT sg_image_location * mb_gfx_sg_image_location_copy(sg_image_location * self) { return mb_copy_sg_image_location(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_image_location_native(sg_image_location * self) { return self; }
MOONBIT_FFI_EXPORT sg_image_location * mb_gfx_sg_image_location_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_image_location(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_image_location_get_image(sg_image_location * self) {  sg_image_location *v = self; return v->image.id; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_location_set_image(sg_image_location * self, uint32_t value) {  sg_image_location *v = self; v->image = (sg_image){ .id = value }; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_location_get_mip_level(sg_image_location * self) {  sg_image_location *v = self; return v->mip_level; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_location_set_mip_level(sg_image_location * self, int32_t value) {  sg_image_location *v = self; v->mip_level = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_location_get_x(sg_image_location * self) {  sg_image_location *v = self; return v->x; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_location_set_x(sg_image_location * self, int32_t value) {  sg_image_location *v = self; v->x = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_location_get_y(sg_image_location * self) {  sg_image_location *v = self; return v->y; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_location_set_y(sg_image_location * self, int32_t value) {  sg_image_location *v = self; v->y = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_location_get_slice(sg_image_location * self) {  sg_image_location *v = self; return v->slice; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_location_set_slice(sg_image_location * self, int32_t value) {  sg_image_location *v = self; v->slice = (int)value; }
MOONBIT_FFI_EXPORT sg_write_image_source * mb_gfx_sg_write_image_source_new(void) { return mb_new_sg_write_image_source(); }
MOONBIT_FFI_EXPORT sg_write_image_source * mb_gfx_sg_write_image_source_copy(sg_write_image_source * self) { return mb_copy_sg_write_image_source(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_write_image_source_native(sg_write_image_source * self) { return self; }
MOONBIT_FFI_EXPORT sg_write_image_source * mb_gfx_sg_write_image_source_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_write_image_source(ptr); }
MOONBIT_FFI_EXPORT sg_range * mb_gfx_sg_write_image_source_get_data(sg_write_image_source * self) {  sg_write_image_source *v = self; return mb_copy_sg_range(&v->data); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_write_image_source_set_data(sg_write_image_source * self, sg_range * value) {  sg_write_image_source *v = self; sg_range replacement; mb_clone_sg_range(&replacement, value); mb_drop_sg_range(&v->data); v->data = replacement; }
MOONBIT_FFI_EXPORT uint64_t mb_gfx_sg_write_image_source_get_offset(sg_write_image_source * self) {  sg_write_image_source *v = self; return v->offset; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_write_image_source_set_offset(sg_write_image_source * self, uint64_t value) {  sg_write_image_source *v = self; v->offset = (size_t)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_write_image_source_get_bytes_per_row(sg_write_image_source * self) {  sg_write_image_source *v = self; return v->bytes_per_row; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_write_image_source_set_bytes_per_row(sg_write_image_source * self, int32_t value) {  sg_write_image_source *v = self; v->bytes_per_row = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_write_image_source_get_bytes_per_slice(sg_write_image_source * self) {  sg_write_image_source *v = self; return v->bytes_per_slice; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_write_image_source_set_bytes_per_slice(sg_write_image_source * self, int32_t value) {  sg_write_image_source *v = self; v->bytes_per_slice = (int)value; }
MOONBIT_FFI_EXPORT sg_write_image_desc * mb_gfx_sg_write_image_desc_new(void) { return mb_new_sg_write_image_desc(); }
MOONBIT_FFI_EXPORT sg_write_image_desc * mb_gfx_sg_write_image_desc_copy(sg_write_image_desc * self) { return mb_copy_sg_write_image_desc(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_write_image_desc_native(sg_write_image_desc * self) { return self; }
MOONBIT_FFI_EXPORT sg_write_image_desc * mb_gfx_sg_write_image_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_write_image_desc(ptr); }
MOONBIT_FFI_EXPORT sg_write_image_source * mb_gfx_sg_write_image_desc_get_src(sg_write_image_desc * self) {  sg_write_image_desc *v = self; return mb_copy_sg_write_image_source(&v->src); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_write_image_desc_set_src(sg_write_image_desc * self, sg_write_image_source * value) {  sg_write_image_desc *v = self; sg_write_image_source replacement; mb_clone_sg_write_image_source(&replacement, value); mb_drop_sg_write_image_source(&v->src); v->src = replacement; }
MOONBIT_FFI_EXPORT sg_image_location * mb_gfx_sg_write_image_desc_get_dst(sg_write_image_desc * self) {  sg_write_image_desc *v = self; return mb_copy_sg_image_location(&v->dst); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_write_image_desc_set_dst(sg_write_image_desc * self, sg_image_location * value) {  sg_write_image_desc *v = self; sg_image_location replacement; mb_clone_sg_image_location(&replacement, value); mb_drop_sg_image_location(&v->dst); v->dst = replacement; }
MOONBIT_FFI_EXPORT sg_image_extent * mb_gfx_sg_write_image_desc_get_size(sg_write_image_desc * self) {  sg_write_image_desc *v = self; return mb_copy_sg_image_extent(&v->size); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_write_image_desc_set_size(sg_write_image_desc * self, sg_image_extent * value) {  sg_write_image_desc *v = self; sg_image_extent replacement; mb_clone_sg_image_extent(&replacement, value); mb_drop_sg_image_extent(&v->size); v->size = replacement; }
MOONBIT_FFI_EXPORT sg_buffer_location * mb_gfx_sg_buffer_location_new(void) { return mb_new_sg_buffer_location(); }
MOONBIT_FFI_EXPORT sg_buffer_location * mb_gfx_sg_buffer_location_copy(sg_buffer_location * self) { return mb_copy_sg_buffer_location(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_buffer_location_native(sg_buffer_location * self) { return self; }
MOONBIT_FFI_EXPORT sg_buffer_location * mb_gfx_sg_buffer_location_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_buffer_location(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_buffer_location_get_buffer(sg_buffer_location * self) {  sg_buffer_location *v = self; return v->buffer.id; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_location_set_buffer(sg_buffer_location * self, uint32_t value) {  sg_buffer_location *v = self; v->buffer = (sg_buffer){ .id = value }; }
MOONBIT_FFI_EXPORT uint64_t mb_gfx_sg_buffer_location_get_offset(sg_buffer_location * self) {  sg_buffer_location *v = self; return v->offset; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_location_set_offset(sg_buffer_location * self, uint64_t value) {  sg_buffer_location *v = self; v->offset = (size_t)value; }
MOONBIT_FFI_EXPORT sg_buffer_image_location * mb_gfx_sg_buffer_image_location_new(void) { return mb_new_sg_buffer_image_location(); }
MOONBIT_FFI_EXPORT sg_buffer_image_location * mb_gfx_sg_buffer_image_location_copy(sg_buffer_image_location * self) { return mb_copy_sg_buffer_image_location(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_buffer_image_location_native(sg_buffer_image_location * self) { return self; }
MOONBIT_FFI_EXPORT sg_buffer_image_location * mb_gfx_sg_buffer_image_location_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_buffer_image_location(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_buffer_image_location_get_buffer(sg_buffer_image_location * self) {  sg_buffer_image_location *v = self; return v->buffer.id; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_image_location_set_buffer(sg_buffer_image_location * self, uint32_t value) {  sg_buffer_image_location *v = self; v->buffer = (sg_buffer){ .id = value }; }
MOONBIT_FFI_EXPORT uint64_t mb_gfx_sg_buffer_image_location_get_offset(sg_buffer_image_location * self) {  sg_buffer_image_location *v = self; return v->offset; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_image_location_set_offset(sg_buffer_image_location * self, uint64_t value) {  sg_buffer_image_location *v = self; v->offset = (size_t)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_buffer_image_location_get_bytes_per_row(sg_buffer_image_location * self) {  sg_buffer_image_location *v = self; return v->bytes_per_row; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_image_location_set_bytes_per_row(sg_buffer_image_location * self, int32_t value) {  sg_buffer_image_location *v = self; v->bytes_per_row = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_buffer_image_location_get_bytes_per_slice(sg_buffer_image_location * self) {  sg_buffer_image_location *v = self; return v->bytes_per_slice; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_image_location_set_bytes_per_slice(sg_buffer_image_location * self, int32_t value) {  sg_buffer_image_location *v = self; v->bytes_per_slice = (int)value; }
MOONBIT_FFI_EXPORT sg_write_buffer_source * mb_gfx_sg_write_buffer_source_new(void) { return mb_new_sg_write_buffer_source(); }
MOONBIT_FFI_EXPORT sg_write_buffer_source * mb_gfx_sg_write_buffer_source_copy(sg_write_buffer_source * self) { return mb_copy_sg_write_buffer_source(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_write_buffer_source_native(sg_write_buffer_source * self) { return self; }
MOONBIT_FFI_EXPORT sg_write_buffer_source * mb_gfx_sg_write_buffer_source_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_write_buffer_source(ptr); }
MOONBIT_FFI_EXPORT sg_range * mb_gfx_sg_write_buffer_source_get_data(sg_write_buffer_source * self) {  sg_write_buffer_source *v = self; return mb_copy_sg_range(&v->data); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_write_buffer_source_set_data(sg_write_buffer_source * self, sg_range * value) {  sg_write_buffer_source *v = self; sg_range replacement; mb_clone_sg_range(&replacement, value); mb_drop_sg_range(&v->data); v->data = replacement; }
MOONBIT_FFI_EXPORT uint64_t mb_gfx_sg_write_buffer_source_get_offset(sg_write_buffer_source * self) {  sg_write_buffer_source *v = self; return v->offset; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_write_buffer_source_set_offset(sg_write_buffer_source * self, uint64_t value) {  sg_write_buffer_source *v = self; v->offset = (size_t)value; }
MOONBIT_FFI_EXPORT sg_write_buffer_desc * mb_gfx_sg_write_buffer_desc_new(void) { return mb_new_sg_write_buffer_desc(); }
MOONBIT_FFI_EXPORT sg_write_buffer_desc * mb_gfx_sg_write_buffer_desc_copy(sg_write_buffer_desc * self) { return mb_copy_sg_write_buffer_desc(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_write_buffer_desc_native(sg_write_buffer_desc * self) { return self; }
MOONBIT_FFI_EXPORT sg_write_buffer_desc * mb_gfx_sg_write_buffer_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_write_buffer_desc(ptr); }
MOONBIT_FFI_EXPORT sg_write_buffer_source * mb_gfx_sg_write_buffer_desc_get_src(sg_write_buffer_desc * self) {  sg_write_buffer_desc *v = self; return mb_copy_sg_write_buffer_source(&v->src); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_write_buffer_desc_set_src(sg_write_buffer_desc * self, sg_write_buffer_source * value) {  sg_write_buffer_desc *v = self; sg_write_buffer_source replacement; mb_clone_sg_write_buffer_source(&replacement, value); mb_drop_sg_write_buffer_source(&v->src); v->src = replacement; }
MOONBIT_FFI_EXPORT sg_buffer_location * mb_gfx_sg_write_buffer_desc_get_dst(sg_write_buffer_desc * self) {  sg_write_buffer_desc *v = self; return mb_copy_sg_buffer_location(&v->dst); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_write_buffer_desc_set_dst(sg_write_buffer_desc * self, sg_buffer_location * value) {  sg_write_buffer_desc *v = self; sg_buffer_location replacement; mb_clone_sg_buffer_location(&replacement, value); mb_drop_sg_buffer_location(&v->dst); v->dst = replacement; }
MOONBIT_FFI_EXPORT uint64_t mb_gfx_sg_write_buffer_desc_get_size(sg_write_buffer_desc * self) {  sg_write_buffer_desc *v = self; return v->size; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_write_buffer_desc_set_size(sg_write_buffer_desc * self, uint64_t value) {  sg_write_buffer_desc *v = self; v->size = (size_t)value; }
MOONBIT_FFI_EXPORT sg_copy_buffer_to_buffer_desc * mb_gfx_sg_copy_buffer_to_buffer_desc_new(void) { return mb_new_sg_copy_buffer_to_buffer_desc(); }
MOONBIT_FFI_EXPORT sg_copy_buffer_to_buffer_desc * mb_gfx_sg_copy_buffer_to_buffer_desc_copy(sg_copy_buffer_to_buffer_desc * self) { return mb_copy_sg_copy_buffer_to_buffer_desc(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_copy_buffer_to_buffer_desc_native(sg_copy_buffer_to_buffer_desc * self) { return self; }
MOONBIT_FFI_EXPORT sg_copy_buffer_to_buffer_desc * mb_gfx_sg_copy_buffer_to_buffer_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_copy_buffer_to_buffer_desc(ptr); }
MOONBIT_FFI_EXPORT sg_buffer_location * mb_gfx_sg_copy_buffer_to_buffer_desc_get_src(sg_copy_buffer_to_buffer_desc * self) {  sg_copy_buffer_to_buffer_desc *v = self; return mb_copy_sg_buffer_location(&v->src); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_copy_buffer_to_buffer_desc_set_src(sg_copy_buffer_to_buffer_desc * self, sg_buffer_location * value) {  sg_copy_buffer_to_buffer_desc *v = self; sg_buffer_location replacement; mb_clone_sg_buffer_location(&replacement, value); mb_drop_sg_buffer_location(&v->src); v->src = replacement; }
MOONBIT_FFI_EXPORT sg_buffer_location * mb_gfx_sg_copy_buffer_to_buffer_desc_get_dst(sg_copy_buffer_to_buffer_desc * self) {  sg_copy_buffer_to_buffer_desc *v = self; return mb_copy_sg_buffer_location(&v->dst); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_copy_buffer_to_buffer_desc_set_dst(sg_copy_buffer_to_buffer_desc * self, sg_buffer_location * value) {  sg_copy_buffer_to_buffer_desc *v = self; sg_buffer_location replacement; mb_clone_sg_buffer_location(&replacement, value); mb_drop_sg_buffer_location(&v->dst); v->dst = replacement; }
MOONBIT_FFI_EXPORT uint64_t mb_gfx_sg_copy_buffer_to_buffer_desc_get_size(sg_copy_buffer_to_buffer_desc * self) {  sg_copy_buffer_to_buffer_desc *v = self; return v->size; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_copy_buffer_to_buffer_desc_set_size(sg_copy_buffer_to_buffer_desc * self, uint64_t value) {  sg_copy_buffer_to_buffer_desc *v = self; v->size = (size_t)value; }
MOONBIT_FFI_EXPORT sg_copy_buffer_to_image_desc * mb_gfx_sg_copy_buffer_to_image_desc_new(void) { return mb_new_sg_copy_buffer_to_image_desc(); }
MOONBIT_FFI_EXPORT sg_copy_buffer_to_image_desc * mb_gfx_sg_copy_buffer_to_image_desc_copy(sg_copy_buffer_to_image_desc * self) { return mb_copy_sg_copy_buffer_to_image_desc(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_copy_buffer_to_image_desc_native(sg_copy_buffer_to_image_desc * self) { return self; }
MOONBIT_FFI_EXPORT sg_copy_buffer_to_image_desc * mb_gfx_sg_copy_buffer_to_image_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_copy_buffer_to_image_desc(ptr); }
MOONBIT_FFI_EXPORT sg_buffer_image_location * mb_gfx_sg_copy_buffer_to_image_desc_get_src(sg_copy_buffer_to_image_desc * self) {  sg_copy_buffer_to_image_desc *v = self; return mb_copy_sg_buffer_image_location(&v->src); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_copy_buffer_to_image_desc_set_src(sg_copy_buffer_to_image_desc * self, sg_buffer_image_location * value) {  sg_copy_buffer_to_image_desc *v = self; sg_buffer_image_location replacement; mb_clone_sg_buffer_image_location(&replacement, value); mb_drop_sg_buffer_image_location(&v->src); v->src = replacement; }
MOONBIT_FFI_EXPORT sg_image_location * mb_gfx_sg_copy_buffer_to_image_desc_get_dst(sg_copy_buffer_to_image_desc * self) {  sg_copy_buffer_to_image_desc *v = self; return mb_copy_sg_image_location(&v->dst); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_copy_buffer_to_image_desc_set_dst(sg_copy_buffer_to_image_desc * self, sg_image_location * value) {  sg_copy_buffer_to_image_desc *v = self; sg_image_location replacement; mb_clone_sg_image_location(&replacement, value); mb_drop_sg_image_location(&v->dst); v->dst = replacement; }
MOONBIT_FFI_EXPORT sg_image_extent * mb_gfx_sg_copy_buffer_to_image_desc_get_size(sg_copy_buffer_to_image_desc * self) {  sg_copy_buffer_to_image_desc *v = self; return mb_copy_sg_image_extent(&v->size); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_copy_buffer_to_image_desc_set_size(sg_copy_buffer_to_image_desc * self, sg_image_extent * value) {  sg_copy_buffer_to_image_desc *v = self; sg_image_extent replacement; mb_clone_sg_image_extent(&replacement, value); mb_drop_sg_image_extent(&v->size); v->size = replacement; }
MOONBIT_FFI_EXPORT sg_copy_image_to_image_desc * mb_gfx_sg_copy_image_to_image_desc_new(void) { return mb_new_sg_copy_image_to_image_desc(); }
MOONBIT_FFI_EXPORT sg_copy_image_to_image_desc * mb_gfx_sg_copy_image_to_image_desc_copy(sg_copy_image_to_image_desc * self) { return mb_copy_sg_copy_image_to_image_desc(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_copy_image_to_image_desc_native(sg_copy_image_to_image_desc * self) { return self; }
MOONBIT_FFI_EXPORT sg_copy_image_to_image_desc * mb_gfx_sg_copy_image_to_image_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_copy_image_to_image_desc(ptr); }
MOONBIT_FFI_EXPORT sg_image_location * mb_gfx_sg_copy_image_to_image_desc_get_src(sg_copy_image_to_image_desc * self) {  sg_copy_image_to_image_desc *v = self; return mb_copy_sg_image_location(&v->src); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_copy_image_to_image_desc_set_src(sg_copy_image_to_image_desc * self, sg_image_location * value) {  sg_copy_image_to_image_desc *v = self; sg_image_location replacement; mb_clone_sg_image_location(&replacement, value); mb_drop_sg_image_location(&v->src); v->src = replacement; }
MOONBIT_FFI_EXPORT sg_image_location * mb_gfx_sg_copy_image_to_image_desc_get_dst(sg_copy_image_to_image_desc * self) {  sg_copy_image_to_image_desc *v = self; return mb_copy_sg_image_location(&v->dst); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_copy_image_to_image_desc_set_dst(sg_copy_image_to_image_desc * self, sg_image_location * value) {  sg_copy_image_to_image_desc *v = self; sg_image_location replacement; mb_clone_sg_image_location(&replacement, value); mb_drop_sg_image_location(&v->dst); v->dst = replacement; }
MOONBIT_FFI_EXPORT sg_image_extent * mb_gfx_sg_copy_image_to_image_desc_get_size(sg_copy_image_to_image_desc * self) {  sg_copy_image_to_image_desc *v = self; return mb_copy_sg_image_extent(&v->size); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_copy_image_to_image_desc_set_size(sg_copy_image_to_image_desc * self, sg_image_extent * value) {  sg_copy_image_to_image_desc *v = self; sg_image_extent replacement; mb_clone_sg_image_extent(&replacement, value); mb_drop_sg_image_extent(&v->size); v->size = replacement; }
MOONBIT_FFI_EXPORT sg_image_desc * mb_gfx_sg_image_desc_new(void) { return mb_new_sg_image_desc(); }
MOONBIT_FFI_EXPORT sg_image_desc * mb_gfx_sg_image_desc_copy(sg_image_desc * self) { return mb_copy_sg_image_desc(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_image_desc_native(sg_image_desc * self) { return self; }
MOONBIT_FFI_EXPORT sg_image_desc * mb_gfx_sg_image_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_image_desc(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_desc_get_type(sg_image_desc * self) {  sg_image_desc *v = self; return v->type; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_desc_set_type(sg_image_desc * self, int32_t value) {  sg_image_desc *v = self; v->type = (sg_image_type)value; }
MOONBIT_FFI_EXPORT sg_image_usage * mb_gfx_sg_image_desc_get_usage(sg_image_desc * self) {  sg_image_desc *v = self; return mb_copy_sg_image_usage(&v->usage); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_desc_set_usage(sg_image_desc * self, sg_image_usage * value) {  sg_image_desc *v = self; sg_image_usage replacement; mb_clone_sg_image_usage(&replacement, value); mb_drop_sg_image_usage(&v->usage); v->usage = replacement; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_desc_get_width(sg_image_desc * self) {  sg_image_desc *v = self; return v->width; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_desc_set_width(sg_image_desc * self, int32_t value) {  sg_image_desc *v = self; v->width = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_desc_get_height(sg_image_desc * self) {  sg_image_desc *v = self; return v->height; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_desc_set_height(sg_image_desc * self, int32_t value) {  sg_image_desc *v = self; v->height = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_desc_get_num_slices(sg_image_desc * self) {  sg_image_desc *v = self; return v->num_slices; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_desc_set_num_slices(sg_image_desc * self, int32_t value) {  sg_image_desc *v = self; v->num_slices = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_desc_get_num_mipmaps(sg_image_desc * self) {  sg_image_desc *v = self; return v->num_mipmaps; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_desc_set_num_mipmaps(sg_image_desc * self, int32_t value) {  sg_image_desc *v = self; v->num_mipmaps = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_desc_get_pixel_format(sg_image_desc * self) {  sg_image_desc *v = self; return v->pixel_format; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_desc_set_pixel_format(sg_image_desc * self, int32_t value) {  sg_image_desc *v = self; v->pixel_format = (sg_pixel_format)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_desc_get_sample_count(sg_image_desc * self) {  sg_image_desc *v = self; return v->sample_count; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_desc_set_sample_count(sg_image_desc * self, int32_t value) {  sg_image_desc *v = self; v->sample_count = (int)value; }
MOONBIT_FFI_EXPORT sg_range * mb_gfx_sg_image_desc_get_data(sg_image_desc * self) {  sg_image_desc *v = self; return mb_copy_sg_range(&v->data); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_desc_set_data(sg_image_desc * self, sg_range * value) {  sg_image_desc *v = self; sg_range replacement; mb_clone_sg_range(&replacement, value); mb_drop_sg_range(&v->data); v->data = replacement; }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_gfx_sg_image_desc_get_label(sg_image_desc * self) {  sg_image_desc *v = self; return mb_utf8(v->label); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_desc_set_label(sg_image_desc * self, moonbit_bytes_t value) {  sg_image_desc *v = self; const char *replacement = mb_string((const char*)value); free((void*)v->label); v->label = replacement; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_image_desc_get_gl_texture(sg_image_desc * self) {  sg_image_desc *v = self; return v->gl_texture; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_desc_set_gl_texture(sg_image_desc * self, uint32_t value) {  sg_image_desc *v = self; v->gl_texture = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_image_desc_get_gl_texture_target(sg_image_desc * self) {  sg_image_desc *v = self; return v->gl_texture_target; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_desc_set_gl_texture_target(sg_image_desc * self, uint32_t value) {  sg_image_desc *v = self; v->gl_texture_target = (uint32_t)value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_image_desc_get_mtl_texture(sg_image_desc * self) {  sg_image_desc *v = self; return (void*)v->mtl_texture; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_desc_set_mtl_texture(sg_image_desc * self, void * value) {  sg_image_desc *v = self; v->mtl_texture = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_image_desc_get_d3d11_texture(sg_image_desc * self) {  sg_image_desc *v = self; return (void*)v->d3d11_texture; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_desc_set_d3d11_texture(sg_image_desc * self, void * value) {  sg_image_desc *v = self; v->d3d11_texture = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_image_desc_get_wgpu_texture(sg_image_desc * self) {  sg_image_desc *v = self; return (void*)v->wgpu_texture; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_desc_set_wgpu_texture(sg_image_desc * self, void * value) {  sg_image_desc *v = self; v->wgpu_texture = value; }
MOONBIT_FFI_EXPORT sg_sampler_desc * mb_gfx_sg_sampler_desc_new(void) { return mb_new_sg_sampler_desc(); }
MOONBIT_FFI_EXPORT sg_sampler_desc * mb_gfx_sg_sampler_desc_copy(sg_sampler_desc * self) { return mb_copy_sg_sampler_desc(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_sampler_desc_native(sg_sampler_desc * self) { return self; }
MOONBIT_FFI_EXPORT sg_sampler_desc * mb_gfx_sg_sampler_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_sampler_desc(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_sampler_desc_get_min_filter(sg_sampler_desc * self) {  sg_sampler_desc *v = self; return v->min_filter; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_min_filter(sg_sampler_desc * self, int32_t value) {  sg_sampler_desc *v = self; v->min_filter = (sg_filter)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_sampler_desc_get_mag_filter(sg_sampler_desc * self) {  sg_sampler_desc *v = self; return v->mag_filter; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_mag_filter(sg_sampler_desc * self, int32_t value) {  sg_sampler_desc *v = self; v->mag_filter = (sg_filter)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_sampler_desc_get_mipmap_filter(sg_sampler_desc * self) {  sg_sampler_desc *v = self; return v->mipmap_filter; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_mipmap_filter(sg_sampler_desc * self, int32_t value) {  sg_sampler_desc *v = self; v->mipmap_filter = (sg_filter)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_sampler_desc_get_wrap_u(sg_sampler_desc * self) {  sg_sampler_desc *v = self; return v->wrap_u; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_wrap_u(sg_sampler_desc * self, int32_t value) {  sg_sampler_desc *v = self; v->wrap_u = (sg_wrap)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_sampler_desc_get_wrap_v(sg_sampler_desc * self) {  sg_sampler_desc *v = self; return v->wrap_v; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_wrap_v(sg_sampler_desc * self, int32_t value) {  sg_sampler_desc *v = self; v->wrap_v = (sg_wrap)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_sampler_desc_get_wrap_w(sg_sampler_desc * self) {  sg_sampler_desc *v = self; return v->wrap_w; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_wrap_w(sg_sampler_desc * self, int32_t value) {  sg_sampler_desc *v = self; v->wrap_w = (sg_wrap)value; }
MOONBIT_FFI_EXPORT float mb_gfx_sg_sampler_desc_get_min_lod(sg_sampler_desc * self) {  sg_sampler_desc *v = self; return v->min_lod; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_min_lod(sg_sampler_desc * self, float value) {  sg_sampler_desc *v = self; v->min_lod = (float)value; }
MOONBIT_FFI_EXPORT float mb_gfx_sg_sampler_desc_get_max_lod(sg_sampler_desc * self) {  sg_sampler_desc *v = self; return v->max_lod; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_max_lod(sg_sampler_desc * self, float value) {  sg_sampler_desc *v = self; v->max_lod = (float)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_sampler_desc_get_border_color(sg_sampler_desc * self) {  sg_sampler_desc *v = self; return v->border_color; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_border_color(sg_sampler_desc * self, int32_t value) {  sg_sampler_desc *v = self; v->border_color = (sg_border_color)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_sampler_desc_get_compare(sg_sampler_desc * self) {  sg_sampler_desc *v = self; return v->compare; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_compare(sg_sampler_desc * self, int32_t value) {  sg_sampler_desc *v = self; v->compare = (sg_compare_func)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_sampler_desc_get_max_anisotropy(sg_sampler_desc * self) {  sg_sampler_desc *v = self; return v->max_anisotropy; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_max_anisotropy(sg_sampler_desc * self, uint32_t value) {  sg_sampler_desc *v = self; v->max_anisotropy = (uint32_t)value; }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_gfx_sg_sampler_desc_get_label(sg_sampler_desc * self) {  sg_sampler_desc *v = self; return mb_utf8(v->label); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_label(sg_sampler_desc * self, moonbit_bytes_t value) {  sg_sampler_desc *v = self; const char *replacement = mb_string((const char*)value); free((void*)v->label); v->label = replacement; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_sampler_desc_get_gl_sampler(sg_sampler_desc * self) {  sg_sampler_desc *v = self; return v->gl_sampler; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_gl_sampler(sg_sampler_desc * self, uint32_t value) {  sg_sampler_desc *v = self; v->gl_sampler = (uint32_t)value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_sampler_desc_get_mtl_sampler(sg_sampler_desc * self) {  sg_sampler_desc *v = self; return (void*)v->mtl_sampler; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_mtl_sampler(sg_sampler_desc * self, void * value) {  sg_sampler_desc *v = self; v->mtl_sampler = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_sampler_desc_get_d3d11_sampler(sg_sampler_desc * self) {  sg_sampler_desc *v = self; return (void*)v->d3d11_sampler; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_d3d11_sampler(sg_sampler_desc * self, void * value) {  sg_sampler_desc *v = self; v->d3d11_sampler = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_sampler_desc_get_wgpu_sampler(sg_sampler_desc * self) {  sg_sampler_desc *v = self; return (void*)v->wgpu_sampler; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_wgpu_sampler(sg_sampler_desc * self, void * value) {  sg_sampler_desc *v = self; v->wgpu_sampler = value; }
MOONBIT_FFI_EXPORT sg_shader_function * mb_gfx_sg_shader_function_new(void) { return mb_new_sg_shader_function(); }
MOONBIT_FFI_EXPORT sg_shader_function * mb_gfx_sg_shader_function_copy(sg_shader_function * self) { return mb_copy_sg_shader_function(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_shader_function_native(sg_shader_function * self) { return self; }
MOONBIT_FFI_EXPORT sg_shader_function * mb_gfx_sg_shader_function_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_shader_function(ptr); }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_gfx_sg_shader_function_get_source(sg_shader_function * self) {  sg_shader_function *v = self; return mb_utf8(v->source); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_function_set_source(sg_shader_function * self, moonbit_bytes_t value) {  sg_shader_function *v = self; const char *replacement = mb_string((const char*)value); free((void*)v->source); v->source = replacement; }
MOONBIT_FFI_EXPORT sg_range * mb_gfx_sg_shader_function_get_bytecode(sg_shader_function * self) {  sg_shader_function *v = self; return mb_copy_sg_range(&v->bytecode); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_function_set_bytecode(sg_shader_function * self, sg_range * value) {  sg_shader_function *v = self; sg_range replacement; mb_clone_sg_range(&replacement, value); mb_drop_sg_range(&v->bytecode); v->bytecode = replacement; }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_gfx_sg_shader_function_get_entry(sg_shader_function * self) {  sg_shader_function *v = self; return mb_utf8(v->entry); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_function_set_entry(sg_shader_function * self, moonbit_bytes_t value) {  sg_shader_function *v = self; const char *replacement = mb_string((const char*)value); free((void*)v->entry); v->entry = replacement; }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_gfx_sg_shader_function_get_d3d11_target(sg_shader_function * self) {  sg_shader_function *v = self; return mb_utf8(v->d3d11_target); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_function_set_d3d11_target(sg_shader_function * self, moonbit_bytes_t value) {  sg_shader_function *v = self; const char *replacement = mb_string((const char*)value); free((void*)v->d3d11_target); v->d3d11_target = replacement; }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_gfx_sg_shader_function_get_d3d11_filepath(sg_shader_function * self) {  sg_shader_function *v = self; return mb_utf8(v->d3d11_filepath); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_function_set_d3d11_filepath(sg_shader_function * self, moonbit_bytes_t value) {  sg_shader_function *v = self; const char *replacement = mb_string((const char*)value); free((void*)v->d3d11_filepath); v->d3d11_filepath = replacement; }
MOONBIT_FFI_EXPORT sg_shader_vertex_attr * mb_gfx_sg_shader_vertex_attr_new(void) { return mb_new_sg_shader_vertex_attr(); }
MOONBIT_FFI_EXPORT sg_shader_vertex_attr * mb_gfx_sg_shader_vertex_attr_copy(sg_shader_vertex_attr * self) { return mb_copy_sg_shader_vertex_attr(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_shader_vertex_attr_native(sg_shader_vertex_attr * self) { return self; }
MOONBIT_FFI_EXPORT sg_shader_vertex_attr * mb_gfx_sg_shader_vertex_attr_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_shader_vertex_attr(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_shader_vertex_attr_get_base_type(sg_shader_vertex_attr * self) {  sg_shader_vertex_attr *v = self; return v->base_type; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_vertex_attr_set_base_type(sg_shader_vertex_attr * self, int32_t value) {  sg_shader_vertex_attr *v = self; v->base_type = (sg_shader_attr_base_type)value; }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_gfx_sg_shader_vertex_attr_get_glsl_name(sg_shader_vertex_attr * self) {  sg_shader_vertex_attr *v = self; return mb_utf8(v->glsl_name); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_vertex_attr_set_glsl_name(sg_shader_vertex_attr * self, moonbit_bytes_t value) {  sg_shader_vertex_attr *v = self; const char *replacement = mb_string((const char*)value); free((void*)v->glsl_name); v->glsl_name = replacement; }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_gfx_sg_shader_vertex_attr_get_hlsl_sem_name(sg_shader_vertex_attr * self) {  sg_shader_vertex_attr *v = self; return mb_utf8(v->hlsl_sem_name); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_vertex_attr_set_hlsl_sem_name(sg_shader_vertex_attr * self, moonbit_bytes_t value) {  sg_shader_vertex_attr *v = self; const char *replacement = mb_string((const char*)value); free((void*)v->hlsl_sem_name); v->hlsl_sem_name = replacement; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_vertex_attr_get_hlsl_sem_index(sg_shader_vertex_attr * self) {  sg_shader_vertex_attr *v = self; return v->hlsl_sem_index; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_vertex_attr_set_hlsl_sem_index(sg_shader_vertex_attr * self, uint8_t value) {  sg_shader_vertex_attr *v = self; v->hlsl_sem_index = (uint8_t)value; }
MOONBIT_FFI_EXPORT sg_glsl_shader_uniform * mb_gfx_sg_glsl_shader_uniform_new(void) { return mb_new_sg_glsl_shader_uniform(); }
MOONBIT_FFI_EXPORT sg_glsl_shader_uniform * mb_gfx_sg_glsl_shader_uniform_copy(sg_glsl_shader_uniform * self) { return mb_copy_sg_glsl_shader_uniform(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_glsl_shader_uniform_native(sg_glsl_shader_uniform * self) { return self; }
MOONBIT_FFI_EXPORT sg_glsl_shader_uniform * mb_gfx_sg_glsl_shader_uniform_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_glsl_shader_uniform(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_glsl_shader_uniform_get_type(sg_glsl_shader_uniform * self) {  sg_glsl_shader_uniform *v = self; return v->type; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_glsl_shader_uniform_set_type(sg_glsl_shader_uniform * self, int32_t value) {  sg_glsl_shader_uniform *v = self; v->type = (sg_uniform_type)value; }
MOONBIT_FFI_EXPORT uint16_t mb_gfx_sg_glsl_shader_uniform_get_array_count(sg_glsl_shader_uniform * self) {  sg_glsl_shader_uniform *v = self; return v->array_count; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_glsl_shader_uniform_set_array_count(sg_glsl_shader_uniform * self, uint16_t value) {  sg_glsl_shader_uniform *v = self; v->array_count = (uint16_t)value; }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_gfx_sg_glsl_shader_uniform_get_glsl_name(sg_glsl_shader_uniform * self) {  sg_glsl_shader_uniform *v = self; return mb_utf8(v->glsl_name); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_glsl_shader_uniform_set_glsl_name(sg_glsl_shader_uniform * self, moonbit_bytes_t value) {  sg_glsl_shader_uniform *v = self; const char *replacement = mb_string((const char*)value); free((void*)v->glsl_name); v->glsl_name = replacement; }
MOONBIT_FFI_EXPORT sg_shader_uniform_block * mb_gfx_sg_shader_uniform_block_new(void) { return mb_new_sg_shader_uniform_block(); }
MOONBIT_FFI_EXPORT sg_shader_uniform_block * mb_gfx_sg_shader_uniform_block_copy(sg_shader_uniform_block * self) { return mb_copy_sg_shader_uniform_block(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_shader_uniform_block_native(sg_shader_uniform_block * self) { return self; }
MOONBIT_FFI_EXPORT sg_shader_uniform_block * mb_gfx_sg_shader_uniform_block_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_shader_uniform_block(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_shader_uniform_block_get_stage(sg_shader_uniform_block * self) {  sg_shader_uniform_block *v = self; return v->stage; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_uniform_block_set_stage(sg_shader_uniform_block * self, int32_t value) {  sg_shader_uniform_block *v = self; v->stage = (sg_shader_stage)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_shader_uniform_block_get_size(sg_shader_uniform_block * self) {  sg_shader_uniform_block *v = self; return v->size; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_uniform_block_set_size(sg_shader_uniform_block * self, uint32_t value) {  sg_shader_uniform_block *v = self; v->size = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_uniform_block_get_hlsl_register_b_n(sg_shader_uniform_block * self) {  sg_shader_uniform_block *v = self; return v->hlsl_register_b_n; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_uniform_block_set_hlsl_register_b_n(sg_shader_uniform_block * self, uint8_t value) {  sg_shader_uniform_block *v = self; v->hlsl_register_b_n = (uint8_t)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_uniform_block_get_msl_buffer_n(sg_shader_uniform_block * self) {  sg_shader_uniform_block *v = self; return v->msl_buffer_n; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_uniform_block_set_msl_buffer_n(sg_shader_uniform_block * self, uint8_t value) {  sg_shader_uniform_block *v = self; v->msl_buffer_n = (uint8_t)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_uniform_block_get_wgsl_group0_binding_n(sg_shader_uniform_block * self) {  sg_shader_uniform_block *v = self; return v->wgsl_group0_binding_n; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_uniform_block_set_wgsl_group0_binding_n(sg_shader_uniform_block * self, uint8_t value) {  sg_shader_uniform_block *v = self; v->wgsl_group0_binding_n = (uint8_t)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_uniform_block_get_spirv_set0_binding_n(sg_shader_uniform_block * self) {  sg_shader_uniform_block *v = self; return v->spirv_set0_binding_n; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_uniform_block_set_spirv_set0_binding_n(sg_shader_uniform_block * self, uint8_t value) {  sg_shader_uniform_block *v = self; v->spirv_set0_binding_n = (uint8_t)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_shader_uniform_block_get_layout(sg_shader_uniform_block * self) {  sg_shader_uniform_block *v = self; return v->layout; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_uniform_block_set_layout(sg_shader_uniform_block * self, int32_t value) {  sg_shader_uniform_block *v = self; v->layout = (sg_uniform_layout)value; }
MOONBIT_FFI_EXPORT sg_glsl_shader_uniform * mb_gfx_sg_shader_uniform_block_get_glsl_uniforms(sg_shader_uniform_block * self, int32_t i0) { if (i0<0 || i0>=16) abort(); sg_shader_uniform_block *v = self; return mb_copy_sg_glsl_shader_uniform(&v->glsl_uniforms[i0]); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_uniform_block_set_glsl_uniforms(sg_shader_uniform_block * self, int32_t i0, sg_glsl_shader_uniform * value) { if (i0<0 || i0>=16) abort(); sg_shader_uniform_block *v = self; sg_glsl_shader_uniform replacement; mb_clone_sg_glsl_shader_uniform(&replacement, value); mb_drop_sg_glsl_shader_uniform(&v->glsl_uniforms[i0]); v->glsl_uniforms[i0] = replacement; }
MOONBIT_FFI_EXPORT sg_shader_texture_view * mb_gfx_sg_shader_texture_view_new(void) { return mb_new_sg_shader_texture_view(); }
MOONBIT_FFI_EXPORT sg_shader_texture_view * mb_gfx_sg_shader_texture_view_copy(sg_shader_texture_view * self) { return mb_copy_sg_shader_texture_view(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_shader_texture_view_native(sg_shader_texture_view * self) { return self; }
MOONBIT_FFI_EXPORT sg_shader_texture_view * mb_gfx_sg_shader_texture_view_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_shader_texture_view(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_shader_texture_view_get_stage(sg_shader_texture_view * self) {  sg_shader_texture_view *v = self; return v->stage; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_texture_view_set_stage(sg_shader_texture_view * self, int32_t value) {  sg_shader_texture_view *v = self; v->stage = (sg_shader_stage)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_shader_texture_view_get_image_type(sg_shader_texture_view * self) {  sg_shader_texture_view *v = self; return v->image_type; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_texture_view_set_image_type(sg_shader_texture_view * self, int32_t value) {  sg_shader_texture_view *v = self; v->image_type = (sg_image_type)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_shader_texture_view_get_sample_type(sg_shader_texture_view * self) {  sg_shader_texture_view *v = self; return v->sample_type; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_texture_view_set_sample_type(sg_shader_texture_view * self, int32_t value) {  sg_shader_texture_view *v = self; v->sample_type = (sg_image_sample_type)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_shader_texture_view_get_multisampled(sg_shader_texture_view * self) {  sg_shader_texture_view *v = self; return v->multisampled; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_texture_view_set_multisampled(sg_shader_texture_view * self, int32_t value) {  sg_shader_texture_view *v = self; v->multisampled = (bool)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_texture_view_get_hlsl_register_t_n(sg_shader_texture_view * self) {  sg_shader_texture_view *v = self; return v->hlsl_register_t_n; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_texture_view_set_hlsl_register_t_n(sg_shader_texture_view * self, uint8_t value) {  sg_shader_texture_view *v = self; v->hlsl_register_t_n = (uint8_t)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_texture_view_get_msl_texture_n(sg_shader_texture_view * self) {  sg_shader_texture_view *v = self; return v->msl_texture_n; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_texture_view_set_msl_texture_n(sg_shader_texture_view * self, uint8_t value) {  sg_shader_texture_view *v = self; v->msl_texture_n = (uint8_t)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_texture_view_get_wgsl_group1_binding_n(sg_shader_texture_view * self) {  sg_shader_texture_view *v = self; return v->wgsl_group1_binding_n; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_texture_view_set_wgsl_group1_binding_n(sg_shader_texture_view * self, uint8_t value) {  sg_shader_texture_view *v = self; v->wgsl_group1_binding_n = (uint8_t)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_texture_view_get_spirv_set1_binding_n(sg_shader_texture_view * self) {  sg_shader_texture_view *v = self; return v->spirv_set1_binding_n; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_texture_view_set_spirv_set1_binding_n(sg_shader_texture_view * self, uint8_t value) {  sg_shader_texture_view *v = self; v->spirv_set1_binding_n = (uint8_t)value; }
MOONBIT_FFI_EXPORT sg_shader_storage_buffer_view * mb_gfx_sg_shader_storage_buffer_view_new(void) { return mb_new_sg_shader_storage_buffer_view(); }
MOONBIT_FFI_EXPORT sg_shader_storage_buffer_view * mb_gfx_sg_shader_storage_buffer_view_copy(sg_shader_storage_buffer_view * self) { return mb_copy_sg_shader_storage_buffer_view(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_shader_storage_buffer_view_native(sg_shader_storage_buffer_view * self) { return self; }
MOONBIT_FFI_EXPORT sg_shader_storage_buffer_view * mb_gfx_sg_shader_storage_buffer_view_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_shader_storage_buffer_view(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_shader_storage_buffer_view_get_stage(sg_shader_storage_buffer_view * self) {  sg_shader_storage_buffer_view *v = self; return v->stage; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_storage_buffer_view_set_stage(sg_shader_storage_buffer_view * self, int32_t value) {  sg_shader_storage_buffer_view *v = self; v->stage = (sg_shader_stage)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_shader_storage_buffer_view_get_readonly(sg_shader_storage_buffer_view * self) {  sg_shader_storage_buffer_view *v = self; return v->readonly; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_storage_buffer_view_set_readonly(sg_shader_storage_buffer_view * self, int32_t value) {  sg_shader_storage_buffer_view *v = self; v->readonly = (bool)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_storage_buffer_view_get_hlsl_register_t_n(sg_shader_storage_buffer_view * self) {  sg_shader_storage_buffer_view *v = self; return v->hlsl_register_t_n; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_storage_buffer_view_set_hlsl_register_t_n(sg_shader_storage_buffer_view * self, uint8_t value) {  sg_shader_storage_buffer_view *v = self; v->hlsl_register_t_n = (uint8_t)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_storage_buffer_view_get_hlsl_register_u_n(sg_shader_storage_buffer_view * self) {  sg_shader_storage_buffer_view *v = self; return v->hlsl_register_u_n; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_storage_buffer_view_set_hlsl_register_u_n(sg_shader_storage_buffer_view * self, uint8_t value) {  sg_shader_storage_buffer_view *v = self; v->hlsl_register_u_n = (uint8_t)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_storage_buffer_view_get_msl_buffer_n(sg_shader_storage_buffer_view * self) {  sg_shader_storage_buffer_view *v = self; return v->msl_buffer_n; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_storage_buffer_view_set_msl_buffer_n(sg_shader_storage_buffer_view * self, uint8_t value) {  sg_shader_storage_buffer_view *v = self; v->msl_buffer_n = (uint8_t)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_storage_buffer_view_get_wgsl_group1_binding_n(sg_shader_storage_buffer_view * self) {  sg_shader_storage_buffer_view *v = self; return v->wgsl_group1_binding_n; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_storage_buffer_view_set_wgsl_group1_binding_n(sg_shader_storage_buffer_view * self, uint8_t value) {  sg_shader_storage_buffer_view *v = self; v->wgsl_group1_binding_n = (uint8_t)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_storage_buffer_view_get_spirv_set1_binding_n(sg_shader_storage_buffer_view * self) {  sg_shader_storage_buffer_view *v = self; return v->spirv_set1_binding_n; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_storage_buffer_view_set_spirv_set1_binding_n(sg_shader_storage_buffer_view * self, uint8_t value) {  sg_shader_storage_buffer_view *v = self; v->spirv_set1_binding_n = (uint8_t)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_storage_buffer_view_get_glsl_binding_n(sg_shader_storage_buffer_view * self) {  sg_shader_storage_buffer_view *v = self; return v->glsl_binding_n; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_storage_buffer_view_set_glsl_binding_n(sg_shader_storage_buffer_view * self, uint8_t value) {  sg_shader_storage_buffer_view *v = self; v->glsl_binding_n = (uint8_t)value; }
MOONBIT_FFI_EXPORT sg_shader_storage_image_view * mb_gfx_sg_shader_storage_image_view_new(void) { return mb_new_sg_shader_storage_image_view(); }
MOONBIT_FFI_EXPORT sg_shader_storage_image_view * mb_gfx_sg_shader_storage_image_view_copy(sg_shader_storage_image_view * self) { return mb_copy_sg_shader_storage_image_view(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_shader_storage_image_view_native(sg_shader_storage_image_view * self) { return self; }
MOONBIT_FFI_EXPORT sg_shader_storage_image_view * mb_gfx_sg_shader_storage_image_view_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_shader_storage_image_view(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_shader_storage_image_view_get_stage(sg_shader_storage_image_view * self) {  sg_shader_storage_image_view *v = self; return v->stage; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_storage_image_view_set_stage(sg_shader_storage_image_view * self, int32_t value) {  sg_shader_storage_image_view *v = self; v->stage = (sg_shader_stage)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_shader_storage_image_view_get_image_type(sg_shader_storage_image_view * self) {  sg_shader_storage_image_view *v = self; return v->image_type; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_storage_image_view_set_image_type(sg_shader_storage_image_view * self, int32_t value) {  sg_shader_storage_image_view *v = self; v->image_type = (sg_image_type)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_shader_storage_image_view_get_access_format(sg_shader_storage_image_view * self) {  sg_shader_storage_image_view *v = self; return v->access_format; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_storage_image_view_set_access_format(sg_shader_storage_image_view * self, int32_t value) {  sg_shader_storage_image_view *v = self; v->access_format = (sg_pixel_format)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_shader_storage_image_view_get_writeonly(sg_shader_storage_image_view * self) {  sg_shader_storage_image_view *v = self; return v->writeonly; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_storage_image_view_set_writeonly(sg_shader_storage_image_view * self, int32_t value) {  sg_shader_storage_image_view *v = self; v->writeonly = (bool)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_storage_image_view_get_hlsl_register_u_n(sg_shader_storage_image_view * self) {  sg_shader_storage_image_view *v = self; return v->hlsl_register_u_n; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_storage_image_view_set_hlsl_register_u_n(sg_shader_storage_image_view * self, uint8_t value) {  sg_shader_storage_image_view *v = self; v->hlsl_register_u_n = (uint8_t)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_storage_image_view_get_msl_texture_n(sg_shader_storage_image_view * self) {  sg_shader_storage_image_view *v = self; return v->msl_texture_n; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_storage_image_view_set_msl_texture_n(sg_shader_storage_image_view * self, uint8_t value) {  sg_shader_storage_image_view *v = self; v->msl_texture_n = (uint8_t)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_storage_image_view_get_wgsl_group1_binding_n(sg_shader_storage_image_view * self) {  sg_shader_storage_image_view *v = self; return v->wgsl_group1_binding_n; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_storage_image_view_set_wgsl_group1_binding_n(sg_shader_storage_image_view * self, uint8_t value) {  sg_shader_storage_image_view *v = self; v->wgsl_group1_binding_n = (uint8_t)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_storage_image_view_get_spirv_set1_binding_n(sg_shader_storage_image_view * self) {  sg_shader_storage_image_view *v = self; return v->spirv_set1_binding_n; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_storage_image_view_set_spirv_set1_binding_n(sg_shader_storage_image_view * self, uint8_t value) {  sg_shader_storage_image_view *v = self; v->spirv_set1_binding_n = (uint8_t)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_storage_image_view_get_glsl_binding_n(sg_shader_storage_image_view * self) {  sg_shader_storage_image_view *v = self; return v->glsl_binding_n; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_storage_image_view_set_glsl_binding_n(sg_shader_storage_image_view * self, uint8_t value) {  sg_shader_storage_image_view *v = self; v->glsl_binding_n = (uint8_t)value; }
MOONBIT_FFI_EXPORT sg_shader_view * mb_gfx_sg_shader_view_new(void) { return mb_new_sg_shader_view(); }
MOONBIT_FFI_EXPORT sg_shader_view * mb_gfx_sg_shader_view_copy(sg_shader_view * self) { return mb_copy_sg_shader_view(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_shader_view_native(sg_shader_view * self) { return self; }
MOONBIT_FFI_EXPORT sg_shader_view * mb_gfx_sg_shader_view_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_shader_view(ptr); }
MOONBIT_FFI_EXPORT sg_shader_texture_view * mb_gfx_sg_shader_view_get_texture(sg_shader_view * self) {  sg_shader_view *v = self; return mb_copy_sg_shader_texture_view(&v->texture); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_view_set_texture(sg_shader_view * self, sg_shader_texture_view * value) {  sg_shader_view *v = self; sg_shader_texture_view replacement; mb_clone_sg_shader_texture_view(&replacement, value); mb_drop_sg_shader_texture_view(&v->texture); v->texture = replacement; }
MOONBIT_FFI_EXPORT sg_shader_storage_buffer_view * mb_gfx_sg_shader_view_get_storage_buffer(sg_shader_view * self) {  sg_shader_view *v = self; return mb_copy_sg_shader_storage_buffer_view(&v->storage_buffer); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_view_set_storage_buffer(sg_shader_view * self, sg_shader_storage_buffer_view * value) {  sg_shader_view *v = self; sg_shader_storage_buffer_view replacement; mb_clone_sg_shader_storage_buffer_view(&replacement, value); mb_drop_sg_shader_storage_buffer_view(&v->storage_buffer); v->storage_buffer = replacement; }
MOONBIT_FFI_EXPORT sg_shader_storage_image_view * mb_gfx_sg_shader_view_get_storage_image(sg_shader_view * self) {  sg_shader_view *v = self; return mb_copy_sg_shader_storage_image_view(&v->storage_image); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_view_set_storage_image(sg_shader_view * self, sg_shader_storage_image_view * value) {  sg_shader_view *v = self; sg_shader_storage_image_view replacement; mb_clone_sg_shader_storage_image_view(&replacement, value); mb_drop_sg_shader_storage_image_view(&v->storage_image); v->storage_image = replacement; }
MOONBIT_FFI_EXPORT sg_shader_sampler * mb_gfx_sg_shader_sampler_new(void) { return mb_new_sg_shader_sampler(); }
MOONBIT_FFI_EXPORT sg_shader_sampler * mb_gfx_sg_shader_sampler_copy(sg_shader_sampler * self) { return mb_copy_sg_shader_sampler(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_shader_sampler_native(sg_shader_sampler * self) { return self; }
MOONBIT_FFI_EXPORT sg_shader_sampler * mb_gfx_sg_shader_sampler_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_shader_sampler(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_shader_sampler_get_stage(sg_shader_sampler * self) {  sg_shader_sampler *v = self; return v->stage; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_sampler_set_stage(sg_shader_sampler * self, int32_t value) {  sg_shader_sampler *v = self; v->stage = (sg_shader_stage)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_shader_sampler_get_sampler_type(sg_shader_sampler * self) {  sg_shader_sampler *v = self; return v->sampler_type; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_sampler_set_sampler_type(sg_shader_sampler * self, int32_t value) {  sg_shader_sampler *v = self; v->sampler_type = (sg_sampler_type)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_sampler_get_hlsl_register_s_n(sg_shader_sampler * self) {  sg_shader_sampler *v = self; return v->hlsl_register_s_n; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_sampler_set_hlsl_register_s_n(sg_shader_sampler * self, uint8_t value) {  sg_shader_sampler *v = self; v->hlsl_register_s_n = (uint8_t)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_sampler_get_msl_sampler_n(sg_shader_sampler * self) {  sg_shader_sampler *v = self; return v->msl_sampler_n; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_sampler_set_msl_sampler_n(sg_shader_sampler * self, uint8_t value) {  sg_shader_sampler *v = self; v->msl_sampler_n = (uint8_t)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_sampler_get_wgsl_group1_binding_n(sg_shader_sampler * self) {  sg_shader_sampler *v = self; return v->wgsl_group1_binding_n; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_sampler_set_wgsl_group1_binding_n(sg_shader_sampler * self, uint8_t value) {  sg_shader_sampler *v = self; v->wgsl_group1_binding_n = (uint8_t)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_sampler_get_spirv_set1_binding_n(sg_shader_sampler * self) {  sg_shader_sampler *v = self; return v->spirv_set1_binding_n; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_sampler_set_spirv_set1_binding_n(sg_shader_sampler * self, uint8_t value) {  sg_shader_sampler *v = self; v->spirv_set1_binding_n = (uint8_t)value; }
MOONBIT_FFI_EXPORT sg_shader_texture_sampler_pair * mb_gfx_sg_shader_texture_sampler_pair_new(void) { return mb_new_sg_shader_texture_sampler_pair(); }
MOONBIT_FFI_EXPORT sg_shader_texture_sampler_pair * mb_gfx_sg_shader_texture_sampler_pair_copy(sg_shader_texture_sampler_pair * self) { return mb_copy_sg_shader_texture_sampler_pair(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_shader_texture_sampler_pair_native(sg_shader_texture_sampler_pair * self) { return self; }
MOONBIT_FFI_EXPORT sg_shader_texture_sampler_pair * mb_gfx_sg_shader_texture_sampler_pair_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_shader_texture_sampler_pair(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_shader_texture_sampler_pair_get_stage(sg_shader_texture_sampler_pair * self) {  sg_shader_texture_sampler_pair *v = self; return v->stage; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_texture_sampler_pair_set_stage(sg_shader_texture_sampler_pair * self, int32_t value) {  sg_shader_texture_sampler_pair *v = self; v->stage = (sg_shader_stage)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_texture_sampler_pair_get_view_slot(sg_shader_texture_sampler_pair * self) {  sg_shader_texture_sampler_pair *v = self; return v->view_slot; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_texture_sampler_pair_set_view_slot(sg_shader_texture_sampler_pair * self, uint8_t value) {  sg_shader_texture_sampler_pair *v = self; v->view_slot = (uint8_t)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_shader_texture_sampler_pair_get_sampler_slot(sg_shader_texture_sampler_pair * self) {  sg_shader_texture_sampler_pair *v = self; return v->sampler_slot; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_texture_sampler_pair_set_sampler_slot(sg_shader_texture_sampler_pair * self, uint8_t value) {  sg_shader_texture_sampler_pair *v = self; v->sampler_slot = (uint8_t)value; }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_gfx_sg_shader_texture_sampler_pair_get_glsl_name(sg_shader_texture_sampler_pair * self) {  sg_shader_texture_sampler_pair *v = self; return mb_utf8(v->glsl_name); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_texture_sampler_pair_set_glsl_name(sg_shader_texture_sampler_pair * self, moonbit_bytes_t value) {  sg_shader_texture_sampler_pair *v = self; const char *replacement = mb_string((const char*)value); free((void*)v->glsl_name); v->glsl_name = replacement; }
MOONBIT_FFI_EXPORT sg_mtl_shader_threads_per_threadgroup * mb_gfx_sg_mtl_shader_threads_per_threadgroup_new(void) { return mb_new_sg_mtl_shader_threads_per_threadgroup(); }
MOONBIT_FFI_EXPORT sg_mtl_shader_threads_per_threadgroup * mb_gfx_sg_mtl_shader_threads_per_threadgroup_copy(sg_mtl_shader_threads_per_threadgroup * self) { return mb_copy_sg_mtl_shader_threads_per_threadgroup(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_mtl_shader_threads_per_threadgroup_native(sg_mtl_shader_threads_per_threadgroup * self) { return self; }
MOONBIT_FFI_EXPORT sg_mtl_shader_threads_per_threadgroup * mb_gfx_sg_mtl_shader_threads_per_threadgroup_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_mtl_shader_threads_per_threadgroup(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_mtl_shader_threads_per_threadgroup_get_x(sg_mtl_shader_threads_per_threadgroup * self) {  sg_mtl_shader_threads_per_threadgroup *v = self; return v->x; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_mtl_shader_threads_per_threadgroup_set_x(sg_mtl_shader_threads_per_threadgroup * self, int32_t value) {  sg_mtl_shader_threads_per_threadgroup *v = self; v->x = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_mtl_shader_threads_per_threadgroup_get_y(sg_mtl_shader_threads_per_threadgroup * self) {  sg_mtl_shader_threads_per_threadgroup *v = self; return v->y; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_mtl_shader_threads_per_threadgroup_set_y(sg_mtl_shader_threads_per_threadgroup * self, int32_t value) {  sg_mtl_shader_threads_per_threadgroup *v = self; v->y = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_mtl_shader_threads_per_threadgroup_get_z(sg_mtl_shader_threads_per_threadgroup * self) {  sg_mtl_shader_threads_per_threadgroup *v = self; return v->z; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_mtl_shader_threads_per_threadgroup_set_z(sg_mtl_shader_threads_per_threadgroup * self, int32_t value) {  sg_mtl_shader_threads_per_threadgroup *v = self; v->z = (int)value; }
MOONBIT_FFI_EXPORT sg_shader_desc * mb_gfx_sg_shader_desc_new(void) { return mb_new_sg_shader_desc(); }
MOONBIT_FFI_EXPORT sg_shader_desc * mb_gfx_sg_shader_desc_copy(sg_shader_desc * self) { return mb_copy_sg_shader_desc(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_shader_desc_native(sg_shader_desc * self) { return self; }
MOONBIT_FFI_EXPORT sg_shader_desc * mb_gfx_sg_shader_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_shader_desc(ptr); }
MOONBIT_FFI_EXPORT sg_shader_function * mb_gfx_sg_shader_desc_get_vertex_func(sg_shader_desc * self) {  sg_shader_desc *v = self; return mb_copy_sg_shader_function(&v->vertex_func); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_desc_set_vertex_func(sg_shader_desc * self, sg_shader_function * value) {  sg_shader_desc *v = self; sg_shader_function replacement; mb_clone_sg_shader_function(&replacement, value); mb_drop_sg_shader_function(&v->vertex_func); v->vertex_func = replacement; }
MOONBIT_FFI_EXPORT sg_shader_function * mb_gfx_sg_shader_desc_get_fragment_func(sg_shader_desc * self) {  sg_shader_desc *v = self; return mb_copy_sg_shader_function(&v->fragment_func); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_desc_set_fragment_func(sg_shader_desc * self, sg_shader_function * value) {  sg_shader_desc *v = self; sg_shader_function replacement; mb_clone_sg_shader_function(&replacement, value); mb_drop_sg_shader_function(&v->fragment_func); v->fragment_func = replacement; }
MOONBIT_FFI_EXPORT sg_shader_function * mb_gfx_sg_shader_desc_get_compute_func(sg_shader_desc * self) {  sg_shader_desc *v = self; return mb_copy_sg_shader_function(&v->compute_func); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_desc_set_compute_func(sg_shader_desc * self, sg_shader_function * value) {  sg_shader_desc *v = self; sg_shader_function replacement; mb_clone_sg_shader_function(&replacement, value); mb_drop_sg_shader_function(&v->compute_func); v->compute_func = replacement; }
MOONBIT_FFI_EXPORT sg_shader_vertex_attr * mb_gfx_sg_shader_desc_get_attrs(sg_shader_desc * self, int32_t i0) { if (i0<0 || i0>=16) abort(); sg_shader_desc *v = self; return mb_copy_sg_shader_vertex_attr(&v->attrs[i0]); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_desc_set_attrs(sg_shader_desc * self, int32_t i0, sg_shader_vertex_attr * value) { if (i0<0 || i0>=16) abort(); sg_shader_desc *v = self; sg_shader_vertex_attr replacement; mb_clone_sg_shader_vertex_attr(&replacement, value); mb_drop_sg_shader_vertex_attr(&v->attrs[i0]); v->attrs[i0] = replacement; }
MOONBIT_FFI_EXPORT sg_shader_uniform_block * mb_gfx_sg_shader_desc_get_uniform_blocks(sg_shader_desc * self, int32_t i0) { if (i0<0 || i0>=8) abort(); sg_shader_desc *v = self; return mb_copy_sg_shader_uniform_block(&v->uniform_blocks[i0]); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_desc_set_uniform_blocks(sg_shader_desc * self, int32_t i0, sg_shader_uniform_block * value) { if (i0<0 || i0>=8) abort(); sg_shader_desc *v = self; sg_shader_uniform_block replacement; mb_clone_sg_shader_uniform_block(&replacement, value); mb_drop_sg_shader_uniform_block(&v->uniform_blocks[i0]); v->uniform_blocks[i0] = replacement; }
MOONBIT_FFI_EXPORT sg_shader_view * mb_gfx_sg_shader_desc_get_views(sg_shader_desc * self, int32_t i0) { if (i0<0 || i0>=32) abort(); sg_shader_desc *v = self; return mb_copy_sg_shader_view(&v->views[i0]); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_desc_set_views(sg_shader_desc * self, int32_t i0, sg_shader_view * value) { if (i0<0 || i0>=32) abort(); sg_shader_desc *v = self; sg_shader_view replacement; mb_clone_sg_shader_view(&replacement, value); mb_drop_sg_shader_view(&v->views[i0]); v->views[i0] = replacement; }
MOONBIT_FFI_EXPORT sg_shader_sampler * mb_gfx_sg_shader_desc_get_samplers(sg_shader_desc * self, int32_t i0) { if (i0<0 || i0>=14) abort(); sg_shader_desc *v = self; return mb_copy_sg_shader_sampler(&v->samplers[i0]); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_desc_set_samplers(sg_shader_desc * self, int32_t i0, sg_shader_sampler * value) { if (i0<0 || i0>=14) abort(); sg_shader_desc *v = self; sg_shader_sampler replacement; mb_clone_sg_shader_sampler(&replacement, value); mb_drop_sg_shader_sampler(&v->samplers[i0]); v->samplers[i0] = replacement; }
MOONBIT_FFI_EXPORT sg_shader_texture_sampler_pair * mb_gfx_sg_shader_desc_get_texture_sampler_pairs(sg_shader_desc * self, int32_t i0) { if (i0<0 || i0>=32) abort(); sg_shader_desc *v = self; return mb_copy_sg_shader_texture_sampler_pair(&v->texture_sampler_pairs[i0]); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_desc_set_texture_sampler_pairs(sg_shader_desc * self, int32_t i0, sg_shader_texture_sampler_pair * value) { if (i0<0 || i0>=32) abort(); sg_shader_desc *v = self; sg_shader_texture_sampler_pair replacement; mb_clone_sg_shader_texture_sampler_pair(&replacement, value); mb_drop_sg_shader_texture_sampler_pair(&v->texture_sampler_pairs[i0]); v->texture_sampler_pairs[i0] = replacement; }
MOONBIT_FFI_EXPORT sg_mtl_shader_threads_per_threadgroup * mb_gfx_sg_shader_desc_get_mtl_threads_per_threadgroup(sg_shader_desc * self) {  sg_shader_desc *v = self; return mb_copy_sg_mtl_shader_threads_per_threadgroup(&v->mtl_threads_per_threadgroup); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_desc_set_mtl_threads_per_threadgroup(sg_shader_desc * self, sg_mtl_shader_threads_per_threadgroup * value) {  sg_shader_desc *v = self; sg_mtl_shader_threads_per_threadgroup replacement; mb_clone_sg_mtl_shader_threads_per_threadgroup(&replacement, value); mb_drop_sg_mtl_shader_threads_per_threadgroup(&v->mtl_threads_per_threadgroup); v->mtl_threads_per_threadgroup = replacement; }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_gfx_sg_shader_desc_get_label(sg_shader_desc * self) {  sg_shader_desc *v = self; return mb_utf8(v->label); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_desc_set_label(sg_shader_desc * self, moonbit_bytes_t value) {  sg_shader_desc *v = self; const char *replacement = mb_string((const char*)value); free((void*)v->label); v->label = replacement; }
MOONBIT_FFI_EXPORT sg_vertex_buffer_layout_state * mb_gfx_sg_vertex_buffer_layout_state_new(void) { return mb_new_sg_vertex_buffer_layout_state(); }
MOONBIT_FFI_EXPORT sg_vertex_buffer_layout_state * mb_gfx_sg_vertex_buffer_layout_state_copy(sg_vertex_buffer_layout_state * self) { return mb_copy_sg_vertex_buffer_layout_state(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_vertex_buffer_layout_state_native(sg_vertex_buffer_layout_state * self) { return self; }
MOONBIT_FFI_EXPORT sg_vertex_buffer_layout_state * mb_gfx_sg_vertex_buffer_layout_state_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_vertex_buffer_layout_state(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_vertex_buffer_layout_state_get_stride(sg_vertex_buffer_layout_state * self) {  sg_vertex_buffer_layout_state *v = self; return v->stride; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vertex_buffer_layout_state_set_stride(sg_vertex_buffer_layout_state * self, int32_t value) {  sg_vertex_buffer_layout_state *v = self; v->stride = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_vertex_buffer_layout_state_get_step_func(sg_vertex_buffer_layout_state * self) {  sg_vertex_buffer_layout_state *v = self; return v->step_func; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vertex_buffer_layout_state_set_step_func(sg_vertex_buffer_layout_state * self, int32_t value) {  sg_vertex_buffer_layout_state *v = self; v->step_func = (sg_vertex_step)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_vertex_buffer_layout_state_get_step_rate(sg_vertex_buffer_layout_state * self) {  sg_vertex_buffer_layout_state *v = self; return v->step_rate; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vertex_buffer_layout_state_set_step_rate(sg_vertex_buffer_layout_state * self, int32_t value) {  sg_vertex_buffer_layout_state *v = self; v->step_rate = (int)value; }
MOONBIT_FFI_EXPORT sg_vertex_attr_state * mb_gfx_sg_vertex_attr_state_new(void) { return mb_new_sg_vertex_attr_state(); }
MOONBIT_FFI_EXPORT sg_vertex_attr_state * mb_gfx_sg_vertex_attr_state_copy(sg_vertex_attr_state * self) { return mb_copy_sg_vertex_attr_state(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_vertex_attr_state_native(sg_vertex_attr_state * self) { return self; }
MOONBIT_FFI_EXPORT sg_vertex_attr_state * mb_gfx_sg_vertex_attr_state_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_vertex_attr_state(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_vertex_attr_state_get_buffer_index(sg_vertex_attr_state * self) {  sg_vertex_attr_state *v = self; return v->buffer_index; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vertex_attr_state_set_buffer_index(sg_vertex_attr_state * self, int32_t value) {  sg_vertex_attr_state *v = self; v->buffer_index = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_vertex_attr_state_get_offset(sg_vertex_attr_state * self) {  sg_vertex_attr_state *v = self; return v->offset; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vertex_attr_state_set_offset(sg_vertex_attr_state * self, int32_t value) {  sg_vertex_attr_state *v = self; v->offset = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_vertex_attr_state_get_format(sg_vertex_attr_state * self) {  sg_vertex_attr_state *v = self; return v->format; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vertex_attr_state_set_format(sg_vertex_attr_state * self, int32_t value) {  sg_vertex_attr_state *v = self; v->format = (sg_vertex_format)value; }
MOONBIT_FFI_EXPORT sg_vertex_layout_state * mb_gfx_sg_vertex_layout_state_new(void) { return mb_new_sg_vertex_layout_state(); }
MOONBIT_FFI_EXPORT sg_vertex_layout_state * mb_gfx_sg_vertex_layout_state_copy(sg_vertex_layout_state * self) { return mb_copy_sg_vertex_layout_state(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_vertex_layout_state_native(sg_vertex_layout_state * self) { return self; }
MOONBIT_FFI_EXPORT sg_vertex_layout_state * mb_gfx_sg_vertex_layout_state_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_vertex_layout_state(ptr); }
MOONBIT_FFI_EXPORT sg_vertex_buffer_layout_state * mb_gfx_sg_vertex_layout_state_get_buffers(sg_vertex_layout_state * self, int32_t i0) { if (i0<0 || i0>=8) abort(); sg_vertex_layout_state *v = self; return mb_copy_sg_vertex_buffer_layout_state(&v->buffers[i0]); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vertex_layout_state_set_buffers(sg_vertex_layout_state * self, int32_t i0, sg_vertex_buffer_layout_state * value) { if (i0<0 || i0>=8) abort(); sg_vertex_layout_state *v = self; sg_vertex_buffer_layout_state replacement; mb_clone_sg_vertex_buffer_layout_state(&replacement, value); mb_drop_sg_vertex_buffer_layout_state(&v->buffers[i0]); v->buffers[i0] = replacement; }
MOONBIT_FFI_EXPORT sg_vertex_attr_state * mb_gfx_sg_vertex_layout_state_get_attrs(sg_vertex_layout_state * self, int32_t i0) { if (i0<0 || i0>=16) abort(); sg_vertex_layout_state *v = self; return mb_copy_sg_vertex_attr_state(&v->attrs[i0]); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vertex_layout_state_set_attrs(sg_vertex_layout_state * self, int32_t i0, sg_vertex_attr_state * value) { if (i0<0 || i0>=16) abort(); sg_vertex_layout_state *v = self; sg_vertex_attr_state replacement; mb_clone_sg_vertex_attr_state(&replacement, value); mb_drop_sg_vertex_attr_state(&v->attrs[i0]); v->attrs[i0] = replacement; }
MOONBIT_FFI_EXPORT sg_stencil_face_state * mb_gfx_sg_stencil_face_state_new(void) { return mb_new_sg_stencil_face_state(); }
MOONBIT_FFI_EXPORT sg_stencil_face_state * mb_gfx_sg_stencil_face_state_copy(sg_stencil_face_state * self) { return mb_copy_sg_stencil_face_state(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_stencil_face_state_native(sg_stencil_face_state * self) { return self; }
MOONBIT_FFI_EXPORT sg_stencil_face_state * mb_gfx_sg_stencil_face_state_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_stencil_face_state(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_stencil_face_state_get_compare(sg_stencil_face_state * self) {  sg_stencil_face_state *v = self; return v->compare; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_stencil_face_state_set_compare(sg_stencil_face_state * self, int32_t value) {  sg_stencil_face_state *v = self; v->compare = (sg_compare_func)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_stencil_face_state_get_fail_op(sg_stencil_face_state * self) {  sg_stencil_face_state *v = self; return v->fail_op; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_stencil_face_state_set_fail_op(sg_stencil_face_state * self, int32_t value) {  sg_stencil_face_state *v = self; v->fail_op = (sg_stencil_op)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_stencil_face_state_get_depth_fail_op(sg_stencil_face_state * self) {  sg_stencil_face_state *v = self; return v->depth_fail_op; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_stencil_face_state_set_depth_fail_op(sg_stencil_face_state * self, int32_t value) {  sg_stencil_face_state *v = self; v->depth_fail_op = (sg_stencil_op)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_stencil_face_state_get_pass_op(sg_stencil_face_state * self) {  sg_stencil_face_state *v = self; return v->pass_op; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_stencil_face_state_set_pass_op(sg_stencil_face_state * self, int32_t value) {  sg_stencil_face_state *v = self; v->pass_op = (sg_stencil_op)value; }
MOONBIT_FFI_EXPORT sg_stencil_state * mb_gfx_sg_stencil_state_new(void) { return mb_new_sg_stencil_state(); }
MOONBIT_FFI_EXPORT sg_stencil_state * mb_gfx_sg_stencil_state_copy(sg_stencil_state * self) { return mb_copy_sg_stencil_state(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_stencil_state_native(sg_stencil_state * self) { return self; }
MOONBIT_FFI_EXPORT sg_stencil_state * mb_gfx_sg_stencil_state_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_stencil_state(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_stencil_state_get_enabled(sg_stencil_state * self) {  sg_stencil_state *v = self; return v->enabled; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_stencil_state_set_enabled(sg_stencil_state * self, int32_t value) {  sg_stencil_state *v = self; v->enabled = (bool)value; }
MOONBIT_FFI_EXPORT sg_stencil_face_state * mb_gfx_sg_stencil_state_get_front(sg_stencil_state * self) {  sg_stencil_state *v = self; return mb_copy_sg_stencil_face_state(&v->front); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_stencil_state_set_front(sg_stencil_state * self, sg_stencil_face_state * value) {  sg_stencil_state *v = self; sg_stencil_face_state replacement; mb_clone_sg_stencil_face_state(&replacement, value); mb_drop_sg_stencil_face_state(&v->front); v->front = replacement; }
MOONBIT_FFI_EXPORT sg_stencil_face_state * mb_gfx_sg_stencil_state_get_back(sg_stencil_state * self) {  sg_stencil_state *v = self; return mb_copy_sg_stencil_face_state(&v->back); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_stencil_state_set_back(sg_stencil_state * self, sg_stencil_face_state * value) {  sg_stencil_state *v = self; sg_stencil_face_state replacement; mb_clone_sg_stencil_face_state(&replacement, value); mb_drop_sg_stencil_face_state(&v->back); v->back = replacement; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_stencil_state_get_read_mask(sg_stencil_state * self) {  sg_stencil_state *v = self; return v->read_mask; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_stencil_state_set_read_mask(sg_stencil_state * self, uint8_t value) {  sg_stencil_state *v = self; v->read_mask = (uint8_t)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_stencil_state_get_write_mask(sg_stencil_state * self) {  sg_stencil_state *v = self; return v->write_mask; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_stencil_state_set_write_mask(sg_stencil_state * self, uint8_t value) {  sg_stencil_state *v = self; v->write_mask = (uint8_t)value; }
MOONBIT_FFI_EXPORT uint8_t mb_gfx_sg_stencil_state_get_ref(sg_stencil_state * self) {  sg_stencil_state *v = self; return v->ref; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_stencil_state_set_ref(sg_stencil_state * self, uint8_t value) {  sg_stencil_state *v = self; v->ref = (uint8_t)value; }
MOONBIT_FFI_EXPORT sg_depth_state * mb_gfx_sg_depth_state_new(void) { return mb_new_sg_depth_state(); }
MOONBIT_FFI_EXPORT sg_depth_state * mb_gfx_sg_depth_state_copy(sg_depth_state * self) { return mb_copy_sg_depth_state(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_depth_state_native(sg_depth_state * self) { return self; }
MOONBIT_FFI_EXPORT sg_depth_state * mb_gfx_sg_depth_state_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_depth_state(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_depth_state_get_pixel_format(sg_depth_state * self) {  sg_depth_state *v = self; return v->pixel_format; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_depth_state_set_pixel_format(sg_depth_state * self, int32_t value) {  sg_depth_state *v = self; v->pixel_format = (sg_pixel_format)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_depth_state_get_compare(sg_depth_state * self) {  sg_depth_state *v = self; return v->compare; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_depth_state_set_compare(sg_depth_state * self, int32_t value) {  sg_depth_state *v = self; v->compare = (sg_compare_func)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_depth_state_get_write_enabled(sg_depth_state * self) {  sg_depth_state *v = self; return v->write_enabled; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_depth_state_set_write_enabled(sg_depth_state * self, int32_t value) {  sg_depth_state *v = self; v->write_enabled = (bool)value; }
MOONBIT_FFI_EXPORT float mb_gfx_sg_depth_state_get_bias(sg_depth_state * self) {  sg_depth_state *v = self; return v->bias; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_depth_state_set_bias(sg_depth_state * self, float value) {  sg_depth_state *v = self; v->bias = (float)value; }
MOONBIT_FFI_EXPORT float mb_gfx_sg_depth_state_get_bias_slope_scale(sg_depth_state * self) {  sg_depth_state *v = self; return v->bias_slope_scale; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_depth_state_set_bias_slope_scale(sg_depth_state * self, float value) {  sg_depth_state *v = self; v->bias_slope_scale = (float)value; }
MOONBIT_FFI_EXPORT float mb_gfx_sg_depth_state_get_bias_clamp(sg_depth_state * self) {  sg_depth_state *v = self; return v->bias_clamp; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_depth_state_set_bias_clamp(sg_depth_state * self, float value) {  sg_depth_state *v = self; v->bias_clamp = (float)value; }
MOONBIT_FFI_EXPORT sg_blend_state * mb_gfx_sg_blend_state_new(void) { return mb_new_sg_blend_state(); }
MOONBIT_FFI_EXPORT sg_blend_state * mb_gfx_sg_blend_state_copy(sg_blend_state * self) { return mb_copy_sg_blend_state(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_blend_state_native(sg_blend_state * self) { return self; }
MOONBIT_FFI_EXPORT sg_blend_state * mb_gfx_sg_blend_state_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_blend_state(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_blend_state_get_enabled(sg_blend_state * self) {  sg_blend_state *v = self; return v->enabled; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_blend_state_set_enabled(sg_blend_state * self, int32_t value) {  sg_blend_state *v = self; v->enabled = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_blend_state_get_src_factor_rgb(sg_blend_state * self) {  sg_blend_state *v = self; return v->src_factor_rgb; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_blend_state_set_src_factor_rgb(sg_blend_state * self, int32_t value) {  sg_blend_state *v = self; v->src_factor_rgb = (sg_blend_factor)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_blend_state_get_dst_factor_rgb(sg_blend_state * self) {  sg_blend_state *v = self; return v->dst_factor_rgb; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_blend_state_set_dst_factor_rgb(sg_blend_state * self, int32_t value) {  sg_blend_state *v = self; v->dst_factor_rgb = (sg_blend_factor)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_blend_state_get_op_rgb(sg_blend_state * self) {  sg_blend_state *v = self; return v->op_rgb; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_blend_state_set_op_rgb(sg_blend_state * self, int32_t value) {  sg_blend_state *v = self; v->op_rgb = (sg_blend_op)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_blend_state_get_src_factor_alpha(sg_blend_state * self) {  sg_blend_state *v = self; return v->src_factor_alpha; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_blend_state_set_src_factor_alpha(sg_blend_state * self, int32_t value) {  sg_blend_state *v = self; v->src_factor_alpha = (sg_blend_factor)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_blend_state_get_dst_factor_alpha(sg_blend_state * self) {  sg_blend_state *v = self; return v->dst_factor_alpha; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_blend_state_set_dst_factor_alpha(sg_blend_state * self, int32_t value) {  sg_blend_state *v = self; v->dst_factor_alpha = (sg_blend_factor)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_blend_state_get_op_alpha(sg_blend_state * self) {  sg_blend_state *v = self; return v->op_alpha; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_blend_state_set_op_alpha(sg_blend_state * self, int32_t value) {  sg_blend_state *v = self; v->op_alpha = (sg_blend_op)value; }
MOONBIT_FFI_EXPORT sg_color_target_state * mb_gfx_sg_color_target_state_new(void) { return mb_new_sg_color_target_state(); }
MOONBIT_FFI_EXPORT sg_color_target_state * mb_gfx_sg_color_target_state_copy(sg_color_target_state * self) { return mb_copy_sg_color_target_state(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_color_target_state_native(sg_color_target_state * self) { return self; }
MOONBIT_FFI_EXPORT sg_color_target_state * mb_gfx_sg_color_target_state_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_color_target_state(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_color_target_state_get_pixel_format(sg_color_target_state * self) {  sg_color_target_state *v = self; return v->pixel_format; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_color_target_state_set_pixel_format(sg_color_target_state * self, int32_t value) {  sg_color_target_state *v = self; v->pixel_format = (sg_pixel_format)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_color_target_state_get_write_mask(sg_color_target_state * self) {  sg_color_target_state *v = self; return v->write_mask; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_color_target_state_set_write_mask(sg_color_target_state * self, int32_t value) {  sg_color_target_state *v = self; v->write_mask = (sg_color_mask)value; }
MOONBIT_FFI_EXPORT sg_blend_state * mb_gfx_sg_color_target_state_get_blend(sg_color_target_state * self) {  sg_color_target_state *v = self; return mb_copy_sg_blend_state(&v->blend); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_color_target_state_set_blend(sg_color_target_state * self, sg_blend_state * value) {  sg_color_target_state *v = self; sg_blend_state replacement; mb_clone_sg_blend_state(&replacement, value); mb_drop_sg_blend_state(&v->blend); v->blend = replacement; }
MOONBIT_FFI_EXPORT sg_pipeline_desc * mb_gfx_sg_pipeline_desc_new(void) { return mb_new_sg_pipeline_desc(); }
MOONBIT_FFI_EXPORT sg_pipeline_desc * mb_gfx_sg_pipeline_desc_copy(sg_pipeline_desc * self) { return mb_copy_sg_pipeline_desc(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_pipeline_desc_native(sg_pipeline_desc * self) { return self; }
MOONBIT_FFI_EXPORT sg_pipeline_desc * mb_gfx_sg_pipeline_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_pipeline_desc(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_pipeline_desc_get_compute(sg_pipeline_desc * self) {  sg_pipeline_desc *v = self; return v->compute; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pipeline_desc_set_compute(sg_pipeline_desc * self, int32_t value) {  sg_pipeline_desc *v = self; v->compute = (bool)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_pipeline_desc_get_shader(sg_pipeline_desc * self) {  sg_pipeline_desc *v = self; return v->shader.id; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pipeline_desc_set_shader(sg_pipeline_desc * self, uint32_t value) {  sg_pipeline_desc *v = self; v->shader = (sg_shader){ .id = value }; }
MOONBIT_FFI_EXPORT sg_vertex_layout_state * mb_gfx_sg_pipeline_desc_get_layout(sg_pipeline_desc * self) {  sg_pipeline_desc *v = self; return mb_copy_sg_vertex_layout_state(&v->layout); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pipeline_desc_set_layout(sg_pipeline_desc * self, sg_vertex_layout_state * value) {  sg_pipeline_desc *v = self; sg_vertex_layout_state replacement; mb_clone_sg_vertex_layout_state(&replacement, value); mb_drop_sg_vertex_layout_state(&v->layout); v->layout = replacement; }
MOONBIT_FFI_EXPORT sg_depth_state * mb_gfx_sg_pipeline_desc_get_depth(sg_pipeline_desc * self) {  sg_pipeline_desc *v = self; return mb_copy_sg_depth_state(&v->depth); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pipeline_desc_set_depth(sg_pipeline_desc * self, sg_depth_state * value) {  sg_pipeline_desc *v = self; sg_depth_state replacement; mb_clone_sg_depth_state(&replacement, value); mb_drop_sg_depth_state(&v->depth); v->depth = replacement; }
MOONBIT_FFI_EXPORT sg_stencil_state * mb_gfx_sg_pipeline_desc_get_stencil(sg_pipeline_desc * self) {  sg_pipeline_desc *v = self; return mb_copy_sg_stencil_state(&v->stencil); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pipeline_desc_set_stencil(sg_pipeline_desc * self, sg_stencil_state * value) {  sg_pipeline_desc *v = self; sg_stencil_state replacement; mb_clone_sg_stencil_state(&replacement, value); mb_drop_sg_stencil_state(&v->stencil); v->stencil = replacement; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_pipeline_desc_get_color_count(sg_pipeline_desc * self) {  sg_pipeline_desc *v = self; return v->color_count; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pipeline_desc_set_color_count(sg_pipeline_desc * self, int32_t value) {  sg_pipeline_desc *v = self; v->color_count = (int)value; }
MOONBIT_FFI_EXPORT sg_color_target_state * mb_gfx_sg_pipeline_desc_get_colors(sg_pipeline_desc * self, int32_t i0) { if (i0<0 || i0>=8) abort(); sg_pipeline_desc *v = self; return mb_copy_sg_color_target_state(&v->colors[i0]); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pipeline_desc_set_colors(sg_pipeline_desc * self, int32_t i0, sg_color_target_state * value) { if (i0<0 || i0>=8) abort(); sg_pipeline_desc *v = self; sg_color_target_state replacement; mb_clone_sg_color_target_state(&replacement, value); mb_drop_sg_color_target_state(&v->colors[i0]); v->colors[i0] = replacement; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_pipeline_desc_get_primitive_type(sg_pipeline_desc * self) {  sg_pipeline_desc *v = self; return v->primitive_type; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pipeline_desc_set_primitive_type(sg_pipeline_desc * self, int32_t value) {  sg_pipeline_desc *v = self; v->primitive_type = (sg_primitive_type)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_pipeline_desc_get_index_type(sg_pipeline_desc * self) {  sg_pipeline_desc *v = self; return v->index_type; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pipeline_desc_set_index_type(sg_pipeline_desc * self, int32_t value) {  sg_pipeline_desc *v = self; v->index_type = (sg_index_type)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_pipeline_desc_get_cull_mode(sg_pipeline_desc * self) {  sg_pipeline_desc *v = self; return v->cull_mode; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pipeline_desc_set_cull_mode(sg_pipeline_desc * self, int32_t value) {  sg_pipeline_desc *v = self; v->cull_mode = (sg_cull_mode)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_pipeline_desc_get_face_winding(sg_pipeline_desc * self) {  sg_pipeline_desc *v = self; return v->face_winding; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pipeline_desc_set_face_winding(sg_pipeline_desc * self, int32_t value) {  sg_pipeline_desc *v = self; v->face_winding = (sg_face_winding)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_pipeline_desc_get_sample_count(sg_pipeline_desc * self) {  sg_pipeline_desc *v = self; return v->sample_count; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pipeline_desc_set_sample_count(sg_pipeline_desc * self, int32_t value) {  sg_pipeline_desc *v = self; v->sample_count = (int)value; }
MOONBIT_FFI_EXPORT sg_color * mb_gfx_sg_pipeline_desc_get_blend_color(sg_pipeline_desc * self) {  sg_pipeline_desc *v = self; return mb_copy_sg_color(&v->blend_color); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pipeline_desc_set_blend_color(sg_pipeline_desc * self, sg_color * value) {  sg_pipeline_desc *v = self; sg_color replacement; mb_clone_sg_color(&replacement, value); mb_drop_sg_color(&v->blend_color); v->blend_color = replacement; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_pipeline_desc_get_alpha_to_coverage_enabled(sg_pipeline_desc * self) {  sg_pipeline_desc *v = self; return v->alpha_to_coverage_enabled; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pipeline_desc_set_alpha_to_coverage_enabled(sg_pipeline_desc * self, int32_t value) {  sg_pipeline_desc *v = self; v->alpha_to_coverage_enabled = (bool)value; }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_gfx_sg_pipeline_desc_get_label(sg_pipeline_desc * self) {  sg_pipeline_desc *v = self; return mb_utf8(v->label); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pipeline_desc_set_label(sg_pipeline_desc * self, moonbit_bytes_t value) {  sg_pipeline_desc *v = self; const char *replacement = mb_string((const char*)value); free((void*)v->label); v->label = replacement; }
MOONBIT_FFI_EXPORT sg_buffer_view_desc * mb_gfx_sg_buffer_view_desc_new(void) { return mb_new_sg_buffer_view_desc(); }
MOONBIT_FFI_EXPORT sg_buffer_view_desc * mb_gfx_sg_buffer_view_desc_copy(sg_buffer_view_desc * self) { return mb_copy_sg_buffer_view_desc(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_buffer_view_desc_native(sg_buffer_view_desc * self) { return self; }
MOONBIT_FFI_EXPORT sg_buffer_view_desc * mb_gfx_sg_buffer_view_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_buffer_view_desc(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_buffer_view_desc_get_buffer(sg_buffer_view_desc * self) {  sg_buffer_view_desc *v = self; return v->buffer.id; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_view_desc_set_buffer(sg_buffer_view_desc * self, uint32_t value) {  sg_buffer_view_desc *v = self; v->buffer = (sg_buffer){ .id = value }; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_buffer_view_desc_get_offset(sg_buffer_view_desc * self) {  sg_buffer_view_desc *v = self; return v->offset; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_view_desc_set_offset(sg_buffer_view_desc * self, int32_t value) {  sg_buffer_view_desc *v = self; v->offset = (int)value; }
MOONBIT_FFI_EXPORT sg_image_view_desc * mb_gfx_sg_image_view_desc_new(void) { return mb_new_sg_image_view_desc(); }
MOONBIT_FFI_EXPORT sg_image_view_desc * mb_gfx_sg_image_view_desc_copy(sg_image_view_desc * self) { return mb_copy_sg_image_view_desc(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_image_view_desc_native(sg_image_view_desc * self) { return self; }
MOONBIT_FFI_EXPORT sg_image_view_desc * mb_gfx_sg_image_view_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_image_view_desc(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_image_view_desc_get_image(sg_image_view_desc * self) {  sg_image_view_desc *v = self; return v->image.id; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_view_desc_set_image(sg_image_view_desc * self, uint32_t value) {  sg_image_view_desc *v = self; v->image = (sg_image){ .id = value }; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_view_desc_get_mip_level(sg_image_view_desc * self) {  sg_image_view_desc *v = self; return v->mip_level; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_view_desc_set_mip_level(sg_image_view_desc * self, int32_t value) {  sg_image_view_desc *v = self; v->mip_level = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_view_desc_get_slice(sg_image_view_desc * self) {  sg_image_view_desc *v = self; return v->slice; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_view_desc_set_slice(sg_image_view_desc * self, int32_t value) {  sg_image_view_desc *v = self; v->slice = (int)value; }
MOONBIT_FFI_EXPORT sg_texture_view_range * mb_gfx_sg_texture_view_range_new(void) { return mb_new_sg_texture_view_range(); }
MOONBIT_FFI_EXPORT sg_texture_view_range * mb_gfx_sg_texture_view_range_copy(sg_texture_view_range * self) { return mb_copy_sg_texture_view_range(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_texture_view_range_native(sg_texture_view_range * self) { return self; }
MOONBIT_FFI_EXPORT sg_texture_view_range * mb_gfx_sg_texture_view_range_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_texture_view_range(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_texture_view_range_get_base(sg_texture_view_range * self) {  sg_texture_view_range *v = self; return v->base; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_texture_view_range_set_base(sg_texture_view_range * self, int32_t value) {  sg_texture_view_range *v = self; v->base = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_texture_view_range_get_count(sg_texture_view_range * self) {  sg_texture_view_range *v = self; return v->count; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_texture_view_range_set_count(sg_texture_view_range * self, int32_t value) {  sg_texture_view_range *v = self; v->count = (int)value; }
MOONBIT_FFI_EXPORT sg_texture_view_desc * mb_gfx_sg_texture_view_desc_new(void) { return mb_new_sg_texture_view_desc(); }
MOONBIT_FFI_EXPORT sg_texture_view_desc * mb_gfx_sg_texture_view_desc_copy(sg_texture_view_desc * self) { return mb_copy_sg_texture_view_desc(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_texture_view_desc_native(sg_texture_view_desc * self) { return self; }
MOONBIT_FFI_EXPORT sg_texture_view_desc * mb_gfx_sg_texture_view_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_texture_view_desc(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_texture_view_desc_get_image(sg_texture_view_desc * self) {  sg_texture_view_desc *v = self; return v->image.id; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_texture_view_desc_set_image(sg_texture_view_desc * self, uint32_t value) {  sg_texture_view_desc *v = self; v->image = (sg_image){ .id = value }; }
MOONBIT_FFI_EXPORT sg_texture_view_range * mb_gfx_sg_texture_view_desc_get_mip_levels(sg_texture_view_desc * self) {  sg_texture_view_desc *v = self; return mb_copy_sg_texture_view_range(&v->mip_levels); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_texture_view_desc_set_mip_levels(sg_texture_view_desc * self, sg_texture_view_range * value) {  sg_texture_view_desc *v = self; sg_texture_view_range replacement; mb_clone_sg_texture_view_range(&replacement, value); mb_drop_sg_texture_view_range(&v->mip_levels); v->mip_levels = replacement; }
MOONBIT_FFI_EXPORT sg_texture_view_range * mb_gfx_sg_texture_view_desc_get_slices(sg_texture_view_desc * self) {  sg_texture_view_desc *v = self; return mb_copy_sg_texture_view_range(&v->slices); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_texture_view_desc_set_slices(sg_texture_view_desc * self, sg_texture_view_range * value) {  sg_texture_view_desc *v = self; sg_texture_view_range replacement; mb_clone_sg_texture_view_range(&replacement, value); mb_drop_sg_texture_view_range(&v->slices); v->slices = replacement; }
MOONBIT_FFI_EXPORT sg_view_desc * mb_gfx_sg_view_desc_new(void) { return mb_new_sg_view_desc(); }
MOONBIT_FFI_EXPORT sg_view_desc * mb_gfx_sg_view_desc_copy(sg_view_desc * self) { return mb_copy_sg_view_desc(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_view_desc_native(sg_view_desc * self) { return self; }
MOONBIT_FFI_EXPORT sg_view_desc * mb_gfx_sg_view_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_view_desc(ptr); }
MOONBIT_FFI_EXPORT sg_texture_view_desc * mb_gfx_sg_view_desc_get_texture(sg_view_desc * self) {  sg_view_desc *v = self; return mb_copy_sg_texture_view_desc(&v->texture); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_view_desc_set_texture(sg_view_desc * self, sg_texture_view_desc * value) {  sg_view_desc *v = self; sg_texture_view_desc replacement; mb_clone_sg_texture_view_desc(&replacement, value); mb_drop_sg_texture_view_desc(&v->texture); v->texture = replacement; }
MOONBIT_FFI_EXPORT sg_buffer_view_desc * mb_gfx_sg_view_desc_get_storage_buffer(sg_view_desc * self) {  sg_view_desc *v = self; return mb_copy_sg_buffer_view_desc(&v->storage_buffer); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_view_desc_set_storage_buffer(sg_view_desc * self, sg_buffer_view_desc * value) {  sg_view_desc *v = self; sg_buffer_view_desc replacement; mb_clone_sg_buffer_view_desc(&replacement, value); mb_drop_sg_buffer_view_desc(&v->storage_buffer); v->storage_buffer = replacement; }
MOONBIT_FFI_EXPORT sg_image_view_desc * mb_gfx_sg_view_desc_get_storage_image(sg_view_desc * self) {  sg_view_desc *v = self; return mb_copy_sg_image_view_desc(&v->storage_image); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_view_desc_set_storage_image(sg_view_desc * self, sg_image_view_desc * value) {  sg_view_desc *v = self; sg_image_view_desc replacement; mb_clone_sg_image_view_desc(&replacement, value); mb_drop_sg_image_view_desc(&v->storage_image); v->storage_image = replacement; }
MOONBIT_FFI_EXPORT sg_image_view_desc * mb_gfx_sg_view_desc_get_color_attachment(sg_view_desc * self) {  sg_view_desc *v = self; return mb_copy_sg_image_view_desc(&v->color_attachment); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_view_desc_set_color_attachment(sg_view_desc * self, sg_image_view_desc * value) {  sg_view_desc *v = self; sg_image_view_desc replacement; mb_clone_sg_image_view_desc(&replacement, value); mb_drop_sg_image_view_desc(&v->color_attachment); v->color_attachment = replacement; }
MOONBIT_FFI_EXPORT sg_image_view_desc * mb_gfx_sg_view_desc_get_resolve_attachment(sg_view_desc * self) {  sg_view_desc *v = self; return mb_copy_sg_image_view_desc(&v->resolve_attachment); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_view_desc_set_resolve_attachment(sg_view_desc * self, sg_image_view_desc * value) {  sg_view_desc *v = self; sg_image_view_desc replacement; mb_clone_sg_image_view_desc(&replacement, value); mb_drop_sg_image_view_desc(&v->resolve_attachment); v->resolve_attachment = replacement; }
MOONBIT_FFI_EXPORT sg_image_view_desc * mb_gfx_sg_view_desc_get_depth_stencil_attachment(sg_view_desc * self) {  sg_view_desc *v = self; return mb_copy_sg_image_view_desc(&v->depth_stencil_attachment); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_view_desc_set_depth_stencil_attachment(sg_view_desc * self, sg_image_view_desc * value) {  sg_view_desc *v = self; sg_image_view_desc replacement; mb_clone_sg_image_view_desc(&replacement, value); mb_drop_sg_image_view_desc(&v->depth_stencil_attachment); v->depth_stencil_attachment = replacement; }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_gfx_sg_view_desc_get_label(sg_view_desc * self) {  sg_view_desc *v = self; return mb_utf8(v->label); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_view_desc_set_label(sg_view_desc * self, moonbit_bytes_t value) {  sg_view_desc *v = self; const char *replacement = mb_string((const char*)value); free((void*)v->label); v->label = replacement; }
MOONBIT_FFI_EXPORT sg_trace_hooks * mb_gfx_sg_trace_hooks_new(void) { return mb_new_sg_trace_hooks(); }
MOONBIT_FFI_EXPORT sg_trace_hooks * mb_gfx_sg_trace_hooks_copy(sg_trace_hooks * self) { return mb_copy_sg_trace_hooks(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_native(sg_trace_hooks * self) { return self; }
MOONBIT_FFI_EXPORT sg_trace_hooks * mb_gfx_sg_trace_hooks_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_trace_hooks(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_user_data(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->user_data; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_user_data(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->user_data = value; }
typedef void  (*mb_sg_trace_hooks_reset_state_cache_fn)(void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_reset_state_cache(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->reset_state_cache; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_reset_state_cache(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->reset_state_cache = (mb_sg_trace_hooks_reset_state_cache_fn)value; }
typedef void  (*mb_sg_trace_hooks_make_buffer_fn)(const sg_buffer_desc *, sg_buffer, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_make_buffer(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->make_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_make_buffer(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->make_buffer = (mb_sg_trace_hooks_make_buffer_fn)value; }
typedef void  (*mb_sg_trace_hooks_make_image_fn)(const sg_image_desc *, sg_image, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_make_image(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->make_image; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_make_image(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->make_image = (mb_sg_trace_hooks_make_image_fn)value; }
typedef void  (*mb_sg_trace_hooks_make_sampler_fn)(const sg_sampler_desc *, sg_sampler, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_make_sampler(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->make_sampler; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_make_sampler(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->make_sampler = (mb_sg_trace_hooks_make_sampler_fn)value; }
typedef void  (*mb_sg_trace_hooks_make_shader_fn)(const sg_shader_desc *, sg_shader, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_make_shader(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->make_shader; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_make_shader(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->make_shader = (mb_sg_trace_hooks_make_shader_fn)value; }
typedef void  (*mb_sg_trace_hooks_make_pipeline_fn)(const sg_pipeline_desc *, sg_pipeline, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_make_pipeline(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->make_pipeline; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_make_pipeline(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->make_pipeline = (mb_sg_trace_hooks_make_pipeline_fn)value; }
typedef void  (*mb_sg_trace_hooks_make_view_fn)(const sg_view_desc *, sg_view, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_make_view(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->make_view; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_make_view(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->make_view = (mb_sg_trace_hooks_make_view_fn)value; }
typedef void  (*mb_sg_trace_hooks_destroy_buffer_fn)(sg_buffer, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_destroy_buffer(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->destroy_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_destroy_buffer(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->destroy_buffer = (mb_sg_trace_hooks_destroy_buffer_fn)value; }
typedef void  (*mb_sg_trace_hooks_destroy_image_fn)(sg_image, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_destroy_image(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->destroy_image; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_destroy_image(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->destroy_image = (mb_sg_trace_hooks_destroy_image_fn)value; }
typedef void  (*mb_sg_trace_hooks_destroy_sampler_fn)(sg_sampler, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_destroy_sampler(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->destroy_sampler; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_destroy_sampler(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->destroy_sampler = (mb_sg_trace_hooks_destroy_sampler_fn)value; }
typedef void  (*mb_sg_trace_hooks_destroy_shader_fn)(sg_shader, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_destroy_shader(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->destroy_shader; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_destroy_shader(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->destroy_shader = (mb_sg_trace_hooks_destroy_shader_fn)value; }
typedef void  (*mb_sg_trace_hooks_destroy_pipeline_fn)(sg_pipeline, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_destroy_pipeline(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->destroy_pipeline; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_destroy_pipeline(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->destroy_pipeline = (mb_sg_trace_hooks_destroy_pipeline_fn)value; }
typedef void  (*mb_sg_trace_hooks_destroy_view_fn)(sg_view, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_destroy_view(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->destroy_view; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_destroy_view(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->destroy_view = (mb_sg_trace_hooks_destroy_view_fn)value; }
typedef void  (*mb_sg_trace_hooks_write_buffer_transient_fn)(const sg_write_buffer_desc *, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_write_buffer_transient(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->write_buffer_transient; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_write_buffer_transient(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->write_buffer_transient = (mb_sg_trace_hooks_write_buffer_transient_fn)value; }
typedef void  (*mb_sg_trace_hooks_write_image_transient_fn)(const sg_write_image_desc *, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_write_image_transient(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->write_image_transient; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_write_image_transient(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->write_image_transient = (mb_sg_trace_hooks_write_image_transient_fn)value; }
typedef void  (*mb_sg_trace_hooks_write_buffer_unsealed_fn)(const sg_write_buffer_desc *, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_write_buffer_unsealed(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->write_buffer_unsealed; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_write_buffer_unsealed(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->write_buffer_unsealed = (mb_sg_trace_hooks_write_buffer_unsealed_fn)value; }
typedef void  (*mb_sg_trace_hooks_write_image_unsealed_fn)(const sg_write_image_desc *, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_write_image_unsealed(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->write_image_unsealed; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_write_image_unsealed(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->write_image_unsealed = (mb_sg_trace_hooks_write_image_unsealed_fn)value; }
typedef void  (*mb_sg_trace_hooks_seal_buffer_fn)(sg_buffer, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_seal_buffer(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->seal_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_seal_buffer(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->seal_buffer = (mb_sg_trace_hooks_seal_buffer_fn)value; }
typedef void  (*mb_sg_trace_hooks_seal_image_fn)(sg_image, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_seal_image(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->seal_image; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_seal_image(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->seal_image = (mb_sg_trace_hooks_seal_image_fn)value; }
typedef void  (*mb_sg_trace_hooks_copy_buffer_to_buffer_fn)(const sg_copy_buffer_to_buffer_desc *, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_copy_buffer_to_buffer(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->copy_buffer_to_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_copy_buffer_to_buffer(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->copy_buffer_to_buffer = (mb_sg_trace_hooks_copy_buffer_to_buffer_fn)value; }
typedef void  (*mb_sg_trace_hooks_copy_buffer_to_image_fn)(const sg_copy_buffer_to_image_desc *, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_copy_buffer_to_image(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->copy_buffer_to_image; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_copy_buffer_to_image(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->copy_buffer_to_image = (mb_sg_trace_hooks_copy_buffer_to_image_fn)value; }
typedef void  (*mb_sg_trace_hooks_copy_image_to_image_fn)(const sg_copy_image_to_image_desc *, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_copy_image_to_image(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->copy_image_to_image; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_copy_image_to_image(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->copy_image_to_image = (mb_sg_trace_hooks_copy_image_to_image_fn)value; }
typedef void  (*mb_sg_trace_hooks_begin_pass_fn)(const sg_pass *, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_begin_pass(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->begin_pass; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_begin_pass(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->begin_pass = (mb_sg_trace_hooks_begin_pass_fn)value; }
typedef void  (*mb_sg_trace_hooks_apply_viewport_fn)(int, int, int, int, bool, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_apply_viewport(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->apply_viewport; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_apply_viewport(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->apply_viewport = (mb_sg_trace_hooks_apply_viewport_fn)value; }
typedef void  (*mb_sg_trace_hooks_apply_scissor_rect_fn)(int, int, int, int, bool, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_apply_scissor_rect(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->apply_scissor_rect; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_apply_scissor_rect(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->apply_scissor_rect = (mb_sg_trace_hooks_apply_scissor_rect_fn)value; }
typedef void  (*mb_sg_trace_hooks_apply_pipeline_fn)(sg_pipeline, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_apply_pipeline(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->apply_pipeline; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_apply_pipeline(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->apply_pipeline = (mb_sg_trace_hooks_apply_pipeline_fn)value; }
typedef void  (*mb_sg_trace_hooks_apply_bindings_fn)(const sg_bindings *, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_apply_bindings(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->apply_bindings; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_apply_bindings(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->apply_bindings = (mb_sg_trace_hooks_apply_bindings_fn)value; }
typedef void  (*mb_sg_trace_hooks_apply_uniforms_fn)(int, const sg_range *, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_apply_uniforms(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->apply_uniforms; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_apply_uniforms(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->apply_uniforms = (mb_sg_trace_hooks_apply_uniforms_fn)value; }
typedef void  (*mb_sg_trace_hooks_draw_fn)(int, int, int, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_draw(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->draw; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_draw(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->draw = (mb_sg_trace_hooks_draw_fn)value; }
typedef void  (*mb_sg_trace_hooks_draw_ex_fn)(int, int, int, int, int, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_draw_ex(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->draw_ex; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_draw_ex(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->draw_ex = (mb_sg_trace_hooks_draw_ex_fn)value; }
typedef void  (*mb_sg_trace_hooks_dispatch_fn)(int, int, int, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_dispatch(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->dispatch; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_dispatch(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->dispatch = (mb_sg_trace_hooks_dispatch_fn)value; }
typedef void  (*mb_sg_trace_hooks_end_pass_fn)(void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_end_pass(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->end_pass; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_end_pass(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->end_pass = (mb_sg_trace_hooks_end_pass_fn)value; }
typedef void  (*mb_sg_trace_hooks_commit_fn)(void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_commit(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->commit; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_commit(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->commit = (mb_sg_trace_hooks_commit_fn)value; }
typedef void  (*mb_sg_trace_hooks_alloc_buffer_fn)(sg_buffer, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_alloc_buffer(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->alloc_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_alloc_buffer(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->alloc_buffer = (mb_sg_trace_hooks_alloc_buffer_fn)value; }
typedef void  (*mb_sg_trace_hooks_alloc_image_fn)(sg_image, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_alloc_image(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->alloc_image; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_alloc_image(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->alloc_image = (mb_sg_trace_hooks_alloc_image_fn)value; }
typedef void  (*mb_sg_trace_hooks_alloc_sampler_fn)(sg_sampler, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_alloc_sampler(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->alloc_sampler; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_alloc_sampler(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->alloc_sampler = (mb_sg_trace_hooks_alloc_sampler_fn)value; }
typedef void  (*mb_sg_trace_hooks_alloc_shader_fn)(sg_shader, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_alloc_shader(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->alloc_shader; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_alloc_shader(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->alloc_shader = (mb_sg_trace_hooks_alloc_shader_fn)value; }
typedef void  (*mb_sg_trace_hooks_alloc_pipeline_fn)(sg_pipeline, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_alloc_pipeline(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->alloc_pipeline; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_alloc_pipeline(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->alloc_pipeline = (mb_sg_trace_hooks_alloc_pipeline_fn)value; }
typedef void  (*mb_sg_trace_hooks_alloc_view_fn)(sg_view, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_alloc_view(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->alloc_view; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_alloc_view(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->alloc_view = (mb_sg_trace_hooks_alloc_view_fn)value; }
typedef void  (*mb_sg_trace_hooks_dealloc_buffer_fn)(sg_buffer, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_dealloc_buffer(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->dealloc_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_dealloc_buffer(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->dealloc_buffer = (mb_sg_trace_hooks_dealloc_buffer_fn)value; }
typedef void  (*mb_sg_trace_hooks_dealloc_image_fn)(sg_image, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_dealloc_image(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->dealloc_image; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_dealloc_image(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->dealloc_image = (mb_sg_trace_hooks_dealloc_image_fn)value; }
typedef void  (*mb_sg_trace_hooks_dealloc_sampler_fn)(sg_sampler, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_dealloc_sampler(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->dealloc_sampler; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_dealloc_sampler(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->dealloc_sampler = (mb_sg_trace_hooks_dealloc_sampler_fn)value; }
typedef void  (*mb_sg_trace_hooks_dealloc_shader_fn)(sg_shader, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_dealloc_shader(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->dealloc_shader; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_dealloc_shader(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->dealloc_shader = (mb_sg_trace_hooks_dealloc_shader_fn)value; }
typedef void  (*mb_sg_trace_hooks_dealloc_pipeline_fn)(sg_pipeline, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_dealloc_pipeline(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->dealloc_pipeline; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_dealloc_pipeline(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->dealloc_pipeline = (mb_sg_trace_hooks_dealloc_pipeline_fn)value; }
typedef void  (*mb_sg_trace_hooks_dealloc_view_fn)(sg_view, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_dealloc_view(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->dealloc_view; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_dealloc_view(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->dealloc_view = (mb_sg_trace_hooks_dealloc_view_fn)value; }
typedef void  (*mb_sg_trace_hooks_init_buffer_fn)(sg_buffer, const sg_buffer_desc *, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_init_buffer(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->init_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_init_buffer(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->init_buffer = (mb_sg_trace_hooks_init_buffer_fn)value; }
typedef void  (*mb_sg_trace_hooks_init_image_fn)(sg_image, const sg_image_desc *, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_init_image(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->init_image; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_init_image(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->init_image = (mb_sg_trace_hooks_init_image_fn)value; }
typedef void  (*mb_sg_trace_hooks_init_sampler_fn)(sg_sampler, const sg_sampler_desc *, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_init_sampler(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->init_sampler; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_init_sampler(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->init_sampler = (mb_sg_trace_hooks_init_sampler_fn)value; }
typedef void  (*mb_sg_trace_hooks_init_shader_fn)(sg_shader, const sg_shader_desc *, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_init_shader(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->init_shader; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_init_shader(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->init_shader = (mb_sg_trace_hooks_init_shader_fn)value; }
typedef void  (*mb_sg_trace_hooks_init_pipeline_fn)(sg_pipeline, const sg_pipeline_desc *, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_init_pipeline(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->init_pipeline; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_init_pipeline(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->init_pipeline = (mb_sg_trace_hooks_init_pipeline_fn)value; }
typedef void  (*mb_sg_trace_hooks_init_view_fn)(sg_view, const sg_view_desc *, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_init_view(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->init_view; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_init_view(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->init_view = (mb_sg_trace_hooks_init_view_fn)value; }
typedef void  (*mb_sg_trace_hooks_uninit_buffer_fn)(sg_buffer, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_uninit_buffer(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->uninit_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_uninit_buffer(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->uninit_buffer = (mb_sg_trace_hooks_uninit_buffer_fn)value; }
typedef void  (*mb_sg_trace_hooks_uninit_image_fn)(sg_image, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_uninit_image(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->uninit_image; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_uninit_image(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->uninit_image = (mb_sg_trace_hooks_uninit_image_fn)value; }
typedef void  (*mb_sg_trace_hooks_uninit_sampler_fn)(sg_sampler, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_uninit_sampler(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->uninit_sampler; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_uninit_sampler(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->uninit_sampler = (mb_sg_trace_hooks_uninit_sampler_fn)value; }
typedef void  (*mb_sg_trace_hooks_uninit_shader_fn)(sg_shader, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_uninit_shader(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->uninit_shader; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_uninit_shader(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->uninit_shader = (mb_sg_trace_hooks_uninit_shader_fn)value; }
typedef void  (*mb_sg_trace_hooks_uninit_pipeline_fn)(sg_pipeline, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_uninit_pipeline(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->uninit_pipeline; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_uninit_pipeline(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->uninit_pipeline = (mb_sg_trace_hooks_uninit_pipeline_fn)value; }
typedef void  (*mb_sg_trace_hooks_uninit_view_fn)(sg_view, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_uninit_view(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->uninit_view; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_uninit_view(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->uninit_view = (mb_sg_trace_hooks_uninit_view_fn)value; }
typedef void  (*mb_sg_trace_hooks_fail_buffer_fn)(sg_buffer, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_fail_buffer(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->fail_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_fail_buffer(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->fail_buffer = (mb_sg_trace_hooks_fail_buffer_fn)value; }
typedef void  (*mb_sg_trace_hooks_fail_image_fn)(sg_image, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_fail_image(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->fail_image; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_fail_image(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->fail_image = (mb_sg_trace_hooks_fail_image_fn)value; }
typedef void  (*mb_sg_trace_hooks_fail_sampler_fn)(sg_sampler, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_fail_sampler(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->fail_sampler; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_fail_sampler(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->fail_sampler = (mb_sg_trace_hooks_fail_sampler_fn)value; }
typedef void  (*mb_sg_trace_hooks_fail_shader_fn)(sg_shader, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_fail_shader(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->fail_shader; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_fail_shader(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->fail_shader = (mb_sg_trace_hooks_fail_shader_fn)value; }
typedef void  (*mb_sg_trace_hooks_fail_pipeline_fn)(sg_pipeline, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_fail_pipeline(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->fail_pipeline; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_fail_pipeline(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->fail_pipeline = (mb_sg_trace_hooks_fail_pipeline_fn)value; }
typedef void  (*mb_sg_trace_hooks_fail_view_fn)(sg_view, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_fail_view(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->fail_view; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_fail_view(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->fail_view = (mb_sg_trace_hooks_fail_view_fn)value; }
typedef void  (*mb_sg_trace_hooks_push_debug_group_fn)(const char *, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_push_debug_group(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->push_debug_group; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_push_debug_group(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->push_debug_group = (mb_sg_trace_hooks_push_debug_group_fn)value; }
typedef void  (*mb_sg_trace_hooks_pop_debug_group_fn)(void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_trace_hooks_get_pop_debug_group(sg_trace_hooks * self) {  sg_trace_hooks *v = self; return (void*)v->pop_debug_group; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_trace_hooks_set_pop_debug_group(sg_trace_hooks * self, void * value) {  sg_trace_hooks *v = self; if (mb_managed_sg_trace_hooks(v)) abort(); v->pop_debug_group = (mb_sg_trace_hooks_pop_debug_group_fn)value; }
MOONBIT_FFI_EXPORT sg_slot_info * mb_gfx_sg_slot_info_new(void) { return mb_new_sg_slot_info(); }
MOONBIT_FFI_EXPORT sg_slot_info * mb_gfx_sg_slot_info_copy(sg_slot_info * self) { return mb_copy_sg_slot_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_slot_info_native(sg_slot_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_slot_info * mb_gfx_sg_slot_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_slot_info(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_slot_info_get_state(sg_slot_info * self) {  sg_slot_info *v = self; return v->state; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_slot_info_set_state(sg_slot_info * self, int32_t value) {  sg_slot_info *v = self; v->state = (sg_resource_state)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_slot_info_get_res_id(sg_slot_info * self) {  sg_slot_info *v = self; return v->res_id; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_slot_info_set_res_id(sg_slot_info * self, uint32_t value) {  sg_slot_info *v = self; v->res_id = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_slot_info_get_uninit_count(sg_slot_info * self) {  sg_slot_info *v = self; return v->uninit_count; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_slot_info_set_uninit_count(sg_slot_info * self, uint32_t value) {  sg_slot_info *v = self; v->uninit_count = (uint32_t)value; }
MOONBIT_FFI_EXPORT sg_buffer_info * mb_gfx_sg_buffer_info_new(void) { return mb_new_sg_buffer_info(); }
MOONBIT_FFI_EXPORT sg_buffer_info * mb_gfx_sg_buffer_info_copy(sg_buffer_info * self) { return mb_copy_sg_buffer_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_buffer_info_native(sg_buffer_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_buffer_info * mb_gfx_sg_buffer_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_buffer_info(ptr); }
MOONBIT_FFI_EXPORT sg_slot_info * mb_gfx_sg_buffer_info_get_slot(sg_buffer_info * self) {  sg_buffer_info *v = self; return mb_copy_sg_slot_info(&v->slot); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_info_set_slot(sg_buffer_info * self, sg_slot_info * value) {  sg_buffer_info *v = self; sg_slot_info replacement; mb_clone_sg_slot_info(&replacement, value); mb_drop_sg_slot_info(&v->slot); v->slot = replacement; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_buffer_info_get_num_slots(sg_buffer_info * self) {  sg_buffer_info *v = self; return v->num_slots; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_info_set_num_slots(sg_buffer_info * self, int32_t value) {  sg_buffer_info *v = self; v->num_slots = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_buffer_info_get_active_slot(sg_buffer_info * self) {  sg_buffer_info *v = self; return v->active_slot; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_buffer_info_set_active_slot(sg_buffer_info * self, int32_t value) {  sg_buffer_info *v = self; v->active_slot = (int)value; }
MOONBIT_FFI_EXPORT sg_image_info * mb_gfx_sg_image_info_new(void) { return mb_new_sg_image_info(); }
MOONBIT_FFI_EXPORT sg_image_info * mb_gfx_sg_image_info_copy(sg_image_info * self) { return mb_copy_sg_image_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_image_info_native(sg_image_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_image_info * mb_gfx_sg_image_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_image_info(ptr); }
MOONBIT_FFI_EXPORT sg_slot_info * mb_gfx_sg_image_info_get_slot(sg_image_info * self) {  sg_image_info *v = self; return mb_copy_sg_slot_info(&v->slot); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_info_set_slot(sg_image_info * self, sg_slot_info * value) {  sg_image_info *v = self; sg_slot_info replacement; mb_clone_sg_slot_info(&replacement, value); mb_drop_sg_slot_info(&v->slot); v->slot = replacement; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_info_get_num_slots(sg_image_info * self) {  sg_image_info *v = self; return v->num_slots; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_info_set_num_slots(sg_image_info * self, int32_t value) {  sg_image_info *v = self; v->num_slots = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_image_info_get_active_slot(sg_image_info * self) {  sg_image_info *v = self; return v->active_slot; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_image_info_set_active_slot(sg_image_info * self, int32_t value) {  sg_image_info *v = self; v->active_slot = (int)value; }
MOONBIT_FFI_EXPORT sg_sampler_info * mb_gfx_sg_sampler_info_new(void) { return mb_new_sg_sampler_info(); }
MOONBIT_FFI_EXPORT sg_sampler_info * mb_gfx_sg_sampler_info_copy(sg_sampler_info * self) { return mb_copy_sg_sampler_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_sampler_info_native(sg_sampler_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_sampler_info * mb_gfx_sg_sampler_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_sampler_info(ptr); }
MOONBIT_FFI_EXPORT sg_slot_info * mb_gfx_sg_sampler_info_get_slot(sg_sampler_info * self) {  sg_sampler_info *v = self; return mb_copy_sg_slot_info(&v->slot); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_info_set_slot(sg_sampler_info * self, sg_slot_info * value) {  sg_sampler_info *v = self; sg_slot_info replacement; mb_clone_sg_slot_info(&replacement, value); mb_drop_sg_slot_info(&v->slot); v->slot = replacement; }
MOONBIT_FFI_EXPORT sg_shader_info * mb_gfx_sg_shader_info_new(void) { return mb_new_sg_shader_info(); }
MOONBIT_FFI_EXPORT sg_shader_info * mb_gfx_sg_shader_info_copy(sg_shader_info * self) { return mb_copy_sg_shader_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_shader_info_native(sg_shader_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_shader_info * mb_gfx_sg_shader_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_shader_info(ptr); }
MOONBIT_FFI_EXPORT sg_slot_info * mb_gfx_sg_shader_info_get_slot(sg_shader_info * self) {  sg_shader_info *v = self; return mb_copy_sg_slot_info(&v->slot); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_info_set_slot(sg_shader_info * self, sg_slot_info * value) {  sg_shader_info *v = self; sg_slot_info replacement; mb_clone_sg_slot_info(&replacement, value); mb_drop_sg_slot_info(&v->slot); v->slot = replacement; }
MOONBIT_FFI_EXPORT sg_pipeline_info * mb_gfx_sg_pipeline_info_new(void) { return mb_new_sg_pipeline_info(); }
MOONBIT_FFI_EXPORT sg_pipeline_info * mb_gfx_sg_pipeline_info_copy(sg_pipeline_info * self) { return mb_copy_sg_pipeline_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_pipeline_info_native(sg_pipeline_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_pipeline_info * mb_gfx_sg_pipeline_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_pipeline_info(ptr); }
MOONBIT_FFI_EXPORT sg_slot_info * mb_gfx_sg_pipeline_info_get_slot(sg_pipeline_info * self) {  sg_pipeline_info *v = self; return mb_copy_sg_slot_info(&v->slot); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_pipeline_info_set_slot(sg_pipeline_info * self, sg_slot_info * value) {  sg_pipeline_info *v = self; sg_slot_info replacement; mb_clone_sg_slot_info(&replacement, value); mb_drop_sg_slot_info(&v->slot); v->slot = replacement; }
MOONBIT_FFI_EXPORT sg_view_info * mb_gfx_sg_view_info_new(void) { return mb_new_sg_view_info(); }
MOONBIT_FFI_EXPORT sg_view_info * mb_gfx_sg_view_info_copy(sg_view_info * self) { return mb_copy_sg_view_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_view_info_native(sg_view_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_view_info * mb_gfx_sg_view_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_view_info(ptr); }
MOONBIT_FFI_EXPORT sg_slot_info * mb_gfx_sg_view_info_get_slot(sg_view_info * self) {  sg_view_info *v = self; return mb_copy_sg_slot_info(&v->slot); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_view_info_set_slot(sg_view_info * self, sg_slot_info * value) {  sg_view_info *v = self; sg_slot_info replacement; mb_clone_sg_slot_info(&replacement, value); mb_drop_sg_slot_info(&v->slot); v->slot = replacement; }
MOONBIT_FFI_EXPORT sg_frame_stats_gl * mb_gfx_sg_frame_stats_gl_new(void) { return mb_new_sg_frame_stats_gl(); }
MOONBIT_FFI_EXPORT sg_frame_stats_gl * mb_gfx_sg_frame_stats_gl_copy(sg_frame_stats_gl * self) { return mb_copy_sg_frame_stats_gl(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_frame_stats_gl_native(sg_frame_stats_gl * self) { return self; }
MOONBIT_FFI_EXPORT sg_frame_stats_gl * mb_gfx_sg_frame_stats_gl_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_frame_stats_gl(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_gl_get_num_bind_buffer(sg_frame_stats_gl * self) {  sg_frame_stats_gl *v = self; return v->num_bind_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_gl_set_num_bind_buffer(sg_frame_stats_gl * self, uint32_t value) {  sg_frame_stats_gl *v = self; v->num_bind_buffer = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_gl_get_num_active_texture(sg_frame_stats_gl * self) {  sg_frame_stats_gl *v = self; return v->num_active_texture; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_gl_set_num_active_texture(sg_frame_stats_gl * self, uint32_t value) {  sg_frame_stats_gl *v = self; v->num_active_texture = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_gl_get_num_bind_texture(sg_frame_stats_gl * self) {  sg_frame_stats_gl *v = self; return v->num_bind_texture; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_gl_set_num_bind_texture(sg_frame_stats_gl * self, uint32_t value) {  sg_frame_stats_gl *v = self; v->num_bind_texture = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_gl_get_num_bind_sampler(sg_frame_stats_gl * self) {  sg_frame_stats_gl *v = self; return v->num_bind_sampler; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_gl_set_num_bind_sampler(sg_frame_stats_gl * self, uint32_t value) {  sg_frame_stats_gl *v = self; v->num_bind_sampler = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_gl_get_num_bind_image_texture(sg_frame_stats_gl * self) {  sg_frame_stats_gl *v = self; return v->num_bind_image_texture; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_gl_set_num_bind_image_texture(sg_frame_stats_gl * self, uint32_t value) {  sg_frame_stats_gl *v = self; v->num_bind_image_texture = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_gl_get_num_use_program(sg_frame_stats_gl * self) {  sg_frame_stats_gl *v = self; return v->num_use_program; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_gl_set_num_use_program(sg_frame_stats_gl * self, uint32_t value) {  sg_frame_stats_gl *v = self; v->num_use_program = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_gl_get_num_render_state(sg_frame_stats_gl * self) {  sg_frame_stats_gl *v = self; return v->num_render_state; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_gl_set_num_render_state(sg_frame_stats_gl * self, uint32_t value) {  sg_frame_stats_gl *v = self; v->num_render_state = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_gl_get_num_vertex_attrib_pointer(sg_frame_stats_gl * self) {  sg_frame_stats_gl *v = self; return v->num_vertex_attrib_pointer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_gl_set_num_vertex_attrib_pointer(sg_frame_stats_gl * self, uint32_t value) {  sg_frame_stats_gl *v = self; v->num_vertex_attrib_pointer = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_gl_get_num_vertex_attrib_divisor(sg_frame_stats_gl * self) {  sg_frame_stats_gl *v = self; return v->num_vertex_attrib_divisor; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_gl_set_num_vertex_attrib_divisor(sg_frame_stats_gl * self, uint32_t value) {  sg_frame_stats_gl *v = self; v->num_vertex_attrib_divisor = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_gl_get_num_enable_vertex_attrib_array(sg_frame_stats_gl * self) {  sg_frame_stats_gl *v = self; return v->num_enable_vertex_attrib_array; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_gl_set_num_enable_vertex_attrib_array(sg_frame_stats_gl * self, uint32_t value) {  sg_frame_stats_gl *v = self; v->num_enable_vertex_attrib_array = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_gl_get_num_disable_vertex_attrib_array(sg_frame_stats_gl * self) {  sg_frame_stats_gl *v = self; return v->num_disable_vertex_attrib_array; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_gl_set_num_disable_vertex_attrib_array(sg_frame_stats_gl * self, uint32_t value) {  sg_frame_stats_gl *v = self; v->num_disable_vertex_attrib_array = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_gl_get_num_uniform(sg_frame_stats_gl * self) {  sg_frame_stats_gl *v = self; return v->num_uniform; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_gl_set_num_uniform(sg_frame_stats_gl * self, uint32_t value) {  sg_frame_stats_gl *v = self; v->num_uniform = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_gl_get_num_memory_barriers(sg_frame_stats_gl * self) {  sg_frame_stats_gl *v = self; return v->num_memory_barriers; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_gl_set_num_memory_barriers(sg_frame_stats_gl * self, uint32_t value) {  sg_frame_stats_gl *v = self; v->num_memory_barriers = (uint32_t)value; }
MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_pass * mb_gfx_sg_frame_stats_d3d11_pass_new(void) { return mb_new_sg_frame_stats_d3d11_pass(); }
MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_pass * mb_gfx_sg_frame_stats_d3d11_pass_copy(sg_frame_stats_d3d11_pass * self) { return mb_copy_sg_frame_stats_d3d11_pass(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_frame_stats_d3d11_pass_native(sg_frame_stats_d3d11_pass * self) { return self; }
MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_pass * mb_gfx_sg_frame_stats_d3d11_pass_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_frame_stats_d3d11_pass(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_pass_get_num_om_set_render_targets(sg_frame_stats_d3d11_pass * self) {  sg_frame_stats_d3d11_pass *v = self; return v->num_om_set_render_targets; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_pass_set_num_om_set_render_targets(sg_frame_stats_d3d11_pass * self, uint32_t value) {  sg_frame_stats_d3d11_pass *v = self; v->num_om_set_render_targets = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_pass_get_num_clear_render_target_view(sg_frame_stats_d3d11_pass * self) {  sg_frame_stats_d3d11_pass *v = self; return v->num_clear_render_target_view; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_pass_set_num_clear_render_target_view(sg_frame_stats_d3d11_pass * self, uint32_t value) {  sg_frame_stats_d3d11_pass *v = self; v->num_clear_render_target_view = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_pass_get_num_clear_depth_stencil_view(sg_frame_stats_d3d11_pass * self) {  sg_frame_stats_d3d11_pass *v = self; return v->num_clear_depth_stencil_view; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_pass_set_num_clear_depth_stencil_view(sg_frame_stats_d3d11_pass * self, uint32_t value) {  sg_frame_stats_d3d11_pass *v = self; v->num_clear_depth_stencil_view = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_pass_get_num_resolve_subresource(sg_frame_stats_d3d11_pass * self) {  sg_frame_stats_d3d11_pass *v = self; return v->num_resolve_subresource; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_pass_set_num_resolve_subresource(sg_frame_stats_d3d11_pass * self, uint32_t value) {  sg_frame_stats_d3d11_pass *v = self; v->num_resolve_subresource = (uint32_t)value; }
MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_pipeline * mb_gfx_sg_frame_stats_d3d11_pipeline_new(void) { return mb_new_sg_frame_stats_d3d11_pipeline(); }
MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_pipeline * mb_gfx_sg_frame_stats_d3d11_pipeline_copy(sg_frame_stats_d3d11_pipeline * self) { return mb_copy_sg_frame_stats_d3d11_pipeline(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_frame_stats_d3d11_pipeline_native(sg_frame_stats_d3d11_pipeline * self) { return self; }
MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_pipeline * mb_gfx_sg_frame_stats_d3d11_pipeline_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_frame_stats_d3d11_pipeline(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_rs_set_state(sg_frame_stats_d3d11_pipeline * self) {  sg_frame_stats_d3d11_pipeline *v = self; return v->num_rs_set_state; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_rs_set_state(sg_frame_stats_d3d11_pipeline * self, uint32_t value) {  sg_frame_stats_d3d11_pipeline *v = self; v->num_rs_set_state = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_om_set_depth_stencil_state(sg_frame_stats_d3d11_pipeline * self) {  sg_frame_stats_d3d11_pipeline *v = self; return v->num_om_set_depth_stencil_state; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_om_set_depth_stencil_state(sg_frame_stats_d3d11_pipeline * self, uint32_t value) {  sg_frame_stats_d3d11_pipeline *v = self; v->num_om_set_depth_stencil_state = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_om_set_blend_state(sg_frame_stats_d3d11_pipeline * self) {  sg_frame_stats_d3d11_pipeline *v = self; return v->num_om_set_blend_state; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_om_set_blend_state(sg_frame_stats_d3d11_pipeline * self, uint32_t value) {  sg_frame_stats_d3d11_pipeline *v = self; v->num_om_set_blend_state = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_ia_set_primitive_topology(sg_frame_stats_d3d11_pipeline * self) {  sg_frame_stats_d3d11_pipeline *v = self; return v->num_ia_set_primitive_topology; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_ia_set_primitive_topology(sg_frame_stats_d3d11_pipeline * self, uint32_t value) {  sg_frame_stats_d3d11_pipeline *v = self; v->num_ia_set_primitive_topology = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_ia_set_input_layout(sg_frame_stats_d3d11_pipeline * self) {  sg_frame_stats_d3d11_pipeline *v = self; return v->num_ia_set_input_layout; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_ia_set_input_layout(sg_frame_stats_d3d11_pipeline * self, uint32_t value) {  sg_frame_stats_d3d11_pipeline *v = self; v->num_ia_set_input_layout = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_vs_set_shader(sg_frame_stats_d3d11_pipeline * self) {  sg_frame_stats_d3d11_pipeline *v = self; return v->num_vs_set_shader; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_vs_set_shader(sg_frame_stats_d3d11_pipeline * self, uint32_t value) {  sg_frame_stats_d3d11_pipeline *v = self; v->num_vs_set_shader = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_vs_set_constant_buffers(sg_frame_stats_d3d11_pipeline * self) {  sg_frame_stats_d3d11_pipeline *v = self; return v->num_vs_set_constant_buffers; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_vs_set_constant_buffers(sg_frame_stats_d3d11_pipeline * self, uint32_t value) {  sg_frame_stats_d3d11_pipeline *v = self; v->num_vs_set_constant_buffers = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_ps_set_shader(sg_frame_stats_d3d11_pipeline * self) {  sg_frame_stats_d3d11_pipeline *v = self; return v->num_ps_set_shader; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_ps_set_shader(sg_frame_stats_d3d11_pipeline * self, uint32_t value) {  sg_frame_stats_d3d11_pipeline *v = self; v->num_ps_set_shader = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_ps_set_constant_buffers(sg_frame_stats_d3d11_pipeline * self) {  sg_frame_stats_d3d11_pipeline *v = self; return v->num_ps_set_constant_buffers; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_ps_set_constant_buffers(sg_frame_stats_d3d11_pipeline * self, uint32_t value) {  sg_frame_stats_d3d11_pipeline *v = self; v->num_ps_set_constant_buffers = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_cs_set_shader(sg_frame_stats_d3d11_pipeline * self) {  sg_frame_stats_d3d11_pipeline *v = self; return v->num_cs_set_shader; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_cs_set_shader(sg_frame_stats_d3d11_pipeline * self, uint32_t value) {  sg_frame_stats_d3d11_pipeline *v = self; v->num_cs_set_shader = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_cs_set_constant_buffers(sg_frame_stats_d3d11_pipeline * self) {  sg_frame_stats_d3d11_pipeline *v = self; return v->num_cs_set_constant_buffers; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_cs_set_constant_buffers(sg_frame_stats_d3d11_pipeline * self, uint32_t value) {  sg_frame_stats_d3d11_pipeline *v = self; v->num_cs_set_constant_buffers = (uint32_t)value; }
MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_bindings * mb_gfx_sg_frame_stats_d3d11_bindings_new(void) { return mb_new_sg_frame_stats_d3d11_bindings(); }
MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_bindings * mb_gfx_sg_frame_stats_d3d11_bindings_copy(sg_frame_stats_d3d11_bindings * self) { return mb_copy_sg_frame_stats_d3d11_bindings(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_frame_stats_d3d11_bindings_native(sg_frame_stats_d3d11_bindings * self) { return self; }
MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_bindings * mb_gfx_sg_frame_stats_d3d11_bindings_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_frame_stats_d3d11_bindings(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_bindings_get_num_ia_set_vertex_buffers(sg_frame_stats_d3d11_bindings * self) {  sg_frame_stats_d3d11_bindings *v = self; return v->num_ia_set_vertex_buffers; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_bindings_set_num_ia_set_vertex_buffers(sg_frame_stats_d3d11_bindings * self, uint32_t value) {  sg_frame_stats_d3d11_bindings *v = self; v->num_ia_set_vertex_buffers = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_bindings_get_num_ia_set_index_buffer(sg_frame_stats_d3d11_bindings * self) {  sg_frame_stats_d3d11_bindings *v = self; return v->num_ia_set_index_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_bindings_set_num_ia_set_index_buffer(sg_frame_stats_d3d11_bindings * self, uint32_t value) {  sg_frame_stats_d3d11_bindings *v = self; v->num_ia_set_index_buffer = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_bindings_get_num_vs_set_shader_resources(sg_frame_stats_d3d11_bindings * self) {  sg_frame_stats_d3d11_bindings *v = self; return v->num_vs_set_shader_resources; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_bindings_set_num_vs_set_shader_resources(sg_frame_stats_d3d11_bindings * self, uint32_t value) {  sg_frame_stats_d3d11_bindings *v = self; v->num_vs_set_shader_resources = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_bindings_get_num_vs_set_samplers(sg_frame_stats_d3d11_bindings * self) {  sg_frame_stats_d3d11_bindings *v = self; return v->num_vs_set_samplers; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_bindings_set_num_vs_set_samplers(sg_frame_stats_d3d11_bindings * self, uint32_t value) {  sg_frame_stats_d3d11_bindings *v = self; v->num_vs_set_samplers = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_bindings_get_num_ps_set_shader_resources(sg_frame_stats_d3d11_bindings * self) {  sg_frame_stats_d3d11_bindings *v = self; return v->num_ps_set_shader_resources; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_bindings_set_num_ps_set_shader_resources(sg_frame_stats_d3d11_bindings * self, uint32_t value) {  sg_frame_stats_d3d11_bindings *v = self; v->num_ps_set_shader_resources = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_bindings_get_num_ps_set_samplers(sg_frame_stats_d3d11_bindings * self) {  sg_frame_stats_d3d11_bindings *v = self; return v->num_ps_set_samplers; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_bindings_set_num_ps_set_samplers(sg_frame_stats_d3d11_bindings * self, uint32_t value) {  sg_frame_stats_d3d11_bindings *v = self; v->num_ps_set_samplers = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_bindings_get_num_cs_set_shader_resources(sg_frame_stats_d3d11_bindings * self) {  sg_frame_stats_d3d11_bindings *v = self; return v->num_cs_set_shader_resources; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_bindings_set_num_cs_set_shader_resources(sg_frame_stats_d3d11_bindings * self, uint32_t value) {  sg_frame_stats_d3d11_bindings *v = self; v->num_cs_set_shader_resources = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_bindings_get_num_cs_set_samplers(sg_frame_stats_d3d11_bindings * self) {  sg_frame_stats_d3d11_bindings *v = self; return v->num_cs_set_samplers; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_bindings_set_num_cs_set_samplers(sg_frame_stats_d3d11_bindings * self, uint32_t value) {  sg_frame_stats_d3d11_bindings *v = self; v->num_cs_set_samplers = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_bindings_get_num_cs_set_unordered_access_views(sg_frame_stats_d3d11_bindings * self) {  sg_frame_stats_d3d11_bindings *v = self; return v->num_cs_set_unordered_access_views; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_bindings_set_num_cs_set_unordered_access_views(sg_frame_stats_d3d11_bindings * self, uint32_t value) {  sg_frame_stats_d3d11_bindings *v = self; v->num_cs_set_unordered_access_views = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_bindings_get_num_om_set_rts_and_uavs(sg_frame_stats_d3d11_bindings * self) {  sg_frame_stats_d3d11_bindings *v = self; return v->num_om_set_rts_and_uavs; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_bindings_set_num_om_set_rts_and_uavs(sg_frame_stats_d3d11_bindings * self, uint32_t value) {  sg_frame_stats_d3d11_bindings *v = self; v->num_om_set_rts_and_uavs = (uint32_t)value; }
MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_draw * mb_gfx_sg_frame_stats_d3d11_draw_new(void) { return mb_new_sg_frame_stats_d3d11_draw(); }
MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_draw * mb_gfx_sg_frame_stats_d3d11_draw_copy(sg_frame_stats_d3d11_draw * self) { return mb_copy_sg_frame_stats_d3d11_draw(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_frame_stats_d3d11_draw_native(sg_frame_stats_d3d11_draw * self) { return self; }
MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_draw * mb_gfx_sg_frame_stats_d3d11_draw_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_frame_stats_d3d11_draw(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_draw_get_num_draw_indexed_instanced(sg_frame_stats_d3d11_draw * self) {  sg_frame_stats_d3d11_draw *v = self; return v->num_draw_indexed_instanced; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_draw_set_num_draw_indexed_instanced(sg_frame_stats_d3d11_draw * self, uint32_t value) {  sg_frame_stats_d3d11_draw *v = self; v->num_draw_indexed_instanced = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_draw_get_num_draw_indexed(sg_frame_stats_d3d11_draw * self) {  sg_frame_stats_d3d11_draw *v = self; return v->num_draw_indexed; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_draw_set_num_draw_indexed(sg_frame_stats_d3d11_draw * self, uint32_t value) {  sg_frame_stats_d3d11_draw *v = self; v->num_draw_indexed = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_draw_get_num_draw_instanced(sg_frame_stats_d3d11_draw * self) {  sg_frame_stats_d3d11_draw *v = self; return v->num_draw_instanced; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_draw_set_num_draw_instanced(sg_frame_stats_d3d11_draw * self, uint32_t value) {  sg_frame_stats_d3d11_draw *v = self; v->num_draw_instanced = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_draw_get_num_draw(sg_frame_stats_d3d11_draw * self) {  sg_frame_stats_d3d11_draw *v = self; return v->num_draw; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_draw_set_num_draw(sg_frame_stats_d3d11_draw * self, uint32_t value) {  sg_frame_stats_d3d11_draw *v = self; v->num_draw = (uint32_t)value; }
MOONBIT_FFI_EXPORT sg_frame_stats_d3d11 * mb_gfx_sg_frame_stats_d3d11_new(void) { return mb_new_sg_frame_stats_d3d11(); }
MOONBIT_FFI_EXPORT sg_frame_stats_d3d11 * mb_gfx_sg_frame_stats_d3d11_copy(sg_frame_stats_d3d11 * self) { return mb_copy_sg_frame_stats_d3d11(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_frame_stats_d3d11_native(sg_frame_stats_d3d11 * self) { return self; }
MOONBIT_FFI_EXPORT sg_frame_stats_d3d11 * mb_gfx_sg_frame_stats_d3d11_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_frame_stats_d3d11(ptr); }
MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_pass * mb_gfx_sg_frame_stats_d3d11_get_pass(sg_frame_stats_d3d11 * self) {  sg_frame_stats_d3d11 *v = self; return mb_copy_sg_frame_stats_d3d11_pass(&v->pass); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_set_pass(sg_frame_stats_d3d11 * self, sg_frame_stats_d3d11_pass * value) {  sg_frame_stats_d3d11 *v = self; sg_frame_stats_d3d11_pass replacement; mb_clone_sg_frame_stats_d3d11_pass(&replacement, value); mb_drop_sg_frame_stats_d3d11_pass(&v->pass); v->pass = replacement; }
MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_pipeline * mb_gfx_sg_frame_stats_d3d11_get_pipeline(sg_frame_stats_d3d11 * self) {  sg_frame_stats_d3d11 *v = self; return mb_copy_sg_frame_stats_d3d11_pipeline(&v->pipeline); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_set_pipeline(sg_frame_stats_d3d11 * self, sg_frame_stats_d3d11_pipeline * value) {  sg_frame_stats_d3d11 *v = self; sg_frame_stats_d3d11_pipeline replacement; mb_clone_sg_frame_stats_d3d11_pipeline(&replacement, value); mb_drop_sg_frame_stats_d3d11_pipeline(&v->pipeline); v->pipeline = replacement; }
MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_bindings * mb_gfx_sg_frame_stats_d3d11_get_bindings(sg_frame_stats_d3d11 * self) {  sg_frame_stats_d3d11 *v = self; return mb_copy_sg_frame_stats_d3d11_bindings(&v->bindings); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_set_bindings(sg_frame_stats_d3d11 * self, sg_frame_stats_d3d11_bindings * value) {  sg_frame_stats_d3d11 *v = self; sg_frame_stats_d3d11_bindings replacement; mb_clone_sg_frame_stats_d3d11_bindings(&replacement, value); mb_drop_sg_frame_stats_d3d11_bindings(&v->bindings); v->bindings = replacement; }
MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_draw * mb_gfx_sg_frame_stats_d3d11_get_draw(sg_frame_stats_d3d11 * self) {  sg_frame_stats_d3d11 *v = self; return mb_copy_sg_frame_stats_d3d11_draw(&v->draw); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_set_draw(sg_frame_stats_d3d11 * self, sg_frame_stats_d3d11_draw * value) {  sg_frame_stats_d3d11 *v = self; sg_frame_stats_d3d11_draw replacement; mb_clone_sg_frame_stats_d3d11_draw(&replacement, value); mb_drop_sg_frame_stats_d3d11_draw(&v->draw); v->draw = replacement; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_get_num_update_subresource(sg_frame_stats_d3d11 * self) {  sg_frame_stats_d3d11 *v = self; return v->num_update_subresource; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_set_num_update_subresource(sg_frame_stats_d3d11 * self, uint32_t value) {  sg_frame_stats_d3d11 *v = self; v->num_update_subresource = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_get_num_copy_subresource_region(sg_frame_stats_d3d11 * self) {  sg_frame_stats_d3d11 *v = self; return v->num_copy_subresource_region; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_set_num_copy_subresource_region(sg_frame_stats_d3d11 * self, uint32_t value) {  sg_frame_stats_d3d11 *v = self; v->num_copy_subresource_region = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_get_num_map(sg_frame_stats_d3d11 * self) {  sg_frame_stats_d3d11 *v = self; return v->num_map; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_set_num_map(sg_frame_stats_d3d11 * self, uint32_t value) {  sg_frame_stats_d3d11 *v = self; v->num_map = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_get_num_unmap(sg_frame_stats_d3d11 * self) {  sg_frame_stats_d3d11 *v = self; return v->num_unmap; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_set_num_unmap(sg_frame_stats_d3d11 * self, uint32_t value) {  sg_frame_stats_d3d11 *v = self; v->num_unmap = (uint32_t)value; }
MOONBIT_FFI_EXPORT sg_frame_stats_metal_idpool * mb_gfx_sg_frame_stats_metal_idpool_new(void) { return mb_new_sg_frame_stats_metal_idpool(); }
MOONBIT_FFI_EXPORT sg_frame_stats_metal_idpool * mb_gfx_sg_frame_stats_metal_idpool_copy(sg_frame_stats_metal_idpool * self) { return mb_copy_sg_frame_stats_metal_idpool(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_frame_stats_metal_idpool_native(sg_frame_stats_metal_idpool * self) { return self; }
MOONBIT_FFI_EXPORT sg_frame_stats_metal_idpool * mb_gfx_sg_frame_stats_metal_idpool_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_frame_stats_metal_idpool(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_idpool_get_num_added(sg_frame_stats_metal_idpool * self) {  sg_frame_stats_metal_idpool *v = self; return v->num_added; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_idpool_set_num_added(sg_frame_stats_metal_idpool * self, uint32_t value) {  sg_frame_stats_metal_idpool *v = self; v->num_added = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_idpool_get_num_released(sg_frame_stats_metal_idpool * self) {  sg_frame_stats_metal_idpool *v = self; return v->num_released; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_idpool_set_num_released(sg_frame_stats_metal_idpool * self, uint32_t value) {  sg_frame_stats_metal_idpool *v = self; v->num_released = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_idpool_get_num_garbage_collected(sg_frame_stats_metal_idpool * self) {  sg_frame_stats_metal_idpool *v = self; return v->num_garbage_collected; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_idpool_set_num_garbage_collected(sg_frame_stats_metal_idpool * self, uint32_t value) {  sg_frame_stats_metal_idpool *v = self; v->num_garbage_collected = (uint32_t)value; }
MOONBIT_FFI_EXPORT sg_frame_stats_metal_pipeline * mb_gfx_sg_frame_stats_metal_pipeline_new(void) { return mb_new_sg_frame_stats_metal_pipeline(); }
MOONBIT_FFI_EXPORT sg_frame_stats_metal_pipeline * mb_gfx_sg_frame_stats_metal_pipeline_copy(sg_frame_stats_metal_pipeline * self) { return mb_copy_sg_frame_stats_metal_pipeline(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_frame_stats_metal_pipeline_native(sg_frame_stats_metal_pipeline * self) { return self; }
MOONBIT_FFI_EXPORT sg_frame_stats_metal_pipeline * mb_gfx_sg_frame_stats_metal_pipeline_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_frame_stats_metal_pipeline(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_pipeline_get_num_set_blend_color(sg_frame_stats_metal_pipeline * self) {  sg_frame_stats_metal_pipeline *v = self; return v->num_set_blend_color; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_pipeline_set_num_set_blend_color(sg_frame_stats_metal_pipeline * self, uint32_t value) {  sg_frame_stats_metal_pipeline *v = self; v->num_set_blend_color = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_pipeline_get_num_set_cull_mode(sg_frame_stats_metal_pipeline * self) {  sg_frame_stats_metal_pipeline *v = self; return v->num_set_cull_mode; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_pipeline_set_num_set_cull_mode(sg_frame_stats_metal_pipeline * self, uint32_t value) {  sg_frame_stats_metal_pipeline *v = self; v->num_set_cull_mode = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_pipeline_get_num_set_front_facing_winding(sg_frame_stats_metal_pipeline * self) {  sg_frame_stats_metal_pipeline *v = self; return v->num_set_front_facing_winding; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_pipeline_set_num_set_front_facing_winding(sg_frame_stats_metal_pipeline * self, uint32_t value) {  sg_frame_stats_metal_pipeline *v = self; v->num_set_front_facing_winding = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_pipeline_get_num_set_stencil_reference_value(sg_frame_stats_metal_pipeline * self) {  sg_frame_stats_metal_pipeline *v = self; return v->num_set_stencil_reference_value; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_pipeline_set_num_set_stencil_reference_value(sg_frame_stats_metal_pipeline * self, uint32_t value) {  sg_frame_stats_metal_pipeline *v = self; v->num_set_stencil_reference_value = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_pipeline_get_num_set_depth_bias(sg_frame_stats_metal_pipeline * self) {  sg_frame_stats_metal_pipeline *v = self; return v->num_set_depth_bias; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_pipeline_set_num_set_depth_bias(sg_frame_stats_metal_pipeline * self, uint32_t value) {  sg_frame_stats_metal_pipeline *v = self; v->num_set_depth_bias = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_pipeline_get_num_set_render_pipeline_state(sg_frame_stats_metal_pipeline * self) {  sg_frame_stats_metal_pipeline *v = self; return v->num_set_render_pipeline_state; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_pipeline_set_num_set_render_pipeline_state(sg_frame_stats_metal_pipeline * self, uint32_t value) {  sg_frame_stats_metal_pipeline *v = self; v->num_set_render_pipeline_state = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_pipeline_get_num_set_depth_stencil_state(sg_frame_stats_metal_pipeline * self) {  sg_frame_stats_metal_pipeline *v = self; return v->num_set_depth_stencil_state; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_pipeline_set_num_set_depth_stencil_state(sg_frame_stats_metal_pipeline * self, uint32_t value) {  sg_frame_stats_metal_pipeline *v = self; v->num_set_depth_stencil_state = (uint32_t)value; }
MOONBIT_FFI_EXPORT sg_frame_stats_metal_bindings * mb_gfx_sg_frame_stats_metal_bindings_new(void) { return mb_new_sg_frame_stats_metal_bindings(); }
MOONBIT_FFI_EXPORT sg_frame_stats_metal_bindings * mb_gfx_sg_frame_stats_metal_bindings_copy(sg_frame_stats_metal_bindings * self) { return mb_copy_sg_frame_stats_metal_bindings(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_frame_stats_metal_bindings_native(sg_frame_stats_metal_bindings * self) { return self; }
MOONBIT_FFI_EXPORT sg_frame_stats_metal_bindings * mb_gfx_sg_frame_stats_metal_bindings_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_frame_stats_metal_bindings(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_bindings_get_num_set_vertex_buffer(sg_frame_stats_metal_bindings * self) {  sg_frame_stats_metal_bindings *v = self; return v->num_set_vertex_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_bindings_set_num_set_vertex_buffer(sg_frame_stats_metal_bindings * self, uint32_t value) {  sg_frame_stats_metal_bindings *v = self; v->num_set_vertex_buffer = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_bindings_get_num_set_vertex_buffer_offset(sg_frame_stats_metal_bindings * self) {  sg_frame_stats_metal_bindings *v = self; return v->num_set_vertex_buffer_offset; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_bindings_set_num_set_vertex_buffer_offset(sg_frame_stats_metal_bindings * self, uint32_t value) {  sg_frame_stats_metal_bindings *v = self; v->num_set_vertex_buffer_offset = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_bindings_get_num_skip_redundant_vertex_buffer(sg_frame_stats_metal_bindings * self) {  sg_frame_stats_metal_bindings *v = self; return v->num_skip_redundant_vertex_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_bindings_set_num_skip_redundant_vertex_buffer(sg_frame_stats_metal_bindings * self, uint32_t value) {  sg_frame_stats_metal_bindings *v = self; v->num_skip_redundant_vertex_buffer = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_bindings_get_num_set_vertex_texture(sg_frame_stats_metal_bindings * self) {  sg_frame_stats_metal_bindings *v = self; return v->num_set_vertex_texture; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_bindings_set_num_set_vertex_texture(sg_frame_stats_metal_bindings * self, uint32_t value) {  sg_frame_stats_metal_bindings *v = self; v->num_set_vertex_texture = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_bindings_get_num_skip_redundant_vertex_texture(sg_frame_stats_metal_bindings * self) {  sg_frame_stats_metal_bindings *v = self; return v->num_skip_redundant_vertex_texture; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_bindings_set_num_skip_redundant_vertex_texture(sg_frame_stats_metal_bindings * self, uint32_t value) {  sg_frame_stats_metal_bindings *v = self; v->num_skip_redundant_vertex_texture = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_bindings_get_num_set_vertex_sampler_state(sg_frame_stats_metal_bindings * self) {  sg_frame_stats_metal_bindings *v = self; return v->num_set_vertex_sampler_state; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_bindings_set_num_set_vertex_sampler_state(sg_frame_stats_metal_bindings * self, uint32_t value) {  sg_frame_stats_metal_bindings *v = self; v->num_set_vertex_sampler_state = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_bindings_get_num_skip_redundant_vertex_sampler_state(sg_frame_stats_metal_bindings * self) {  sg_frame_stats_metal_bindings *v = self; return v->num_skip_redundant_vertex_sampler_state; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_bindings_set_num_skip_redundant_vertex_sampler_state(sg_frame_stats_metal_bindings * self, uint32_t value) {  sg_frame_stats_metal_bindings *v = self; v->num_skip_redundant_vertex_sampler_state = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_bindings_get_num_set_fragment_buffer(sg_frame_stats_metal_bindings * self) {  sg_frame_stats_metal_bindings *v = self; return v->num_set_fragment_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_bindings_set_num_set_fragment_buffer(sg_frame_stats_metal_bindings * self, uint32_t value) {  sg_frame_stats_metal_bindings *v = self; v->num_set_fragment_buffer = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_bindings_get_num_set_fragment_buffer_offset(sg_frame_stats_metal_bindings * self) {  sg_frame_stats_metal_bindings *v = self; return v->num_set_fragment_buffer_offset; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_bindings_set_num_set_fragment_buffer_offset(sg_frame_stats_metal_bindings * self, uint32_t value) {  sg_frame_stats_metal_bindings *v = self; v->num_set_fragment_buffer_offset = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_bindings_get_num_skip_redundant_fragment_buffer(sg_frame_stats_metal_bindings * self) {  sg_frame_stats_metal_bindings *v = self; return v->num_skip_redundant_fragment_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_bindings_set_num_skip_redundant_fragment_buffer(sg_frame_stats_metal_bindings * self, uint32_t value) {  sg_frame_stats_metal_bindings *v = self; v->num_skip_redundant_fragment_buffer = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_bindings_get_num_set_fragment_texture(sg_frame_stats_metal_bindings * self) {  sg_frame_stats_metal_bindings *v = self; return v->num_set_fragment_texture; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_bindings_set_num_set_fragment_texture(sg_frame_stats_metal_bindings * self, uint32_t value) {  sg_frame_stats_metal_bindings *v = self; v->num_set_fragment_texture = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_bindings_get_num_skip_redundant_fragment_texture(sg_frame_stats_metal_bindings * self) {  sg_frame_stats_metal_bindings *v = self; return v->num_skip_redundant_fragment_texture; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_bindings_set_num_skip_redundant_fragment_texture(sg_frame_stats_metal_bindings * self, uint32_t value) {  sg_frame_stats_metal_bindings *v = self; v->num_skip_redundant_fragment_texture = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_bindings_get_num_set_fragment_sampler_state(sg_frame_stats_metal_bindings * self) {  sg_frame_stats_metal_bindings *v = self; return v->num_set_fragment_sampler_state; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_bindings_set_num_set_fragment_sampler_state(sg_frame_stats_metal_bindings * self, uint32_t value) {  sg_frame_stats_metal_bindings *v = self; v->num_set_fragment_sampler_state = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_bindings_get_num_skip_redundant_fragment_sampler_state(sg_frame_stats_metal_bindings * self) {  sg_frame_stats_metal_bindings *v = self; return v->num_skip_redundant_fragment_sampler_state; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_bindings_set_num_skip_redundant_fragment_sampler_state(sg_frame_stats_metal_bindings * self, uint32_t value) {  sg_frame_stats_metal_bindings *v = self; v->num_skip_redundant_fragment_sampler_state = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_bindings_get_num_set_compute_buffer(sg_frame_stats_metal_bindings * self) {  sg_frame_stats_metal_bindings *v = self; return v->num_set_compute_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_bindings_set_num_set_compute_buffer(sg_frame_stats_metal_bindings * self, uint32_t value) {  sg_frame_stats_metal_bindings *v = self; v->num_set_compute_buffer = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_bindings_get_num_set_compute_buffer_offset(sg_frame_stats_metal_bindings * self) {  sg_frame_stats_metal_bindings *v = self; return v->num_set_compute_buffer_offset; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_bindings_set_num_set_compute_buffer_offset(sg_frame_stats_metal_bindings * self, uint32_t value) {  sg_frame_stats_metal_bindings *v = self; v->num_set_compute_buffer_offset = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_bindings_get_num_skip_redundant_compute_buffer(sg_frame_stats_metal_bindings * self) {  sg_frame_stats_metal_bindings *v = self; return v->num_skip_redundant_compute_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_bindings_set_num_skip_redundant_compute_buffer(sg_frame_stats_metal_bindings * self, uint32_t value) {  sg_frame_stats_metal_bindings *v = self; v->num_skip_redundant_compute_buffer = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_bindings_get_num_set_compute_texture(sg_frame_stats_metal_bindings * self) {  sg_frame_stats_metal_bindings *v = self; return v->num_set_compute_texture; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_bindings_set_num_set_compute_texture(sg_frame_stats_metal_bindings * self, uint32_t value) {  sg_frame_stats_metal_bindings *v = self; v->num_set_compute_texture = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_bindings_get_num_skip_redundant_compute_texture(sg_frame_stats_metal_bindings * self) {  sg_frame_stats_metal_bindings *v = self; return v->num_skip_redundant_compute_texture; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_bindings_set_num_skip_redundant_compute_texture(sg_frame_stats_metal_bindings * self, uint32_t value) {  sg_frame_stats_metal_bindings *v = self; v->num_skip_redundant_compute_texture = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_bindings_get_num_set_compute_sampler_state(sg_frame_stats_metal_bindings * self) {  sg_frame_stats_metal_bindings *v = self; return v->num_set_compute_sampler_state; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_bindings_set_num_set_compute_sampler_state(sg_frame_stats_metal_bindings * self, uint32_t value) {  sg_frame_stats_metal_bindings *v = self; v->num_set_compute_sampler_state = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_bindings_get_num_skip_redundant_compute_sampler_state(sg_frame_stats_metal_bindings * self) {  sg_frame_stats_metal_bindings *v = self; return v->num_skip_redundant_compute_sampler_state; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_bindings_set_num_skip_redundant_compute_sampler_state(sg_frame_stats_metal_bindings * self, uint32_t value) {  sg_frame_stats_metal_bindings *v = self; v->num_skip_redundant_compute_sampler_state = (uint32_t)value; }
MOONBIT_FFI_EXPORT sg_frame_stats_metal_uniforms * mb_gfx_sg_frame_stats_metal_uniforms_new(void) { return mb_new_sg_frame_stats_metal_uniforms(); }
MOONBIT_FFI_EXPORT sg_frame_stats_metal_uniforms * mb_gfx_sg_frame_stats_metal_uniforms_copy(sg_frame_stats_metal_uniforms * self) { return mb_copy_sg_frame_stats_metal_uniforms(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_frame_stats_metal_uniforms_native(sg_frame_stats_metal_uniforms * self) { return self; }
MOONBIT_FFI_EXPORT sg_frame_stats_metal_uniforms * mb_gfx_sg_frame_stats_metal_uniforms_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_frame_stats_metal_uniforms(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_uniforms_get_num_set_vertex_buffer_offset(sg_frame_stats_metal_uniforms * self) {  sg_frame_stats_metal_uniforms *v = self; return v->num_set_vertex_buffer_offset; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_uniforms_set_num_set_vertex_buffer_offset(sg_frame_stats_metal_uniforms * self, uint32_t value) {  sg_frame_stats_metal_uniforms *v = self; v->num_set_vertex_buffer_offset = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_uniforms_get_num_set_fragment_buffer_offset(sg_frame_stats_metal_uniforms * self) {  sg_frame_stats_metal_uniforms *v = self; return v->num_set_fragment_buffer_offset; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_uniforms_set_num_set_fragment_buffer_offset(sg_frame_stats_metal_uniforms * self, uint32_t value) {  sg_frame_stats_metal_uniforms *v = self; v->num_set_fragment_buffer_offset = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_metal_uniforms_get_num_set_compute_buffer_offset(sg_frame_stats_metal_uniforms * self) {  sg_frame_stats_metal_uniforms *v = self; return v->num_set_compute_buffer_offset; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_uniforms_set_num_set_compute_buffer_offset(sg_frame_stats_metal_uniforms * self, uint32_t value) {  sg_frame_stats_metal_uniforms *v = self; v->num_set_compute_buffer_offset = (uint32_t)value; }
MOONBIT_FFI_EXPORT sg_frame_stats_metal * mb_gfx_sg_frame_stats_metal_new(void) { return mb_new_sg_frame_stats_metal(); }
MOONBIT_FFI_EXPORT sg_frame_stats_metal * mb_gfx_sg_frame_stats_metal_copy(sg_frame_stats_metal * self) { return mb_copy_sg_frame_stats_metal(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_frame_stats_metal_native(sg_frame_stats_metal * self) { return self; }
MOONBIT_FFI_EXPORT sg_frame_stats_metal * mb_gfx_sg_frame_stats_metal_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_frame_stats_metal(ptr); }
MOONBIT_FFI_EXPORT sg_frame_stats_metal_idpool * mb_gfx_sg_frame_stats_metal_get_idpool(sg_frame_stats_metal * self) {  sg_frame_stats_metal *v = self; return mb_copy_sg_frame_stats_metal_idpool(&v->idpool); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_set_idpool(sg_frame_stats_metal * self, sg_frame_stats_metal_idpool * value) {  sg_frame_stats_metal *v = self; sg_frame_stats_metal_idpool replacement; mb_clone_sg_frame_stats_metal_idpool(&replacement, value); mb_drop_sg_frame_stats_metal_idpool(&v->idpool); v->idpool = replacement; }
MOONBIT_FFI_EXPORT sg_frame_stats_metal_pipeline * mb_gfx_sg_frame_stats_metal_get_pipeline(sg_frame_stats_metal * self) {  sg_frame_stats_metal *v = self; return mb_copy_sg_frame_stats_metal_pipeline(&v->pipeline); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_set_pipeline(sg_frame_stats_metal * self, sg_frame_stats_metal_pipeline * value) {  sg_frame_stats_metal *v = self; sg_frame_stats_metal_pipeline replacement; mb_clone_sg_frame_stats_metal_pipeline(&replacement, value); mb_drop_sg_frame_stats_metal_pipeline(&v->pipeline); v->pipeline = replacement; }
MOONBIT_FFI_EXPORT sg_frame_stats_metal_bindings * mb_gfx_sg_frame_stats_metal_get_bindings(sg_frame_stats_metal * self) {  sg_frame_stats_metal *v = self; return mb_copy_sg_frame_stats_metal_bindings(&v->bindings); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_set_bindings(sg_frame_stats_metal * self, sg_frame_stats_metal_bindings * value) {  sg_frame_stats_metal *v = self; sg_frame_stats_metal_bindings replacement; mb_clone_sg_frame_stats_metal_bindings(&replacement, value); mb_drop_sg_frame_stats_metal_bindings(&v->bindings); v->bindings = replacement; }
MOONBIT_FFI_EXPORT sg_frame_stats_metal_uniforms * mb_gfx_sg_frame_stats_metal_get_uniforms(sg_frame_stats_metal * self) {  sg_frame_stats_metal *v = self; return mb_copy_sg_frame_stats_metal_uniforms(&v->uniforms); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_metal_set_uniforms(sg_frame_stats_metal * self, sg_frame_stats_metal_uniforms * value) {  sg_frame_stats_metal *v = self; sg_frame_stats_metal_uniforms replacement; mb_clone_sg_frame_stats_metal_uniforms(&replacement, value); mb_drop_sg_frame_stats_metal_uniforms(&v->uniforms); v->uniforms = replacement; }
MOONBIT_FFI_EXPORT sg_frame_stats_wgpu_uniforms * mb_gfx_sg_frame_stats_wgpu_uniforms_new(void) { return mb_new_sg_frame_stats_wgpu_uniforms(); }
MOONBIT_FFI_EXPORT sg_frame_stats_wgpu_uniforms * mb_gfx_sg_frame_stats_wgpu_uniforms_copy(sg_frame_stats_wgpu_uniforms * self) { return mb_copy_sg_frame_stats_wgpu_uniforms(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_frame_stats_wgpu_uniforms_native(sg_frame_stats_wgpu_uniforms * self) { return self; }
MOONBIT_FFI_EXPORT sg_frame_stats_wgpu_uniforms * mb_gfx_sg_frame_stats_wgpu_uniforms_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_frame_stats_wgpu_uniforms(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_wgpu_uniforms_get_num_set_bindgroup(sg_frame_stats_wgpu_uniforms * self) {  sg_frame_stats_wgpu_uniforms *v = self; return v->num_set_bindgroup; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_wgpu_uniforms_set_num_set_bindgroup(sg_frame_stats_wgpu_uniforms * self, uint32_t value) {  sg_frame_stats_wgpu_uniforms *v = self; v->num_set_bindgroup = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_wgpu_uniforms_get_size_write_buffer(sg_frame_stats_wgpu_uniforms * self) {  sg_frame_stats_wgpu_uniforms *v = self; return v->size_write_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_wgpu_uniforms_set_size_write_buffer(sg_frame_stats_wgpu_uniforms * self, uint32_t value) {  sg_frame_stats_wgpu_uniforms *v = self; v->size_write_buffer = (uint32_t)value; }
MOONBIT_FFI_EXPORT sg_frame_stats_wgpu_bindings * mb_gfx_sg_frame_stats_wgpu_bindings_new(void) { return mb_new_sg_frame_stats_wgpu_bindings(); }
MOONBIT_FFI_EXPORT sg_frame_stats_wgpu_bindings * mb_gfx_sg_frame_stats_wgpu_bindings_copy(sg_frame_stats_wgpu_bindings * self) { return mb_copy_sg_frame_stats_wgpu_bindings(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_frame_stats_wgpu_bindings_native(sg_frame_stats_wgpu_bindings * self) { return self; }
MOONBIT_FFI_EXPORT sg_frame_stats_wgpu_bindings * mb_gfx_sg_frame_stats_wgpu_bindings_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_frame_stats_wgpu_bindings(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_wgpu_bindings_get_num_set_vertex_buffer(sg_frame_stats_wgpu_bindings * self) {  sg_frame_stats_wgpu_bindings *v = self; return v->num_set_vertex_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_wgpu_bindings_set_num_set_vertex_buffer(sg_frame_stats_wgpu_bindings * self, uint32_t value) {  sg_frame_stats_wgpu_bindings *v = self; v->num_set_vertex_buffer = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_wgpu_bindings_get_num_skip_redundant_vertex_buffer(sg_frame_stats_wgpu_bindings * self) {  sg_frame_stats_wgpu_bindings *v = self; return v->num_skip_redundant_vertex_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_wgpu_bindings_set_num_skip_redundant_vertex_buffer(sg_frame_stats_wgpu_bindings * self, uint32_t value) {  sg_frame_stats_wgpu_bindings *v = self; v->num_skip_redundant_vertex_buffer = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_wgpu_bindings_get_num_set_index_buffer(sg_frame_stats_wgpu_bindings * self) {  sg_frame_stats_wgpu_bindings *v = self; return v->num_set_index_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_wgpu_bindings_set_num_set_index_buffer(sg_frame_stats_wgpu_bindings * self, uint32_t value) {  sg_frame_stats_wgpu_bindings *v = self; v->num_set_index_buffer = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_wgpu_bindings_get_num_skip_redundant_index_buffer(sg_frame_stats_wgpu_bindings * self) {  sg_frame_stats_wgpu_bindings *v = self; return v->num_skip_redundant_index_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_wgpu_bindings_set_num_skip_redundant_index_buffer(sg_frame_stats_wgpu_bindings * self, uint32_t value) {  sg_frame_stats_wgpu_bindings *v = self; v->num_skip_redundant_index_buffer = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_wgpu_bindings_get_num_create_bindgroup(sg_frame_stats_wgpu_bindings * self) {  sg_frame_stats_wgpu_bindings *v = self; return v->num_create_bindgroup; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_wgpu_bindings_set_num_create_bindgroup(sg_frame_stats_wgpu_bindings * self, uint32_t value) {  sg_frame_stats_wgpu_bindings *v = self; v->num_create_bindgroup = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_wgpu_bindings_get_num_discard_bindgroup(sg_frame_stats_wgpu_bindings * self) {  sg_frame_stats_wgpu_bindings *v = self; return v->num_discard_bindgroup; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_wgpu_bindings_set_num_discard_bindgroup(sg_frame_stats_wgpu_bindings * self, uint32_t value) {  sg_frame_stats_wgpu_bindings *v = self; v->num_discard_bindgroup = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_wgpu_bindings_get_num_set_bindgroup(sg_frame_stats_wgpu_bindings * self) {  sg_frame_stats_wgpu_bindings *v = self; return v->num_set_bindgroup; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_wgpu_bindings_set_num_set_bindgroup(sg_frame_stats_wgpu_bindings * self, uint32_t value) {  sg_frame_stats_wgpu_bindings *v = self; v->num_set_bindgroup = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_wgpu_bindings_get_num_skip_redundant_bindgroup(sg_frame_stats_wgpu_bindings * self) {  sg_frame_stats_wgpu_bindings *v = self; return v->num_skip_redundant_bindgroup; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_wgpu_bindings_set_num_skip_redundant_bindgroup(sg_frame_stats_wgpu_bindings * self, uint32_t value) {  sg_frame_stats_wgpu_bindings *v = self; v->num_skip_redundant_bindgroup = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_hits(sg_frame_stats_wgpu_bindings * self) {  sg_frame_stats_wgpu_bindings *v = self; return v->num_bindgroup_cache_hits; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_hits(sg_frame_stats_wgpu_bindings * self, uint32_t value) {  sg_frame_stats_wgpu_bindings *v = self; v->num_bindgroup_cache_hits = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_misses(sg_frame_stats_wgpu_bindings * self) {  sg_frame_stats_wgpu_bindings *v = self; return v->num_bindgroup_cache_misses; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_misses(sg_frame_stats_wgpu_bindings * self, uint32_t value) {  sg_frame_stats_wgpu_bindings *v = self; v->num_bindgroup_cache_misses = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_collisions(sg_frame_stats_wgpu_bindings * self) {  sg_frame_stats_wgpu_bindings *v = self; return v->num_bindgroup_cache_collisions; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_collisions(sg_frame_stats_wgpu_bindings * self, uint32_t value) {  sg_frame_stats_wgpu_bindings *v = self; v->num_bindgroup_cache_collisions = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_invalidates(sg_frame_stats_wgpu_bindings * self) {  sg_frame_stats_wgpu_bindings *v = self; return v->num_bindgroup_cache_invalidates; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_invalidates(sg_frame_stats_wgpu_bindings * self, uint32_t value) {  sg_frame_stats_wgpu_bindings *v = self; v->num_bindgroup_cache_invalidates = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_hash_vs_key_mismatch(sg_frame_stats_wgpu_bindings * self) {  sg_frame_stats_wgpu_bindings *v = self; return v->num_bindgroup_cache_hash_vs_key_mismatch; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_hash_vs_key_mismatch(sg_frame_stats_wgpu_bindings * self, uint32_t value) {  sg_frame_stats_wgpu_bindings *v = self; v->num_bindgroup_cache_hash_vs_key_mismatch = (uint32_t)value; }
MOONBIT_FFI_EXPORT sg_frame_stats_wgpu * mb_gfx_sg_frame_stats_wgpu_new(void) { return mb_new_sg_frame_stats_wgpu(); }
MOONBIT_FFI_EXPORT sg_frame_stats_wgpu * mb_gfx_sg_frame_stats_wgpu_copy(sg_frame_stats_wgpu * self) { return mb_copy_sg_frame_stats_wgpu(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_frame_stats_wgpu_native(sg_frame_stats_wgpu * self) { return self; }
MOONBIT_FFI_EXPORT sg_frame_stats_wgpu * mb_gfx_sg_frame_stats_wgpu_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_frame_stats_wgpu(ptr); }
MOONBIT_FFI_EXPORT sg_frame_stats_wgpu_uniforms * mb_gfx_sg_frame_stats_wgpu_get_uniforms(sg_frame_stats_wgpu * self) {  sg_frame_stats_wgpu *v = self; return mb_copy_sg_frame_stats_wgpu_uniforms(&v->uniforms); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_wgpu_set_uniforms(sg_frame_stats_wgpu * self, sg_frame_stats_wgpu_uniforms * value) {  sg_frame_stats_wgpu *v = self; sg_frame_stats_wgpu_uniforms replacement; mb_clone_sg_frame_stats_wgpu_uniforms(&replacement, value); mb_drop_sg_frame_stats_wgpu_uniforms(&v->uniforms); v->uniforms = replacement; }
MOONBIT_FFI_EXPORT sg_frame_stats_wgpu_bindings * mb_gfx_sg_frame_stats_wgpu_get_bindings(sg_frame_stats_wgpu * self) {  sg_frame_stats_wgpu *v = self; return mb_copy_sg_frame_stats_wgpu_bindings(&v->bindings); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_wgpu_set_bindings(sg_frame_stats_wgpu * self, sg_frame_stats_wgpu_bindings * value) {  sg_frame_stats_wgpu *v = self; sg_frame_stats_wgpu_bindings replacement; mb_clone_sg_frame_stats_wgpu_bindings(&replacement, value); mb_drop_sg_frame_stats_wgpu_bindings(&v->bindings); v->bindings = replacement; }
MOONBIT_FFI_EXPORT sg_frame_stats_vk * mb_gfx_sg_frame_stats_vk_new(void) { return mb_new_sg_frame_stats_vk(); }
MOONBIT_FFI_EXPORT sg_frame_stats_vk * mb_gfx_sg_frame_stats_vk_copy(sg_frame_stats_vk * self) { return mb_copy_sg_frame_stats_vk(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_frame_stats_vk_native(sg_frame_stats_vk * self) { return self; }
MOONBIT_FFI_EXPORT sg_frame_stats_vk * mb_gfx_sg_frame_stats_vk_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_frame_stats_vk(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_vk_get_num_cmd_pipeline_barrier(sg_frame_stats_vk * self) {  sg_frame_stats_vk *v = self; return v->num_cmd_pipeline_barrier; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_vk_set_num_cmd_pipeline_barrier(sg_frame_stats_vk * self, uint32_t value) {  sg_frame_stats_vk *v = self; v->num_cmd_pipeline_barrier = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_vk_get_num_allocate_memory(sg_frame_stats_vk * self) {  sg_frame_stats_vk *v = self; return v->num_allocate_memory; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_vk_set_num_allocate_memory(sg_frame_stats_vk * self, uint32_t value) {  sg_frame_stats_vk *v = self; v->num_allocate_memory = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_vk_get_num_free_memory(sg_frame_stats_vk * self) {  sg_frame_stats_vk *v = self; return v->num_free_memory; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_vk_set_num_free_memory(sg_frame_stats_vk * self, uint32_t value) {  sg_frame_stats_vk *v = self; v->num_free_memory = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_vk_get_size_allocate_memory(sg_frame_stats_vk * self) {  sg_frame_stats_vk *v = self; return v->size_allocate_memory; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_vk_set_size_allocate_memory(sg_frame_stats_vk * self, uint32_t value) {  sg_frame_stats_vk *v = self; v->size_allocate_memory = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_vk_get_num_delete_queue_added(sg_frame_stats_vk * self) {  sg_frame_stats_vk *v = self; return v->num_delete_queue_added; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_vk_set_num_delete_queue_added(sg_frame_stats_vk * self, uint32_t value) {  sg_frame_stats_vk *v = self; v->num_delete_queue_added = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_vk_get_num_delete_queue_collected(sg_frame_stats_vk * self) {  sg_frame_stats_vk *v = self; return v->num_delete_queue_collected; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_vk_set_num_delete_queue_collected(sg_frame_stats_vk * self, uint32_t value) {  sg_frame_stats_vk *v = self; v->num_delete_queue_collected = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_vk_get_num_cmd_copy_buffer(sg_frame_stats_vk * self) {  sg_frame_stats_vk *v = self; return v->num_cmd_copy_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_vk_set_num_cmd_copy_buffer(sg_frame_stats_vk * self, uint32_t value) {  sg_frame_stats_vk *v = self; v->num_cmd_copy_buffer = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_vk_get_num_cmd_copy_buffer_to_image(sg_frame_stats_vk * self) {  sg_frame_stats_vk *v = self; return v->num_cmd_copy_buffer_to_image; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_vk_set_num_cmd_copy_buffer_to_image(sg_frame_stats_vk * self, uint32_t value) {  sg_frame_stats_vk *v = self; v->num_cmd_copy_buffer_to_image = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_vk_get_num_cmd_copy_image(sg_frame_stats_vk * self) {  sg_frame_stats_vk *v = self; return v->num_cmd_copy_image; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_vk_set_num_cmd_copy_image(sg_frame_stats_vk * self, uint32_t value) {  sg_frame_stats_vk *v = self; v->num_cmd_copy_image = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_vk_get_num_cmd_set_descriptor_buffer_offsets(sg_frame_stats_vk * self) {  sg_frame_stats_vk *v = self; return v->num_cmd_set_descriptor_buffer_offsets; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_vk_set_num_cmd_set_descriptor_buffer_offsets(sg_frame_stats_vk * self, uint32_t value) {  sg_frame_stats_vk *v = self; v->num_cmd_set_descriptor_buffer_offsets = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_vk_get_size_descriptor_buffer_writes(sg_frame_stats_vk * self) {  sg_frame_stats_vk *v = self; return v->size_descriptor_buffer_writes; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_vk_set_size_descriptor_buffer_writes(sg_frame_stats_vk * self, uint32_t value) {  sg_frame_stats_vk *v = self; v->size_descriptor_buffer_writes = (uint32_t)value; }
MOONBIT_FFI_EXPORT sg_frame_resource_stats * mb_gfx_sg_frame_resource_stats_new(void) { return mb_new_sg_frame_resource_stats(); }
MOONBIT_FFI_EXPORT sg_frame_resource_stats * mb_gfx_sg_frame_resource_stats_copy(sg_frame_resource_stats * self) { return mb_copy_sg_frame_resource_stats(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_frame_resource_stats_native(sg_frame_resource_stats * self) { return self; }
MOONBIT_FFI_EXPORT sg_frame_resource_stats * mb_gfx_sg_frame_resource_stats_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_frame_resource_stats(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_resource_stats_get_allocated(sg_frame_resource_stats * self) {  sg_frame_resource_stats *v = self; return v->allocated; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_resource_stats_set_allocated(sg_frame_resource_stats * self, uint32_t value) {  sg_frame_resource_stats *v = self; v->allocated = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_resource_stats_get_deallocated(sg_frame_resource_stats * self) {  sg_frame_resource_stats *v = self; return v->deallocated; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_resource_stats_set_deallocated(sg_frame_resource_stats * self, uint32_t value) {  sg_frame_resource_stats *v = self; v->deallocated = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_resource_stats_get_inited(sg_frame_resource_stats * self) {  sg_frame_resource_stats *v = self; return v->inited; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_resource_stats_set_inited(sg_frame_resource_stats * self, uint32_t value) {  sg_frame_resource_stats *v = self; v->inited = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_resource_stats_get_uninited(sg_frame_resource_stats * self) {  sg_frame_resource_stats *v = self; return v->uninited; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_resource_stats_set_uninited(sg_frame_resource_stats * self, uint32_t value) {  sg_frame_resource_stats *v = self; v->uninited = (uint32_t)value; }
MOONBIT_FFI_EXPORT sg_total_resource_stats * mb_gfx_sg_total_resource_stats_new(void) { return mb_new_sg_total_resource_stats(); }
MOONBIT_FFI_EXPORT sg_total_resource_stats * mb_gfx_sg_total_resource_stats_copy(sg_total_resource_stats * self) { return mb_copy_sg_total_resource_stats(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_total_resource_stats_native(sg_total_resource_stats * self) { return self; }
MOONBIT_FFI_EXPORT sg_total_resource_stats * mb_gfx_sg_total_resource_stats_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_total_resource_stats(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_total_resource_stats_get_alive(sg_total_resource_stats * self) {  sg_total_resource_stats *v = self; return v->alive; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_total_resource_stats_set_alive(sg_total_resource_stats * self, uint32_t value) {  sg_total_resource_stats *v = self; v->alive = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_total_resource_stats_get_free(sg_total_resource_stats * self) {  sg_total_resource_stats *v = self; return v->free; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_total_resource_stats_set_free(sg_total_resource_stats * self, uint32_t value) {  sg_total_resource_stats *v = self; v->free = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_total_resource_stats_get_allocated(sg_total_resource_stats * self) {  sg_total_resource_stats *v = self; return v->allocated; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_total_resource_stats_set_allocated(sg_total_resource_stats * self, uint32_t value) {  sg_total_resource_stats *v = self; v->allocated = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_total_resource_stats_get_deallocated(sg_total_resource_stats * self) {  sg_total_resource_stats *v = self; return v->deallocated; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_total_resource_stats_set_deallocated(sg_total_resource_stats * self, uint32_t value) {  sg_total_resource_stats *v = self; v->deallocated = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_total_resource_stats_get_inited(sg_total_resource_stats * self) {  sg_total_resource_stats *v = self; return v->inited; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_total_resource_stats_set_inited(sg_total_resource_stats * self, uint32_t value) {  sg_total_resource_stats *v = self; v->inited = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_total_resource_stats_get_uninited(sg_total_resource_stats * self) {  sg_total_resource_stats *v = self; return v->uninited; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_total_resource_stats_set_uninited(sg_total_resource_stats * self, uint32_t value) {  sg_total_resource_stats *v = self; v->uninited = (uint32_t)value; }
MOONBIT_FFI_EXPORT sg_total_stats * mb_gfx_sg_total_stats_new(void) { return mb_new_sg_total_stats(); }
MOONBIT_FFI_EXPORT sg_total_stats * mb_gfx_sg_total_stats_copy(sg_total_stats * self) { return mb_copy_sg_total_stats(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_total_stats_native(sg_total_stats * self) { return self; }
MOONBIT_FFI_EXPORT sg_total_stats * mb_gfx_sg_total_stats_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_total_stats(ptr); }
MOONBIT_FFI_EXPORT sg_total_resource_stats * mb_gfx_sg_total_stats_get_buffers(sg_total_stats * self) {  sg_total_stats *v = self; return mb_copy_sg_total_resource_stats(&v->buffers); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_total_stats_set_buffers(sg_total_stats * self, sg_total_resource_stats * value) {  sg_total_stats *v = self; sg_total_resource_stats replacement; mb_clone_sg_total_resource_stats(&replacement, value); mb_drop_sg_total_resource_stats(&v->buffers); v->buffers = replacement; }
MOONBIT_FFI_EXPORT sg_total_resource_stats * mb_gfx_sg_total_stats_get_images(sg_total_stats * self) {  sg_total_stats *v = self; return mb_copy_sg_total_resource_stats(&v->images); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_total_stats_set_images(sg_total_stats * self, sg_total_resource_stats * value) {  sg_total_stats *v = self; sg_total_resource_stats replacement; mb_clone_sg_total_resource_stats(&replacement, value); mb_drop_sg_total_resource_stats(&v->images); v->images = replacement; }
MOONBIT_FFI_EXPORT sg_total_resource_stats * mb_gfx_sg_total_stats_get_samplers(sg_total_stats * self) {  sg_total_stats *v = self; return mb_copy_sg_total_resource_stats(&v->samplers); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_total_stats_set_samplers(sg_total_stats * self, sg_total_resource_stats * value) {  sg_total_stats *v = self; sg_total_resource_stats replacement; mb_clone_sg_total_resource_stats(&replacement, value); mb_drop_sg_total_resource_stats(&v->samplers); v->samplers = replacement; }
MOONBIT_FFI_EXPORT sg_total_resource_stats * mb_gfx_sg_total_stats_get_views(sg_total_stats * self) {  sg_total_stats *v = self; return mb_copy_sg_total_resource_stats(&v->views); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_total_stats_set_views(sg_total_stats * self, sg_total_resource_stats * value) {  sg_total_stats *v = self; sg_total_resource_stats replacement; mb_clone_sg_total_resource_stats(&replacement, value); mb_drop_sg_total_resource_stats(&v->views); v->views = replacement; }
MOONBIT_FFI_EXPORT sg_total_resource_stats * mb_gfx_sg_total_stats_get_shaders(sg_total_stats * self) {  sg_total_stats *v = self; return mb_copy_sg_total_resource_stats(&v->shaders); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_total_stats_set_shaders(sg_total_stats * self, sg_total_resource_stats * value) {  sg_total_stats *v = self; sg_total_resource_stats replacement; mb_clone_sg_total_resource_stats(&replacement, value); mb_drop_sg_total_resource_stats(&v->shaders); v->shaders = replacement; }
MOONBIT_FFI_EXPORT sg_total_resource_stats * mb_gfx_sg_total_stats_get_pipelines(sg_total_stats * self) {  sg_total_stats *v = self; return mb_copy_sg_total_resource_stats(&v->pipelines); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_total_stats_set_pipelines(sg_total_stats * self, sg_total_resource_stats * value) {  sg_total_stats *v = self; sg_total_resource_stats replacement; mb_clone_sg_total_resource_stats(&replacement, value); mb_drop_sg_total_resource_stats(&v->pipelines); v->pipelines = replacement; }
MOONBIT_FFI_EXPORT sg_frame_stats * mb_gfx_sg_frame_stats_new(void) { return mb_new_sg_frame_stats(); }
MOONBIT_FFI_EXPORT sg_frame_stats * mb_gfx_sg_frame_stats_copy(sg_frame_stats * self) { return mb_copy_sg_frame_stats(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_frame_stats_native(sg_frame_stats * self) { return self; }
MOONBIT_FFI_EXPORT sg_frame_stats * mb_gfx_sg_frame_stats_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_frame_stats(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_get_frame_index(sg_frame_stats * self) {  sg_frame_stats *v = self; return v->frame_index; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_frame_index(sg_frame_stats * self, uint32_t value) {  sg_frame_stats *v = self; v->frame_index = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_get_num_passes(sg_frame_stats * self) {  sg_frame_stats *v = self; return v->num_passes; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_num_passes(sg_frame_stats * self, uint32_t value) {  sg_frame_stats *v = self; v->num_passes = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_get_num_apply_viewport(sg_frame_stats * self) {  sg_frame_stats *v = self; return v->num_apply_viewport; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_num_apply_viewport(sg_frame_stats * self, uint32_t value) {  sg_frame_stats *v = self; v->num_apply_viewport = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_get_num_apply_scissor_rect(sg_frame_stats * self) {  sg_frame_stats *v = self; return v->num_apply_scissor_rect; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_num_apply_scissor_rect(sg_frame_stats * self, uint32_t value) {  sg_frame_stats *v = self; v->num_apply_scissor_rect = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_get_num_apply_pipeline(sg_frame_stats * self) {  sg_frame_stats *v = self; return v->num_apply_pipeline; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_num_apply_pipeline(sg_frame_stats * self, uint32_t value) {  sg_frame_stats *v = self; v->num_apply_pipeline = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_get_num_apply_bindings(sg_frame_stats * self) {  sg_frame_stats *v = self; return v->num_apply_bindings; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_num_apply_bindings(sg_frame_stats * self, uint32_t value) {  sg_frame_stats *v = self; v->num_apply_bindings = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_get_num_apply_uniforms(sg_frame_stats * self) {  sg_frame_stats *v = self; return v->num_apply_uniforms; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_num_apply_uniforms(sg_frame_stats * self, uint32_t value) {  sg_frame_stats *v = self; v->num_apply_uniforms = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_get_num_draw(sg_frame_stats * self) {  sg_frame_stats *v = self; return v->num_draw; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_num_draw(sg_frame_stats * self, uint32_t value) {  sg_frame_stats *v = self; v->num_draw = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_get_num_draw_ex(sg_frame_stats * self) {  sg_frame_stats *v = self; return v->num_draw_ex; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_num_draw_ex(sg_frame_stats * self, uint32_t value) {  sg_frame_stats *v = self; v->num_draw_ex = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_get_num_dispatch(sg_frame_stats * self) {  sg_frame_stats *v = self; return v->num_dispatch; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_num_dispatch(sg_frame_stats * self, uint32_t value) {  sg_frame_stats *v = self; v->num_dispatch = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_get_num_write_buffer_transient(sg_frame_stats * self) {  sg_frame_stats *v = self; return v->num_write_buffer_transient; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_num_write_buffer_transient(sg_frame_stats * self, uint32_t value) {  sg_frame_stats *v = self; v->num_write_buffer_transient = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_get_num_write_image_transient(sg_frame_stats * self) {  sg_frame_stats *v = self; return v->num_write_image_transient; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_num_write_image_transient(sg_frame_stats * self, uint32_t value) {  sg_frame_stats *v = self; v->num_write_image_transient = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_get_num_write_buffer_unsealed(sg_frame_stats * self) {  sg_frame_stats *v = self; return v->num_write_buffer_unsealed; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_num_write_buffer_unsealed(sg_frame_stats * self, uint32_t value) {  sg_frame_stats *v = self; v->num_write_buffer_unsealed = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_get_num_write_image_unsealed(sg_frame_stats * self) {  sg_frame_stats *v = self; return v->num_write_image_unsealed; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_num_write_image_unsealed(sg_frame_stats * self, uint32_t value) {  sg_frame_stats *v = self; v->num_write_image_unsealed = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_get_num_seal_buffer(sg_frame_stats * self) {  sg_frame_stats *v = self; return v->num_seal_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_num_seal_buffer(sg_frame_stats * self, uint32_t value) {  sg_frame_stats *v = self; v->num_seal_buffer = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_get_num_seal_image(sg_frame_stats * self) {  sg_frame_stats *v = self; return v->num_seal_image; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_num_seal_image(sg_frame_stats * self, uint32_t value) {  sg_frame_stats *v = self; v->num_seal_image = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_get_num_copy_buffer_to_buffer(sg_frame_stats * self) {  sg_frame_stats *v = self; return v->num_copy_buffer_to_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_num_copy_buffer_to_buffer(sg_frame_stats * self, uint32_t value) {  sg_frame_stats *v = self; v->num_copy_buffer_to_buffer = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_get_num_copy_buffer_to_image(sg_frame_stats * self) {  sg_frame_stats *v = self; return v->num_copy_buffer_to_image; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_num_copy_buffer_to_image(sg_frame_stats * self, uint32_t value) {  sg_frame_stats *v = self; v->num_copy_buffer_to_image = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_get_num_copy_image_to_image(sg_frame_stats * self) {  sg_frame_stats *v = self; return v->num_copy_image_to_image; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_num_copy_image_to_image(sg_frame_stats * self, uint32_t value) {  sg_frame_stats *v = self; v->num_copy_image_to_image = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_get_size_apply_uniforms(sg_frame_stats * self) {  sg_frame_stats *v = self; return v->size_apply_uniforms; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_size_apply_uniforms(sg_frame_stats * self, uint32_t value) {  sg_frame_stats *v = self; v->size_apply_uniforms = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_get_size_copy_buffer_to_buffer(sg_frame_stats * self) {  sg_frame_stats *v = self; return v->size_copy_buffer_to_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_size_copy_buffer_to_buffer(sg_frame_stats * self, uint32_t value) {  sg_frame_stats *v = self; v->size_copy_buffer_to_buffer = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_get_size_copy_buffer_to_image(sg_frame_stats * self) {  sg_frame_stats *v = self; return v->size_copy_buffer_to_image; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_size_copy_buffer_to_image(sg_frame_stats * self, uint32_t value) {  sg_frame_stats *v = self; v->size_copy_buffer_to_image = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_get_size_copy_image_to_image(sg_frame_stats * self) {  sg_frame_stats *v = self; return v->size_copy_image_to_image; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_size_copy_image_to_image(sg_frame_stats * self, uint32_t value) {  sg_frame_stats *v = self; v->size_copy_image_to_image = (uint32_t)value; }
MOONBIT_FFI_EXPORT sg_frame_resource_stats * mb_gfx_sg_frame_stats_get_buffers(sg_frame_stats * self) {  sg_frame_stats *v = self; return mb_copy_sg_frame_resource_stats(&v->buffers); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_buffers(sg_frame_stats * self, sg_frame_resource_stats * value) {  sg_frame_stats *v = self; sg_frame_resource_stats replacement; mb_clone_sg_frame_resource_stats(&replacement, value); mb_drop_sg_frame_resource_stats(&v->buffers); v->buffers = replacement; }
MOONBIT_FFI_EXPORT sg_frame_resource_stats * mb_gfx_sg_frame_stats_get_images(sg_frame_stats * self) {  sg_frame_stats *v = self; return mb_copy_sg_frame_resource_stats(&v->images); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_images(sg_frame_stats * self, sg_frame_resource_stats * value) {  sg_frame_stats *v = self; sg_frame_resource_stats replacement; mb_clone_sg_frame_resource_stats(&replacement, value); mb_drop_sg_frame_resource_stats(&v->images); v->images = replacement; }
MOONBIT_FFI_EXPORT sg_frame_resource_stats * mb_gfx_sg_frame_stats_get_samplers(sg_frame_stats * self) {  sg_frame_stats *v = self; return mb_copy_sg_frame_resource_stats(&v->samplers); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_samplers(sg_frame_stats * self, sg_frame_resource_stats * value) {  sg_frame_stats *v = self; sg_frame_resource_stats replacement; mb_clone_sg_frame_resource_stats(&replacement, value); mb_drop_sg_frame_resource_stats(&v->samplers); v->samplers = replacement; }
MOONBIT_FFI_EXPORT sg_frame_resource_stats * mb_gfx_sg_frame_stats_get_views(sg_frame_stats * self) {  sg_frame_stats *v = self; return mb_copy_sg_frame_resource_stats(&v->views); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_views(sg_frame_stats * self, sg_frame_resource_stats * value) {  sg_frame_stats *v = self; sg_frame_resource_stats replacement; mb_clone_sg_frame_resource_stats(&replacement, value); mb_drop_sg_frame_resource_stats(&v->views); v->views = replacement; }
MOONBIT_FFI_EXPORT sg_frame_resource_stats * mb_gfx_sg_frame_stats_get_shaders(sg_frame_stats * self) {  sg_frame_stats *v = self; return mb_copy_sg_frame_resource_stats(&v->shaders); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_shaders(sg_frame_stats * self, sg_frame_resource_stats * value) {  sg_frame_stats *v = self; sg_frame_resource_stats replacement; mb_clone_sg_frame_resource_stats(&replacement, value); mb_drop_sg_frame_resource_stats(&v->shaders); v->shaders = replacement; }
MOONBIT_FFI_EXPORT sg_frame_resource_stats * mb_gfx_sg_frame_stats_get_pipelines(sg_frame_stats * self) {  sg_frame_stats *v = self; return mb_copy_sg_frame_resource_stats(&v->pipelines); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_pipelines(sg_frame_stats * self, sg_frame_resource_stats * value) {  sg_frame_stats *v = self; sg_frame_resource_stats replacement; mb_clone_sg_frame_resource_stats(&replacement, value); mb_drop_sg_frame_resource_stats(&v->pipelines); v->pipelines = replacement; }
MOONBIT_FFI_EXPORT sg_frame_stats_gl * mb_gfx_sg_frame_stats_get_gl(sg_frame_stats * self) {  sg_frame_stats *v = self; return mb_copy_sg_frame_stats_gl(&v->gl); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_gl(sg_frame_stats * self, sg_frame_stats_gl * value) {  sg_frame_stats *v = self; sg_frame_stats_gl replacement; mb_clone_sg_frame_stats_gl(&replacement, value); mb_drop_sg_frame_stats_gl(&v->gl); v->gl = replacement; }
MOONBIT_FFI_EXPORT sg_frame_stats_d3d11 * mb_gfx_sg_frame_stats_get_d3d11(sg_frame_stats * self) {  sg_frame_stats *v = self; return mb_copy_sg_frame_stats_d3d11(&v->d3d11); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_d3d11(sg_frame_stats * self, sg_frame_stats_d3d11 * value) {  sg_frame_stats *v = self; sg_frame_stats_d3d11 replacement; mb_clone_sg_frame_stats_d3d11(&replacement, value); mb_drop_sg_frame_stats_d3d11(&v->d3d11); v->d3d11 = replacement; }
MOONBIT_FFI_EXPORT sg_frame_stats_metal * mb_gfx_sg_frame_stats_get_metal(sg_frame_stats * self) {  sg_frame_stats *v = self; return mb_copy_sg_frame_stats_metal(&v->metal); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_metal(sg_frame_stats * self, sg_frame_stats_metal * value) {  sg_frame_stats *v = self; sg_frame_stats_metal replacement; mb_clone_sg_frame_stats_metal(&replacement, value); mb_drop_sg_frame_stats_metal(&v->metal); v->metal = replacement; }
MOONBIT_FFI_EXPORT sg_frame_stats_wgpu * mb_gfx_sg_frame_stats_get_wgpu(sg_frame_stats * self) {  sg_frame_stats *v = self; return mb_copy_sg_frame_stats_wgpu(&v->wgpu); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_wgpu(sg_frame_stats * self, sg_frame_stats_wgpu * value) {  sg_frame_stats *v = self; sg_frame_stats_wgpu replacement; mb_clone_sg_frame_stats_wgpu(&replacement, value); mb_drop_sg_frame_stats_wgpu(&v->wgpu); v->wgpu = replacement; }
MOONBIT_FFI_EXPORT sg_frame_stats_vk * mb_gfx_sg_frame_stats_get_vk(sg_frame_stats * self) {  sg_frame_stats *v = self; return mb_copy_sg_frame_stats_vk(&v->vk); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_set_vk(sg_frame_stats * self, sg_frame_stats_vk * value) {  sg_frame_stats *v = self; sg_frame_stats_vk replacement; mb_clone_sg_frame_stats_vk(&replacement, value); mb_drop_sg_frame_stats_vk(&v->vk); v->vk = replacement; }
MOONBIT_FFI_EXPORT sg_stats * mb_gfx_sg_stats_new(void) { return mb_new_sg_stats(); }
MOONBIT_FFI_EXPORT sg_stats * mb_gfx_sg_stats_copy(sg_stats * self) { return mb_copy_sg_stats(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_stats_native(sg_stats * self) { return self; }
MOONBIT_FFI_EXPORT sg_stats * mb_gfx_sg_stats_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_stats(ptr); }
MOONBIT_FFI_EXPORT sg_frame_stats * mb_gfx_sg_stats_get_prev_frame(sg_stats * self) {  sg_stats *v = self; return mb_copy_sg_frame_stats(&v->prev_frame); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_stats_set_prev_frame(sg_stats * self, sg_frame_stats * value) {  sg_stats *v = self; sg_frame_stats replacement; mb_clone_sg_frame_stats(&replacement, value); mb_drop_sg_frame_stats(&v->prev_frame); v->prev_frame = replacement; }
MOONBIT_FFI_EXPORT sg_frame_stats * mb_gfx_sg_stats_get_cur_frame(sg_stats * self) {  sg_stats *v = self; return mb_copy_sg_frame_stats(&v->cur_frame); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_stats_set_cur_frame(sg_stats * self, sg_frame_stats * value) {  sg_stats *v = self; sg_frame_stats replacement; mb_clone_sg_frame_stats(&replacement, value); mb_drop_sg_frame_stats(&v->cur_frame); v->cur_frame = replacement; }
MOONBIT_FFI_EXPORT sg_total_stats * mb_gfx_sg_stats_get_total(sg_stats * self) {  sg_stats *v = self; return mb_copy_sg_total_stats(&v->total); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_stats_set_total(sg_stats * self, sg_total_stats * value) {  sg_stats *v = self; sg_total_stats replacement; mb_clone_sg_total_stats(&replacement, value); mb_drop_sg_total_stats(&v->total); v->total = replacement; }
MOONBIT_FFI_EXPORT sg_environment_defaults * mb_gfx_sg_environment_defaults_new(void) { return mb_new_sg_environment_defaults(); }
MOONBIT_FFI_EXPORT sg_environment_defaults * mb_gfx_sg_environment_defaults_copy(sg_environment_defaults * self) { return mb_copy_sg_environment_defaults(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_environment_defaults_native(sg_environment_defaults * self) { return self; }
MOONBIT_FFI_EXPORT sg_environment_defaults * mb_gfx_sg_environment_defaults_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_environment_defaults(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_environment_defaults_get_color_format(sg_environment_defaults * self) {  sg_environment_defaults *v = self; return v->color_format; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_environment_defaults_set_color_format(sg_environment_defaults * self, int32_t value) {  sg_environment_defaults *v = self; v->color_format = (sg_pixel_format)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_environment_defaults_get_depth_format(sg_environment_defaults * self) {  sg_environment_defaults *v = self; return v->depth_format; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_environment_defaults_set_depth_format(sg_environment_defaults * self, int32_t value) {  sg_environment_defaults *v = self; v->depth_format = (sg_pixel_format)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_environment_defaults_get_sample_count(sg_environment_defaults * self) {  sg_environment_defaults *v = self; return v->sample_count; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_environment_defaults_set_sample_count(sg_environment_defaults * self, int32_t value) {  sg_environment_defaults *v = self; v->sample_count = (int)value; }
MOONBIT_FFI_EXPORT sg_metal_environment * mb_gfx_sg_metal_environment_new(void) { return mb_new_sg_metal_environment(); }
MOONBIT_FFI_EXPORT sg_metal_environment * mb_gfx_sg_metal_environment_copy(sg_metal_environment * self) { return mb_copy_sg_metal_environment(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_metal_environment_native(sg_metal_environment * self) { return self; }
MOONBIT_FFI_EXPORT sg_metal_environment * mb_gfx_sg_metal_environment_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_metal_environment(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_metal_environment_get_device(sg_metal_environment * self) {  sg_metal_environment *v = self; return (void*)v->device; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_metal_environment_set_device(sg_metal_environment * self, void * value) {  sg_metal_environment *v = self; v->device = value; }
MOONBIT_FFI_EXPORT sg_d3d11_environment * mb_gfx_sg_d3d11_environment_new(void) { return mb_new_sg_d3d11_environment(); }
MOONBIT_FFI_EXPORT sg_d3d11_environment * mb_gfx_sg_d3d11_environment_copy(sg_d3d11_environment * self) { return mb_copy_sg_d3d11_environment(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_environment_native(sg_d3d11_environment * self) { return self; }
MOONBIT_FFI_EXPORT sg_d3d11_environment * mb_gfx_sg_d3d11_environment_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_d3d11_environment(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_environment_get_device(sg_d3d11_environment * self) {  sg_d3d11_environment *v = self; return (void*)v->device; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_d3d11_environment_set_device(sg_d3d11_environment * self, void * value) {  sg_d3d11_environment *v = self; v->device = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_environment_get_device_context(sg_d3d11_environment * self) {  sg_d3d11_environment *v = self; return (void*)v->device_context; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_d3d11_environment_set_device_context(sg_d3d11_environment * self, void * value) {  sg_d3d11_environment *v = self; v->device_context = value; }
MOONBIT_FFI_EXPORT sg_wgpu_environment * mb_gfx_sg_wgpu_environment_new(void) { return mb_new_sg_wgpu_environment(); }
MOONBIT_FFI_EXPORT sg_wgpu_environment * mb_gfx_sg_wgpu_environment_copy(sg_wgpu_environment * self) { return mb_copy_sg_wgpu_environment(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_wgpu_environment_native(sg_wgpu_environment * self) { return self; }
MOONBIT_FFI_EXPORT sg_wgpu_environment * mb_gfx_sg_wgpu_environment_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_wgpu_environment(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_wgpu_environment_get_device(sg_wgpu_environment * self) {  sg_wgpu_environment *v = self; return (void*)v->device; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_environment_set_device(sg_wgpu_environment * self, void * value) {  sg_wgpu_environment *v = self; v->device = value; }
MOONBIT_FFI_EXPORT sg_vulkan_environment * mb_gfx_sg_vulkan_environment_new(void) { return mb_new_sg_vulkan_environment(); }
MOONBIT_FFI_EXPORT sg_vulkan_environment * mb_gfx_sg_vulkan_environment_copy(sg_vulkan_environment * self) { return mb_copy_sg_vulkan_environment(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_vulkan_environment_native(sg_vulkan_environment * self) { return self; }
MOONBIT_FFI_EXPORT sg_vulkan_environment * mb_gfx_sg_vulkan_environment_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_vulkan_environment(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_vulkan_environment_get_instance(sg_vulkan_environment * self) {  sg_vulkan_environment *v = self; return (void*)v->instance; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vulkan_environment_set_instance(sg_vulkan_environment * self, void * value) {  sg_vulkan_environment *v = self; v->instance = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_vulkan_environment_get_physical_device(sg_vulkan_environment * self) {  sg_vulkan_environment *v = self; return (void*)v->physical_device; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vulkan_environment_set_physical_device(sg_vulkan_environment * self, void * value) {  sg_vulkan_environment *v = self; v->physical_device = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_vulkan_environment_get_device(sg_vulkan_environment * self) {  sg_vulkan_environment *v = self; return (void*)v->device; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vulkan_environment_set_device(sg_vulkan_environment * self, void * value) {  sg_vulkan_environment *v = self; v->device = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_vulkan_environment_get_queue(sg_vulkan_environment * self) {  sg_vulkan_environment *v = self; return (void*)v->queue; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vulkan_environment_set_queue(sg_vulkan_environment * self, void * value) {  sg_vulkan_environment *v = self; v->queue = value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_vulkan_environment_get_queue_family_index(sg_vulkan_environment * self) {  sg_vulkan_environment *v = self; return v->queue_family_index; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vulkan_environment_set_queue_family_index(sg_vulkan_environment * self, uint32_t value) {  sg_vulkan_environment *v = self; v->queue_family_index = (uint32_t)value; }
MOONBIT_FFI_EXPORT sg_environment * mb_gfx_sg_environment_new(void) { return mb_new_sg_environment(); }
MOONBIT_FFI_EXPORT sg_environment * mb_gfx_sg_environment_copy(sg_environment * self) { return mb_copy_sg_environment(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_environment_native(sg_environment * self) { return self; }
MOONBIT_FFI_EXPORT sg_environment * mb_gfx_sg_environment_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_environment(ptr); }
MOONBIT_FFI_EXPORT sg_environment_defaults * mb_gfx_sg_environment_get_defaults(sg_environment * self) {  sg_environment *v = self; return mb_copy_sg_environment_defaults(&v->defaults); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_environment_set_defaults(sg_environment * self, sg_environment_defaults * value) {  sg_environment *v = self; sg_environment_defaults replacement; mb_clone_sg_environment_defaults(&replacement, value); mb_drop_sg_environment_defaults(&v->defaults); v->defaults = replacement; }
MOONBIT_FFI_EXPORT sg_metal_environment * mb_gfx_sg_environment_get_metal(sg_environment * self) {  sg_environment *v = self; return mb_copy_sg_metal_environment(&v->metal); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_environment_set_metal(sg_environment * self, sg_metal_environment * value) {  sg_environment *v = self; sg_metal_environment replacement; mb_clone_sg_metal_environment(&replacement, value); mb_drop_sg_metal_environment(&v->metal); v->metal = replacement; }
MOONBIT_FFI_EXPORT sg_d3d11_environment * mb_gfx_sg_environment_get_d3d11(sg_environment * self) {  sg_environment *v = self; return mb_copy_sg_d3d11_environment(&v->d3d11); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_environment_set_d3d11(sg_environment * self, sg_d3d11_environment * value) {  sg_environment *v = self; sg_d3d11_environment replacement; mb_clone_sg_d3d11_environment(&replacement, value); mb_drop_sg_d3d11_environment(&v->d3d11); v->d3d11 = replacement; }
MOONBIT_FFI_EXPORT sg_wgpu_environment * mb_gfx_sg_environment_get_wgpu(sg_environment * self) {  sg_environment *v = self; return mb_copy_sg_wgpu_environment(&v->wgpu); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_environment_set_wgpu(sg_environment * self, sg_wgpu_environment * value) {  sg_environment *v = self; sg_wgpu_environment replacement; mb_clone_sg_wgpu_environment(&replacement, value); mb_drop_sg_wgpu_environment(&v->wgpu); v->wgpu = replacement; }
MOONBIT_FFI_EXPORT sg_vulkan_environment * mb_gfx_sg_environment_get_vulkan(sg_environment * self) {  sg_environment *v = self; return mb_copy_sg_vulkan_environment(&v->vulkan); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_environment_set_vulkan(sg_environment * self, sg_vulkan_environment * value) {  sg_environment *v = self; sg_vulkan_environment replacement; mb_clone_sg_vulkan_environment(&replacement, value); mb_drop_sg_vulkan_environment(&v->vulkan); v->vulkan = replacement; }
MOONBIT_FFI_EXPORT sg_commit_listener * mb_gfx_sg_commit_listener_new(void) { return mb_new_sg_commit_listener(); }
MOONBIT_FFI_EXPORT sg_commit_listener * mb_gfx_sg_commit_listener_copy(sg_commit_listener * self) { return mb_copy_sg_commit_listener(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_commit_listener_native(sg_commit_listener * self) { return self; }
MOONBIT_FFI_EXPORT sg_commit_listener * mb_gfx_sg_commit_listener_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_commit_listener(ptr); }
typedef void  (*mb_sg_commit_listener_func_fn)(void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_commit_listener_get_func(sg_commit_listener * self) {  sg_commit_listener *v = self; return (void*)v->func; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_commit_listener_set_func(sg_commit_listener * self, void * value) {  sg_commit_listener *v = self; if (mb_managed_sg_commit_listener(v)) abort(); v->func = (mb_sg_commit_listener_func_fn)value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_commit_listener_get_user_data(sg_commit_listener * self) {  sg_commit_listener *v = self; return (void*)v->user_data; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_commit_listener_set_user_data(sg_commit_listener * self, void * value) {  sg_commit_listener *v = self; if (mb_managed_sg_commit_listener(v)) abort(); v->user_data = value; }
MOONBIT_FFI_EXPORT sg_allocator * mb_gfx_sg_allocator_new(void) { return mb_new_sg_allocator(); }
MOONBIT_FFI_EXPORT sg_allocator * mb_gfx_sg_allocator_copy(sg_allocator * self) { return mb_copy_sg_allocator(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_allocator_native(sg_allocator * self) { return self; }
MOONBIT_FFI_EXPORT sg_allocator * mb_gfx_sg_allocator_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_allocator(ptr); }
typedef void * (*mb_sg_allocator_alloc_fn_fn)(size_t, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_allocator_get_alloc_fn(sg_allocator * self) {  sg_allocator *v = self; return (void*)v->alloc_fn; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_allocator_set_alloc_fn(sg_allocator * self, void * value) {  sg_allocator *v = self; v->alloc_fn = (mb_sg_allocator_alloc_fn_fn)value; }
typedef void  (*mb_sg_allocator_free_fn_fn)(void *, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_allocator_get_free_fn(sg_allocator * self) {  sg_allocator *v = self; return (void*)v->free_fn; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_allocator_set_free_fn(sg_allocator * self, void * value) {  sg_allocator *v = self; v->free_fn = (mb_sg_allocator_free_fn_fn)value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_allocator_get_user_data(sg_allocator * self) {  sg_allocator *v = self; return (void*)v->user_data; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_allocator_set_user_data(sg_allocator * self, void * value) {  sg_allocator *v = self; v->user_data = value; }
MOONBIT_FFI_EXPORT sg_logger * mb_gfx_sg_logger_new(void) { return mb_new_sg_logger(); }
MOONBIT_FFI_EXPORT sg_logger * mb_gfx_sg_logger_copy(sg_logger * self) { return mb_copy_sg_logger(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_logger_native(sg_logger * self) { return self; }
MOONBIT_FFI_EXPORT sg_logger * mb_gfx_sg_logger_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_logger(ptr); }
typedef void  (*mb_sg_logger_func_fn)(const char *, uint32_t, uint32_t, const char *, uint32_t, const char *, void *);
MOONBIT_FFI_EXPORT void * mb_gfx_sg_logger_get_func(sg_logger * self) {  sg_logger *v = self; return (void*)v->func; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_logger_set_func(sg_logger * self, void * value) {  sg_logger *v = self; v->func = (mb_sg_logger_func_fn)value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_logger_get_user_data(sg_logger * self) {  sg_logger *v = self; return (void*)v->user_data; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_logger_set_user_data(sg_logger * self, void * value) {  sg_logger *v = self; v->user_data = value; }
MOONBIT_FFI_EXPORT sg_d3d11_desc * mb_gfx_sg_d3d11_desc_new(void) { return mb_new_sg_d3d11_desc(); }
MOONBIT_FFI_EXPORT sg_d3d11_desc * mb_gfx_sg_d3d11_desc_copy(sg_d3d11_desc * self) { return mb_copy_sg_d3d11_desc(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_desc_native(sg_d3d11_desc * self) { return self; }
MOONBIT_FFI_EXPORT sg_d3d11_desc * mb_gfx_sg_d3d11_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_d3d11_desc(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_d3d11_desc_get_shader_debugging(sg_d3d11_desc * self) {  sg_d3d11_desc *v = self; return v->shader_debugging; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_d3d11_desc_set_shader_debugging(sg_d3d11_desc * self, int32_t value) {  sg_d3d11_desc *v = self; v->shader_debugging = (bool)value; }
MOONBIT_FFI_EXPORT sg_metal_desc * mb_gfx_sg_metal_desc_new(void) { return mb_new_sg_metal_desc(); }
MOONBIT_FFI_EXPORT sg_metal_desc * mb_gfx_sg_metal_desc_copy(sg_metal_desc * self) { return mb_copy_sg_metal_desc(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_metal_desc_native(sg_metal_desc * self) { return self; }
MOONBIT_FFI_EXPORT sg_metal_desc * mb_gfx_sg_metal_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_metal_desc(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_metal_desc_get_force_managed_storage_mode(sg_metal_desc * self) {  sg_metal_desc *v = self; return v->force_managed_storage_mode; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_metal_desc_set_force_managed_storage_mode(sg_metal_desc * self, int32_t value) {  sg_metal_desc *v = self; v->force_managed_storage_mode = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_metal_desc_get_use_command_buffer_with_retained_references(sg_metal_desc * self) {  sg_metal_desc *v = self; return v->use_command_buffer_with_retained_references; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_metal_desc_set_use_command_buffer_with_retained_references(sg_metal_desc * self, int32_t value) {  sg_metal_desc *v = self; v->use_command_buffer_with_retained_references = (bool)value; }
MOONBIT_FFI_EXPORT sg_wgpu_desc * mb_gfx_sg_wgpu_desc_new(void) { return mb_new_sg_wgpu_desc(); }
MOONBIT_FFI_EXPORT sg_wgpu_desc * mb_gfx_sg_wgpu_desc_copy(sg_wgpu_desc * self) { return mb_copy_sg_wgpu_desc(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_wgpu_desc_native(sg_wgpu_desc * self) { return self; }
MOONBIT_FFI_EXPORT sg_wgpu_desc * mb_gfx_sg_wgpu_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_wgpu_desc(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_wgpu_desc_get_disable_bindgroups_cache(sg_wgpu_desc * self) {  sg_wgpu_desc *v = self; return v->disable_bindgroups_cache; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_desc_set_disable_bindgroups_cache(sg_wgpu_desc * self, int32_t value) {  sg_wgpu_desc *v = self; v->disable_bindgroups_cache = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_wgpu_desc_get_bindgroups_cache_size(sg_wgpu_desc * self) {  sg_wgpu_desc *v = self; return v->bindgroups_cache_size; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_desc_set_bindgroups_cache_size(sg_wgpu_desc * self, int32_t value) {  sg_wgpu_desc *v = self; v->bindgroups_cache_size = (int)value; }
MOONBIT_FFI_EXPORT sg_vulkan_desc * mb_gfx_sg_vulkan_desc_new(void) { return mb_new_sg_vulkan_desc(); }
MOONBIT_FFI_EXPORT sg_vulkan_desc * mb_gfx_sg_vulkan_desc_copy(sg_vulkan_desc * self) { return mb_copy_sg_vulkan_desc(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_vulkan_desc_native(sg_vulkan_desc * self) { return self; }
MOONBIT_FFI_EXPORT sg_vulkan_desc * mb_gfx_sg_vulkan_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_vulkan_desc(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_vulkan_desc_get_copy_staging_buffer_size(sg_vulkan_desc * self) {  sg_vulkan_desc *v = self; return v->copy_staging_buffer_size; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vulkan_desc_set_copy_staging_buffer_size(sg_vulkan_desc * self, int32_t value) {  sg_vulkan_desc *v = self; v->copy_staging_buffer_size = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_vulkan_desc_get_transient_staging_buffer_size(sg_vulkan_desc * self) {  sg_vulkan_desc *v = self; return v->transient_staging_buffer_size; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vulkan_desc_set_transient_staging_buffer_size(sg_vulkan_desc * self, int32_t value) {  sg_vulkan_desc *v = self; v->transient_staging_buffer_size = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_vulkan_desc_get_descriptor_buffer_size(sg_vulkan_desc * self) {  sg_vulkan_desc *v = self; return v->descriptor_buffer_size; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_vulkan_desc_set_descriptor_buffer_size(sg_vulkan_desc * self, int32_t value) {  sg_vulkan_desc *v = self; v->descriptor_buffer_size = (int)value; }
MOONBIT_FFI_EXPORT sg_desc * mb_gfx_sg_desc_new(void) { return mb_new_sg_desc(); }
MOONBIT_FFI_EXPORT sg_desc * mb_gfx_sg_desc_copy(sg_desc * self) { return mb_copy_sg_desc(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_desc_native(sg_desc * self) { return self; }
MOONBIT_FFI_EXPORT sg_desc * mb_gfx_sg_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_desc(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_desc_get_buffer_pool_size(sg_desc * self) {  sg_desc *v = self; return v->buffer_pool_size; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_desc_set_buffer_pool_size(sg_desc * self, int32_t value) {  sg_desc *v = self; v->buffer_pool_size = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_desc_get_image_pool_size(sg_desc * self) {  sg_desc *v = self; return v->image_pool_size; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_desc_set_image_pool_size(sg_desc * self, int32_t value) {  sg_desc *v = self; v->image_pool_size = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_desc_get_sampler_pool_size(sg_desc * self) {  sg_desc *v = self; return v->sampler_pool_size; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_desc_set_sampler_pool_size(sg_desc * self, int32_t value) {  sg_desc *v = self; v->sampler_pool_size = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_desc_get_shader_pool_size(sg_desc * self) {  sg_desc *v = self; return v->shader_pool_size; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_desc_set_shader_pool_size(sg_desc * self, int32_t value) {  sg_desc *v = self; v->shader_pool_size = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_desc_get_pipeline_pool_size(sg_desc * self) {  sg_desc *v = self; return v->pipeline_pool_size; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_desc_set_pipeline_pool_size(sg_desc * self, int32_t value) {  sg_desc *v = self; v->pipeline_pool_size = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_desc_get_view_pool_size(sg_desc * self) {  sg_desc *v = self; return v->view_pool_size; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_desc_set_view_pool_size(sg_desc * self, int32_t value) {  sg_desc *v = self; v->view_pool_size = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_desc_get_uniform_buffer_size(sg_desc * self) {  sg_desc *v = self; return v->uniform_buffer_size; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_desc_set_uniform_buffer_size(sg_desc * self, int32_t value) {  sg_desc *v = self; v->uniform_buffer_size = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_desc_get_max_commit_listeners(sg_desc * self) {  sg_desc *v = self; return v->max_commit_listeners; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_desc_set_max_commit_listeners(sg_desc * self, int32_t value) {  sg_desc *v = self; v->max_commit_listeners = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_desc_get_disable_validation(sg_desc * self) {  sg_desc *v = self; return v->disable_validation; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_desc_set_disable_validation(sg_desc * self, int32_t value) {  sg_desc *v = self; v->disable_validation = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_desc_get_enforce_portable_limits(sg_desc * self) {  sg_desc *v = self; return v->enforce_portable_limits; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_desc_set_enforce_portable_limits(sg_desc * self, int32_t value) {  sg_desc *v = self; v->enforce_portable_limits = (bool)value; }
MOONBIT_FFI_EXPORT sg_d3d11_desc * mb_gfx_sg_desc_get_d3d11(sg_desc * self) {  sg_desc *v = self; return mb_copy_sg_d3d11_desc(&v->d3d11); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_desc_set_d3d11(sg_desc * self, sg_d3d11_desc * value) {  sg_desc *v = self; sg_d3d11_desc replacement; mb_clone_sg_d3d11_desc(&replacement, value); mb_drop_sg_d3d11_desc(&v->d3d11); v->d3d11 = replacement; }
MOONBIT_FFI_EXPORT sg_metal_desc * mb_gfx_sg_desc_get_metal(sg_desc * self) {  sg_desc *v = self; return mb_copy_sg_metal_desc(&v->metal); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_desc_set_metal(sg_desc * self, sg_metal_desc * value) {  sg_desc *v = self; sg_metal_desc replacement; mb_clone_sg_metal_desc(&replacement, value); mb_drop_sg_metal_desc(&v->metal); v->metal = replacement; }
MOONBIT_FFI_EXPORT sg_wgpu_desc * mb_gfx_sg_desc_get_wgpu(sg_desc * self) {  sg_desc *v = self; return mb_copy_sg_wgpu_desc(&v->wgpu); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_desc_set_wgpu(sg_desc * self, sg_wgpu_desc * value) {  sg_desc *v = self; sg_wgpu_desc replacement; mb_clone_sg_wgpu_desc(&replacement, value); mb_drop_sg_wgpu_desc(&v->wgpu); v->wgpu = replacement; }
MOONBIT_FFI_EXPORT sg_vulkan_desc * mb_gfx_sg_desc_get_vulkan(sg_desc * self) {  sg_desc *v = self; return mb_copy_sg_vulkan_desc(&v->vulkan); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_desc_set_vulkan(sg_desc * self, sg_vulkan_desc * value) {  sg_desc *v = self; sg_vulkan_desc replacement; mb_clone_sg_vulkan_desc(&replacement, value); mb_drop_sg_vulkan_desc(&v->vulkan); v->vulkan = replacement; }
MOONBIT_FFI_EXPORT sg_allocator * mb_gfx_sg_desc_get_allocator(sg_desc * self) {  sg_desc *v = self; return mb_copy_sg_allocator(&v->allocator); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_desc_set_allocator(sg_desc * self, sg_allocator * value) {  sg_desc *v = self; sg_allocator replacement; mb_clone_sg_allocator(&replacement, value); mb_drop_sg_allocator(&v->allocator); v->allocator = replacement; }
MOONBIT_FFI_EXPORT sg_logger * mb_gfx_sg_desc_get_logger(sg_desc * self) {  sg_desc *v = self; return mb_copy_sg_logger(&v->logger); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_desc_set_logger(sg_desc * self, sg_logger * value) {  sg_desc *v = self; sg_logger replacement; mb_clone_sg_logger(&replacement, value); mb_drop_sg_logger(&v->logger); v->logger = replacement; }
MOONBIT_FFI_EXPORT sg_environment * mb_gfx_sg_desc_get_environment(sg_desc * self) {  sg_desc *v = self; return mb_copy_sg_environment(&v->environment); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_desc_set_environment(sg_desc * self, sg_environment * value) {  sg_desc *v = self; sg_environment replacement; mb_clone_sg_environment(&replacement, value); mb_drop_sg_environment(&v->environment); v->environment = replacement; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_setup(sg_desc * desc) { sg_setup(desc); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_isvalid(void) { return sg_isvalid(); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_make_buffer(sg_buffer_desc * desc) { sg_buffer value = sg_make_buffer(desc); return value.id; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_make_image(sg_image_desc * desc) { sg_image value = sg_make_image(desc); return value.id; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_make_sampler(sg_sampler_desc * desc) { sg_sampler value = sg_make_sampler(desc); return value.id; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_make_shader(sg_shader_desc * desc) { sg_shader value = sg_make_shader(desc); return value.id; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_make_pipeline(sg_pipeline_desc * desc) { sg_pipeline value = sg_make_pipeline(desc); return value.id; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_make_view(sg_view_desc * desc) { sg_view value = sg_make_view(desc); return value.id; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_destroy_buffer(uint32_t buf) { sg_destroy_buffer((sg_buffer){ .id = buf }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_destroy_image(uint32_t img) { sg_destroy_image((sg_image){ .id = img }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_destroy_sampler(uint32_t smp) { sg_destroy_sampler((sg_sampler){ .id = smp }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_destroy_shader(uint32_t shd) { sg_destroy_shader((sg_shader){ .id = shd }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_destroy_pipeline(uint32_t pip) { sg_destroy_pipeline((sg_pipeline){ .id = pip }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_destroy_view(uint32_t view) { sg_destroy_view((sg_view){ .id = view }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_begin_pass(sg_pass * pass) { sg_begin_pass(pass); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_apply_viewport(int32_t x, int32_t y, int32_t width, int32_t height, int32_t origin_top_left) { sg_apply_viewport((int)x, (int)y, (int)width, (int)height, (bool)origin_top_left); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_apply_viewportf(float x, float y, float width, float height, int32_t origin_top_left) { sg_apply_viewportf((float)x, (float)y, (float)width, (float)height, (bool)origin_top_left); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_apply_scissor_rect(int32_t x, int32_t y, int32_t width, int32_t height, int32_t origin_top_left) { sg_apply_scissor_rect((int)x, (int)y, (int)width, (int)height, (bool)origin_top_left); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_apply_scissor_rectf(float x, float y, float width, float height, int32_t origin_top_left) { sg_apply_scissor_rectf((float)x, (float)y, (float)width, (float)height, (bool)origin_top_left); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_apply_pipeline(uint32_t pip) { sg_apply_pipeline((sg_pipeline){ .id = pip }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_apply_bindings(sg_bindings * bindings) { sg_apply_bindings(bindings); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_apply_uniforms(int32_t ub_slot, sg_range * data) { sg_apply_uniforms((int)ub_slot, data); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_write_buffer_transient(sg_write_buffer_desc * desc) { sg_write_buffer_transient(desc); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_write_image_transient(sg_write_image_desc * desc) { sg_write_image_transient(desc); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_write_buffer_unsealed(sg_write_buffer_desc * desc) { sg_write_buffer_unsealed(desc); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_write_image_unsealed(sg_write_image_desc * desc) { sg_write_image_unsealed(desc); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_seal_buffer(uint32_t buf) { sg_seal_buffer((sg_buffer){ .id = buf }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_seal_image(uint32_t img) { sg_seal_image((sg_image){ .id = img }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_copy_buffer_to_buffer(sg_copy_buffer_to_buffer_desc * desc) { sg_copy_buffer_to_buffer(desc); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_copy_buffer_to_image(sg_copy_buffer_to_image_desc * desc) { sg_copy_buffer_to_image(desc); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_copy_image_to_image(sg_copy_image_to_image_desc * desc) { sg_copy_image_to_image(desc); }
MOONBIT_FFI_EXPORT sg_desc * mb_gfx_sg_query_desc(void) { sg_desc value = sg_query_desc(); return mb_copy_sg_desc(&value); }
MOONBIT_FFI_EXPORT sg_features * mb_gfx_sg_query_features(void) { sg_features value = sg_query_features(); return mb_copy_sg_features(&value); }
MOONBIT_FFI_EXPORT sg_limits * mb_gfx_sg_query_limits(void) { sg_limits value = sg_query_limits(); return mb_copy_sg_limits(&value); }
MOONBIT_FFI_EXPORT sg_pixelformat_info * mb_gfx_sg_query_pixelformat(int32_t fmt) { sg_pixelformat_info value = sg_query_pixelformat((sg_pixel_format)fmt); return mb_copy_sg_pixelformat_info(&value); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_query_buffer_state(uint32_t buf) { return sg_query_buffer_state((sg_buffer){ .id = buf }); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_query_image_state(uint32_t img) { return sg_query_image_state((sg_image){ .id = img }); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_query_sampler_state(uint32_t smp) { return sg_query_sampler_state((sg_sampler){ .id = smp }); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_query_shader_state(uint32_t shd) { return sg_query_shader_state((sg_shader){ .id = shd }); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_query_pipeline_state(uint32_t pip) { return sg_query_pipeline_state((sg_pipeline){ .id = pip }); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_query_view_state(uint32_t view) { return sg_query_view_state((sg_view){ .id = view }); }
MOONBIT_FFI_EXPORT sg_buffer_info * mb_gfx_sg_query_buffer_info(uint32_t buf) { sg_buffer_info value = sg_query_buffer_info((sg_buffer){ .id = buf }); return mb_copy_sg_buffer_info(&value); }
MOONBIT_FFI_EXPORT sg_image_info * mb_gfx_sg_query_image_info(uint32_t img) { sg_image_info value = sg_query_image_info((sg_image){ .id = img }); return mb_copy_sg_image_info(&value); }
MOONBIT_FFI_EXPORT sg_sampler_info * mb_gfx_sg_query_sampler_info(uint32_t smp) { sg_sampler_info value = sg_query_sampler_info((sg_sampler){ .id = smp }); return mb_copy_sg_sampler_info(&value); }
MOONBIT_FFI_EXPORT sg_shader_info * mb_gfx_sg_query_shader_info(uint32_t shd) { sg_shader_info value = sg_query_shader_info((sg_shader){ .id = shd }); return mb_copy_sg_shader_info(&value); }
MOONBIT_FFI_EXPORT sg_pipeline_info * mb_gfx_sg_query_pipeline_info(uint32_t pip) { sg_pipeline_info value = sg_query_pipeline_info((sg_pipeline){ .id = pip }); return mb_copy_sg_pipeline_info(&value); }
MOONBIT_FFI_EXPORT sg_view_info * mb_gfx_sg_query_view_info(uint32_t view) { sg_view_info value = sg_query_view_info((sg_view){ .id = view }); return mb_copy_sg_view_info(&value); }
MOONBIT_FFI_EXPORT sg_buffer_desc * mb_gfx_sg_query_buffer_desc(uint32_t buf) { sg_buffer_desc value = sg_query_buffer_desc((sg_buffer){ .id = buf }); return mb_copy_sg_buffer_desc(&value); }
MOONBIT_FFI_EXPORT sg_image_desc * mb_gfx_sg_query_image_desc(uint32_t img) { sg_image_desc value = sg_query_image_desc((sg_image){ .id = img }); return mb_copy_sg_image_desc(&value); }
MOONBIT_FFI_EXPORT sg_sampler_desc * mb_gfx_sg_query_sampler_desc(uint32_t smp) { sg_sampler_desc value = sg_query_sampler_desc((sg_sampler){ .id = smp }); return mb_copy_sg_sampler_desc(&value); }
MOONBIT_FFI_EXPORT sg_shader_desc * mb_gfx_sg_query_shader_desc(uint32_t shd) { sg_shader_desc value = sg_query_shader_desc((sg_shader){ .id = shd }); return mb_copy_sg_shader_desc(&value); }
MOONBIT_FFI_EXPORT sg_pipeline_desc * mb_gfx_sg_query_pipeline_desc(uint32_t pip) { sg_pipeline_desc value = sg_query_pipeline_desc((sg_pipeline){ .id = pip }); return mb_copy_sg_pipeline_desc(&value); }
MOONBIT_FFI_EXPORT sg_view_desc * mb_gfx_sg_query_view_desc(uint32_t view) { sg_view_desc value = sg_query_view_desc((sg_view){ .id = view }); return mb_copy_sg_view_desc(&value); }
MOONBIT_FFI_EXPORT sg_buffer_desc * mb_gfx_sg_query_buffer_defaults(sg_buffer_desc * desc) { sg_buffer_desc value = sg_query_buffer_defaults(desc); return mb_copy_sg_buffer_desc(&value); }
MOONBIT_FFI_EXPORT sg_image_desc * mb_gfx_sg_query_image_defaults(sg_image_desc * desc) { sg_image_desc value = sg_query_image_defaults(desc); return mb_copy_sg_image_desc(&value); }
MOONBIT_FFI_EXPORT sg_sampler_desc * mb_gfx_sg_query_sampler_defaults(sg_sampler_desc * desc) { sg_sampler_desc value = sg_query_sampler_defaults(desc); return mb_copy_sg_sampler_desc(&value); }
MOONBIT_FFI_EXPORT sg_shader_desc * mb_gfx_sg_query_shader_defaults(sg_shader_desc * desc) { sg_shader_desc value = sg_query_shader_defaults(desc); return mb_copy_sg_shader_desc(&value); }
MOONBIT_FFI_EXPORT sg_pipeline_desc * mb_gfx_sg_query_pipeline_defaults(sg_pipeline_desc * desc) { sg_pipeline_desc value = sg_query_pipeline_defaults(desc); return mb_copy_sg_pipeline_desc(&value); }
MOONBIT_FFI_EXPORT sg_view_desc * mb_gfx_sg_query_view_defaults(sg_view_desc * desc) { sg_view_desc value = sg_query_view_defaults(desc); return mb_copy_sg_view_desc(&value); }
MOONBIT_FFI_EXPORT uint64_t mb_gfx_sg_query_buffer_size(uint32_t buf) { return sg_query_buffer_size((sg_buffer){ .id = buf }); }
MOONBIT_FFI_EXPORT sg_buffer_usage * mb_gfx_sg_query_buffer_usage(uint32_t buf) { sg_buffer_usage value = sg_query_buffer_usage((sg_buffer){ .id = buf }); return mb_copy_sg_buffer_usage(&value); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_query_image_type(uint32_t img) { return sg_query_image_type((sg_image){ .id = img }); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_query_image_width(uint32_t img) { return sg_query_image_width((sg_image){ .id = img }); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_query_image_height(uint32_t img) { return sg_query_image_height((sg_image){ .id = img }); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_query_image_num_slices(uint32_t img) { return sg_query_image_num_slices((sg_image){ .id = img }); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_query_image_num_mipmaps(uint32_t img) { return sg_query_image_num_mipmaps((sg_image){ .id = img }); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_query_image_pixelformat(uint32_t img) { return sg_query_image_pixelformat((sg_image){ .id = img }); }
MOONBIT_FFI_EXPORT sg_image_usage * mb_gfx_sg_query_image_usage(uint32_t img) { sg_image_usage value = sg_query_image_usage((sg_image){ .id = img }); return mb_copy_sg_image_usage(&value); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_query_image_sample_count(uint32_t img) { return sg_query_image_sample_count((sg_image){ .id = img }); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_query_view_type(uint32_t view) { return sg_query_view_type((sg_view){ .id = view }); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_query_view_image(uint32_t view) { sg_image value = sg_query_view_image((sg_view){ .id = view }); return value.id; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_query_view_buffer(uint32_t view) { sg_buffer value = sg_query_view_buffer((sg_view){ .id = view }); return value.id; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_alloc_buffer(void) { sg_buffer value = sg_alloc_buffer(); return value.id; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_alloc_image(void) { sg_image value = sg_alloc_image(); return value.id; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_alloc_sampler(void) { sg_sampler value = sg_alloc_sampler(); return value.id; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_alloc_shader(void) { sg_shader value = sg_alloc_shader(); return value.id; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_alloc_pipeline(void) { sg_pipeline value = sg_alloc_pipeline(); return value.id; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_alloc_view(void) { sg_view value = sg_alloc_view(); return value.id; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_dealloc_buffer(uint32_t buf) { sg_dealloc_buffer((sg_buffer){ .id = buf }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_dealloc_image(uint32_t img) { sg_dealloc_image((sg_image){ .id = img }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_dealloc_sampler(uint32_t smp) { sg_dealloc_sampler((sg_sampler){ .id = smp }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_dealloc_shader(uint32_t shd) { sg_dealloc_shader((sg_shader){ .id = shd }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_dealloc_pipeline(uint32_t pip) { sg_dealloc_pipeline((sg_pipeline){ .id = pip }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_dealloc_view(uint32_t view) { sg_dealloc_view((sg_view){ .id = view }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_init_buffer(uint32_t buf, sg_buffer_desc * desc) { sg_init_buffer((sg_buffer){ .id = buf }, desc); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_init_image(uint32_t img, sg_image_desc * desc) { sg_init_image((sg_image){ .id = img }, desc); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_init_sampler(uint32_t smg, sg_sampler_desc * desc) { sg_init_sampler((sg_sampler){ .id = smg }, desc); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_init_shader(uint32_t shd, sg_shader_desc * desc) { sg_init_shader((sg_shader){ .id = shd }, desc); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_init_pipeline(uint32_t pip, sg_pipeline_desc * desc) { sg_init_pipeline((sg_pipeline){ .id = pip }, desc); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_init_view(uint32_t view, sg_view_desc * desc) { sg_init_view((sg_view){ .id = view }, desc); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_uninit_buffer(uint32_t buf) { sg_uninit_buffer((sg_buffer){ .id = buf }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_uninit_image(uint32_t img) { sg_uninit_image((sg_image){ .id = img }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_uninit_sampler(uint32_t smp) { sg_uninit_sampler((sg_sampler){ .id = smp }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_uninit_shader(uint32_t shd) { sg_uninit_shader((sg_shader){ .id = shd }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_uninit_pipeline(uint32_t pip) { sg_uninit_pipeline((sg_pipeline){ .id = pip }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_uninit_view(uint32_t view) { sg_uninit_view((sg_view){ .id = view }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_fail_buffer(uint32_t buf) { sg_fail_buffer((sg_buffer){ .id = buf }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_fail_image(uint32_t img) { sg_fail_image((sg_image){ .id = img }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_fail_sampler(uint32_t smp) { sg_fail_sampler((sg_sampler){ .id = smp }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_fail_shader(uint32_t shd) { sg_fail_shader((sg_shader){ .id = shd }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_fail_pipeline(uint32_t pip) { sg_fail_pipeline((sg_pipeline){ .id = pip }); }
MOONBIT_FFI_EXPORT void mb_gfx_sg_fail_view(uint32_t view) { sg_fail_view((sg_view){ .id = view }); }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_stats_enabled(void) { return sg_stats_enabled(); }
MOONBIT_FFI_EXPORT sg_stats * mb_gfx_sg_query_stats(void) { sg_stats value = sg_query_stats(); return mb_copy_sg_stats(&value); }
MOONBIT_FFI_EXPORT sg_d3d11_buffer_info * mb_gfx_sg_d3d11_buffer_info_new(void) { return mb_new_sg_d3d11_buffer_info(); }
MOONBIT_FFI_EXPORT sg_d3d11_buffer_info * mb_gfx_sg_d3d11_buffer_info_copy(sg_d3d11_buffer_info * self) { return mb_copy_sg_d3d11_buffer_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_buffer_info_native(sg_d3d11_buffer_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_d3d11_buffer_info * mb_gfx_sg_d3d11_buffer_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_d3d11_buffer_info(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_buffer_info_get_buf(sg_d3d11_buffer_info * self) {  sg_d3d11_buffer_info *v = self; return (void*)v->buf; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_d3d11_buffer_info_set_buf(sg_d3d11_buffer_info * self, void * value) {  sg_d3d11_buffer_info *v = self; v->buf = value; }
MOONBIT_FFI_EXPORT sg_d3d11_image_info * mb_gfx_sg_d3d11_image_info_new(void) { return mb_new_sg_d3d11_image_info(); }
MOONBIT_FFI_EXPORT sg_d3d11_image_info * mb_gfx_sg_d3d11_image_info_copy(sg_d3d11_image_info * self) { return mb_copy_sg_d3d11_image_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_image_info_native(sg_d3d11_image_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_d3d11_image_info * mb_gfx_sg_d3d11_image_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_d3d11_image_info(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_image_info_get_tex2d(sg_d3d11_image_info * self) {  sg_d3d11_image_info *v = self; return (void*)v->tex2d; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_d3d11_image_info_set_tex2d(sg_d3d11_image_info * self, void * value) {  sg_d3d11_image_info *v = self; v->tex2d = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_image_info_get_tex3d(sg_d3d11_image_info * self) {  sg_d3d11_image_info *v = self; return (void*)v->tex3d; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_d3d11_image_info_set_tex3d(sg_d3d11_image_info * self, void * value) {  sg_d3d11_image_info *v = self; v->tex3d = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_image_info_get_res(sg_d3d11_image_info * self) {  sg_d3d11_image_info *v = self; return (void*)v->res; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_d3d11_image_info_set_res(sg_d3d11_image_info * self, void * value) {  sg_d3d11_image_info *v = self; v->res = value; }
MOONBIT_FFI_EXPORT sg_d3d11_sampler_info * mb_gfx_sg_d3d11_sampler_info_new(void) { return mb_new_sg_d3d11_sampler_info(); }
MOONBIT_FFI_EXPORT sg_d3d11_sampler_info * mb_gfx_sg_d3d11_sampler_info_copy(sg_d3d11_sampler_info * self) { return mb_copy_sg_d3d11_sampler_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_sampler_info_native(sg_d3d11_sampler_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_d3d11_sampler_info * mb_gfx_sg_d3d11_sampler_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_d3d11_sampler_info(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_sampler_info_get_smp(sg_d3d11_sampler_info * self) {  sg_d3d11_sampler_info *v = self; return (void*)v->smp; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_d3d11_sampler_info_set_smp(sg_d3d11_sampler_info * self, void * value) {  sg_d3d11_sampler_info *v = self; v->smp = value; }
MOONBIT_FFI_EXPORT sg_d3d11_shader_info * mb_gfx_sg_d3d11_shader_info_new(void) { return mb_new_sg_d3d11_shader_info(); }
MOONBIT_FFI_EXPORT sg_d3d11_shader_info * mb_gfx_sg_d3d11_shader_info_copy(sg_d3d11_shader_info * self) { return mb_copy_sg_d3d11_shader_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_shader_info_native(sg_d3d11_shader_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_d3d11_shader_info * mb_gfx_sg_d3d11_shader_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_d3d11_shader_info(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_shader_info_get_cbufs(sg_d3d11_shader_info * self, int32_t i0) { if (i0<0 || i0>=8) abort(); sg_d3d11_shader_info *v = self; return (void*)v->cbufs[i0]; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_d3d11_shader_info_set_cbufs(sg_d3d11_shader_info * self, int32_t i0, void * value) { if (i0<0 || i0>=8) abort(); sg_d3d11_shader_info *v = self; v->cbufs[i0] = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_shader_info_get_vs(sg_d3d11_shader_info * self) {  sg_d3d11_shader_info *v = self; return (void*)v->vs; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_d3d11_shader_info_set_vs(sg_d3d11_shader_info * self, void * value) {  sg_d3d11_shader_info *v = self; v->vs = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_shader_info_get_fs(sg_d3d11_shader_info * self) {  sg_d3d11_shader_info *v = self; return (void*)v->fs; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_d3d11_shader_info_set_fs(sg_d3d11_shader_info * self, void * value) {  sg_d3d11_shader_info *v = self; v->fs = value; }
MOONBIT_FFI_EXPORT sg_d3d11_pipeline_info * mb_gfx_sg_d3d11_pipeline_info_new(void) { return mb_new_sg_d3d11_pipeline_info(); }
MOONBIT_FFI_EXPORT sg_d3d11_pipeline_info * mb_gfx_sg_d3d11_pipeline_info_copy(sg_d3d11_pipeline_info * self) { return mb_copy_sg_d3d11_pipeline_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_pipeline_info_native(sg_d3d11_pipeline_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_d3d11_pipeline_info * mb_gfx_sg_d3d11_pipeline_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_d3d11_pipeline_info(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_pipeline_info_get_il(sg_d3d11_pipeline_info * self) {  sg_d3d11_pipeline_info *v = self; return (void*)v->il; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_d3d11_pipeline_info_set_il(sg_d3d11_pipeline_info * self, void * value) {  sg_d3d11_pipeline_info *v = self; v->il = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_pipeline_info_get_rs(sg_d3d11_pipeline_info * self) {  sg_d3d11_pipeline_info *v = self; return (void*)v->rs; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_d3d11_pipeline_info_set_rs(sg_d3d11_pipeline_info * self, void * value) {  sg_d3d11_pipeline_info *v = self; v->rs = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_pipeline_info_get_dss(sg_d3d11_pipeline_info * self) {  sg_d3d11_pipeline_info *v = self; return (void*)v->dss; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_d3d11_pipeline_info_set_dss(sg_d3d11_pipeline_info * self, void * value) {  sg_d3d11_pipeline_info *v = self; v->dss = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_pipeline_info_get_bs(sg_d3d11_pipeline_info * self) {  sg_d3d11_pipeline_info *v = self; return (void*)v->bs; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_d3d11_pipeline_info_set_bs(sg_d3d11_pipeline_info * self, void * value) {  sg_d3d11_pipeline_info *v = self; v->bs = value; }
MOONBIT_FFI_EXPORT sg_d3d11_view_info * mb_gfx_sg_d3d11_view_info_new(void) { return mb_new_sg_d3d11_view_info(); }
MOONBIT_FFI_EXPORT sg_d3d11_view_info * mb_gfx_sg_d3d11_view_info_copy(sg_d3d11_view_info * self) { return mb_copy_sg_d3d11_view_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_view_info_native(sg_d3d11_view_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_d3d11_view_info * mb_gfx_sg_d3d11_view_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_d3d11_view_info(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_view_info_get_srv(sg_d3d11_view_info * self) {  sg_d3d11_view_info *v = self; return (void*)v->srv; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_d3d11_view_info_set_srv(sg_d3d11_view_info * self, void * value) {  sg_d3d11_view_info *v = self; v->srv = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_view_info_get_uav(sg_d3d11_view_info * self) {  sg_d3d11_view_info *v = self; return (void*)v->uav; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_d3d11_view_info_set_uav(sg_d3d11_view_info * self, void * value) {  sg_d3d11_view_info *v = self; v->uav = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_view_info_get_rtv(sg_d3d11_view_info * self) {  sg_d3d11_view_info *v = self; return (void*)v->rtv; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_d3d11_view_info_set_rtv(sg_d3d11_view_info * self, void * value) {  sg_d3d11_view_info *v = self; v->rtv = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_d3d11_view_info_get_dsv(sg_d3d11_view_info * self) {  sg_d3d11_view_info *v = self; return (void*)v->dsv; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_d3d11_view_info_set_dsv(sg_d3d11_view_info * self, void * value) {  sg_d3d11_view_info *v = self; v->dsv = value; }
MOONBIT_FFI_EXPORT sg_mtl_buffer_info * mb_gfx_sg_mtl_buffer_info_new(void) { return mb_new_sg_mtl_buffer_info(); }
MOONBIT_FFI_EXPORT sg_mtl_buffer_info * mb_gfx_sg_mtl_buffer_info_copy(sg_mtl_buffer_info * self) { return mb_copy_sg_mtl_buffer_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_mtl_buffer_info_native(sg_mtl_buffer_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_mtl_buffer_info * mb_gfx_sg_mtl_buffer_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_mtl_buffer_info(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_mtl_buffer_info_get_buf(sg_mtl_buffer_info * self, int32_t i0) { if (i0<0 || i0>=2) abort(); sg_mtl_buffer_info *v = self; return (void*)v->buf[i0]; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_mtl_buffer_info_set_buf(sg_mtl_buffer_info * self, int32_t i0, void * value) { if (i0<0 || i0>=2) abort(); sg_mtl_buffer_info *v = self; v->buf[i0] = value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_mtl_buffer_info_get_active_slot(sg_mtl_buffer_info * self) {  sg_mtl_buffer_info *v = self; return v->active_slot; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_mtl_buffer_info_set_active_slot(sg_mtl_buffer_info * self, int32_t value) {  sg_mtl_buffer_info *v = self; v->active_slot = (int)value; }
MOONBIT_FFI_EXPORT sg_mtl_image_info * mb_gfx_sg_mtl_image_info_new(void) { return mb_new_sg_mtl_image_info(); }
MOONBIT_FFI_EXPORT sg_mtl_image_info * mb_gfx_sg_mtl_image_info_copy(sg_mtl_image_info * self) { return mb_copy_sg_mtl_image_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_mtl_image_info_native(sg_mtl_image_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_mtl_image_info * mb_gfx_sg_mtl_image_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_mtl_image_info(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_mtl_image_info_get_tex(sg_mtl_image_info * self, int32_t i0) { if (i0<0 || i0>=2) abort(); sg_mtl_image_info *v = self; return (void*)v->tex[i0]; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_mtl_image_info_set_tex(sg_mtl_image_info * self, int32_t i0, void * value) { if (i0<0 || i0>=2) abort(); sg_mtl_image_info *v = self; v->tex[i0] = value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_mtl_image_info_get_active_slot(sg_mtl_image_info * self) {  sg_mtl_image_info *v = self; return v->active_slot; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_mtl_image_info_set_active_slot(sg_mtl_image_info * self, int32_t value) {  sg_mtl_image_info *v = self; v->active_slot = (int)value; }
MOONBIT_FFI_EXPORT sg_mtl_sampler_info * mb_gfx_sg_mtl_sampler_info_new(void) { return mb_new_sg_mtl_sampler_info(); }
MOONBIT_FFI_EXPORT sg_mtl_sampler_info * mb_gfx_sg_mtl_sampler_info_copy(sg_mtl_sampler_info * self) { return mb_copy_sg_mtl_sampler_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_mtl_sampler_info_native(sg_mtl_sampler_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_mtl_sampler_info * mb_gfx_sg_mtl_sampler_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_mtl_sampler_info(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_mtl_sampler_info_get_smp(sg_mtl_sampler_info * self) {  sg_mtl_sampler_info *v = self; return (void*)v->smp; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_mtl_sampler_info_set_smp(sg_mtl_sampler_info * self, void * value) {  sg_mtl_sampler_info *v = self; v->smp = value; }
MOONBIT_FFI_EXPORT sg_mtl_shader_info * mb_gfx_sg_mtl_shader_info_new(void) { return mb_new_sg_mtl_shader_info(); }
MOONBIT_FFI_EXPORT sg_mtl_shader_info * mb_gfx_sg_mtl_shader_info_copy(sg_mtl_shader_info * self) { return mb_copy_sg_mtl_shader_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_mtl_shader_info_native(sg_mtl_shader_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_mtl_shader_info * mb_gfx_sg_mtl_shader_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_mtl_shader_info(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_mtl_shader_info_get_vertex_lib(sg_mtl_shader_info * self) {  sg_mtl_shader_info *v = self; return (void*)v->vertex_lib; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_mtl_shader_info_set_vertex_lib(sg_mtl_shader_info * self, void * value) {  sg_mtl_shader_info *v = self; v->vertex_lib = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_mtl_shader_info_get_fragment_lib(sg_mtl_shader_info * self) {  sg_mtl_shader_info *v = self; return (void*)v->fragment_lib; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_mtl_shader_info_set_fragment_lib(sg_mtl_shader_info * self, void * value) {  sg_mtl_shader_info *v = self; v->fragment_lib = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_mtl_shader_info_get_vertex_func(sg_mtl_shader_info * self) {  sg_mtl_shader_info *v = self; return (void*)v->vertex_func; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_mtl_shader_info_set_vertex_func(sg_mtl_shader_info * self, void * value) {  sg_mtl_shader_info *v = self; v->vertex_func = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_mtl_shader_info_get_fragment_func(sg_mtl_shader_info * self) {  sg_mtl_shader_info *v = self; return (void*)v->fragment_func; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_mtl_shader_info_set_fragment_func(sg_mtl_shader_info * self, void * value) {  sg_mtl_shader_info *v = self; v->fragment_func = value; }
MOONBIT_FFI_EXPORT sg_mtl_pipeline_info * mb_gfx_sg_mtl_pipeline_info_new(void) { return mb_new_sg_mtl_pipeline_info(); }
MOONBIT_FFI_EXPORT sg_mtl_pipeline_info * mb_gfx_sg_mtl_pipeline_info_copy(sg_mtl_pipeline_info * self) { return mb_copy_sg_mtl_pipeline_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_mtl_pipeline_info_native(sg_mtl_pipeline_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_mtl_pipeline_info * mb_gfx_sg_mtl_pipeline_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_mtl_pipeline_info(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_mtl_pipeline_info_get_rps(sg_mtl_pipeline_info * self) {  sg_mtl_pipeline_info *v = self; return (void*)v->rps; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_mtl_pipeline_info_set_rps(sg_mtl_pipeline_info * self, void * value) {  sg_mtl_pipeline_info *v = self; v->rps = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_mtl_pipeline_info_get_dss(sg_mtl_pipeline_info * self) {  sg_mtl_pipeline_info *v = self; return (void*)v->dss; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_mtl_pipeline_info_set_dss(sg_mtl_pipeline_info * self, void * value) {  sg_mtl_pipeline_info *v = self; v->dss = value; }
MOONBIT_FFI_EXPORT sg_wgpu_buffer_info * mb_gfx_sg_wgpu_buffer_info_new(void) { return mb_new_sg_wgpu_buffer_info(); }
MOONBIT_FFI_EXPORT sg_wgpu_buffer_info * mb_gfx_sg_wgpu_buffer_info_copy(sg_wgpu_buffer_info * self) { return mb_copy_sg_wgpu_buffer_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_wgpu_buffer_info_native(sg_wgpu_buffer_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_wgpu_buffer_info * mb_gfx_sg_wgpu_buffer_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_wgpu_buffer_info(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_wgpu_buffer_info_get_buf(sg_wgpu_buffer_info * self) {  sg_wgpu_buffer_info *v = self; return (void*)v->buf; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_buffer_info_set_buf(sg_wgpu_buffer_info * self, void * value) {  sg_wgpu_buffer_info *v = self; v->buf = value; }
MOONBIT_FFI_EXPORT sg_wgpu_image_info * mb_gfx_sg_wgpu_image_info_new(void) { return mb_new_sg_wgpu_image_info(); }
MOONBIT_FFI_EXPORT sg_wgpu_image_info * mb_gfx_sg_wgpu_image_info_copy(sg_wgpu_image_info * self) { return mb_copy_sg_wgpu_image_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_wgpu_image_info_native(sg_wgpu_image_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_wgpu_image_info * mb_gfx_sg_wgpu_image_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_wgpu_image_info(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_wgpu_image_info_get_tex(sg_wgpu_image_info * self) {  sg_wgpu_image_info *v = self; return (void*)v->tex; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_image_info_set_tex(sg_wgpu_image_info * self, void * value) {  sg_wgpu_image_info *v = self; v->tex = value; }
MOONBIT_FFI_EXPORT sg_wgpu_sampler_info * mb_gfx_sg_wgpu_sampler_info_new(void) { return mb_new_sg_wgpu_sampler_info(); }
MOONBIT_FFI_EXPORT sg_wgpu_sampler_info * mb_gfx_sg_wgpu_sampler_info_copy(sg_wgpu_sampler_info * self) { return mb_copy_sg_wgpu_sampler_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_wgpu_sampler_info_native(sg_wgpu_sampler_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_wgpu_sampler_info * mb_gfx_sg_wgpu_sampler_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_wgpu_sampler_info(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_wgpu_sampler_info_get_smp(sg_wgpu_sampler_info * self) {  sg_wgpu_sampler_info *v = self; return (void*)v->smp; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_sampler_info_set_smp(sg_wgpu_sampler_info * self, void * value) {  sg_wgpu_sampler_info *v = self; v->smp = value; }
MOONBIT_FFI_EXPORT sg_wgpu_shader_info * mb_gfx_sg_wgpu_shader_info_new(void) { return mb_new_sg_wgpu_shader_info(); }
MOONBIT_FFI_EXPORT sg_wgpu_shader_info * mb_gfx_sg_wgpu_shader_info_copy(sg_wgpu_shader_info * self) { return mb_copy_sg_wgpu_shader_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_wgpu_shader_info_native(sg_wgpu_shader_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_wgpu_shader_info * mb_gfx_sg_wgpu_shader_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_wgpu_shader_info(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_wgpu_shader_info_get_vs_mod(sg_wgpu_shader_info * self) {  sg_wgpu_shader_info *v = self; return (void*)v->vs_mod; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_shader_info_set_vs_mod(sg_wgpu_shader_info * self, void * value) {  sg_wgpu_shader_info *v = self; v->vs_mod = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_wgpu_shader_info_get_fs_mod(sg_wgpu_shader_info * self) {  sg_wgpu_shader_info *v = self; return (void*)v->fs_mod; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_shader_info_set_fs_mod(sg_wgpu_shader_info * self, void * value) {  sg_wgpu_shader_info *v = self; v->fs_mod = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_wgpu_shader_info_get_bgl(sg_wgpu_shader_info * self) {  sg_wgpu_shader_info *v = self; return (void*)v->bgl; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_shader_info_set_bgl(sg_wgpu_shader_info * self, void * value) {  sg_wgpu_shader_info *v = self; v->bgl = value; }
MOONBIT_FFI_EXPORT sg_wgpu_pipeline_info * mb_gfx_sg_wgpu_pipeline_info_new(void) { return mb_new_sg_wgpu_pipeline_info(); }
MOONBIT_FFI_EXPORT sg_wgpu_pipeline_info * mb_gfx_sg_wgpu_pipeline_info_copy(sg_wgpu_pipeline_info * self) { return mb_copy_sg_wgpu_pipeline_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_wgpu_pipeline_info_native(sg_wgpu_pipeline_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_wgpu_pipeline_info * mb_gfx_sg_wgpu_pipeline_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_wgpu_pipeline_info(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_wgpu_pipeline_info_get_render_pipeline(sg_wgpu_pipeline_info * self) {  sg_wgpu_pipeline_info *v = self; return (void*)v->render_pipeline; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_pipeline_info_set_render_pipeline(sg_wgpu_pipeline_info * self, void * value) {  sg_wgpu_pipeline_info *v = self; v->render_pipeline = value; }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_wgpu_pipeline_info_get_compute_pipeline(sg_wgpu_pipeline_info * self) {  sg_wgpu_pipeline_info *v = self; return (void*)v->compute_pipeline; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_pipeline_info_set_compute_pipeline(sg_wgpu_pipeline_info * self, void * value) {  sg_wgpu_pipeline_info *v = self; v->compute_pipeline = value; }
MOONBIT_FFI_EXPORT sg_wgpu_view_info * mb_gfx_sg_wgpu_view_info_new(void) { return mb_new_sg_wgpu_view_info(); }
MOONBIT_FFI_EXPORT sg_wgpu_view_info * mb_gfx_sg_wgpu_view_info_copy(sg_wgpu_view_info * self) { return mb_copy_sg_wgpu_view_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_wgpu_view_info_native(sg_wgpu_view_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_wgpu_view_info * mb_gfx_sg_wgpu_view_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_wgpu_view_info(ptr); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_wgpu_view_info_get_view(sg_wgpu_view_info * self) {  sg_wgpu_view_info *v = self; return (void*)v->view; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_view_info_set_view(sg_wgpu_view_info * self, void * value) {  sg_wgpu_view_info *v = self; v->view = value; }
MOONBIT_FFI_EXPORT sg_gl_buffer_info * mb_gfx_sg_gl_buffer_info_new(void) { return mb_new_sg_gl_buffer_info(); }
MOONBIT_FFI_EXPORT sg_gl_buffer_info * mb_gfx_sg_gl_buffer_info_copy(sg_gl_buffer_info * self) { return mb_copy_sg_gl_buffer_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_gl_buffer_info_native(sg_gl_buffer_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_gl_buffer_info * mb_gfx_sg_gl_buffer_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_gl_buffer_info(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_gl_buffer_info_get_buf(sg_gl_buffer_info * self, int32_t i0) { if (i0<0 || i0>=2) abort(); sg_gl_buffer_info *v = self; return v->buf[i0]; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_gl_buffer_info_set_buf(sg_gl_buffer_info * self, int32_t i0, uint32_t value) { if (i0<0 || i0>=2) abort(); sg_gl_buffer_info *v = self; v->buf[i0] = (uint32_t)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_gl_buffer_info_get_active_slot(sg_gl_buffer_info * self) {  sg_gl_buffer_info *v = self; return v->active_slot; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_gl_buffer_info_set_active_slot(sg_gl_buffer_info * self, int32_t value) {  sg_gl_buffer_info *v = self; v->active_slot = (int)value; }
MOONBIT_FFI_EXPORT sg_gl_image_info * mb_gfx_sg_gl_image_info_new(void) { return mb_new_sg_gl_image_info(); }
MOONBIT_FFI_EXPORT sg_gl_image_info * mb_gfx_sg_gl_image_info_copy(sg_gl_image_info * self) { return mb_copy_sg_gl_image_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_gl_image_info_native(sg_gl_image_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_gl_image_info * mb_gfx_sg_gl_image_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_gl_image_info(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_gl_image_info_get_tex(sg_gl_image_info * self, int32_t i0) { if (i0<0 || i0>=2) abort(); sg_gl_image_info *v = self; return v->tex[i0]; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_gl_image_info_set_tex(sg_gl_image_info * self, int32_t i0, uint32_t value) { if (i0<0 || i0>=2) abort(); sg_gl_image_info *v = self; v->tex[i0] = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_gl_image_info_get_tex_target(sg_gl_image_info * self) {  sg_gl_image_info *v = self; return v->tex_target; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_gl_image_info_set_tex_target(sg_gl_image_info * self, uint32_t value) {  sg_gl_image_info *v = self; v->tex_target = (uint32_t)value; }
MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_gl_image_info_get_active_slot(sg_gl_image_info * self) {  sg_gl_image_info *v = self; return v->active_slot; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_gl_image_info_set_active_slot(sg_gl_image_info * self, int32_t value) {  sg_gl_image_info *v = self; v->active_slot = (int)value; }
MOONBIT_FFI_EXPORT sg_gl_sampler_info * mb_gfx_sg_gl_sampler_info_new(void) { return mb_new_sg_gl_sampler_info(); }
MOONBIT_FFI_EXPORT sg_gl_sampler_info * mb_gfx_sg_gl_sampler_info_copy(sg_gl_sampler_info * self) { return mb_copy_sg_gl_sampler_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_gl_sampler_info_native(sg_gl_sampler_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_gl_sampler_info * mb_gfx_sg_gl_sampler_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_gl_sampler_info(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_gl_sampler_info_get_smp(sg_gl_sampler_info * self) {  sg_gl_sampler_info *v = self; return v->smp; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_gl_sampler_info_set_smp(sg_gl_sampler_info * self, uint32_t value) {  sg_gl_sampler_info *v = self; v->smp = (uint32_t)value; }
MOONBIT_FFI_EXPORT sg_gl_shader_info * mb_gfx_sg_gl_shader_info_new(void) { return mb_new_sg_gl_shader_info(); }
MOONBIT_FFI_EXPORT sg_gl_shader_info * mb_gfx_sg_gl_shader_info_copy(sg_gl_shader_info * self) { return mb_copy_sg_gl_shader_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_gl_shader_info_native(sg_gl_shader_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_gl_shader_info * mb_gfx_sg_gl_shader_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_gl_shader_info(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_gl_shader_info_get_prog(sg_gl_shader_info * self) {  sg_gl_shader_info *v = self; return v->prog; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_gl_shader_info_set_prog(sg_gl_shader_info * self, uint32_t value) {  sg_gl_shader_info *v = self; v->prog = (uint32_t)value; }
MOONBIT_FFI_EXPORT sg_gl_view_info * mb_gfx_sg_gl_view_info_new(void) { return mb_new_sg_gl_view_info(); }
MOONBIT_FFI_EXPORT sg_gl_view_info * mb_gfx_sg_gl_view_info_copy(sg_gl_view_info * self) { return mb_copy_sg_gl_view_info(self); }
MOONBIT_FFI_EXPORT void * mb_gfx_sg_gl_view_info_native(sg_gl_view_info * self) { return self; }
MOONBIT_FFI_EXPORT sg_gl_view_info * mb_gfx_sg_gl_view_info_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sg_gl_view_info(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_gl_view_info_get_tex_view(sg_gl_view_info * self, int32_t i0) { if (i0<0 || i0>=2) abort(); sg_gl_view_info *v = self; return v->tex_view[i0]; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_gl_view_info_set_tex_view(sg_gl_view_info * self, int32_t i0, uint32_t value) { if (i0<0 || i0>=2) abort(); sg_gl_view_info *v = self; v->tex_view[i0] = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_gl_view_info_get_msaa_render_buffer(sg_gl_view_info * self) {  sg_gl_view_info *v = self; return v->msaa_render_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_gl_view_info_set_msaa_render_buffer(sg_gl_view_info * self, uint32_t value) {  sg_gl_view_info *v = self; v->msaa_render_buffer = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_gl_view_info_get_msaa_resolve_frame_buffer(sg_gl_view_info * self) {  sg_gl_view_info *v = self; return v->msaa_resolve_frame_buffer; }
MOONBIT_FFI_EXPORT void mb_gfx_sg_gl_view_info_set_msaa_resolve_frame_buffer(sg_gl_view_info * self, uint32_t value) {  sg_gl_view_info *v = self; v->msaa_resolve_frame_buffer = (uint32_t)value; }
MOONBIT_FFI_EXPORT sg_d3d11_buffer_info * mb_gfx_sg_d3d11_query_buffer_info(uint32_t buf) { sg_d3d11_buffer_info value = sg_d3d11_query_buffer_info((sg_buffer){ .id = buf }); return mb_copy_sg_d3d11_buffer_info(&value); }
MOONBIT_FFI_EXPORT sg_d3d11_image_info * mb_gfx_sg_d3d11_query_image_info(uint32_t img) { sg_d3d11_image_info value = sg_d3d11_query_image_info((sg_image){ .id = img }); return mb_copy_sg_d3d11_image_info(&value); }
MOONBIT_FFI_EXPORT sg_d3d11_sampler_info * mb_gfx_sg_d3d11_query_sampler_info(uint32_t smp) { sg_d3d11_sampler_info value = sg_d3d11_query_sampler_info((sg_sampler){ .id = smp }); return mb_copy_sg_d3d11_sampler_info(&value); }
MOONBIT_FFI_EXPORT sg_d3d11_shader_info * mb_gfx_sg_d3d11_query_shader_info(uint32_t shd) { sg_d3d11_shader_info value = sg_d3d11_query_shader_info((sg_shader){ .id = shd }); return mb_copy_sg_d3d11_shader_info(&value); }
MOONBIT_FFI_EXPORT sg_d3d11_pipeline_info * mb_gfx_sg_d3d11_query_pipeline_info(uint32_t pip) { sg_d3d11_pipeline_info value = sg_d3d11_query_pipeline_info((sg_pipeline){ .id = pip }); return mb_copy_sg_d3d11_pipeline_info(&value); }
MOONBIT_FFI_EXPORT sg_d3d11_view_info * mb_gfx_sg_d3d11_query_view_info(uint32_t view) { sg_d3d11_view_info value = sg_d3d11_query_view_info((sg_view){ .id = view }); return mb_copy_sg_d3d11_view_info(&value); }
MOONBIT_FFI_EXPORT sg_mtl_buffer_info * mb_gfx_sg_mtl_query_buffer_info(uint32_t buf) { sg_mtl_buffer_info value = sg_mtl_query_buffer_info((sg_buffer){ .id = buf }); return mb_copy_sg_mtl_buffer_info(&value); }
MOONBIT_FFI_EXPORT sg_mtl_image_info * mb_gfx_sg_mtl_query_image_info(uint32_t img) { sg_mtl_image_info value = sg_mtl_query_image_info((sg_image){ .id = img }); return mb_copy_sg_mtl_image_info(&value); }
MOONBIT_FFI_EXPORT sg_mtl_sampler_info * mb_gfx_sg_mtl_query_sampler_info(uint32_t smp) { sg_mtl_sampler_info value = sg_mtl_query_sampler_info((sg_sampler){ .id = smp }); return mb_copy_sg_mtl_sampler_info(&value); }
MOONBIT_FFI_EXPORT sg_mtl_shader_info * mb_gfx_sg_mtl_query_shader_info(uint32_t shd) { sg_mtl_shader_info value = sg_mtl_query_shader_info((sg_shader){ .id = shd }); return mb_copy_sg_mtl_shader_info(&value); }
MOONBIT_FFI_EXPORT sg_mtl_pipeline_info * mb_gfx_sg_mtl_query_pipeline_info(uint32_t pip) { sg_mtl_pipeline_info value = sg_mtl_query_pipeline_info((sg_pipeline){ .id = pip }); return mb_copy_sg_mtl_pipeline_info(&value); }
MOONBIT_FFI_EXPORT sg_wgpu_buffer_info * mb_gfx_sg_wgpu_query_buffer_info(uint32_t buf) { sg_wgpu_buffer_info value = sg_wgpu_query_buffer_info((sg_buffer){ .id = buf }); return mb_copy_sg_wgpu_buffer_info(&value); }
MOONBIT_FFI_EXPORT sg_wgpu_image_info * mb_gfx_sg_wgpu_query_image_info(uint32_t img) { sg_wgpu_image_info value = sg_wgpu_query_image_info((sg_image){ .id = img }); return mb_copy_sg_wgpu_image_info(&value); }
MOONBIT_FFI_EXPORT sg_wgpu_sampler_info * mb_gfx_sg_wgpu_query_sampler_info(uint32_t smp) { sg_wgpu_sampler_info value = sg_wgpu_query_sampler_info((sg_sampler){ .id = smp }); return mb_copy_sg_wgpu_sampler_info(&value); }
MOONBIT_FFI_EXPORT sg_wgpu_shader_info * mb_gfx_sg_wgpu_query_shader_info(uint32_t shd) { sg_wgpu_shader_info value = sg_wgpu_query_shader_info((sg_shader){ .id = shd }); return mb_copy_sg_wgpu_shader_info(&value); }
MOONBIT_FFI_EXPORT sg_wgpu_pipeline_info * mb_gfx_sg_wgpu_query_pipeline_info(uint32_t pip) { sg_wgpu_pipeline_info value = sg_wgpu_query_pipeline_info((sg_pipeline){ .id = pip }); return mb_copy_sg_wgpu_pipeline_info(&value); }
MOONBIT_FFI_EXPORT sg_wgpu_view_info * mb_gfx_sg_wgpu_query_view_info(uint32_t view) { sg_wgpu_view_info value = sg_wgpu_query_view_info((sg_view){ .id = view }); return mb_copy_sg_wgpu_view_info(&value); }
MOONBIT_FFI_EXPORT sg_gl_buffer_info * mb_gfx_sg_gl_query_buffer_info(uint32_t buf) { sg_gl_buffer_info value = sg_gl_query_buffer_info((sg_buffer){ .id = buf }); return mb_copy_sg_gl_buffer_info(&value); }
MOONBIT_FFI_EXPORT sg_gl_image_info * mb_gfx_sg_gl_query_image_info(uint32_t img) { sg_gl_image_info value = sg_gl_query_image_info((sg_image){ .id = img }); return mb_copy_sg_gl_image_info(&value); }
MOONBIT_FFI_EXPORT sg_gl_sampler_info * mb_gfx_sg_gl_query_sampler_info(uint32_t smp) { sg_gl_sampler_info value = sg_gl_query_sampler_info((sg_sampler){ .id = smp }); return mb_copy_sg_gl_sampler_info(&value); }
MOONBIT_FFI_EXPORT sg_gl_shader_info * mb_gfx_sg_gl_query_shader_info(uint32_t shd) { sg_gl_shader_info value = sg_gl_query_shader_info((sg_shader){ .id = shd }); return mb_copy_sg_gl_shader_info(&value); }
MOONBIT_FFI_EXPORT sg_gl_view_info * mb_gfx_sg_gl_query_view_info(uint32_t view) { sg_gl_view_info value = sg_gl_query_view_info((sg_view){ .id = view }); return mb_copy_sg_gl_view_info(&value); }
MOONBIT_FFI_EXPORT sg_logger * mb_gfx_sg_logger_default(void) { sg_logger *r = mb_new_sg_logger(); r->func = slog_func; return r; }
