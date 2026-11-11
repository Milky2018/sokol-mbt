static void mb_clone_sapp_d3d11_environment(sapp_d3d11_environment *dst,
                                            const sapp_d3d11_environment *src) {
    *dst = *src;
}

static void mb_drop_sapp_d3d11_environment(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sapp_d3d11_environment) <= _Alignof(void *), "external payload alignment");

static sapp_d3d11_environment *mb_new_sapp_d3d11_environment(void) {
    return mb_object_new(sizeof(sapp_d3d11_environment), mb_drop_sapp_d3d11_environment);
}

static sapp_d3d11_environment *
mb_copy_sapp_d3d11_environment(const sapp_d3d11_environment *source) {
    sapp_d3d11_environment *result = mb_new_sapp_d3d11_environment();
    mb_clone_sapp_d3d11_environment(result, source);
    return result;
}

static void mb_clone_sapp_environment(sapp_environment *dst, const sapp_environment *src) {
    *dst = *src;
    mb_clone_sapp_environment_defaults(&dst->defaults, &src->defaults);
    mb_clone_sapp_metal_environment(&dst->metal, &src->metal);
    mb_clone_sapp_d3d11_environment(&dst->d3d11, &src->d3d11);
    mb_clone_sapp_wgpu_environment(&dst->wgpu, &src->wgpu);
    mb_clone_sapp_vulkan_environment(&dst->vulkan, &src->vulkan);
}

static void mb_drop_sapp_environment(void *object) {
    sapp_environment *value = object;
    mb_drop_sapp_environment_defaults(&value->defaults);
    mb_drop_sapp_metal_environment(&value->metal);
    mb_drop_sapp_d3d11_environment(&value->d3d11);
    mb_drop_sapp_wgpu_environment(&value->wgpu);
    mb_drop_sapp_vulkan_environment(&value->vulkan);
}

_Static_assert(_Alignof(sapp_environment) <= _Alignof(void *), "external payload alignment");

static sapp_environment *mb_new_sapp_environment(void) {
    return mb_object_new(sizeof(sapp_environment), mb_drop_sapp_environment);
}

static sapp_environment *mb_copy_sapp_environment(const sapp_environment *source) {
    sapp_environment *result = mb_new_sapp_environment();
    mb_clone_sapp_environment(result, source);
    return result;
}

static void mb_clone_sapp_environment_defaults(sapp_environment_defaults *dst,
                                               const sapp_environment_defaults *src) {
    *dst = *src;
}

static void mb_drop_sapp_environment_defaults(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sapp_environment_defaults) <= _Alignof(void *),
               "external payload alignment");

static sapp_environment_defaults *mb_new_sapp_environment_defaults(void) {
    return mb_object_new(sizeof(sapp_environment_defaults), mb_drop_sapp_environment_defaults);
}

static sapp_environment_defaults *
mb_copy_sapp_environment_defaults(const sapp_environment_defaults *source) {
    sapp_environment_defaults *result = mb_new_sapp_environment_defaults();
    mb_clone_sapp_environment_defaults(result, source);
    return result;
}

static void mb_clone_sapp_metal_environment(sapp_metal_environment *dst,
                                            const sapp_metal_environment *src) {
    *dst = *src;
}

static void mb_drop_sapp_metal_environment(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sapp_metal_environment) <= _Alignof(void *), "external payload alignment");

static sapp_metal_environment *mb_new_sapp_metal_environment(void) {
    return mb_object_new(sizeof(sapp_metal_environment), mb_drop_sapp_metal_environment);
}

static sapp_metal_environment *
mb_copy_sapp_metal_environment(const sapp_metal_environment *source) {
    sapp_metal_environment *result = mb_new_sapp_metal_environment();
    mb_clone_sapp_metal_environment(result, source);
    return result;
}

static void mb_clone_sapp_vulkan_environment(sapp_vulkan_environment *dst,
                                             const sapp_vulkan_environment *src) {
    *dst = *src;
}

static void mb_drop_sapp_vulkan_environment(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sapp_vulkan_environment) <= _Alignof(void *), "external payload alignment");

static sapp_vulkan_environment *mb_new_sapp_vulkan_environment(void) {
    return mb_object_new(sizeof(sapp_vulkan_environment), mb_drop_sapp_vulkan_environment);
}

