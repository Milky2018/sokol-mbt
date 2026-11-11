static void mb_clone_sg_frame_stats_d3d11(sg_frame_stats_d3d11 *dst,
                                          const sg_frame_stats_d3d11 *src) {
    *dst = *src;
    mb_clone_sg_frame_stats_d3d11_pass(&dst->pass, &src->pass);
    mb_clone_sg_frame_stats_d3d11_pipeline(&dst->pipeline, &src->pipeline);
    mb_clone_sg_frame_stats_d3d11_bindings(&dst->bindings, &src->bindings);
    mb_clone_sg_frame_stats_d3d11_draw(&dst->draw, &src->draw);
}

static void mb_drop_sg_frame_stats_d3d11(void *object) {
    sg_frame_stats_d3d11 *value = object;
    mb_drop_sg_frame_stats_d3d11_pass(&value->pass);
    mb_drop_sg_frame_stats_d3d11_pipeline(&value->pipeline);
    mb_drop_sg_frame_stats_d3d11_bindings(&value->bindings);
    mb_drop_sg_frame_stats_d3d11_draw(&value->draw);
}

_Static_assert(_Alignof(sg_frame_stats_d3d11) <= _Alignof(void *), "external payload alignment");

static sg_frame_stats_d3d11 *mb_new_sg_frame_stats_d3d11(void) {
    return mb_object_new(sizeof(sg_frame_stats_d3d11), mb_drop_sg_frame_stats_d3d11);
}

static sg_frame_stats_d3d11 *mb_copy_sg_frame_stats_d3d11(const sg_frame_stats_d3d11 *source) {
    sg_frame_stats_d3d11 *result = mb_new_sg_frame_stats_d3d11();
    mb_clone_sg_frame_stats_d3d11(result, source);
    return result;
}

static void mb_clone_sg_frame_stats_d3d11_bindings(sg_frame_stats_d3d11_bindings *dst,
                                                   const sg_frame_stats_d3d11_bindings *src) {
    *dst = *src;
}

static void mb_drop_sg_frame_stats_d3d11_bindings(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sg_frame_stats_d3d11_bindings) <= _Alignof(void *),
               "external payload alignment");

static sg_frame_stats_d3d11_bindings *mb_new_sg_frame_stats_d3d11_bindings(void) {
    return mb_object_new(sizeof(sg_frame_stats_d3d11_bindings),
                         mb_drop_sg_frame_stats_d3d11_bindings);
}

static sg_frame_stats_d3d11_bindings *
mb_copy_sg_frame_stats_d3d11_bindings(const sg_frame_stats_d3d11_bindings *source) {
    sg_frame_stats_d3d11_bindings *result = mb_new_sg_frame_stats_d3d11_bindings();
    mb_clone_sg_frame_stats_d3d11_bindings(result, source);
    return result;
}

static void mb_clone_sg_frame_stats_d3d11_draw(sg_frame_stats_d3d11_draw *dst,
                                               const sg_frame_stats_d3d11_draw *src) {
    *dst = *src;
}

static void mb_drop_sg_frame_stats_d3d11_draw(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sg_frame_stats_d3d11_draw) <= _Alignof(void *),
               "external payload alignment");

static sg_frame_stats_d3d11_draw *mb_new_sg_frame_stats_d3d11_draw(void) {
    return mb_object_new(sizeof(sg_frame_stats_d3d11_draw), mb_drop_sg_frame_stats_d3d11_draw);
}

static sg_frame_stats_d3d11_draw *
mb_copy_sg_frame_stats_d3d11_draw(const sg_frame_stats_d3d11_draw *source) {
    sg_frame_stats_d3d11_draw *result = mb_new_sg_frame_stats_d3d11_draw();
    mb_clone_sg_frame_stats_d3d11_draw(result, source);
    return result;
}

static void mb_clone_sg_frame_stats_d3d11_pass(sg_frame_stats_d3d11_pass *dst,
                                               const sg_frame_stats_d3d11_pass *src) {
    *dst = *src;
}

static void mb_drop_sg_frame_stats_d3d11_pass(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sg_frame_stats_d3d11_pass) <= _Alignof(void *),
               "external payload alignment");

static sg_frame_stats_d3d11_pass *mb_new_sg_frame_stats_d3d11_pass(void) {
    return mb_object_new(sizeof(sg_frame_stats_d3d11_pass), mb_drop_sg_frame_stats_d3d11_pass);
}

