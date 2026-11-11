static void mb_clone_sg_wgpu_buffer_info(sg_wgpu_buffer_info *dst, const sg_wgpu_buffer_info *src) {
    *dst = *src;
}

static void mb_drop_sg_wgpu_buffer_info(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sg_wgpu_buffer_info) <= _Alignof(void *), "external payload alignment");

static sg_wgpu_buffer_info *mb_new_sg_wgpu_buffer_info(void) {
    return mb_object_new(sizeof(sg_wgpu_buffer_info), mb_drop_sg_wgpu_buffer_info);
}

static sg_wgpu_buffer_info *mb_copy_sg_wgpu_buffer_info(const sg_wgpu_buffer_info *source) {
    sg_wgpu_buffer_info *result = mb_new_sg_wgpu_buffer_info();
    mb_clone_sg_wgpu_buffer_info(result, source);
    return result;
}

static void mb_clone_sg_wgpu_desc(sg_wgpu_desc *dst, const sg_wgpu_desc *src) {
    *dst = *src;
}

static void mb_drop_sg_wgpu_desc(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sg_wgpu_desc) <= _Alignof(void *), "external payload alignment");

static sg_wgpu_desc *mb_new_sg_wgpu_desc(void) {
    return mb_object_new(sizeof(sg_wgpu_desc), mb_drop_sg_wgpu_desc);
}

static sg_wgpu_desc *mb_copy_sg_wgpu_desc(const sg_wgpu_desc *source) {
    sg_wgpu_desc *result = mb_new_sg_wgpu_desc();
    mb_clone_sg_wgpu_desc(result, source);
    return result;
}

static void mb_clone_sg_wgpu_environment(sg_wgpu_environment *dst, const sg_wgpu_environment *src) {
    *dst = *src;
}

static void mb_drop_sg_wgpu_environment(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sg_wgpu_environment) <= _Alignof(void *), "external payload alignment");

static sg_wgpu_environment *mb_new_sg_wgpu_environment(void) {
    return mb_object_new(sizeof(sg_wgpu_environment), mb_drop_sg_wgpu_environment);
}

static sg_wgpu_environment *mb_copy_sg_wgpu_environment(const sg_wgpu_environment *source) {
    sg_wgpu_environment *result = mb_new_sg_wgpu_environment();
    mb_clone_sg_wgpu_environment(result, source);
    return result;
}

static void mb_clone_sg_wgpu_image_info(sg_wgpu_image_info *dst, const sg_wgpu_image_info *src) {
    *dst = *src;
}

static void mb_drop_sg_wgpu_image_info(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sg_wgpu_image_info) <= _Alignof(void *), "external payload alignment");

static sg_wgpu_image_info *mb_new_sg_wgpu_image_info(void) {
    return mb_object_new(sizeof(sg_wgpu_image_info), mb_drop_sg_wgpu_image_info);
}

static sg_wgpu_image_info *mb_copy_sg_wgpu_image_info(const sg_wgpu_image_info *source) {
    sg_wgpu_image_info *result = mb_new_sg_wgpu_image_info();
    mb_clone_sg_wgpu_image_info(result, source);
    return result;
}

static void mb_clone_sg_wgpu_pipeline_info(sg_wgpu_pipeline_info *dst,
                                           const sg_wgpu_pipeline_info *src) {
    *dst = *src;
}

static void mb_drop_sg_wgpu_pipeline_info(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sg_wgpu_pipeline_info) <= _Alignof(void *), "external payload alignment");

static sg_wgpu_pipeline_info *mb_new_sg_wgpu_pipeline_info(void) {
    return mb_object_new(sizeof(sg_wgpu_pipeline_info), mb_drop_sg_wgpu_pipeline_info);
}

static sg_wgpu_pipeline_info *mb_copy_sg_wgpu_pipeline_info(const sg_wgpu_pipeline_info *source) {
    sg_wgpu_pipeline_info *result = mb_new_sg_wgpu_pipeline_info();
    mb_clone_sg_wgpu_pipeline_info(result, source);
    return result;
}

static void mb_clone_sg_wgpu_sampler_info(sg_wgpu_sampler_info *dst,
                                          const sg_wgpu_sampler_info *src) {
    *dst = *src;
}

