static void mb_clone_sg_shader_desc(sg_shader_desc *dst, const sg_shader_desc *src) {
    *dst = *src;
    mb_clone_sg_shader_function(&dst->vertex_func, &src->vertex_func);
    mb_clone_sg_shader_function(&dst->fragment_func, &src->fragment_func);
    mb_clone_sg_shader_function(&dst->compute_func, &src->compute_func);
    for (int i0 = 0; i0 < 16; i0++) {
        mb_clone_sg_shader_vertex_attr(&dst->attrs[i0], &src->attrs[i0]);
    }
    for (int i0 = 0; i0 < 8; i0++) {
        mb_clone_sg_shader_uniform_block(&dst->uniform_blocks[i0], &src->uniform_blocks[i0]);
    }
    for (int i0 = 0; i0 < 32; i0++) {
        mb_clone_sg_shader_view(&dst->views[i0], &src->views[i0]);
    }
    for (int i0 = 0; i0 < 14; i0++) {
        mb_clone_sg_shader_sampler(&dst->samplers[i0], &src->samplers[i0]);
    }
    for (int i0 = 0; i0 < 32; i0++) {
        mb_clone_sg_shader_texture_sampler_pair(&dst->texture_sampler_pairs[i0],
                                                &src->texture_sampler_pairs[i0]);
    }
    mb_clone_sg_mtl_shader_threads_per_threadgroup(&dst->mtl_threads_per_threadgroup,
                                                   &src->mtl_threads_per_threadgroup);
    dst->label = mb_string(src->label);
}

static void mb_drop_sg_shader_desc(void *object) {
    sg_shader_desc *value = object;
    mb_drop_sg_shader_function(&value->vertex_func);
    mb_drop_sg_shader_function(&value->fragment_func);
    mb_drop_sg_shader_function(&value->compute_func);
    for (int i0 = 0; i0 < 16; i0++) {
        mb_drop_sg_shader_vertex_attr(&value->attrs[i0]);
    }
    for (int i0 = 0; i0 < 8; i0++) {
        mb_drop_sg_shader_uniform_block(&value->uniform_blocks[i0]);
    }
    for (int i0 = 0; i0 < 32; i0++) {
        mb_drop_sg_shader_view(&value->views[i0]);
    }
    for (int i0 = 0; i0 < 14; i0++) {
        mb_drop_sg_shader_sampler(&value->samplers[i0]);
    }
    for (int i0 = 0; i0 < 32; i0++) {
        mb_drop_sg_shader_texture_sampler_pair(&value->texture_sampler_pairs[i0]);
    }
    mb_drop_sg_mtl_shader_threads_per_threadgroup(&value->mtl_threads_per_threadgroup);
    free((void *)value->label);
}

_Static_assert(_Alignof(sg_shader_desc) <= _Alignof(void *), "external payload alignment");

static sg_shader_desc *mb_new_sg_shader_desc(void) {
    return mb_object_new(sizeof(sg_shader_desc), mb_drop_sg_shader_desc);
}

static sg_shader_desc *mb_copy_sg_shader_desc(const sg_shader_desc *source) {
    sg_shader_desc *result = mb_new_sg_shader_desc();
    mb_clone_sg_shader_desc(result, source);
    return result;
}

static void mb_clone_sg_shader_function(sg_shader_function *dst, const sg_shader_function *src) {
    *dst = *src;
    dst->source = mb_string(src->source);
    mb_clone_sg_range(&dst->bytecode, &src->bytecode);
    dst->entry = mb_string(src->entry);
    dst->d3d11_target = mb_string(src->d3d11_target);
    dst->d3d11_filepath = mb_string(src->d3d11_filepath);
}

static void mb_drop_sg_shader_function(void *object) {
    sg_shader_function *value = object;
    free((void *)value->source);
    mb_drop_sg_range(&value->bytecode);
    free((void *)value->entry);
    free((void *)value->d3d11_target);
    free((void *)value->d3d11_filepath);
}

