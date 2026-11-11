static void mb_clone_sapp_d3d11_swapchain(sapp_d3d11_swapchain *dst,
                                          const sapp_d3d11_swapchain *src) {
    *dst = *src;
}

static void mb_drop_sapp_d3d11_swapchain(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sapp_d3d11_swapchain) <= _Alignof(void *), "external payload alignment");

static sapp_d3d11_swapchain *mb_new_sapp_d3d11_swapchain(void) {
    return mb_object_new(sizeof(sapp_d3d11_swapchain), mb_drop_sapp_d3d11_swapchain);
}

static sapp_d3d11_swapchain *mb_copy_sapp_d3d11_swapchain(const sapp_d3d11_swapchain *source) {
    sapp_d3d11_swapchain *result = mb_new_sapp_d3d11_swapchain();
    mb_clone_sapp_d3d11_swapchain(result, source);
    return result;
}

static void mb_clone_sapp_gl_swapchain(sapp_gl_swapchain *dst, const sapp_gl_swapchain *src) {
    *dst = *src;
}

static void mb_drop_sapp_gl_swapchain(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sapp_gl_swapchain) <= _Alignof(void *), "external payload alignment");

static sapp_gl_swapchain *mb_new_sapp_gl_swapchain(void) {
    return mb_object_new(sizeof(sapp_gl_swapchain), mb_drop_sapp_gl_swapchain);
}

static sapp_gl_swapchain *mb_copy_sapp_gl_swapchain(const sapp_gl_swapchain *source) {
    sapp_gl_swapchain *result = mb_new_sapp_gl_swapchain();
    mb_clone_sapp_gl_swapchain(result, source);
    return result;
}

static void mb_clone_sapp_metal_swapchain(sapp_metal_swapchain *dst,
                                          const sapp_metal_swapchain *src) {
    *dst = *src;
}

static void mb_drop_sapp_metal_swapchain(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sapp_metal_swapchain) <= _Alignof(void *), "external payload alignment");

static sapp_metal_swapchain *mb_new_sapp_metal_swapchain(void) {
    return mb_object_new(sizeof(sapp_metal_swapchain), mb_drop_sapp_metal_swapchain);
}

static sapp_metal_swapchain *mb_copy_sapp_metal_swapchain(const sapp_metal_swapchain *source) {
    sapp_metal_swapchain *result = mb_new_sapp_metal_swapchain();
    mb_clone_sapp_metal_swapchain(result, source);
    return result;
}

static void mb_clone_sapp_swapchain(sapp_swapchain *dst, const sapp_swapchain *src) {
    *dst = *src;
    mb_clone_sapp_metal_swapchain(&dst->metal, &src->metal);
    mb_clone_sapp_d3d11_swapchain(&dst->d3d11, &src->d3d11);
    mb_clone_sapp_wgpu_swapchain(&dst->wgpu, &src->wgpu);
    mb_clone_sapp_vulkan_swapchain(&dst->vulkan, &src->vulkan);
    mb_clone_sapp_gl_swapchain(&dst->gl, &src->gl);
}

static void mb_drop_sapp_swapchain(void *object) {
    sapp_swapchain *value = object;
    mb_drop_sapp_metal_swapchain(&value->metal);
    mb_drop_sapp_d3d11_swapchain(&value->d3d11);
    mb_drop_sapp_wgpu_swapchain(&value->wgpu);
    mb_drop_sapp_vulkan_swapchain(&value->vulkan);
    mb_drop_sapp_gl_swapchain(&value->gl);
}

_Static_assert(_Alignof(sapp_swapchain) <= _Alignof(void *), "external payload alignment");

static sapp_swapchain *mb_new_sapp_swapchain(void) {
    return mb_object_new(sizeof(sapp_swapchain), mb_drop_sapp_swapchain);
}

static sapp_swapchain *mb_copy_sapp_swapchain(const sapp_swapchain *source) {
    sapp_swapchain *result = mb_new_sapp_swapchain();
    mb_clone_sapp_swapchain(result, source);
    return result;
}

