static void mb_clone_sg_sampler_desc(sg_sampler_desc *dst, const sg_sampler_desc *src) {
    *dst = *src;
    dst->label = mb_string(src->label);
}

static void mb_drop_sg_sampler_desc(void *object) {
    sg_sampler_desc *value = object;
    free((void *)value->label);
}

_Static_assert(_Alignof(sg_sampler_desc) <= _Alignof(void *), "external payload alignment");

static sg_sampler_desc *mb_new_sg_sampler_desc(void) {
    return mb_object_new(sizeof(sg_sampler_desc), mb_drop_sg_sampler_desc);
}

static sg_sampler_desc *mb_copy_sg_sampler_desc(const sg_sampler_desc *source) {
    sg_sampler_desc *result = mb_new_sg_sampler_desc();
    mb_clone_sg_sampler_desc(result, source);
    return result;
}

static void mb_clone_sg_sampler_info(sg_sampler_info *dst, const sg_sampler_info *src) {
    *dst = *src;
    mb_clone_sg_slot_info(&dst->slot, &src->slot);
}

static void mb_drop_sg_sampler_info(void *object) {
    sg_sampler_info *value = object;
    mb_drop_sg_slot_info(&value->slot);
}

_Static_assert(_Alignof(sg_sampler_info) <= _Alignof(void *), "external payload alignment");

static sg_sampler_info *mb_new_sg_sampler_info(void) {
    return mb_object_new(sizeof(sg_sampler_info), mb_drop_sg_sampler_info);
}

