static void mb_clone_sg_frame_stats_wgpu(sg_frame_stats_wgpu *dst, const sg_frame_stats_wgpu *src) {
    *dst = *src;
    mb_clone_sg_frame_stats_wgpu_uniforms(&dst->uniforms, &src->uniforms);
    mb_clone_sg_frame_stats_wgpu_bindings(&dst->bindings, &src->bindings);
}

static void mb_drop_sg_frame_stats_wgpu(void *object) {
    sg_frame_stats_wgpu *value = object;
    mb_drop_sg_frame_stats_wgpu_uniforms(&value->uniforms);
    mb_drop_sg_frame_stats_wgpu_bindings(&value->bindings);
}

_Static_assert(_Alignof(sg_frame_stats_wgpu) <= _Alignof(void *), "external payload alignment");

static sg_frame_stats_wgpu *mb_new_sg_frame_stats_wgpu(void) {
    return mb_object_new(sizeof(sg_frame_stats_wgpu), mb_drop_sg_frame_stats_wgpu);
}

static sg_frame_stats_wgpu *mb_copy_sg_frame_stats_wgpu(const sg_frame_stats_wgpu *source) {
    sg_frame_stats_wgpu *result = mb_new_sg_frame_stats_wgpu();
    mb_clone_sg_frame_stats_wgpu(result, source);
    return result;
}

static void mb_clone_sg_frame_stats_wgpu_bindings(sg_frame_stats_wgpu_bindings *dst,
                                                  const sg_frame_stats_wgpu_bindings *src) {
    *dst = *src;
}

static void mb_drop_sg_frame_stats_wgpu_bindings(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sg_frame_stats_wgpu_bindings) <= _Alignof(void *),
               "external payload alignment");

static sg_frame_stats_wgpu_bindings *mb_new_sg_frame_stats_wgpu_bindings(void) {
    return mb_object_new(sizeof(sg_frame_stats_wgpu_bindings),
                         mb_drop_sg_frame_stats_wgpu_bindings);
}

static sg_frame_stats_wgpu_bindings *
mb_copy_sg_frame_stats_wgpu_bindings(const sg_frame_stats_wgpu_bindings *source) {
    sg_frame_stats_wgpu_bindings *result = mb_new_sg_frame_stats_wgpu_bindings();
    mb_clone_sg_frame_stats_wgpu_bindings(result, source);
    return result;
}

static void mb_clone_sg_frame_stats_wgpu_uniforms(sg_frame_stats_wgpu_uniforms *dst,
                                                  const sg_frame_stats_wgpu_uniforms *src) {
    *dst = *src;
}

static void mb_drop_sg_frame_stats_wgpu_uniforms(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sg_frame_stats_wgpu_uniforms) <= _Alignof(void *),
               "external payload alignment");

static sg_frame_stats_wgpu_uniforms *mb_new_sg_frame_stats_wgpu_uniforms(void) {
    return mb_object_new(sizeof(sg_frame_stats_wgpu_uniforms),
                         mb_drop_sg_frame_stats_wgpu_uniforms);
}

static sg_frame_stats_wgpu_uniforms *
mb_copy_sg_frame_stats_wgpu_uniforms(const sg_frame_stats_wgpu_uniforms *source) {
    sg_frame_stats_wgpu_uniforms *result = mb_new_sg_frame_stats_wgpu_uniforms();
    mb_clone_sg_frame_stats_wgpu_uniforms(result, source);
    return result;
}

MOONBIT_FFI_EXPORT sg_frame_stats_wgpu_uniforms *mb_gfx_sg_frame_stats_wgpu_uniforms_new(void) {
    return mb_new_sg_frame_stats_wgpu_uniforms();
}

MOONBIT_FFI_EXPORT sg_frame_stats_wgpu_uniforms *
mb_gfx_sg_frame_stats_wgpu_uniforms_copy(sg_frame_stats_wgpu_uniforms *self) {
    return mb_copy_sg_frame_stats_wgpu_uniforms(self);
}

MOONBIT_FFI_EXPORT void *
mb_gfx_sg_frame_stats_wgpu_uniforms_native(sg_frame_stats_wgpu_uniforms *self) {
    return self;
}