_Static_assert(_Alignof(sg_shader_function) <= _Alignof(void *), "external payload alignment");

static sg_shader_function *mb_new_sg_shader_function(void) {
    return mb_object_new(sizeof(sg_shader_function), mb_drop_sg_shader_function);
}

static sg_shader_function *mb_copy_sg_shader_function(const sg_shader_function *source) {
    sg_shader_function *result = mb_new_sg_shader_function();
    mb_clone_sg_shader_function(result, source);
    return result;
}

static void mb_clone_sg_shader_info(sg_shader_info *dst, const sg_shader_info *src) {
    *dst = *src;
    mb_clone_sg_slot_info(&dst->slot, &src->slot);
}

static void mb_drop_sg_shader_info(void *object) {
    sg_shader_info *value = object;
    mb_drop_sg_slot_info(&value->slot);
}

_Static_assert(_Alignof(sg_shader_info) <= _Alignof(void *), "external payload alignment");

static sg_shader_info *mb_new_sg_shader_info(void) {
    return mb_object_new(sizeof(sg_shader_info), mb_drop_sg_shader_info);
}

static sg_shader_info *mb_copy_sg_shader_info(const sg_shader_info *source) {
    sg_shader_info *result = mb_new_sg_shader_info();
    mb_clone_sg_shader_info(result, source);
    return result;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_shader_read_id(void *ptr) {
    if (!ptr) {
        abort();
    }
    uint32_t id;
    memcpy(&id, ptr, sizeof(id));
    return id;
}

MOONBIT_FFI_EXPORT sg_shader_function *mb_gfx_sg_shader_function_new(void) {
    return mb_new_sg_shader_function();
}

MOONBIT_FFI_EXPORT sg_shader_function *mb_gfx_sg_shader_function_copy(sg_shader_function *self) {
    return mb_copy_sg_shader_function(self);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_shader_function_native(sg_shader_function *self) {
    return self;
}

MOONBIT_FFI_EXPORT sg_shader_function *mb_gfx_sg_shader_function_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sg_shader_function(ptr);
}

MOONBIT_FFI_EXPORT moonbit_bytes_t mb_gfx_sg_shader_function_get_source(sg_shader_function *self) {
    sg_shader_function *value = self;
    return mb_utf8(value->source);
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_function_set_source(sg_shader_function *self,
                                                             moonbit_bytes_t replacement) {
    sg_shader_function *value = self;
    const char *copy = mb_string((const char *)replacement);
    free((void *)value->source);
    value->source = copy;
}

MOONBIT_FFI_EXPORT sg_range *mb_gfx_sg_shader_function_get_bytecode(sg_shader_function *self) {
    sg_shader_function *value = self;
    return mb_copy_sg_range(&value->bytecode);
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_function_set_bytecode(sg_shader_function *self,
                                                               sg_range *replacement) {
    sg_shader_function *value = self;
    sg_range copy;
    mb_clone_sg_range(&copy, replacement);
    mb_drop_sg_range(&value->bytecode);
    value->bytecode = copy;
}

MOONBIT_FFI_EXPORT moonbit_bytes_t mb_gfx_sg_shader_function_get_entry(sg_shader_function *self) {
    sg_shader_function *value = self;
    return mb_utf8(value->entry);
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_function_set_entry(sg_shader_function *self,
                                                            moonbit_bytes_t replacement) {
    sg_shader_function *value = self;
    const char *copy = mb_string((const char *)replacement);
    free((void *)value->entry);
    value->entry = copy;
}

MOONBIT_FFI_EXPORT moonbit_bytes_t
mb_gfx_sg_shader_function_get_d3d11_target(sg_shader_function *self) {
    sg_shader_function *value = self;
    return mb_utf8(value->d3d11_target);
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_function_set_d3d11_target(sg_shader_function *self,
                                                                   moonbit_bytes_t replacement) {
    sg_shader_function *value = self;
    const char *copy = mb_string((const char *)replacement);
    free((void *)value->d3d11_target);
    value->d3d11_target = copy;
}

MOONBIT_FFI_EXPORT moonbit_bytes_t
mb_gfx_sg_shader_function_get_d3d11_filepath(sg_shader_function *self) {
    sg_shader_function *value = self;
    return mb_utf8(value->d3d11_filepath);
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_function_set_d3d11_filepath(sg_shader_function *self,
                                                                     moonbit_bytes_t replacement) {
    sg_shader_function *value = self;
    const char *copy = mb_string((const char *)replacement);
    free((void *)value->d3d11_filepath);
    value->d3d11_filepath = copy;
}

MOONBIT_FFI_EXPORT sg_shader_desc *mb_gfx_sg_shader_desc_new(void) {
    return mb_new_sg_shader_desc();
}

MOONBIT_FFI_EXPORT sg_shader_desc *mb_gfx_sg_shader_desc_copy(sg_shader_desc *self) {
    return mb_copy_sg_shader_desc(self);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_shader_desc_native(sg_shader_desc *self) {
    return self;
}

MOONBIT_FFI_EXPORT sg_shader_desc *mb_gfx_sg_shader_desc_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sg_shader_desc(ptr);
}

MOONBIT_FFI_EXPORT sg_shader_function *mb_gfx_sg_shader_desc_get_vertex_func(sg_shader_desc *self) {
    sg_shader_desc *value = self;
    return mb_copy_sg_shader_function(&value->vertex_func);
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_desc_set_vertex_func(sg_shader_desc *self,
                                                              sg_shader_function *replacement) {
    sg_shader_desc *value = self;
    sg_shader_function copy;
    mb_clone_sg_shader_function(&copy, replacement);
    mb_drop_sg_shader_function(&value->vertex_func);
    value->vertex_func = copy;
}

MOONBIT_FFI_EXPORT sg_shader_function *
mb_gfx_sg_shader_desc_get_fragment_func(sg_shader_desc *self) {
    sg_shader_desc *value = self;
    return mb_copy_sg_shader_function(&value->fragment_func);
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_desc_set_fragment_func(sg_shader_desc *self,
                                                                sg_shader_function *replacement) {
    sg_shader_desc *value = self;
    sg_shader_function copy;
    mb_clone_sg_shader_function(&copy, replacement);
    mb_drop_sg_shader_function(&value->fragment_func);
    value->fragment_func = copy;
}

MOONBIT_FFI_EXPORT sg_shader_function *
mb_gfx_sg_shader_desc_get_compute_func(sg_shader_desc *self) {
    sg_shader_desc *value = self;
    return mb_copy_sg_shader_function(&value->compute_func);
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_desc_set_compute_func(sg_shader_desc *self,
                                                               sg_shader_function *replacement) {
    sg_shader_desc *value = self;
    sg_shader_function copy;
    mb_clone_sg_shader_function(&copy, replacement);
    mb_drop_sg_shader_function(&value->compute_func);
    value->compute_func = copy;
}

MOONBIT_FFI_EXPORT sg_shader_vertex_attr *mb_gfx_sg_shader_desc_get_attrs(sg_shader_desc *self,
                                                                          int32_t i0) {
    if (i0 < 0 || i0 >= 16) {
        abort();
    }
    sg_shader_desc *value = self;
    return mb_copy_sg_shader_vertex_attr(&value->attrs[i0]);
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_desc_set_attrs(sg_shader_desc *self, int32_t i0,
                                                        sg_shader_vertex_attr *replacement) {
    if (i0 < 0 || i0 >= 16) {
        abort();
    }
    sg_shader_desc *value = self;
    sg_shader_vertex_attr copy;
    mb_clone_sg_shader_vertex_attr(&copy, replacement);
    mb_drop_sg_shader_vertex_attr(&value->attrs[i0]);
    value->attrs[i0] = copy;
}

MOONBIT_FFI_EXPORT sg_shader_uniform_block *
mb_gfx_sg_shader_desc_get_uniform_blocks(sg_shader_desc *self, int32_t i0) {
    if (i0 < 0 || i0 >= 8) {
        abort();
    }
    sg_shader_desc *value = self;
    return mb_copy_sg_shader_uniform_block(&value->uniform_blocks[i0]);
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_shader_desc_set_uniform_blocks(sg_shader_desc *self, int32_t i0,
                                         sg_shader_uniform_block *replacement) {
    if (i0 < 0 || i0 >= 8) {
        abort();
    }
    sg_shader_desc *value = self;
    sg_shader_uniform_block copy;
    mb_clone_sg_shader_uniform_block(&copy, replacement);
    mb_drop_sg_shader_uniform_block(&value->uniform_blocks[i0]);
    value->uniform_blocks[i0] = copy;
}

MOONBIT_FFI_EXPORT sg_shader_view *mb_gfx_sg_shader_desc_get_views(sg_shader_desc *self,
                                                                   int32_t i0) {
    if (i0 < 0 || i0 >= 32) {
        abort();
    }
    sg_shader_desc *value = self;
    return mb_copy_sg_shader_view(&value->views[i0]);
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_desc_set_views(sg_shader_desc *self, int32_t i0,
                                                        sg_shader_view *replacement) {
    if (i0 < 0 || i0 >= 32) {
        abort();
    }
    sg_shader_desc *value = self;
    sg_shader_view copy;
    mb_clone_sg_shader_view(&copy, replacement);
    mb_drop_sg_shader_view(&value->views[i0]);
    value->views[i0] = copy;
}

MOONBIT_FFI_EXPORT sg_shader_sampler *mb_gfx_sg_shader_desc_get_samplers(sg_shader_desc *self,
                                                                         int32_t i0) {
    if (i0 < 0 || i0 >= 14) {
        abort();
    }
    sg_shader_desc *value = self;
    return mb_copy_sg_shader_sampler(&value->samplers[i0]);
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_desc_set_samplers(sg_shader_desc *self, int32_t i0,
                                                           sg_shader_sampler *replacement) {
    if (i0 < 0 || i0 >= 14) {
        abort();
    }
    sg_shader_desc *value = self;
    sg_shader_sampler copy;
    mb_clone_sg_shader_sampler(&copy, replacement);
    mb_drop_sg_shader_sampler(&value->samplers[i0]);
    value->samplers[i0] = copy;
}

MOONBIT_FFI_EXPORT sg_shader_texture_sampler_pair *
mb_gfx_sg_shader_desc_get_texture_sampler_pairs(sg_shader_desc *self, int32_t i0) {
    if (i0 < 0 || i0 >= 32) {
        abort();
    }
    sg_shader_desc *value = self;
    return mb_copy_sg_shader_texture_sampler_pair(&value->texture_sampler_pairs[i0]);
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_shader_desc_set_texture_sampler_pairs(sg_shader_desc *self, int32_t i0,
                                                sg_shader_texture_sampler_pair *replacement) {
    if (i0 < 0 || i0 >= 32) {
        abort();
    }
    sg_shader_desc *value = self;
    sg_shader_texture_sampler_pair copy;
    mb_clone_sg_shader_texture_sampler_pair(&copy, replacement);
    mb_drop_sg_shader_texture_sampler_pair(&value->texture_sampler_pairs[i0]);
    value->texture_sampler_pairs[i0] = copy;
}

MOONBIT_FFI_EXPORT sg_mtl_shader_threads_per_threadgroup *
mb_gfx_sg_shader_desc_get_mtl_threads_per_threadgroup(sg_shader_desc *self) {
    sg_shader_desc *value = self;
    return mb_copy_sg_mtl_shader_threads_per_threadgroup(&value->mtl_threads_per_threadgroup);
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_desc_set_mtl_threads_per_threadgroup(
    sg_shader_desc *self, sg_mtl_shader_threads_per_threadgroup *replacement) {
    sg_shader_desc *value = self;
    sg_mtl_shader_threads_per_threadgroup copy;
    mb_clone_sg_mtl_shader_threads_per_threadgroup(&copy, replacement);
    mb_drop_sg_mtl_shader_threads_per_threadgroup(&value->mtl_threads_per_threadgroup);
    value->mtl_threads_per_threadgroup = copy;
}

MOONBIT_FFI_EXPORT moonbit_bytes_t mb_gfx_sg_shader_desc_get_label(sg_shader_desc *self) {
    sg_shader_desc *value = self;
    return mb_utf8(value->label);
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_desc_set_label(sg_shader_desc *self,
                                                        moonbit_bytes_t replacement) {
    sg_shader_desc *value = self;
    const char *copy = mb_string((const char *)replacement);
    free((void *)value->label);
    value->label = copy;
}

MOONBIT_FFI_EXPORT sg_shader_info *mb_gfx_sg_shader_info_new(void) {
    return mb_new_sg_shader_info();
}

MOONBIT_FFI_EXPORT sg_shader_info *mb_gfx_sg_shader_info_copy(sg_shader_info *self) {
    return mb_copy_sg_shader_info(self);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_shader_info_native(sg_shader_info *self) {
    return self;
}

MOONBIT_FFI_EXPORT sg_shader_info *mb_gfx_sg_shader_info_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sg_shader_info(ptr);
}

MOONBIT_FFI_EXPORT sg_slot_info *mb_gfx_sg_shader_info_get_slot(sg_shader_info *self) {
    sg_shader_info *value = self;
    return mb_copy_sg_slot_info(&value->slot);
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_shader_info_set_slot(sg_shader_info *self,
                                                       sg_slot_info *replacement) {
    sg_shader_info *value = self;
    sg_slot_info copy;
    mb_clone_sg_slot_info(&copy, replacement);
    mb_drop_sg_slot_info(&value->slot);
    value->slot = copy;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_make_shader(sg_shader_desc *desc) {
    sg_shader value = sg_make_shader(desc);
    return value.id;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_destroy_shader(uint32_t shd) {
    sg_destroy_shader((sg_shader){.id = shd});
}

MOONBIT_FFI_EXPORT int32_t mb_gfx_sg_query_shader_state(uint32_t shd) {
    return sg_query_shader_state((sg_shader){.id = shd});
}

MOONBIT_FFI_EXPORT sg_shader_info *mb_gfx_sg_query_shader_info(uint32_t shd) {
    sg_shader_info value = sg_query_shader_info((sg_shader){.id = shd});
    return mb_copy_sg_shader_info(&value);
}

MOONBIT_FFI_EXPORT sg_shader_desc *mb_gfx_sg_query_shader_desc(uint32_t shd) {
    sg_shader_desc value = sg_query_shader_desc((sg_shader){.id = shd});
    return mb_copy_sg_shader_desc(&value);
}

MOONBIT_FFI_EXPORT sg_shader_desc *mb_gfx_sg_query_shader_defaults(sg_shader_desc *desc) {
    sg_shader_desc value = sg_query_shader_defaults(desc);
    return mb_copy_sg_shader_desc(&value);
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_alloc_shader(void) {
    sg_shader value = sg_alloc_shader();
    return value.id;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_dealloc_shader(uint32_t shd) {
    sg_dealloc_shader((sg_shader){.id = shd});
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_init_shader(uint32_t shd, sg_shader_desc *desc) {
    sg_init_shader((sg_shader){.id = shd}, desc);
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_uninit_shader(uint32_t shd) {
    sg_uninit_shader((sg_shader){.id = shd});
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_fail_shader(uint32_t shd) {
    sg_fail_shader((sg_shader){.id = shd});
}