static sg_sampler_info *mb_copy_sg_sampler_info(const sg_sampler_info *source) {
    sg_sampler_info *result = mb_new_sg_sampler_info();
    mb_clone_sg_sampler_info(result, source);
    return result;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_sampler_read_id(void *ptr) {
    if (!ptr) {
        abort();
    }
    uint32_t id;
    memcpy(&id, ptr, sizeof(id));
    return id;
}

MOONBIT_FFI_EXPORT sg_sampler_desc *mb_gfx_sg_sampler_desc_new(void) {
    return mb_new_sg_sampler_desc();
}

MOONBIT_FFI_EXPORT sg_sampler_desc *mb_gfx_sg_sampler_desc_copy(sg_sampler_desc *self) {
    return mb_copy_sg_sampler_desc(self);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_sampler_desc_native(sg_sampler_desc *self) {
    return self;
}

MOONBIT_FFI_EXPORT sg_sampler_desc *mb_gfx_sg_sampler_desc_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sg_sampler_desc(ptr);
}

MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_sampler_desc_get_min_filter(sg_sampler_desc *self) {
    sg_sampler_desc *value = self;
    return value->min_filter;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_min_filter(sg_sampler_desc *self,
                                                              int32_t replacement) {
    sg_sampler_desc *value = self;
    value->min_filter = (sg_filter)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_sampler_desc_get_mag_filter(sg_sampler_desc *self) {
    sg_sampler_desc *value = self;
    return value->mag_filter;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_mag_filter(sg_sampler_desc *self,
                                                              int32_t replacement) {
    sg_sampler_desc *value = self;
    value->mag_filter = (sg_filter)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_sampler_desc_get_mipmap_filter(sg_sampler_desc *self) {
    sg_sampler_desc *value = self;
    return value->mipmap_filter;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_mipmap_filter(sg_sampler_desc *self,
                                                                 int32_t replacement) {
    sg_sampler_desc *value = self;
    value->mipmap_filter = (sg_filter)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_sampler_desc_get_wrap_u(sg_sampler_desc *self) {
    sg_sampler_desc *value = self;
    return value->wrap_u;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_wrap_u(sg_sampler_desc *self,
                                                          int32_t replacement) {
    sg_sampler_desc *value = self;
    value->wrap_u = (sg_wrap)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_sampler_desc_get_wrap_v(sg_sampler_desc *self) {
    sg_sampler_desc *value = self;
    return value->wrap_v;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_wrap_v(sg_sampler_desc *self,
                                                          int32_t replacement) {
    sg_sampler_desc *value = self;
    value->wrap_v = (sg_wrap)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_sampler_desc_get_wrap_w(sg_sampler_desc *self) {
    sg_sampler_desc *value = self;
    return value->wrap_w;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_wrap_w(sg_sampler_desc *self,
                                                          int32_t replacement) {
    sg_sampler_desc *value = self;
    value->wrap_w = (sg_wrap)replacement;
}

MOONBIT_FFI_EXPORT float mb_gfx_sg_sampler_desc_get_min_lod(sg_sampler_desc *self) {
    sg_sampler_desc *value = self;
    return value->min_lod;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_min_lod(sg_sampler_desc *self,
                                                           float replacement) {
    sg_sampler_desc *value = self;
    value->min_lod = (float)replacement;
}

MOONBIT_FFI_EXPORT float mb_gfx_sg_sampler_desc_get_max_lod(sg_sampler_desc *self) {
    sg_sampler_desc *value = self;
    return value->max_lod;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_max_lod(sg_sampler_desc *self,
                                                           float replacement) {
    sg_sampler_desc *value = self;
    value->max_lod = (float)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_sampler_desc_get_border_color(sg_sampler_desc *self) {
    sg_sampler_desc *value = self;
    return value->border_color;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_border_color(sg_sampler_desc *self,
                                                                int32_t replacement) {
    sg_sampler_desc *value = self;
    value->border_color = (sg_border_color)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_sampler_desc_get_compare(sg_sampler_desc *self) {
    sg_sampler_desc *value = self;
    return value->compare;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_compare(sg_sampler_desc *self,
                                                           int32_t replacement) {
    sg_sampler_desc *value = self;
    value->compare = (sg_compare_func)replacement;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_sampler_desc_get_max_anisotropy(sg_sampler_desc *self) {
    sg_sampler_desc *value = self;
    return value->max_anisotropy;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_max_anisotropy(sg_sampler_desc *self,
                                                                  uint32_t replacement) {
    sg_sampler_desc *value = self;
    value->max_anisotropy = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT moonbit_bytes_t mb_gfx_sg_sampler_desc_get_label(sg_sampler_desc *self) {
    sg_sampler_desc *value = self;
    return mb_utf8(value->label);
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_label(sg_sampler_desc *self,
                                                         moonbit_bytes_t replacement) {
    sg_sampler_desc *value = self;
    const char *copy = mb_string((const char *)replacement);
    free((void *)value->label);
    value->label = copy;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_sampler_desc_get_gl_sampler(sg_sampler_desc *self) {
    sg_sampler_desc *value = self;
    return value->gl_sampler;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_gl_sampler(sg_sampler_desc *self,
                                                              uint32_t replacement) {
    sg_sampler_desc *value = self;
    value->gl_sampler = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_sampler_desc_get_mtl_sampler(sg_sampler_desc *self) {
    sg_sampler_desc *value = self;
    return (void *)value->mtl_sampler;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_mtl_sampler(sg_sampler_desc *self,
                                                               void *replacement) {
    sg_sampler_desc *value = self;
    value->mtl_sampler = replacement;
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_sampler_desc_get_d3d11_sampler(sg_sampler_desc *self) {
    sg_sampler_desc *value = self;
    return (void *)value->d3d11_sampler;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_d3d11_sampler(sg_sampler_desc *self,
                                                                 void *replacement) {
    sg_sampler_desc *value = self;
    value->d3d11_sampler = replacement;
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_sampler_desc_get_wgpu_sampler(sg_sampler_desc *self) {
    sg_sampler_desc *value = self;
    return (void *)value->wgpu_sampler;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_desc_set_wgpu_sampler(sg_sampler_desc *self,
                                                                void *replacement) {
    sg_sampler_desc *value = self;
    value->wgpu_sampler = replacement;
}

MOONBIT_FFI_EXPORT sg_sampler_info *mb_gfx_sg_sampler_info_new(void) {
    return mb_new_sg_sampler_info();
}

MOONBIT_FFI_EXPORT sg_sampler_info *mb_gfx_sg_sampler_info_copy(sg_sampler_info *self) {
    return mb_copy_sg_sampler_info(self);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_sampler_info_native(sg_sampler_info *self) {
    return self;
}

MOONBIT_FFI_EXPORT sg_sampler_info *mb_gfx_sg_sampler_info_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sg_sampler_info(ptr);
}

MOONBIT_FFI_EXPORT sg_slot_info *mb_gfx_sg_sampler_info_get_slot(sg_sampler_info *self) {
    sg_sampler_info *value = self;
    return mb_copy_sg_slot_info(&value->slot);
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_sampler_info_set_slot(sg_sampler_info *self,
                                                        sg_slot_info *replacement) {
    sg_sampler_info *value = self;
    sg_slot_info copy;
    mb_clone_sg_slot_info(&copy, replacement);
    mb_drop_sg_slot_info(&value->slot);
    value->slot = copy;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_make_sampler(sg_sampler_desc *desc) {
    sg_sampler value = sg_make_sampler(desc);
    return value.id;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_destroy_sampler(uint32_t smp) {
    sg_destroy_sampler((sg_sampler){.id = smp});
}

MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_query_sampler_state(uint32_t smp) {
    return sg_query_sampler_state((sg_sampler){.id = smp});
}

MOONBIT_FFI_EXPORT sg_sampler_info *mb_gfx_sg_query_sampler_info(uint32_t smp) {
    sg_sampler_info value = sg_query_sampler_info((sg_sampler){.id = smp});
    return mb_copy_sg_sampler_info(&value);
}

MOONBIT_FFI_EXPORT sg_sampler_desc *mb_gfx_sg_query_sampler_desc(uint32_t smp) {
    sg_sampler_desc value = sg_query_sampler_desc((sg_sampler){.id = smp});
    return mb_copy_sg_sampler_desc(&value);
}

MOONBIT_FFI_EXPORT sg_sampler_desc *mb_gfx_sg_query_sampler_defaults(sg_sampler_desc *desc) {
    sg_sampler_desc value = sg_query_sampler_defaults(desc);
    return mb_copy_sg_sampler_desc(&value);
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_alloc_sampler(void) {
    sg_sampler value = sg_alloc_sampler();
    return value.id;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_dealloc_sampler(uint32_t smp) {
    sg_dealloc_sampler((sg_sampler){.id = smp});
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_init_sampler(uint32_t smg, sg_sampler_desc *desc) {
    sg_init_sampler((sg_sampler){.id = smg}, desc);
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_uninit_sampler(uint32_t smp) {
    sg_uninit_sampler((sg_sampler){.id = smp});
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_fail_sampler(uint32_t smp) {
    sg_fail_sampler((sg_sampler){.id = smp});
}