static void mb_clone_sapp_vulkan_swapchain(sapp_vulkan_swapchain *dst,
                                           const sapp_vulkan_swapchain *src) {
    *dst = *src;
}

static void mb_drop_sapp_vulkan_swapchain(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sapp_vulkan_swapchain) <= _Alignof(void *), "external payload alignment");

static sapp_vulkan_swapchain *mb_new_sapp_vulkan_swapchain(void) {
    return mb_object_new(sizeof(sapp_vulkan_swapchain), mb_drop_sapp_vulkan_swapchain);
}

static sapp_vulkan_swapchain *mb_copy_sapp_vulkan_swapchain(const sapp_vulkan_swapchain *source) {
    sapp_vulkan_swapchain *result = mb_new_sapp_vulkan_swapchain();
    mb_clone_sapp_vulkan_swapchain(result, source);
    return result;
}

static void mb_clone_sapp_wgpu_swapchain(sapp_wgpu_swapchain *dst, const sapp_wgpu_swapchain *src) {
    *dst = *src;
}

static void mb_drop_sapp_wgpu_swapchain(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sapp_wgpu_swapchain) <= _Alignof(void *), "external payload alignment");

static sapp_wgpu_swapchain *mb_new_sapp_wgpu_swapchain(void) {
    return mb_object_new(sizeof(sapp_wgpu_swapchain), mb_drop_sapp_wgpu_swapchain);
}

static sapp_wgpu_swapchain *mb_copy_sapp_wgpu_swapchain(const sapp_wgpu_swapchain *source) {
    sapp_wgpu_swapchain *result = mb_new_sapp_wgpu_swapchain();
    mb_clone_sapp_wgpu_swapchain(result, source);
    return result;
}

MOONBIT_FFI_EXPORT sapp_metal_swapchain *mb_app_sapp_metal_swapchain_new(void) {
    return mb_new_sapp_metal_swapchain();
}

MOONBIT_FFI_EXPORT sapp_metal_swapchain *
mb_app_sapp_metal_swapchain_copy(sapp_metal_swapchain *self) {
    return mb_copy_sapp_metal_swapchain(self);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_metal_swapchain_native(sapp_metal_swapchain *self) {
    return self;
}

MOONBIT_FFI_EXPORT sapp_metal_swapchain *mb_app_sapp_metal_swapchain_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sapp_metal_swapchain(ptr);
}