static sapp_vulkan_environment *
mb_copy_sapp_vulkan_environment(const sapp_vulkan_environment *source) {
    sapp_vulkan_environment *result = mb_new_sapp_vulkan_environment();
    mb_clone_sapp_vulkan_environment(result, source);
    return result;
}

static void mb_clone_sapp_wgpu_environment(sapp_wgpu_environment *dst,
                                           const sapp_wgpu_environment *src) {
    *dst = *src;
}

static void mb_drop_sapp_wgpu_environment(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sapp_wgpu_environment) <= _Alignof(void *), "external payload alignment");

static sapp_wgpu_environment *mb_new_sapp_wgpu_environment(void) {
    return mb_object_new(sizeof(sapp_wgpu_environment), mb_drop_sapp_wgpu_environment);
}

static sapp_wgpu_environment *mb_copy_sapp_wgpu_environment(const sapp_wgpu_environment *source) {
    sapp_wgpu_environment *result = mb_new_sapp_wgpu_environment();
    mb_clone_sapp_wgpu_environment(result, source);
    return result;
}

MOONBIT_FFI_EXPORT sapp_environment_defaults *mb_app_sapp_environment_defaults_new(void) {
    return mb_new_sapp_environment_defaults();
}

MOONBIT_FFI_EXPORT sapp_environment_defaults *
mb_app_sapp_environment_defaults_copy(sapp_environment_defaults *self) {
    return mb_copy_sapp_environment_defaults(self);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_environment_defaults_native(sapp_environment_defaults *self) {
    return self;
}

MOONBIT_FFI_EXPORT sapp_environment_defaults *
mb_app_sapp_environment_defaults_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sapp_environment_defaults(ptr);
}

MOONBIT_FFI_EXPORT int32_t
mb_app_sapp_environment_defaults_get_color_format(sapp_environment_defaults *self) {
    sapp_environment_defaults *value = self;
    return value->color_format;
}

MOONBIT_FFI_EXPORT void
mb_app_sapp_environment_defaults_set_color_format(sapp_environment_defaults *self,
                                                  int32_t replacement) {
    sapp_environment_defaults *value = self;
    value->color_format = (sapp_pixel_format)replacement;
}

MOONBIT_FFI_EXPORT int32_t
mb_app_sapp_environment_defaults_get_depth_format(sapp_environment_defaults *self) {
    sapp_environment_defaults *value = self;
    return value->depth_format;
}

MOONBIT_FFI_EXPORT void
mb_app_sapp_environment_defaults_set_depth_format(sapp_environment_defaults *self,
                                                  int32_t replacement) {
    sapp_environment_defaults *value = self;
    value->depth_format = (sapp_pixel_format)replacement;
}

MOONBIT_FFI_EXPORT int32_t
mb_app_sapp_environment_defaults_get_sample_count(sapp_environment_defaults *self) {
    sapp_environment_defaults *value = self;
    return value->sample_count;
}

MOONBIT_FFI_EXPORT void
mb_app_sapp_environment_defaults_set_sample_count(sapp_environment_defaults *self,
                                                  int32_t replacement) {
    sapp_environment_defaults *value = self;
    value->sample_count = (int)replacement;
}

MOONBIT_FFI_EXPORT sapp_metal_environment *mb_app_sapp_metal_environment_new(void) {
    return mb_new_sapp_metal_environment();
}

