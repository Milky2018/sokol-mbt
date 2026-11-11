static void mb_clone_sargs_allocator(sargs_allocator *dst, const sargs_allocator *src) {
    *dst = *src;
}

static void mb_drop_sargs_allocator(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sargs_allocator) <= _Alignof(void *), "external payload alignment");

static sargs_allocator *mb_new_sargs_allocator(void) {
    return mb_object_new(sizeof(sargs_allocator), mb_drop_sargs_allocator);
}

static sargs_allocator *mb_copy_sargs_allocator(const sargs_allocator *source) {
    sargs_allocator *result = mb_new_sargs_allocator();
    mb_clone_sargs_allocator(result, source);
    return result;
}

static void mb_clone_sargs_desc(sargs_desc *dst, const sargs_desc *src) {
    *dst = *src;
    mb_clone_sargs_allocator(&dst->allocator, &src->allocator);
}

static void mb_drop_sargs_desc(void *object) {
    sargs_desc *value = object;
    mb_drop_sargs_allocator(&value->allocator);
}

_Static_assert(_Alignof(sargs_desc) <= _Alignof(void *), "external payload alignment");

static sargs_desc *mb_new_sargs_desc(void) {
    return mb_object_new(sizeof(sargs_desc), mb_drop_sargs_desc);
}

static sargs_desc *mb_copy_sargs_desc(const sargs_desc *source) {
    sargs_desc *result = mb_new_sargs_desc();
    mb_clone_sargs_desc(result, source);
    return result;
}

MOONBIT_FFI_EXPORT sargs_allocator *mb_args_sargs_allocator_new(void) {
    return mb_new_sargs_allocator();
}

MOONBIT_FFI_EXPORT sargs_allocator *mb_args_sargs_allocator_copy(sargs_allocator *self) {
    return mb_copy_sargs_allocator(self);
}

MOONBIT_FFI_EXPORT void *mb_args_sargs_allocator_native(sargs_allocator *self) {
    return self;
}

MOONBIT_FFI_EXPORT sargs_allocator *mb_args_sargs_allocator_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sargs_allocator(ptr);
}

typedef void *(*mb_sargs_allocator_alloc_fn_fn)(size_t, void *);

MOONBIT_FFI_EXPORT void *mb_args_sargs_allocator_get_alloc_fn(sargs_allocator *self) {
    sargs_allocator *value = self;
    return (void *)value->alloc_fn;
}

MOONBIT_FFI_EXPORT void mb_args_sargs_allocator_set_alloc_fn(sargs_allocator *self,
                                                             void *replacement) {
    sargs_allocator *value = self;
    value->alloc_fn = (mb_sargs_allocator_alloc_fn_fn)replacement;
}

typedef void (*mb_sargs_allocator_free_fn_fn)(void *, void *);

MOONBIT_FFI_EXPORT void *mb_args_sargs_allocator_get_free_fn(sargs_allocator *self) {
    sargs_allocator *value = self;
    return (void *)value->free_fn;
}

MOONBIT_FFI_EXPORT void mb_args_sargs_allocator_set_free_fn(sargs_allocator *self,
                                                            void *replacement) {
    sargs_allocator *value = self;
    value->free_fn = (mb_sargs_allocator_free_fn_fn)replacement;
}

MOONBIT_FFI_EXPORT void *mb_args_sargs_allocator_get_user_data(sargs_allocator *self) {
    sargs_allocator *value = self;
    return (void *)value->user_data;
}

MOONBIT_FFI_EXPORT void mb_args_sargs_allocator_set_user_data(sargs_allocator *self,
                                                              void *replacement) {
    sargs_allocator *value = self;
    value->user_data = replacement;
}

MOONBIT_FFI_EXPORT sargs_desc *mb_args_sargs_desc_new(void) {
    return mb_new_sargs_desc();
}

MOONBIT_FFI_EXPORT sargs_desc *mb_args_sargs_desc_copy(sargs_desc *self) {
    return mb_copy_sargs_desc(self);
}