static void mb_drop_sg_wgpu_sampler_info(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sg_wgpu_sampler_info) <= _Alignof(void *), "external payload alignment");

static sg_wgpu_sampler_info *mb_new_sg_wgpu_sampler_info(void) {
    return mb_object_new(sizeof(sg_wgpu_sampler_info), mb_drop_sg_wgpu_sampler_info);
}

static sg_wgpu_sampler_info *mb_copy_sg_wgpu_sampler_info(const sg_wgpu_sampler_info *source) {
    sg_wgpu_sampler_info *result = mb_new_sg_wgpu_sampler_info();
    mb_clone_sg_wgpu_sampler_info(result, source);
    return result;
}

static void mb_clone_sg_wgpu_shader_info(sg_wgpu_shader_info *dst, const sg_wgpu_shader_info *src) {
    *dst = *src;
}

static void mb_drop_sg_wgpu_shader_info(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sg_wgpu_shader_info) <= _Alignof(void *), "external payload alignment");

static sg_wgpu_shader_info *mb_new_sg_wgpu_shader_info(void) {
    return mb_object_new(sizeof(sg_wgpu_shader_info), mb_drop_sg_wgpu_shader_info);
}

static sg_wgpu_shader_info *mb_copy_sg_wgpu_shader_info(const sg_wgpu_shader_info *source) {
    sg_wgpu_shader_info *result = mb_new_sg_wgpu_shader_info();
    mb_clone_sg_wgpu_shader_info(result, source);
    return result;
}

static void mb_clone_sg_wgpu_swapchain(sg_wgpu_swapchain *dst, const sg_wgpu_swapchain *src) {
    *dst = *src;
}

static void mb_drop_sg_wgpu_swapchain(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sg_wgpu_swapchain) <= _Alignof(void *), "external payload alignment");

static sg_wgpu_swapchain *mb_new_sg_wgpu_swapchain(void) {
    return mb_object_new(sizeof(sg_wgpu_swapchain), mb_drop_sg_wgpu_swapchain);
}

static sg_wgpu_swapchain *mb_copy_sg_wgpu_swapchain(const sg_wgpu_swapchain *source) {
    sg_wgpu_swapchain *result = mb_new_sg_wgpu_swapchain();
    mb_clone_sg_wgpu_swapchain(result, source);
    return result;
}

static void mb_clone_sg_wgpu_view_info(sg_wgpu_view_info *dst, const sg_wgpu_view_info *src) {
    *dst = *src;
}

static void mb_drop_sg_wgpu_view_info(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sg_wgpu_view_info) <= _Alignof(void *), "external payload alignment");

static sg_wgpu_view_info *mb_new_sg_wgpu_view_info(void) {
    return mb_object_new(sizeof(sg_wgpu_view_info), mb_drop_sg_wgpu_view_info);
}

static sg_wgpu_view_info *mb_copy_sg_wgpu_view_info(const sg_wgpu_view_info *source) {
    sg_wgpu_view_info *result = mb_new_sg_wgpu_view_info();
    mb_clone_sg_wgpu_view_info(result, source);
    return result;
}

MOONBIT_FFI_EXPORT sg_wgpu_swapchain *mb_gfx_sg_wgpu_swapchain_new(void) {
    return mb_new_sg_wgpu_swapchain();
}