MOONBIT_FFI_EXPORT sg_frame_stats_wgpu_uniforms *
mb_gfx_sg_frame_stats_wgpu_uniforms_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sg_frame_stats_wgpu_uniforms(ptr);
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_wgpu_uniforms_get_num_set_bindgroup(sg_frame_stats_wgpu_uniforms *self) {
    sg_frame_stats_wgpu_uniforms *value = self;
    return value->num_set_bindgroup;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_wgpu_uniforms_set_num_set_bindgroup(sg_frame_stats_wgpu_uniforms *self,
                                                          uint32_t replacement) {
    sg_frame_stats_wgpu_uniforms *value = self;
    value->num_set_bindgroup = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_wgpu_uniforms_get_size_write_buffer(sg_frame_stats_wgpu_uniforms *self) {
    sg_frame_stats_wgpu_uniforms *value = self;
    return value->size_write_buffer;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_wgpu_uniforms_set_size_write_buffer(sg_frame_stats_wgpu_uniforms *self,
                                                          uint32_t replacement) {
    sg_frame_stats_wgpu_uniforms *value = self;
    value->size_write_buffer = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT sg_frame_stats_wgpu_bindings *mb_gfx_sg_frame_stats_wgpu_bindings_new(void) {
    return mb_new_sg_frame_stats_wgpu_bindings();
}

MOONBIT_FFI_EXPORT sg_frame_stats_wgpu_bindings *
mb_gfx_sg_frame_stats_wgpu_bindings_copy(sg_frame_stats_wgpu_bindings *self) {
    return mb_copy_sg_frame_stats_wgpu_bindings(self);
}

MOONBIT_FFI_EXPORT void *
mb_gfx_sg_frame_stats_wgpu_bindings_native(sg_frame_stats_wgpu_bindings *self) {
    return self;
}

MOONBIT_FFI_EXPORT sg_frame_stats_wgpu_bindings *
mb_gfx_sg_frame_stats_wgpu_bindings_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sg_frame_stats_wgpu_bindings(ptr);
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_wgpu_bindings_get_num_set_vertex_buffer(sg_frame_stats_wgpu_bindings *self) {
    sg_frame_stats_wgpu_bindings *value = self;
    return value->num_set_vertex_buffer;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_wgpu_bindings_set_num_set_vertex_buffer(sg_frame_stats_wgpu_bindings *self,
                                                              uint32_t replacement) {
    sg_frame_stats_wgpu_bindings *value = self;
    value->num_set_vertex_buffer = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_wgpu_bindings_get_num_skip_redundant_vertex_buffer(
    sg_frame_stats_wgpu_bindings *self) {
    sg_frame_stats_wgpu_bindings *value = self;
    return value->num_skip_redundant_vertex_buffer;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_wgpu_bindings_set_num_skip_redundant_vertex_buffer(
    sg_frame_stats_wgpu_bindings *self, uint32_t replacement) {
    sg_frame_stats_wgpu_bindings *value = self;
    value->num_skip_redundant_vertex_buffer = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_wgpu_bindings_get_num_set_index_buffer(sg_frame_stats_wgpu_bindings *self) {
    sg_frame_stats_wgpu_bindings *value = self;
    return value->num_set_index_buffer;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_wgpu_bindings_set_num_set_index_buffer(sg_frame_stats_wgpu_bindings *self,
                                                             uint32_t replacement) {
    sg_frame_stats_wgpu_bindings *value = self;
    value->num_set_index_buffer = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_wgpu_bindings_get_num_skip_redundant_index_buffer(
    sg_frame_stats_wgpu_bindings *self) {
    sg_frame_stats_wgpu_bindings *value = self;
    return value->num_skip_redundant_index_buffer;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_wgpu_bindings_set_num_skip_redundant_index_buffer(
    sg_frame_stats_wgpu_bindings *self, uint32_t replacement) {
    sg_frame_stats_wgpu_bindings *value = self;
    value->num_skip_redundant_index_buffer = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_wgpu_bindings_get_num_create_bindgroup(sg_frame_stats_wgpu_bindings *self) {
    sg_frame_stats_wgpu_bindings *value = self;
    return value->num_create_bindgroup;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_wgpu_bindings_set_num_create_bindgroup(sg_frame_stats_wgpu_bindings *self,
                                                             uint32_t replacement) {
    sg_frame_stats_wgpu_bindings *value = self;
    value->num_create_bindgroup = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_wgpu_bindings_get_num_discard_bindgroup(sg_frame_stats_wgpu_bindings *self) {
    sg_frame_stats_wgpu_bindings *value = self;
    return value->num_discard_bindgroup;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_wgpu_bindings_set_num_discard_bindgroup(sg_frame_stats_wgpu_bindings *self,
                                                              uint32_t replacement) {
    sg_frame_stats_wgpu_bindings *value = self;
    value->num_discard_bindgroup = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_wgpu_bindings_get_num_set_bindgroup(sg_frame_stats_wgpu_bindings *self) {
    sg_frame_stats_wgpu_bindings *value = self;
    return value->num_set_bindgroup;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_wgpu_bindings_set_num_set_bindgroup(sg_frame_stats_wgpu_bindings *self,
                                                          uint32_t replacement) {
    sg_frame_stats_wgpu_bindings *value = self;
    value->num_set_bindgroup = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_wgpu_bindings_get_num_skip_redundant_bindgroup(
    sg_frame_stats_wgpu_bindings *self) {
    sg_frame_stats_wgpu_bindings *value = self;
    return value->num_skip_redundant_bindgroup;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_wgpu_bindings_set_num_skip_redundant_bindgroup(
    sg_frame_stats_wgpu_bindings *self, uint32_t replacement) {
    sg_frame_stats_wgpu_bindings *value = self;
    value->num_skip_redundant_bindgroup = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_hits(
    sg_frame_stats_wgpu_bindings *self) {
    sg_frame_stats_wgpu_bindings *value = self;
    return value->num_bindgroup_cache_hits;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_hits(sg_frame_stats_wgpu_bindings *self,
                                                                 uint32_t replacement) {
    sg_frame_stats_wgpu_bindings *value = self;
    value->num_bindgroup_cache_hits = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_misses(
    sg_frame_stats_wgpu_bindings *self) {
    sg_frame_stats_wgpu_bindings *value = self;
    return value->num_bindgroup_cache_misses;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_misses(
    sg_frame_stats_wgpu_bindings *self, uint32_t replacement) {
    sg_frame_stats_wgpu_bindings *value = self;
    value->num_bindgroup_cache_misses = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_collisions(
    sg_frame_stats_wgpu_bindings *self) {
    sg_frame_stats_wgpu_bindings *value = self;
    return value->num_bindgroup_cache_collisions;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_collisions(
    sg_frame_stats_wgpu_bindings *self, uint32_t replacement) {
    sg_frame_stats_wgpu_bindings *value = self;
    value->num_bindgroup_cache_collisions = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t mb_gfx_sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_invalidates(
    sg_frame_stats_wgpu_bindings *self) {
    sg_frame_stats_wgpu_bindings *value = self;
    return value->num_bindgroup_cache_invalidates;
}

MOONBIT_FFI_EXPORT void mb_gfx_sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_invalidates(
    sg_frame_stats_wgpu_bindings *self, uint32_t replacement) {
    sg_frame_stats_wgpu_bindings *value = self;
    value->num_bindgroup_cache_invalidates = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT uint32_t
mb_gfx_sg_frame_stats_wgpu_bindings_get_num_bindgroup_cache_hash_vs_key_mismatch(
    sg_frame_stats_wgpu_bindings *self) {
    sg_frame_stats_wgpu_bindings *value = self;
    return value->num_bindgroup_cache_hash_vs_key_mismatch;
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_wgpu_bindings_set_num_bindgroup_cache_hash_vs_key_mismatch(
    sg_frame_stats_wgpu_bindings *self, uint32_t replacement) {
    sg_frame_stats_wgpu_bindings *value = self;
    value->num_bindgroup_cache_hash_vs_key_mismatch = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT sg_frame_stats_wgpu *mb_gfx_sg_frame_stats_wgpu_new(void) {
    return mb_new_sg_frame_stats_wgpu();
}

MOONBIT_FFI_EXPORT sg_frame_stats_wgpu *mb_gfx_sg_frame_stats_wgpu_copy(sg_frame_stats_wgpu *self) {
    return mb_copy_sg_frame_stats_wgpu(self);
}

MOONBIT_FFI_EXPORT void *mb_gfx_sg_frame_stats_wgpu_native(sg_frame_stats_wgpu *self) {
    return self;
}

MOONBIT_FFI_EXPORT sg_frame_stats_wgpu *mb_gfx_sg_frame_stats_wgpu_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sg_frame_stats_wgpu(ptr);
}

MOONBIT_FFI_EXPORT sg_frame_stats_wgpu_uniforms *
mb_gfx_sg_frame_stats_wgpu_get_uniforms(sg_frame_stats_wgpu *self) {
    sg_frame_stats_wgpu *value = self;
    return mb_copy_sg_frame_stats_wgpu_uniforms(&value->uniforms);
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_wgpu_set_uniforms(sg_frame_stats_wgpu *self,
                                        sg_frame_stats_wgpu_uniforms *replacement) {
    sg_frame_stats_wgpu *value = self;
    sg_frame_stats_wgpu_uniforms copy;
    mb_clone_sg_frame_stats_wgpu_uniforms(&copy, replacement);
    mb_drop_sg_frame_stats_wgpu_uniforms(&value->uniforms);
    value->uniforms = copy;
}

MOONBIT_FFI_EXPORT sg_frame_stats_wgpu_bindings *
mb_gfx_sg_frame_stats_wgpu_get_bindings(sg_frame_stats_wgpu *self) {
    sg_frame_stats_wgpu *value = self;
    return mb_copy_sg_frame_stats_wgpu_bindings(&value->bindings);
}

MOONBIT_FFI_EXPORT void
mb_gfx_sg_frame_stats_wgpu_set_bindings(sg_frame_stats_wgpu *self,
                                        sg_frame_stats_wgpu_bindings *replacement) {
    sg_frame_stats_wgpu *value = self;
    sg_frame_stats_wgpu_bindings copy;
    mb_clone_sg_frame_stats_wgpu_bindings(&copy, replacement);
    mb_drop_sg_frame_stats_wgpu_bindings(&value->bindings);
    value->bindings = copy;
}
