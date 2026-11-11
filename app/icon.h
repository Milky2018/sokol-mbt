static void mb_clone_sapp_icon_desc(sapp_icon_desc *dst, const sapp_icon_desc *src) {
    *dst = *src;
    for (int i0 = 0; i0 < 8; i0++) {
        mb_clone_sapp_image_desc(&dst->images[i0], &src->images[i0]);
    }
}

static void mb_drop_sapp_icon_desc(void *object) {
    sapp_icon_desc *value = object;
    for (int i0 = 0; i0 < 8; i0++) {
        mb_drop_sapp_image_desc(&value->images[i0]);
    }
}

_Static_assert(_Alignof(sapp_icon_desc) <= _Alignof(void *), "external payload alignment");

static sapp_icon_desc *mb_new_sapp_icon_desc(void) {
    return mb_object_new(sizeof(sapp_icon_desc), mb_drop_sapp_icon_desc);
}

static sapp_icon_desc *mb_copy_sapp_icon_desc(const sapp_icon_desc *source) {
    sapp_icon_desc *result = mb_new_sapp_icon_desc();
    mb_clone_sapp_icon_desc(result, source);
    return result;
}

static void mb_clone_sapp_image_desc(sapp_image_desc *dst, const sapp_image_desc *src) {
    *dst = *src;
    mb_clone_sapp_range(&dst->pixels, &src->pixels);
}

static void mb_drop_sapp_image_desc(void *object) {
    sapp_image_desc *value = object;
    mb_drop_sapp_range(&value->pixels);
}

_Static_assert(_Alignof(sapp_image_desc) <= _Alignof(void *), "external payload alignment");

static sapp_image_desc *mb_new_sapp_image_desc(void) {
    return mb_object_new(sizeof(sapp_image_desc), mb_drop_sapp_image_desc);
}

static sapp_image_desc *mb_copy_sapp_image_desc(const sapp_image_desc *source) {
    sapp_image_desc *result = mb_new_sapp_image_desc();
    mb_clone_sapp_image_desc(result, source);
    return result;
}

static void mb_clone_sapp_range(sapp_range *dst, const sapp_range *src) {
    *dst = *src;
    dst->ptr = mb_copy(src->ptr, src->size);
}

static void mb_drop_sapp_range(void *object) {
    sapp_range *value = object;
    free((void *)value->ptr);
}

_Static_assert(_Alignof(sapp_range) <= _Alignof(void *), "external payload alignment");

static sapp_range *mb_new_sapp_range(void) {
    return mb_object_new(sizeof(sapp_range), mb_drop_sapp_range);
}

static sapp_range *mb_copy_sapp_range(const sapp_range *source) {
    sapp_range *result = mb_new_sapp_range();
    mb_clone_sapp_range(result, source);
    return result;
}

MOONBIT_FFI_EXPORT sapp_range *mb_app_sapp_range_new(void) {
    return mb_new_sapp_range();
}

MOONBIT_FFI_EXPORT sapp_range *mb_app_sapp_range_copy(sapp_range *self) {
    return mb_copy_sapp_range(self);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_range_native(sapp_range *self) {
    return self;
}

MOONBIT_FFI_EXPORT sapp_range *mb_app_sapp_range_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sapp_range(ptr);
}

MOONBIT_FFI_EXPORT moonbit_bytes_t mb_app_sapp_range_bytes(sapp_range *self) {
    return mb_bytes(self->ptr, self->size);
}

MOONBIT_FFI_EXPORT sapp_range *mb_app_sapp_range_data(moonbit_bytes_t data) {

    sapp_range source = {.ptr = data, .size = Moonbit_array_length(data)};
    return mb_copy_sapp_range(&source);
}

MOONBIT_FFI_EXPORT uint64_t mb_app_sapp_range_get_size(sapp_range *self) {
    sapp_range *value = self;
    return value->size;
}

MOONBIT_FFI_EXPORT sapp_image_desc *mb_app_sapp_image_desc_new(void) {
    return mb_new_sapp_image_desc();
}

MOONBIT_FFI_EXPORT sapp_image_desc *mb_app_sapp_image_desc_copy(sapp_image_desc *self) {
    return mb_copy_sapp_image_desc(self);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_image_desc_native(sapp_image_desc *self) {
    return self;
}

MOONBIT_FFI_EXPORT sapp_image_desc *mb_app_sapp_image_desc_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sapp_image_desc(ptr);
}