MOONBIT_FFI_EXPORT void *mb_args_sargs_desc_native(sargs_desc *self) {
    return self;
}

MOONBIT_FFI_EXPORT sargs_desc *mb_args_sargs_desc_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sargs_desc(ptr);
}

MOONBIT_FFI_EXPORT int32_t mb_args_sargs_desc_get_argc(sargs_desc *self) {
    sargs_desc *value = self;
    return value->argc;
}

MOONBIT_FFI_EXPORT void mb_args_sargs_desc_set_argc(sargs_desc *self, int32_t replacement) {
    sargs_desc *value = self;
    value->argc = (int)replacement;
}

MOONBIT_FFI_EXPORT void *mb_args_sargs_desc_get_argv(sargs_desc *self) {
    sargs_desc *value = self;
    return (void *)value->argv;
}

MOONBIT_FFI_EXPORT void mb_args_sargs_desc_set_argv(sargs_desc *self, void *replacement) {
    sargs_desc *value = self;
    value->argv = replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_args_sargs_desc_get_max_args(sargs_desc *self) {
    sargs_desc *value = self;
    return value->max_args;
}

MOONBIT_FFI_EXPORT void mb_args_sargs_desc_set_max_args(sargs_desc *self, int32_t replacement) {
    sargs_desc *value = self;
    value->max_args = (int)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_args_sargs_desc_get_buf_size(sargs_desc *self) {
    sargs_desc *value = self;
    return value->buf_size;
}

MOONBIT_FFI_EXPORT void mb_args_sargs_desc_set_buf_size(sargs_desc *self, int32_t replacement) {
    sargs_desc *value = self;
    value->buf_size = (int)replacement;
}

MOONBIT_FFI_EXPORT sargs_allocator *mb_args_sargs_desc_get_allocator(sargs_desc *self) {
    sargs_desc *value = self;
    return mb_copy_sargs_allocator(&value->allocator);
}

MOONBIT_FFI_EXPORT void mb_args_sargs_desc_set_allocator(sargs_desc *self,
                                                         sargs_allocator *replacement) {
    sargs_desc *value = self;
    sargs_allocator copy;
    mb_clone_sargs_allocator(&copy, replacement);
    mb_drop_sargs_allocator(&value->allocator);
    value->allocator = copy;
}

MOONBIT_FFI_EXPORT int32_t mb_args_sargs_isvalid(void) {
    return sargs_isvalid();
}

MOONBIT_FFI_EXPORT int32_t mb_args_sargs_exists(moonbit_bytes_t key) {
    return sargs_exists((const char *)key);
}

MOONBIT_FFI_EXPORT moonbit_bytes_t mb_args_sargs_value(moonbit_bytes_t key) {
    return mb_utf8(sargs_value((const char *)key));
}

MOONBIT_FFI_EXPORT moonbit_bytes_t mb_args_sargs_value_def(moonbit_bytes_t key,
                                                           moonbit_bytes_t def) {
    return mb_utf8(sargs_value_def((const char *)key, (const char *)def));
}

MOONBIT_FFI_EXPORT int32_t mb_args_sargs_equals(moonbit_bytes_t key, moonbit_bytes_t val) {
    return sargs_equals((const char *)key, (const char *)val);
}

MOONBIT_FFI_EXPORT int32_t mb_args_sargs_boolean(moonbit_bytes_t key) {
    return sargs_boolean((const char *)key);
}

MOONBIT_FFI_EXPORT int32_t mb_args_sargs_find(moonbit_bytes_t key) {
    return sargs_find((const char *)key);
}

MOONBIT_FFI_EXPORT moonbit_bytes_t mb_args_sargs_key_at(int32_t index) {
    return mb_utf8(sargs_key_at((int)index));
}

MOONBIT_FFI_EXPORT moonbit_bytes_t mb_args_sargs_value_at(int32_t index) {
    return mb_utf8(sargs_value_at((int)index));
}