MOONBIT_FFI_EXPORT sg_wgpu_swapchain *mb_gfx_sg_wgpu_swapchain_copy(sg_wgpu_swapchain *self) {
    return mb_copy_sg_wgpu_swapchain(self);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_wgpu_swapchain_native(sg_wgpu_swapchain *self) {
    return self;
}

MOONBIT_FFI_EXPORT sg_wgpu_swapchain *mb_gfx_sg_wgpu_swapchain_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sg_wgpu_swapchain(ptr);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_wgpu_swapchain_get_render_view(sg_wgpu_swapchain *self) {
    sg_wgpu_swapchain *value = self;
    return (void *)value->render_view;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_swapchain_set_render_view(sg_wgpu_swapchain *self,
                                                                 void *replacement) {
    sg_wgpu_swapchain *value = self;
    value->render_view = replacement;
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_wgpu_swapchain_get_resolve_view(sg_wgpu_swapchain *self) {
    sg_wgpu_swapchain *value = self;
    return (void *)value->resolve_view;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_swapchain_set_resolve_view(sg_wgpu_swapchain *self,
                                                                  void *replacement) {
    sg_wgpu_swapchain *value = self;
    value->resolve_view = replacement;
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_wgpu_swapchain_get_depth_stencil_view(sg_wgpu_swapchain *self) {
    sg_wgpu_swapchain *value = self;
    return (void *)value->depth_stencil_view;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_swapchain_set_depth_stencil_view(sg_wgpu_swapchain *self,
                                                                        void *replacement) {
    sg_wgpu_swapchain *value = self;
    value->depth_stencil_view = replacement;
}

MOONBIT_FFI_EXPORT sg_wgpu_environment *mb_gfx_sg_wgpu_environment_new(void) {
    return mb_new_sg_wgpu_environment();
}

MOONBIT_FFI_EXPORT sg_wgpu_environment *mb_gfx_sg_wgpu_environment_copy(sg_wgpu_environment *self) {
    return mb_copy_sg_wgpu_environment(self);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_wgpu_environment_native(sg_wgpu_environment *self) {
    return self;
}

MOONBIT_FFI_EXPORT sg_wgpu_environment *mb_gfx_sg_wgpu_environment_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sg_wgpu_environment(ptr);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_wgpu_environment_get_device(sg_wgpu_environment *self) {
    sg_wgpu_environment *value = self;
    return (void *)value->device;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_environment_set_device(sg_wgpu_environment *self,
                                                              void *replacement) {
    sg_wgpu_environment *value = self;
    value->device = replacement;
}

MOONBIT_FFI_EXPORT sg_wgpu_desc *mb_gfx_sg_wgpu_desc_new(void) {
    return mb_new_sg_wgpu_desc();
}

MOONBIT_FFI_EXPORT sg_wgpu_desc *mb_gfx_sg_wgpu_desc_copy(sg_wgpu_desc *self) {
    return mb_copy_sg_wgpu_desc(self);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_wgpu_desc_native(sg_wgpu_desc *self) {
    return self;
}

MOONBIT_FFI_EXPORT sg_wgpu_desc *mb_gfx_sg_wgpu_desc_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sg_wgpu_desc(ptr);
}

MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_wgpu_desc_get_disable_bindgroups_cache(sg_wgpu_desc *self) {
    sg_wgpu_desc *value = self;
    return value->disable_bindgroups_cache;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_desc_set_disable_bindgroups_cache(sg_wgpu_desc *self,
                                                                         int32_t replacement) {
    sg_wgpu_desc *value = self;
    value->disable_bindgroups_cache = (bool)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_wgpu_desc_get_bindgroups_cache_size(sg_wgpu_desc *self) {
    sg_wgpu_desc *value = self;
    return value->bindgroups_cache_size;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_desc_set_bindgroups_cache_size(sg_wgpu_desc *self,
                                                                      int32_t replacement) {
    sg_wgpu_desc *value = self;
    value->bindgroups_cache_size = (int)replacement;
}

MOONBIT_FFI_EXPORT sg_wgpu_buffer_info *mb_gfx_sg_wgpu_buffer_info_new(void) {
    return mb_new_sg_wgpu_buffer_info();
}

MOONBIT_FFI_EXPORT sg_wgpu_buffer_info *mb_gfx_sg_wgpu_buffer_info_copy(sg_wgpu_buffer_info *self) {
    return mb_copy_sg_wgpu_buffer_info(self);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_wgpu_buffer_info_native(sg_wgpu_buffer_info *self) {
    return self;
}

MOONBIT_FFI_EXPORT sg_wgpu_buffer_info *mb_gfx_sg_wgpu_buffer_info_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sg_wgpu_buffer_info(ptr);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_wgpu_buffer_info_get_buf(sg_wgpu_buffer_info *self) {
    sg_wgpu_buffer_info *value = self;
    return (void *)value->buf;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_buffer_info_set_buf(sg_wgpu_buffer_info *self,
                                                           void *replacement) {
    sg_wgpu_buffer_info *value = self;
    value->buf = replacement;
}

MOONBIT_FFI_EXPORT sg_wgpu_image_info *mb_gfx_sg_wgpu_image_info_new(void) {
    return mb_new_sg_wgpu_image_info();
}

MOONBIT_FFI_EXPORT sg_wgpu_image_info *mb_gfx_sg_wgpu_image_info_copy(sg_wgpu_image_info *self) {
    return mb_copy_sg_wgpu_image_info(self);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_wgpu_image_info_native(sg_wgpu_image_info *self) {
    return self;
}

MOONBIT_FFI_EXPORT sg_wgpu_image_info *mb_gfx_sg_wgpu_image_info_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sg_wgpu_image_info(ptr);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_wgpu_image_info_get_tex(sg_wgpu_image_info *self) {
    sg_wgpu_image_info *value = self;
    return (void *)value->tex;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_image_info_set_tex(sg_wgpu_image_info *self,
                                                          void *replacement) {
    sg_wgpu_image_info *value = self;
    value->tex = replacement;
}

MOONBIT_FFI_EXPORT sg_wgpu_sampler_info *mb_gfx_sg_wgpu_sampler_info_new(void) {
    return mb_new_sg_wgpu_sampler_info();
}

MOONBIT_FFI_EXPORT sg_wgpu_sampler_info *
mb_gfx_sg_wgpu_sampler_info_copy(sg_wgpu_sampler_info *self) {
    return mb_copy_sg_wgpu_sampler_info(self);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_wgpu_sampler_info_native(sg_wgpu_sampler_info *self) {
    return self;
}

MOONBIT_FFI_EXPORT sg_wgpu_sampler_info *mb_gfx_sg_wgpu_sampler_info_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sg_wgpu_sampler_info(ptr);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_wgpu_sampler_info_get_smp(sg_wgpu_sampler_info *self) {
    sg_wgpu_sampler_info *value = self;
    return (void *)value->smp;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_sampler_info_set_smp(sg_wgpu_sampler_info *self,
                                                            void *replacement) {
    sg_wgpu_sampler_info *value = self;
    value->smp = replacement;
}

MOONBIT_FFI_EXPORT sg_wgpu_shader_info *mb_gfx_sg_wgpu_shader_info_new(void) {
    return mb_new_sg_wgpu_shader_info();
}

MOONBIT_FFI_EXPORT sg_wgpu_shader_info *mb_gfx_sg_wgpu_shader_info_copy(sg_wgpu_shader_info *self) {
    return mb_copy_sg_wgpu_shader_info(self);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_wgpu_shader_info_native(sg_wgpu_shader_info *self) {
    return self;
}

MOONBIT_FFI_EXPORT sg_wgpu_shader_info *mb_gfx_sg_wgpu_shader_info_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sg_wgpu_shader_info(ptr);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_wgpu_shader_info_get_vs_mod(sg_wgpu_shader_info *self) {
    sg_wgpu_shader_info *value = self;
    return (void *)value->vs_mod;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_shader_info_set_vs_mod(sg_wgpu_shader_info *self,
                                                              void *replacement) {
    sg_wgpu_shader_info *value = self;
    value->vs_mod = replacement;
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_wgpu_shader_info_get_fs_mod(sg_wgpu_shader_info *self) {
    sg_wgpu_shader_info *value = self;
    return (void *)value->fs_mod;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_shader_info_set_fs_mod(sg_wgpu_shader_info *self,
                                                              void *replacement) {
    sg_wgpu_shader_info *value = self;
    value->fs_mod = replacement;
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_wgpu_shader_info_get_bgl(sg_wgpu_shader_info *self) {
    sg_wgpu_shader_info *value = self;
    return (void *)value->bgl;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_shader_info_set_bgl(sg_wgpu_shader_info *self,
                                                           void *replacement) {
    sg_wgpu_shader_info *value = self;
    value->bgl = replacement;
}

MOONBIT_FFI_EXPORT sg_wgpu_pipeline_info *mb_gfx_sg_wgpu_pipeline_info_new(void) {
    return mb_new_sg_wgpu_pipeline_info();
}

MOONBIT_FFI_EXPORT sg_wgpu_pipeline_info *
mb_gfx_sg_wgpu_pipeline_info_copy(sg_wgpu_pipeline_info *self) {
    return mb_copy_sg_wgpu_pipeline_info(self);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_wgpu_pipeline_info_native(sg_wgpu_pipeline_info *self) {
    return self;
}

MOONBIT_FFI_EXPORT sg_wgpu_pipeline_info *mb_gfx_sg_wgpu_pipeline_info_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sg_wgpu_pipeline_info(ptr);
}

MOONBIT_FFI_EXPORT void *
mb_gfx_sg_wgpu_pipeline_info_get_render_pipeline(sg_wgpu_pipeline_info *self) {
    sg_wgpu_pipeline_info *value = self;
    return (void *)value->render_pipeline;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_wgpu_pipeline_info_set_render_pipeline(sg_wgpu_pipeline_info *self, void *replacement) {
    sg_wgpu_pipeline_info *value = self;
    value->render_pipeline = replacement;
}

MOONBIT_FFI_EXPORT void *
mb_gfx_sg_wgpu_pipeline_info_get_compute_pipeline(sg_wgpu_pipeline_info *self) {
    sg_wgpu_pipeline_info *value = self;
    return (void *)value->compute_pipeline;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_wgpu_pipeline_info_set_compute_pipeline(sg_wgpu_pipeline_info *self, void *replacement) {
    sg_wgpu_pipeline_info *value = self;
    value->compute_pipeline = replacement;
}

MOONBIT_FFI_EXPORT sg_wgpu_view_info *mb_gfx_sg_wgpu_view_info_new(void) {
    return mb_new_sg_wgpu_view_info();
}

MOONBIT_FFI_EXPORT sg_wgpu_view_info *mb_gfx_sg_wgpu_view_info_copy(sg_wgpu_view_info *self) {
    return mb_copy_sg_wgpu_view_info(self);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_wgpu_view_info_native(sg_wgpu_view_info *self) {
    return self;
}

MOONBIT_FFI_EXPORT sg_wgpu_view_info *mb_gfx_sg_wgpu_view_info_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sg_wgpu_view_info(ptr);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_wgpu_view_info_get_view(sg_wgpu_view_info *self) {
    sg_wgpu_view_info *value = self;
    return (void *)value->view;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_wgpu_view_info_set_view(sg_wgpu_view_info *self,
                                                          void *replacement) {
    sg_wgpu_view_info *value = self;
    value->view = replacement;
}

MOONBIT_FFI_EXPORT sg_wgpu_buffer_info *mb_gfx_sg_wgpu_query_buffer_info(uint32_t buf) {
    sg_wgpu_buffer_info value = sg_wgpu_query_buffer_info((sg_buffer){.id = buf});
    return mb_copy_sg_wgpu_buffer_info(&value);
}

MOONBIT_FFI_EXPORT sg_wgpu_image_info *mb_gfx_sg_wgpu_query_image_info(uint32_t img) {
    sg_wgpu_image_info value = sg_wgpu_query_image_info((sg_image){.id = img});
    return mb_copy_sg_wgpu_image_info(&value);
}

MOONBIT_FFI_EXPORT sg_wgpu_sampler_info *mb_gfx_sg_wgpu_query_sampler_info(uint32_t smp) {
    sg_wgpu_sampler_info value = sg_wgpu_query_sampler_info((sg_sampler){.id = smp});
    return mb_copy_sg_wgpu_sampler_info(&value);
}

MOONBIT_FFI_EXPORT sg_wgpu_shader_info *mb_gfx_sg_wgpu_query_shader_info(uint32_t shd) {
    sg_wgpu_shader_info value = sg_wgpu_query_shader_info((sg_shader){.id = shd});
    return mb_copy_sg_wgpu_shader_info(&value);
}

MOONBIT_FFI_EXPORT sg_wgpu_pipeline_info *mb_gfx_sg_wgpu_query_pipeline_info(uint32_t pip) {
    sg_wgpu_pipeline_info value = sg_wgpu_query_pipeline_info((sg_pipeline){.id = pip});
    return mb_copy_sg_wgpu_pipeline_info(&value);
}

MOONBIT_FFI_EXPORT sg_wgpu_view_info *mb_gfx_sg_wgpu_query_view_info(uint32_t view) {
    sg_wgpu_view_info value = sg_wgpu_query_view_info((sg_view){.id = view});
    return mb_copy_sg_wgpu_view_info(&value);
}