MOONBIT_FFI_EXPORT sapp_metal_environment *
mb_app_sapp_metal_environment_copy(sapp_metal_environment *self) {
    return mb_copy_sapp_metal_environment(self);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_metal_environment_native(sapp_metal_environment *self) {
    return self;
}

MOONBIT_FFI_EXPORT sapp_metal_environment *mb_app_sapp_metal_environment_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sapp_metal_environment(ptr);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_metal_environment_get_device(sapp_metal_environment *self) {
    sapp_metal_environment *value = self;
    return (void *)value->device;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_metal_environment_set_device(sapp_metal_environment *self,
                                                                 void *replacement) {
    sapp_metal_environment *value = self;
    value->device = replacement;
}

MOONBIT_FFI_EXPORT sapp_d3d11_environment *mb_app_sapp_d3d11_environment_new(void) {
    return mb_new_sapp_d3d11_environment();
}

MOONBIT_FFI_EXPORT sapp_d3d11_environment *
mb_app_sapp_d3d11_environment_copy(sapp_d3d11_environment *self) {
    return mb_copy_sapp_d3d11_environment(self);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_d3d11_environment_native(sapp_d3d11_environment *self) {
    return self;
}

MOONBIT_FFI_EXPORT sapp_d3d11_environment *mb_app_sapp_d3d11_environment_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sapp_d3d11_environment(ptr);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_d3d11_environment_get_device(sapp_d3d11_environment *self) {
    sapp_d3d11_environment *value = self;
    return (void *)value->device;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_d3d11_environment_set_device(sapp_d3d11_environment *self,
                                                                 void *replacement) {
    sapp_d3d11_environment *value = self;
    value->device = replacement;
}

MOONBIT_FFI_EXPORT void *
mb_app_sapp_d3d11_environment_get_device_context(sapp_d3d11_environment *self) {
    sapp_d3d11_environment *value = self;
    return (void *)value->device_context;
}

MOONBIT_FFI_EXPORT void
mb_app_sapp_d3d11_environment_set_device_context(sapp_d3d11_environment *self, void *replacement) {
    sapp_d3d11_environment *value = self;
    value->device_context = replacement;
}

MOONBIT_FFI_EXPORT sapp_wgpu_environment *mb_app_sapp_wgpu_environment_new(void) {
    return mb_new_sapp_wgpu_environment();
}

MOONBIT_FFI_EXPORT sapp_wgpu_environment *
mb_app_sapp_wgpu_environment_copy(sapp_wgpu_environment *self) {
    return mb_copy_sapp_wgpu_environment(self);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_wgpu_environment_native(sapp_wgpu_environment *self) {
    return self;
}

MOONBIT_FFI_EXPORT sapp_wgpu_environment *mb_app_sapp_wgpu_environment_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sapp_wgpu_environment(ptr);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_wgpu_environment_get_device(sapp_wgpu_environment *self) {
    sapp_wgpu_environment *value = self;
    return (void *)value->device;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_wgpu_environment_set_device(sapp_wgpu_environment *self,
                                                                void *replacement) {
    sapp_wgpu_environment *value = self;
    value->device = replacement;
}

MOONBIT_FFI_EXPORT sapp_vulkan_environment *mb_app_sapp_vulkan_environment_new(void) {
    return mb_new_sapp_vulkan_environment();
}

MOONBIT_FFI_EXPORT sapp_vulkan_environment *
mb_app_sapp_vulkan_environment_copy(sapp_vulkan_environment *self) {
    return mb_copy_sapp_vulkan_environment(self);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_vulkan_environment_native(sapp_vulkan_environment *self) {
    return self;
}

MOONBIT_FFI_EXPORT sapp_vulkan_environment *mb_app_sapp_vulkan_environment_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sapp_vulkan_environment(ptr);
}

MOONBIT_FFI_EXPORT void *
mb_app_sapp_vulkan_environment_get_instance(sapp_vulkan_environment *self) {
    sapp_vulkan_environment *value = self;
    return (void *)value->instance;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_vulkan_environment_set_instance(sapp_vulkan_environment *self,
                                                                    void *replacement) {
    sapp_vulkan_environment *value = self;
    value->instance = replacement;
}

MOONBIT_FFI_EXPORT void *
mb_app_sapp_vulkan_environment_get_physical_device(sapp_vulkan_environment *self) {
    sapp_vulkan_environment *value = self;
    return (void *)value->physical_device;
}

MOONBIT_FFI_EXPORT void
mb_app_sapp_vulkan_environment_set_physical_device(sapp_vulkan_environment *self,
                                                   void *replacement) {
    sapp_vulkan_environment *value = self;
    value->physical_device = replacement;
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_vulkan_environment_get_device(sapp_vulkan_environment *self) {
    sapp_vulkan_environment *value = self;
    return (void *)value->device;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_vulkan_environment_set_device(sapp_vulkan_environment *self,
                                                                  void *replacement) {
    sapp_vulkan_environment *value = self;
    value->device = replacement;
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_vulkan_environment_get_queue(sapp_vulkan_environment *self) {
    sapp_vulkan_environment *value = self;
    return (void *)value->queue;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_vulkan_environment_set_queue(sapp_vulkan_environment *self,
                                                                 void *replacement) {
    sapp_vulkan_environment *value = self;
    value->queue = replacement;
}

MOONBIT_FFI_EXPORT uint32_t
mb_app_sapp_vulkan_environment_get_queue_family_index(sapp_vulkan_environment *self) {
    sapp_vulkan_environment *value = self;
    return value->queue_family_index;
}

MOONBIT_FFI_EXPORT void
mb_app_sapp_vulkan_environment_set_queue_family_index(sapp_vulkan_environment *self,
                                                      uint32_t replacement) {
    sapp_vulkan_environment *value = self;
    value->queue_family_index = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT sapp_environment *mb_app_sapp_environment_new(void) {
    return mb_new_sapp_environment();
}

MOONBIT_FFI_EXPORT sapp_environment *mb_app_sapp_environment_copy(sapp_environment *self) {
    return mb_copy_sapp_environment(self);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_environment_native(sapp_environment *self) {
    return self;
}

MOONBIT_FFI_EXPORT sapp_environment *mb_app_sapp_environment_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sapp_environment(ptr);
}

MOONBIT_FFI_EXPORT sapp_environment_defaults *
mb_app_sapp_environment_get_defaults(sapp_environment *self) {
    sapp_environment *value = self;
    return mb_copy_sapp_environment_defaults(&value->defaults);
}

MOONBIT_FFI_EXPORT void
mb_app_sapp_environment_set_defaults(sapp_environment *self,
                                     sapp_environment_defaults *replacement) {
    sapp_environment *value = self;
    sapp_environment_defaults copy;
    mb_clone_sapp_environment_defaults(&copy, replacement);
    mb_drop_sapp_environment_defaults(&value->defaults);
    value->defaults = copy;
}

MOONBIT_FFI_EXPORT sapp_metal_environment *
mb_app_sapp_environment_get_metal(sapp_environment *self) {
    sapp_environment *value = self;
    return mb_copy_sapp_metal_environment(&value->metal);
}

MOONBIT_FFI_EXPORT void mb_app_sapp_environment_set_metal(sapp_environment *self,
                                                          sapp_metal_environment *replacement) {
    sapp_environment *value = self;
    sapp_metal_environment copy;
    mb_clone_sapp_metal_environment(&copy, replacement);
    mb_drop_sapp_metal_environment(&value->metal);
    value->metal = copy;
}

MOONBIT_FFI_EXPORT sapp_d3d11_environment *
mb_app_sapp_environment_get_d3d11(sapp_environment *self) {
    sapp_environment *value = self;
    return mb_copy_sapp_d3d11_environment(&value->d3d11);
}

MOONBIT_FFI_EXPORT void mb_app_sapp_environment_set_d3d11(sapp_environment *self,
                                                          sapp_d3d11_environment *replacement) {
    sapp_environment *value = self;
    sapp_d3d11_environment copy;
    mb_clone_sapp_d3d11_environment(&copy, replacement);
    mb_drop_sapp_d3d11_environment(&value->d3d11);
    value->d3d11 = copy;
}

MOONBIT_FFI_EXPORT sapp_wgpu_environment *mb_app_sapp_environment_get_wgpu(sapp_environment *self) {
    sapp_environment *value = self;
    return mb_copy_sapp_wgpu_environment(&value->wgpu);
}

MOONBIT_FFI_EXPORT void mb_app_sapp_environment_set_wgpu(sapp_environment *self,
                                                         sapp_wgpu_environment *replacement) {
    sapp_environment *value = self;
    sapp_wgpu_environment copy;
    mb_clone_sapp_wgpu_environment(&copy, replacement);
    mb_drop_sapp_wgpu_environment(&value->wgpu);
    value->wgpu = copy;
}

MOONBIT_FFI_EXPORT sapp_vulkan_environment *
mb_app_sapp_environment_get_vulkan(sapp_environment *self) {
    sapp_environment *value = self;
    return mb_copy_sapp_vulkan_environment(&value->vulkan);
}

MOONBIT_FFI_EXPORT void mb_app_sapp_environment_set_vulkan(sapp_environment *self,
                                                           sapp_vulkan_environment *replacement) {
    sapp_environment *value = self;
    sapp_vulkan_environment copy;
    mb_clone_sapp_vulkan_environment(&copy, replacement);
    mb_drop_sapp_vulkan_environment(&value->vulkan);
    value->vulkan = copy;
}

MOONBIT_FFI_EXPORT sapp_environment *mb_app_sapp_get_environment(void) {
    sapp_environment value = sapp_get_environment();
    return mb_copy_sapp_environment(&value);
}