MOONBIT_FFI_EXPORT int32_t mb_app_sapp_image_desc_get_width(sapp_image_desc *self) {
    sapp_image_desc *value = self;
    return value->width;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_image_desc_set_width(sapp_image_desc *self,
                                                         int32_t replacement) {
    sapp_image_desc *value = self;
    value->width = (int)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_app_sapp_image_desc_get_height(sapp_image_desc *self) {
    sapp_image_desc *value = self;
    return value->height;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_image_desc_set_height(sapp_image_desc *self,
                                                          int32_t replacement) {
    sapp_image_desc *value = self;
    value->height = (int)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_app_sapp_image_desc_get_cursor_hotspot_x(sapp_image_desc *self) {
    sapp_image_desc *value = self;
    return value->cursor_hotspot_x;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_image_desc_set_cursor_hotspot_x(sapp_image_desc *self,
                                                                    int32_t replacement) {
    sapp_image_desc *value = self;
    value->cursor_hotspot_x = (int)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_app_sapp_image_desc_get_cursor_hotspot_y(sapp_image_desc *self) {
    sapp_image_desc *value = self;
    return value->cursor_hotspot_y;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_image_desc_set_cursor_hotspot_y(sapp_image_desc *self,
                                                                    int32_t replacement) {
    sapp_image_desc *value = self;
    value->cursor_hotspot_y = (int)replacement;
}

MOONBIT_FFI_EXPORT sapp_range *mb_app_sapp_image_desc_get_pixels(sapp_image_desc *self) {
    sapp_image_desc *value = self;
    return mb_copy_sapp_range(&value->pixels);
}

MOONBIT_FFI_EXPORT void mb_app_sapp_image_desc_set_pixels(sapp_image_desc *self,
                                                          sapp_range *replacement) {
    sapp_image_desc *value = self;
    sapp_range copy;
    mb_clone_sapp_range(&copy, replacement);
    mb_drop_sapp_range(&value->pixels);
    value->pixels = copy;
}

MOONBIT_FFI_EXPORT sapp_icon_desc *mb_app_sapp_icon_desc_new(void) {
    return mb_new_sapp_icon_desc();
}

MOONBIT_FFI_EXPORT sapp_icon_desc *mb_app_sapp_icon_desc_copy(sapp_icon_desc *self) {
    return mb_copy_sapp_icon_desc(self);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_icon_desc_native(sapp_icon_desc *self) {
    return self;
}

MOONBIT_FFI_EXPORT sapp_icon_desc *mb_app_sapp_icon_desc_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sapp_icon_desc(ptr);
}

MOONBIT_FFI_EXPORT int32_t mb_app_sapp_icon_desc_get_sokol_default(sapp_icon_desc *self) {
    sapp_icon_desc *value = self;
    return value->sokol_default;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_icon_desc_set_sokol_default(sapp_icon_desc *self,
                                                                int32_t replacement) {
    sapp_icon_desc *value = self;
    value->sokol_default = (bool)replacement;
}

MOONBIT_FFI_EXPORT sapp_image_desc *mb_app_sapp_icon_desc_get_images(sapp_icon_desc *self,
                                                                     int32_t i0) {
    if (i0 < 0 || i0 >= 8) {
        abort();
    }
    sapp_icon_desc *value = self;
    return mb_copy_sapp_image_desc(&value->images[i0]);
}

MOONBIT_FFI_EXPORT void mb_app_sapp_icon_desc_set_images(sapp_icon_desc *self, int32_t i0,
                                                         sapp_image_desc *replacement) {
    if (i0 < 0 || i0 >= 8) {
        abort();
    }
    sapp_icon_desc *value = self;
    sapp_image_desc copy;
    mb_clone_sapp_image_desc(&copy, replacement);
    mb_drop_sapp_image_desc(&value->images[i0]);
    value->images[i0] = copy;
}

MOONBIT_FFI_EXPORT int32_t mb_app_sapp_bind_mouse_cursor_image(int32_t cursor,
                                                               sapp_image_desc *desc) {
    return sapp_bind_mouse_cursor_image((sapp_mouse_cursor)cursor, desc);
}

MOONBIT_FFI_EXPORT void mb_app_sapp_set_icon(sapp_icon_desc *icon_desc) {
    sapp_set_icon(icon_desc);
}