static sg_frame_stats_d3d11_pass *
mb_copy_sg_frame_stats_d3d11_pass(const sg_frame_stats_d3d11_pass *source) {
    sg_frame_stats_d3d11_pass *result = mb_new_sg_frame_stats_d3d11_pass();
    mb_clone_sg_frame_stats_d3d11_pass(result, source);
    return result;
}

static void mb_clone_sg_frame_stats_d3d11_pipeline(sg_frame_stats_d3d11_pipeline *dst,
                                                   const sg_frame_stats_d3d11_pipeline *src) {
    *dst = *src;
}

static void mb_drop_sg_frame_stats_d3d11_pipeline(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sg_frame_stats_d3d11_pipeline) <= _Alignof(void *),
               "external payload alignment");

static sg_frame_stats_d3d11_pipeline *mb_new_sg_frame_stats_d3d11_pipeline(void) {
    return mb_object_new(sizeof(sg_frame_stats_d3d11_pipeline),
                         mb_drop_sg_frame_stats_d3d11_pipeline);
}

static sg_frame_stats_d3d11_pipeline *
mb_copy_sg_frame_stats_d3d11_pipeline(const sg_frame_stats_d3d11_pipeline *source) {
    sg_frame_stats_d3d11_pipeline *result = mb_new_sg_frame_stats_d3d11_pipeline();
    mb_clone_sg_frame_stats_d3d11_pipeline(result, source);
    return result;
}

MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_pass *mb_gfx_sg_frame_stats_d3d11_pass_new(void) {
    return mb_new_sg_frame_stats_d3d11_pass();
}

MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_pass *
mb_gfx_sg_frame_stats_d3d11_pass_copy(sg_frame_stats_d3d11_pass *self) {
    return mb_copy_sg_frame_stats_d3d11_pass(self);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_frame_stats_d3d11_pass_native(sg_frame_stats_d3d11_pass *self) {
    return self;
}

MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_pass *
mb_gfx_sg_frame_stats_d3d11_pass_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sg_frame_stats_d3d11_pass(ptr);
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_d3d11_pass_get_num_om_set_render_targets(sg_frame_stats_d3d11_pass *self) {
    sg_frame_stats_d3d11_pass *value = self;
    return value->num_om_set_render_targets;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_d3d11_pass_set_num_om_set_render_targets(sg_frame_stats_d3d11_pass *self,
                                                               uint32_t replacement) {
    sg_frame_stats_d3d11_pass *value = self;
    value->num_om_set_render_targets = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_d3d11_pass_get_num_clear_render_target_view(sg_frame_stats_d3d11_pass *self) {
    sg_frame_stats_d3d11_pass *value = self;
    return value->num_clear_render_target_view;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_d3d11_pass_set_num_clear_render_target_view(sg_frame_stats_d3d11_pass *self,
                                                                  uint32_t replacement) {
    sg_frame_stats_d3d11_pass *value = self;
    value->num_clear_render_target_view = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_d3d11_pass_get_num_clear_depth_stencil_view(sg_frame_stats_d3d11_pass *self) {
    sg_frame_stats_d3d11_pass *value = self;
    return value->num_clear_depth_stencil_view;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_d3d11_pass_set_num_clear_depth_stencil_view(sg_frame_stats_d3d11_pass *self,
                                                                  uint32_t replacement) {
    sg_frame_stats_d3d11_pass *value = self;
    value->num_clear_depth_stencil_view = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_d3d11_pass_get_num_resolve_subresource(sg_frame_stats_d3d11_pass *self) {
    sg_frame_stats_d3d11_pass *value = self;
    return value->num_resolve_subresource;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_d3d11_pass_set_num_resolve_subresource(sg_frame_stats_d3d11_pass *self,
                                                             uint32_t replacement) {
    sg_frame_stats_d3d11_pass *value = self;
    value->num_resolve_subresource = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_pipeline *mb_gfx_sg_frame_stats_d3d11_pipeline_new(void) {
    return mb_new_sg_frame_stats_d3d11_pipeline();
}

MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_pipeline *
mb_gfx_sg_frame_stats_d3d11_pipeline_copy(sg_frame_stats_d3d11_pipeline *self) {
    return mb_copy_sg_frame_stats_d3d11_pipeline(self);
}

MOONBIT_FFI_EXPORT void *
mb_gfx_sg_frame_stats_d3d11_pipeline_native(sg_frame_stats_d3d11_pipeline *self) {
    return self;
}

MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_pipeline *
mb_gfx_sg_frame_stats_d3d11_pipeline_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sg_frame_stats_d3d11_pipeline(ptr);
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_rs_set_state(sg_frame_stats_d3d11_pipeline *self) {
    sg_frame_stats_d3d11_pipeline *value = self;
    return value->num_rs_set_state;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_rs_set_state(sg_frame_stats_d3d11_pipeline *self,
                                                          uint32_t replacement) {
    sg_frame_stats_d3d11_pipeline *value = self;
    value->num_rs_set_state = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_om_set_depth_stencil_state(
    sg_frame_stats_d3d11_pipeline *self) {
    sg_frame_stats_d3d11_pipeline *value = self;
    return value->num_om_set_depth_stencil_state;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_om_set_depth_stencil_state(
    sg_frame_stats_d3d11_pipeline *self, uint32_t replacement) {
    sg_frame_stats_d3d11_pipeline *value = self;
    value->num_om_set_depth_stencil_state = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_om_set_blend_state(
    sg_frame_stats_d3d11_pipeline *self) {
    sg_frame_stats_d3d11_pipeline *value = self;
    return value->num_om_set_blend_state;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_om_set_blend_state(sg_frame_stats_d3d11_pipeline *self,
                                                                uint32_t replacement) {
    sg_frame_stats_d3d11_pipeline *value = self;
    value->num_om_set_blend_state = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_ia_set_primitive_topology(
    sg_frame_stats_d3d11_pipeline *self) {
    sg_frame_stats_d3d11_pipeline *value = self;
    return value->num_ia_set_primitive_topology;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_ia_set_primitive_topology(
    sg_frame_stats_d3d11_pipeline *self, uint32_t replacement) {
    sg_frame_stats_d3d11_pipeline *value = self;
    value->num_ia_set_primitive_topology = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_ia_set_input_layout(
    sg_frame_stats_d3d11_pipeline *self) {
    sg_frame_stats_d3d11_pipeline *value = self;
    return value->num_ia_set_input_layout;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_ia_set_input_layout(
    sg_frame_stats_d3d11_pipeline *self, uint32_t replacement) {
    sg_frame_stats_d3d11_pipeline *value = self;
    value->num_ia_set_input_layout = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_vs_set_shader(sg_frame_stats_d3d11_pipeline *self) {
    sg_frame_stats_d3d11_pipeline *value = self;
    return value->num_vs_set_shader;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_vs_set_shader(sg_frame_stats_d3d11_pipeline *self,
                                                           uint32_t replacement) {
    sg_frame_stats_d3d11_pipeline *value = self;
    value->num_vs_set_shader = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_vs_set_constant_buffers(
    sg_frame_stats_d3d11_pipeline *self) {
    sg_frame_stats_d3d11_pipeline *value = self;
    return value->num_vs_set_constant_buffers;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_vs_set_constant_buffers(
    sg_frame_stats_d3d11_pipeline *self, uint32_t replacement) {
    sg_frame_stats_d3d11_pipeline *value = self;
    value->num_vs_set_constant_buffers = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_ps_set_shader(sg_frame_stats_d3d11_pipeline *self) {
    sg_frame_stats_d3d11_pipeline *value = self;
    return value->num_ps_set_shader;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_ps_set_shader(sg_frame_stats_d3d11_pipeline *self,
                                                           uint32_t replacement) {
    sg_frame_stats_d3d11_pipeline *value = self;
    value->num_ps_set_shader = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_ps_set_constant_buffers(
    sg_frame_stats_d3d11_pipeline *self) {
    sg_frame_stats_d3d11_pipeline *value = self;
    return value->num_ps_set_constant_buffers;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_ps_set_constant_buffers(
    sg_frame_stats_d3d11_pipeline *self, uint32_t replacement) {
    sg_frame_stats_d3d11_pipeline *value = self;
    value->num_ps_set_constant_buffers = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_cs_set_shader(sg_frame_stats_d3d11_pipeline *self) {
    sg_frame_stats_d3d11_pipeline *value = self;
    return value->num_cs_set_shader;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_cs_set_shader(sg_frame_stats_d3d11_pipeline *self,
                                                           uint32_t replacement) {
    sg_frame_stats_d3d11_pipeline *value = self;
    value->num_cs_set_shader = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_pipeline_get_num_cs_set_constant_buffers(
    sg_frame_stats_d3d11_pipeline *self) {
    sg_frame_stats_d3d11_pipeline *value = self;
    return value->num_cs_set_constant_buffers;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_pipeline_set_num_cs_set_constant_buffers(
    sg_frame_stats_d3d11_pipeline *self, uint32_t replacement) {
    sg_frame_stats_d3d11_pipeline *value = self;
    value->num_cs_set_constant_buffers = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_bindings *mb_gfx_sg_frame_stats_d3d11_bindings_new(void) {
    return mb_new_sg_frame_stats_d3d11_bindings();
}

MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_bindings *
mb_gfx_sg_frame_stats_d3d11_bindings_copy(sg_frame_stats_d3d11_bindings *self) {
    return mb_copy_sg_frame_stats_d3d11_bindings(self);
}

MOONBIT_FFI_EXPORT void *
mb_gfx_sg_frame_stats_d3d11_bindings_native(sg_frame_stats_d3d11_bindings *self) {
    return self;
}

MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_bindings *
mb_gfx_sg_frame_stats_d3d11_bindings_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sg_frame_stats_d3d11_bindings(ptr);
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_bindings_get_num_ia_set_vertex_buffers(
    sg_frame_stats_d3d11_bindings *self) {
    sg_frame_stats_d3d11_bindings *value = self;
    return value->num_ia_set_vertex_buffers;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_bindings_set_num_ia_set_vertex_buffers(
    sg_frame_stats_d3d11_bindings *self, uint32_t replacement) {
    sg_frame_stats_d3d11_bindings *value = self;
    value->num_ia_set_vertex_buffers = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_bindings_get_num_ia_set_index_buffer(
    sg_frame_stats_d3d11_bindings *self) {
    sg_frame_stats_d3d11_bindings *value = self;
    return value->num_ia_set_index_buffer;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_bindings_set_num_ia_set_index_buffer(
    sg_frame_stats_d3d11_bindings *self, uint32_t replacement) {
    sg_frame_stats_d3d11_bindings *value = self;
    value->num_ia_set_index_buffer = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_bindings_get_num_vs_set_shader_resources(
    sg_frame_stats_d3d11_bindings *self) {
    sg_frame_stats_d3d11_bindings *value = self;
    return value->num_vs_set_shader_resources;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_bindings_set_num_vs_set_shader_resources(
    sg_frame_stats_d3d11_bindings *self, uint32_t replacement) {
    sg_frame_stats_d3d11_bindings *value = self;
    value->num_vs_set_shader_resources = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_d3d11_bindings_get_num_vs_set_samplers(sg_frame_stats_d3d11_bindings *self) {
    sg_frame_stats_d3d11_bindings *value = self;
    return value->num_vs_set_samplers;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_d3d11_bindings_set_num_vs_set_samplers(sg_frame_stats_d3d11_bindings *self,
                                                             uint32_t replacement) {
    sg_frame_stats_d3d11_bindings *value = self;
    value->num_vs_set_samplers = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_bindings_get_num_ps_set_shader_resources(
    sg_frame_stats_d3d11_bindings *self) {
    sg_frame_stats_d3d11_bindings *value = self;
    return value->num_ps_set_shader_resources;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_bindings_set_num_ps_set_shader_resources(
    sg_frame_stats_d3d11_bindings *self, uint32_t replacement) {
    sg_frame_stats_d3d11_bindings *value = self;
    value->num_ps_set_shader_resources = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_d3d11_bindings_get_num_ps_set_samplers(sg_frame_stats_d3d11_bindings *self) {
    sg_frame_stats_d3d11_bindings *value = self;
    return value->num_ps_set_samplers;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_d3d11_bindings_set_num_ps_set_samplers(sg_frame_stats_d3d11_bindings *self,
                                                             uint32_t replacement) {
    sg_frame_stats_d3d11_bindings *value = self;
    value->num_ps_set_samplers = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_bindings_get_num_cs_set_shader_resources(
    sg_frame_stats_d3d11_bindings *self) {
    sg_frame_stats_d3d11_bindings *value = self;
    return value->num_cs_set_shader_resources;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_bindings_set_num_cs_set_shader_resources(
    sg_frame_stats_d3d11_bindings *self, uint32_t replacement) {
    sg_frame_stats_d3d11_bindings *value = self;
    value->num_cs_set_shader_resources = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_d3d11_bindings_get_num_cs_set_samplers(sg_frame_stats_d3d11_bindings *self) {
    sg_frame_stats_d3d11_bindings *value = self;
    return value->num_cs_set_samplers;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_d3d11_bindings_set_num_cs_set_samplers(sg_frame_stats_d3d11_bindings *self,
                                                             uint32_t replacement) {
    sg_frame_stats_d3d11_bindings *value = self;
    value->num_cs_set_samplers = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_d3d11_bindings_get_num_cs_set_unordered_access_views(
    sg_frame_stats_d3d11_bindings *self) {
    sg_frame_stats_d3d11_bindings *value = self;
    return value->num_cs_set_unordered_access_views;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_bindings_set_num_cs_set_unordered_access_views(
    sg_frame_stats_d3d11_bindings *self, uint32_t replacement) {
    sg_frame_stats_d3d11_bindings *value = self;
    value->num_cs_set_unordered_access_views = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_bindings_get_num_om_set_rts_and_uavs(
    sg_frame_stats_d3d11_bindings *self) {
    sg_frame_stats_d3d11_bindings *value = self;
    return value->num_om_set_rts_and_uavs;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_bindings_set_num_om_set_rts_and_uavs(
    sg_frame_stats_d3d11_bindings *self, uint32_t replacement) {
    sg_frame_stats_d3d11_bindings *value = self;
    value->num_om_set_rts_and_uavs = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_draw *mb_gfx_sg_frame_stats_d3d11_draw_new(void) {
    return mb_new_sg_frame_stats_d3d11_draw();
}

MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_draw *
mb_gfx_sg_frame_stats_d3d11_draw_copy(sg_frame_stats_d3d11_draw *self) {
    return mb_copy_sg_frame_stats_d3d11_draw(self);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_frame_stats_d3d11_draw_native(sg_frame_stats_d3d11_draw *self) {
    return self;
}

MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_draw *
mb_gfx_sg_frame_stats_d3d11_draw_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sg_frame_stats_d3d11_draw(ptr);
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_d3d11_draw_get_num_draw_indexed_instanced(sg_frame_stats_d3d11_draw *self) {
    sg_frame_stats_d3d11_draw *value = self;
    return value->num_draw_indexed_instanced;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_d3d11_draw_set_num_draw_indexed_instanced(sg_frame_stats_d3d11_draw *self,
                                                                uint32_t replacement) {
    sg_frame_stats_d3d11_draw *value = self;
    value->num_draw_indexed_instanced = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_d3d11_draw_get_num_draw_indexed(sg_frame_stats_d3d11_draw *self) {
    sg_frame_stats_d3d11_draw *value = self;
    return value->num_draw_indexed;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_d3d11_draw_set_num_draw_indexed(sg_frame_stats_d3d11_draw *self,
                                                      uint32_t replacement) {
    sg_frame_stats_d3d11_draw *value = self;
    value->num_draw_indexed = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_d3d11_draw_get_num_draw_instanced(sg_frame_stats_d3d11_draw *self) {
    sg_frame_stats_d3d11_draw *value = self;
    return value->num_draw_instanced;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_d3d11_draw_set_num_draw_instanced(sg_frame_stats_d3d11_draw *self,
                                                        uint32_t replacement) {
    sg_frame_stats_d3d11_draw *value = self;
    value->num_draw_instanced = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_d3d11_draw_get_num_draw(sg_frame_stats_d3d11_draw *self) {
    sg_frame_stats_d3d11_draw *value = self;
    return value->num_draw;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_d3d11_draw_set_num_draw(sg_frame_stats_d3d11_draw *self,
                                              uint32_t replacement) {
    sg_frame_stats_d3d11_draw *value = self;
    value->num_draw = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT sg_frame_stats_d3d11 *mb_gfx_sg_frame_stats_d3d11_new(void) {
    return mb_new_sg_frame_stats_d3d11();
}

MOONBIT_FFI_EXPORT sg_frame_stats_d3d11 *
mb_gfx_sg_frame_stats_d3d11_copy(sg_frame_stats_d3d11 *self) {
    return mb_copy_sg_frame_stats_d3d11(self);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_frame_stats_d3d11_native(sg_frame_stats_d3d11 *self) {
    return self;
}

MOONBIT_FFI_EXPORT sg_frame_stats_d3d11 *mb_gfx_sg_frame_stats_d3d11_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sg_frame_stats_d3d11(ptr);
}

MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_pass *
mb_gfx_sg_frame_stats_d3d11_get_pass(sg_frame_stats_d3d11 *self) {
    sg_frame_stats_d3d11 *value = self;
    return mb_copy_sg_frame_stats_d3d11_pass(&value->pass);
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_d3d11_set_pass(sg_frame_stats_d3d11 *self,
                                     sg_frame_stats_d3d11_pass *replacement) {
    sg_frame_stats_d3d11 *value = self;
    sg_frame_stats_d3d11_pass copy;
    mb_clone_sg_frame_stats_d3d11_pass(&copy, replacement);
    mb_drop_sg_frame_stats_d3d11_pass(&value->pass);
    value->pass = copy;
}

MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_pipeline *
mb_gfx_sg_frame_stats_d3d11_get_pipeline(sg_frame_stats_d3d11 *self) {
    sg_frame_stats_d3d11 *value = self;
    return mb_copy_sg_frame_stats_d3d11_pipeline(&value->pipeline);
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_d3d11_set_pipeline(sg_frame_stats_d3d11 *self,
                                         sg_frame_stats_d3d11_pipeline *replacement) {
    sg_frame_stats_d3d11 *value = self;
    sg_frame_stats_d3d11_pipeline copy;
    mb_clone_sg_frame_stats_d3d11_pipeline(&copy, replacement);
    mb_drop_sg_frame_stats_d3d11_pipeline(&value->pipeline);
    value->pipeline = copy;
}

MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_bindings *
mb_gfx_sg_frame_stats_d3d11_get_bindings(sg_frame_stats_d3d11 *self) {
    sg_frame_stats_d3d11 *value = self;
    return mb_copy_sg_frame_stats_d3d11_bindings(&value->bindings);
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_d3d11_set_bindings(sg_frame_stats_d3d11 *self,
                                         sg_frame_stats_d3d11_bindings *replacement) {
    sg_frame_stats_d3d11 *value = self;
    sg_frame_stats_d3d11_bindings copy;
    mb_clone_sg_frame_stats_d3d11_bindings(&copy, replacement);
    mb_drop_sg_frame_stats_d3d11_bindings(&value->bindings);
    value->bindings = copy;
}

MOONBIT_FFI_EXPORT sg_frame_stats_d3d11_draw *
mb_gfx_sg_frame_stats_d3d11_get_draw(sg_frame_stats_d3d11 *self) {
    sg_frame_stats_d3d11 *value = self;
    return mb_copy_sg_frame_stats_d3d11_draw(&value->draw);
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_d3d11_set_draw(sg_frame_stats_d3d11 *self,
                                     sg_frame_stats_d3d11_draw *replacement) {
    sg_frame_stats_d3d11 *value = self;
    sg_frame_stats_d3d11_draw copy;
    mb_clone_sg_frame_stats_d3d11_draw(&copy, replacement);
    mb_drop_sg_frame_stats_d3d11_draw(&value->draw);
    value->draw = copy;
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_d3d11_get_num_update_subresource(sg_frame_stats_d3d11 *self) {
    sg_frame_stats_d3d11 *value = self;
    return value->num_update_subresource;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_d3d11_set_num_update_subresource(sg_frame_stats_d3d11 *self,
                                                       uint32_t replacement) {
    sg_frame_stats_d3d11 *value = self;
    value->num_update_subresource = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_d3d11_get_num_copy_subresource_region(sg_frame_stats_d3d11 *self) {
    sg_frame_stats_d3d11 *value = self;
    return value->num_copy_subresource_region;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_d3d11_set_num_copy_subresource_region(sg_frame_stats_d3d11 *self,
                                                            uint32_t replacement) {
    sg_frame_stats_d3d11 *value = self;
    value->num_copy_subresource_region = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_get_num_map(sg_frame_stats_d3d11 *self) {
    sg_frame_stats_d3d11 *value = self;
    return value->num_map;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_set_num_map(sg_frame_stats_d3d11 *self,
                                                                uint32_t replacement) {
    sg_frame_stats_d3d11 *value = self;
    value->num_map = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_d3d11_get_num_unmap(sg_frame_stats_d3d11 *self) {
    sg_frame_stats_d3d11 *value = self;
    return value->num_unmap;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_d3d11_set_num_unmap(sg_frame_stats_d3d11 *self,
                                                                  uint32_t replacement) {
    sg_frame_stats_d3d11 *value = self;
    value->num_unmap = (uint32_t)replacement;
}