MOONBIT_FFI_EXPORT void *
mb_app_sapp_metal_swapchain_get_current_drawable(sapp_metal_swapchain *self) {
    sapp_metal_swapchain *value = self;
    return (void *)value->current_drawable;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_metal_swapchain_set_current_drawable(sapp_metal_swapchain *self,
                                                                         void *replacement) {
    sapp_metal_swapchain *value = self;
    value->current_drawable = replacement;
}

MOONBIT_FFI_EXPORT void *
mb_app_sapp_metal_swapchain_get_depth_stencil_texture(sapp_metal_swapchain *self) {
    sapp_metal_swapchain *value = self;
    return (void *)value->depth_stencil_texture;
}

MOONBIT_FFI_EXPORT void
mb_app_sapp_metal_swapchain_set_depth_stencil_texture(sapp_metal_swapchain *self,
                                                      void *replacement) {
    sapp_metal_swapchain *value = self;
    value->depth_stencil_texture = replacement;
}

MOONBIT_FFI_EXPORT void *
mb_app_sapp_metal_swapchain_get_msaa_color_texture(sapp_metal_swapchain *self) {
    sapp_metal_swapchain *value = self;
    return (void *)value->msaa_color_texture;
}

MOONBIT_FFI_EXPORT void
mb_app_sapp_metal_swapchain_set_msaa_color_texture(sapp_metal_swapchain *self, void *replacement) {
    sapp_metal_swapchain *value = self;
    value->msaa_color_texture = replacement;
}

MOONBIT_FFI_EXPORT sapp_d3d11_swapchain *mb_app_sapp_d3d11_swapchain_new(void) {
    return mb_new_sapp_d3d11_swapchain();
}

MOONBIT_FFI_EXPORT sapp_d3d11_swapchain *
mb_app_sapp_d3d11_swapchain_copy(sapp_d3d11_swapchain *self) {
    return mb_copy_sapp_d3d11_swapchain(self);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_d3d11_swapchain_native(sapp_d3d11_swapchain *self) {
    return self;
}

MOONBIT_FFI_EXPORT sapp_d3d11_swapchain *mb_app_sapp_d3d11_swapchain_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sapp_d3d11_swapchain(ptr);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_d3d11_swapchain_get_render_view(sapp_d3d11_swapchain *self) {
    sapp_d3d11_swapchain *value = self;
    return (void *)value->render_view;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_d3d11_swapchain_set_render_view(sapp_d3d11_swapchain *self,
                                                                    void *replacement) {
    sapp_d3d11_swapchain *value = self;
    value->render_view = replacement;
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_d3d11_swapchain_get_resolve_view(sapp_d3d11_swapchain *self) {
    sapp_d3d11_swapchain *value = self;
    return (void *)value->resolve_view;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_d3d11_swapchain_set_resolve_view(sapp_d3d11_swapchain *self,
                                                                     void *replacement) {
    sapp_d3d11_swapchain *value = self;
    value->resolve_view = replacement;
}

MOONBIT_FFI_EXPORT void *
mb_app_sapp_d3d11_swapchain_get_depth_stencil_view(sapp_d3d11_swapchain *self) {
    sapp_d3d11_swapchain *value = self;
    return (void *)value->depth_stencil_view;
}

MOONBIT_FFI_EXPORT void
mb_app_sapp_d3d11_swapchain_set_depth_stencil_view(sapp_d3d11_swapchain *self, void *replacement) {
    sapp_d3d11_swapchain *value = self;
    value->depth_stencil_view = replacement;
}

MOONBIT_FFI_EXPORT sapp_wgpu_swapchain *mb_app_sapp_wgpu_swapchain_new(void) {
    return mb_new_sapp_wgpu_swapchain();
}

MOONBIT_FFI_EXPORT sapp_wgpu_swapchain *mb_app_sapp_wgpu_swapchain_copy(sapp_wgpu_swapchain *self) {
    return mb_copy_sapp_wgpu_swapchain(self);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_wgpu_swapchain_native(sapp_wgpu_swapchain *self) {
    return self;
}

MOONBIT_FFI_EXPORT sapp_wgpu_swapchain *mb_app_sapp_wgpu_swapchain_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sapp_wgpu_swapchain(ptr);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_wgpu_swapchain_get_render_view(sapp_wgpu_swapchain *self) {
    sapp_wgpu_swapchain *value = self;
    return (void *)value->render_view;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_wgpu_swapchain_set_render_view(sapp_wgpu_swapchain *self,
                                                                   void *replacement) {
    sapp_wgpu_swapchain *value = self;
    value->render_view = replacement;
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_wgpu_swapchain_get_resolve_view(sapp_wgpu_swapchain *self) {
    sapp_wgpu_swapchain *value = self;
    return (void *)value->resolve_view;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_wgpu_swapchain_set_resolve_view(sapp_wgpu_swapchain *self,
                                                                    void *replacement) {
    sapp_wgpu_swapchain *value = self;
    value->resolve_view = replacement;
}

MOONBIT_FFI_EXPORT void *
mb_app_sapp_wgpu_swapchain_get_depth_stencil_view(sapp_wgpu_swapchain *self) {
    sapp_wgpu_swapchain *value = self;
    return (void *)value->depth_stencil_view;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_wgpu_swapchain_set_depth_stencil_view(sapp_wgpu_swapchain *self,
                                                                          void *replacement) {
    sapp_wgpu_swapchain *value = self;
    value->depth_stencil_view = replacement;
}

MOONBIT_FFI_EXPORT sapp_vulkan_swapchain *mb_app_sapp_vulkan_swapchain_new(void) {
    return mb_new_sapp_vulkan_swapchain();
}

MOONBIT_FFI_EXPORT sapp_vulkan_swapchain *
mb_app_sapp_vulkan_swapchain_copy(sapp_vulkan_swapchain *self) {
    return mb_copy_sapp_vulkan_swapchain(self);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_vulkan_swapchain_native(sapp_vulkan_swapchain *self) {
    return self;
}

MOONBIT_FFI_EXPORT sapp_vulkan_swapchain *mb_app_sapp_vulkan_swapchain_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sapp_vulkan_swapchain(ptr);
}

MOONBIT_FFI_EXPORT void *
mb_app_sapp_vulkan_swapchain_get_render_image(sapp_vulkan_swapchain *self) {
    sapp_vulkan_swapchain *value = self;
    return (void *)value->render_image;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_vulkan_swapchain_set_render_image(sapp_vulkan_swapchain *self,
                                                                      void *replacement) {
    sapp_vulkan_swapchain *value = self;
    value->render_image = replacement;
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_vulkan_swapchain_get_render_view(sapp_vulkan_swapchain *self) {
    sapp_vulkan_swapchain *value = self;
    return (void *)value->render_view;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_vulkan_swapchain_set_render_view(sapp_vulkan_swapchain *self,
                                                                     void *replacement) {
    sapp_vulkan_swapchain *value = self;
    value->render_view = replacement;
}

MOONBIT_FFI_EXPORT void *
mb_app_sapp_vulkan_swapchain_get_resolve_image(sapp_vulkan_swapchain *self) {
    sapp_vulkan_swapchain *value = self;
    return (void *)value->resolve_image;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_vulkan_swapchain_set_resolve_image(sapp_vulkan_swapchain *self,
                                                                       void *replacement) {
    sapp_vulkan_swapchain *value = self;
    value->resolve_image = replacement;
}

MOONBIT_FFI_EXPORT void *
mb_app_sapp_vulkan_swapchain_get_resolve_view(sapp_vulkan_swapchain *self) {
    sapp_vulkan_swapchain *value = self;
    return (void *)value->resolve_view;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_vulkan_swapchain_set_resolve_view(sapp_vulkan_swapchain *self,
                                                                      void *replacement) {
    sapp_vulkan_swapchain *value = self;
    value->resolve_view = replacement;
}

MOONBIT_FFI_EXPORT void *
mb_app_sapp_vulkan_swapchain_get_depth_stencil_image(sapp_vulkan_swapchain *self) {
    sapp_vulkan_swapchain *value = self;
    return (void *)value->depth_stencil_image;
}

MOONBIT_FFI_EXPORT void
mb_app_sapp_vulkan_swapchain_set_depth_stencil_image(sapp_vulkan_swapchain *self,
                                                     void *replacement) {
    sapp_vulkan_swapchain *value = self;
    value->depth_stencil_image = replacement;
}

MOONBIT_FFI_EXPORT void *
mb_app_sapp_vulkan_swapchain_get_depth_stencil_view(sapp_vulkan_swapchain *self) {
    sapp_vulkan_swapchain *value = self;
    return (void *)value->depth_stencil_view;
}

MOONBIT_FFI_EXPORT void
mb_app_sapp_vulkan_swapchain_set_depth_stencil_view(sapp_vulkan_swapchain *self,
                                                    void *replacement) {
    sapp_vulkan_swapchain *value = self;
    value->depth_stencil_view = replacement;
}

MOONBIT_FFI_EXPORT void *
mb_app_sapp_vulkan_swapchain_get_render_finished_semaphore(sapp_vulkan_swapchain *self) {
    sapp_vulkan_swapchain *value = self;
    return (void *)value->render_finished_semaphore;
}

MOONBIT_FFI_EXPORT void
mb_app_sapp_vulkan_swapchain_set_render_finished_semaphore(sapp_vulkan_swapchain *self,
                                                           void *replacement) {
    sapp_vulkan_swapchain *value = self;
    value->render_finished_semaphore = replacement;
}

MOONBIT_FFI_EXPORT void *
mb_app_sapp_vulkan_swapchain_get_present_complete_semaphore(sapp_vulkan_swapchain *self) {
    sapp_vulkan_swapchain *value = self;
    return (void *)value->present_complete_semaphore;
}

MOONBIT_FFI_EXPORT void
mb_app_sapp_vulkan_swapchain_set_present_complete_semaphore(sapp_vulkan_swapchain *self,
                                                            void *replacement) {
    sapp_vulkan_swapchain *value = self;
    value->present_complete_semaphore = replacement;
}

MOONBIT_FFI_EXPORT sapp_gl_swapchain *mb_app_sapp_gl_swapchain_new(void) {
    return mb_new_sapp_gl_swapchain();
}

MOONBIT_FFI_EXPORT sapp_gl_swapchain *mb_app_sapp_gl_swapchain_copy(sapp_gl_swapchain *self) {
    return mb_copy_sapp_gl_swapchain(self);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_gl_swapchain_native(sapp_gl_swapchain *self) {
    return self;
}

MOONBIT_FFI_EXPORT sapp_gl_swapchain *mb_app_sapp_gl_swapchain_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sapp_gl_swapchain(ptr);
}

MOONBIT_FFI_EXPORT uint32_t mb_app_sapp_gl_swapchain_get_framebuffer(sapp_gl_swapchain *self) {
    sapp_gl_swapchain *value = self;
    return value->framebuffer;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_gl_swapchain_set_framebuffer(sapp_gl_swapchain *self,
                                                                 uint32_t replacement) {
    sapp_gl_swapchain *value = self;
    value->framebuffer = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT sapp_swapchain *mb_app_sapp_swapchain_new(void) {
    return mb_new_sapp_swapchain();
}

MOONBIT_FFI_EXPORT sapp_swapchain *mb_app_sapp_swapchain_copy(sapp_swapchain *self) {
    return mb_copy_sapp_swapchain(self);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_swapchain_native(sapp_swapchain *self) {
    return self;
}

MOONBIT_FFI_EXPORT sapp_swapchain *mb_app_sapp_swapchain_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sapp_swapchain(ptr);
}

MOONBIT_FFI_EXPORT int32_t mb_app_sapp_swapchain_get_invalid(sapp_swapchain *self) {
    sapp_swapchain *value = self;
    return value->invalid;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_swapchain_set_invalid(sapp_swapchain *self,
                                                          int32_t replacement) {
    sapp_swapchain *value = self;
    value->invalid = (bool)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_app_sapp_swapchain_get_width(sapp_swapchain *self) {
    sapp_swapchain *value = self;
    return value->width;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_swapchain_set_width(sapp_swapchain *self, int32_t replacement) {
    sapp_swapchain *value = self;
    value->width = (int)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_app_sapp_swapchain_get_height(sapp_swapchain *self) {
    sapp_swapchain *value = self;
    return value->height;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_swapchain_set_height(sapp_swapchain *self,
                                                         int32_t replacement) {
    sapp_swapchain *value = self;
    value->height = (int)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_app_sapp_swapchain_get_sample_count(sapp_swapchain *self) {
    sapp_swapchain *value = self;
    return value->sample_count;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_swapchain_set_sample_count(sapp_swapchain *self,
                                                               int32_t replacement) {
    sapp_swapchain *value = self;
    value->sample_count = (int)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_app_sapp_swapchain_get_color_format(sapp_swapchain *self) {
    sapp_swapchain *value = self;
    return value->color_format;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_swapchain_set_color_format(sapp_swapchain *self,
                                                               int32_t replacement) {
    sapp_swapchain *value = self;
    value->color_format = (sapp_pixel_format)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_app_sapp_swapchain_get_depth_format(sapp_swapchain *self) {
    sapp_swapchain *value = self;
    return value->depth_format;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_swapchain_set_depth_format(sapp_swapchain *self,
                                                               int32_t replacement) {
    sapp_swapchain *value = self;
    value->depth_format = (sapp_pixel_format)replacement;
}

MOONBIT_FFI_EXPORT sapp_metal_swapchain *mb_app_sapp_swapchain_get_metal(sapp_swapchain *self) {
    sapp_swapchain *value = self;
    return mb_copy_sapp_metal_swapchain(&value->metal);
}

MOONBIT_FFI_EXPORT void mb_app_sapp_swapchain_set_metal(sapp_swapchain *self,
                                                        sapp_metal_swapchain *replacement) {
    sapp_swapchain *value = self;
    sapp_metal_swapchain copy;
    mb_clone_sapp_metal_swapchain(&copy, replacement);
    mb_drop_sapp_metal_swapchain(&value->metal);
    value->metal = copy;
}

MOONBIT_FFI_EXPORT sapp_d3d11_swapchain *mb_app_sapp_swapchain_get_d3d11(sapp_swapchain *self) {
    sapp_swapchain *value = self;
    return mb_copy_sapp_d3d11_swapchain(&value->d3d11);
}

MOONBIT_FFI_EXPORT void mb_app_sapp_swapchain_set_d3d11(sapp_swapchain *self,
                                                        sapp_d3d11_swapchain *replacement) {
    sapp_swapchain *value = self;
    sapp_d3d11_swapchain copy;
    mb_clone_sapp_d3d11_swapchain(&copy, replacement);
    mb_drop_sapp_d3d11_swapchain(&value->d3d11);
    value->d3d11 = copy;
}

MOONBIT_FFI_EXPORT sapp_wgpu_swapchain *mb_app_sapp_swapchain_get_wgpu(sapp_swapchain *self) {
    sapp_swapchain *value = self;
    return mb_copy_sapp_wgpu_swapchain(&value->wgpu);
}

MOONBIT_FFI_EXPORT void mb_app_sapp_swapchain_set_wgpu(sapp_swapchain *self,
                                                       sapp_wgpu_swapchain *replacement) {
    sapp_swapchain *value = self;
    sapp_wgpu_swapchain copy;
    mb_clone_sapp_wgpu_swapchain(&copy, replacement);
    mb_drop_sapp_wgpu_swapchain(&value->wgpu);
    value->wgpu = copy;
}

MOONBIT_FFI_EXPORT sapp_vulkan_swapchain *mb_app_sapp_swapchain_get_vulkan(sapp_swapchain *self) {
    sapp_swapchain *value = self;
    return mb_copy_sapp_vulkan_swapchain(&value->vulkan);
}

MOONBIT_FFI_EXPORT void mb_app_sapp_swapchain_set_vulkan(sapp_swapchain *self,
                                                         sapp_vulkan_swapchain *replacement) {
    sapp_swapchain *value = self;
    sapp_vulkan_swapchain copy;
    mb_clone_sapp_vulkan_swapchain(&copy, replacement);
    mb_drop_sapp_vulkan_swapchain(&value->vulkan);
    value->vulkan = copy;
}

MOONBIT_FFI_EXPORT sapp_gl_swapchain *mb_app_sapp_swapchain_get_gl(sapp_swapchain *self) {
    sapp_swapchain *value = self;
    return mb_copy_sapp_gl_swapchain(&value->gl);
}

MOONBIT_FFI_EXPORT void mb_app_sapp_swapchain_set_gl(sapp_swapchain *self,
                                                     sapp_gl_swapchain *replacement) {
    sapp_swapchain *value = self;
    sapp_gl_swapchain copy;
    mb_clone_sapp_gl_swapchain(&copy, replacement);
    mb_drop_sapp_gl_swapchain(&value->gl);
    value->gl = copy;
}

MOONBIT_FFI_EXPORT sapp_swapchain *mb_app_sapp_acquire_swapchain(void) {
    sapp_swapchain value = sapp_acquire_swapchain();
    return mb_copy_sapp_swapchain(&value);
}
