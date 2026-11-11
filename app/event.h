static void mb_clone_sapp_event(sapp_event *dst, const sapp_event *src) {
    *dst = *src;
    for (int i0 = 0; i0 < 8; i0++) {
        mb_clone_sapp_touchpoint(&dst->touches[i0], &src->touches[i0]);
    }
}

static void mb_drop_sapp_event(void *object) {
    sapp_event *value = object;
    for (int i0 = 0; i0 < 8; i0++) {
        mb_drop_sapp_touchpoint(&value->touches[i0]);
    }
}

_Static_assert(_Alignof(sapp_event) <= _Alignof(void *), "external payload alignment");

static sapp_event *mb_new_sapp_event(void) {
    return mb_object_new(sizeof(sapp_event), mb_drop_sapp_event);
}

static sapp_event *mb_copy_sapp_event(const sapp_event *source) {
    sapp_event *result = mb_new_sapp_event();
    mb_clone_sapp_event(result, source);
    return result;
}

static void mb_clone_sapp_touchpoint(sapp_touchpoint *dst, const sapp_touchpoint *src) {
    *dst = *src;
}

static void mb_drop_sapp_touchpoint(void *object) {
    (void)object;
}

_Static_assert(_Alignof(sapp_touchpoint) <= _Alignof(void *), "external payload alignment");

static sapp_touchpoint *mb_new_sapp_touchpoint(void) {
    return mb_object_new(sizeof(sapp_touchpoint), mb_drop_sapp_touchpoint);
}

static sapp_touchpoint *mb_copy_sapp_touchpoint(const sapp_touchpoint *source) {
    sapp_touchpoint *result = mb_new_sapp_touchpoint();
    mb_clone_sapp_touchpoint(result, source);
    return result;
}

MOONBIT_FFI_EXPORT sapp_touchpoint *mb_app_sapp_touchpoint_new(void) {
    return mb_new_sapp_touchpoint();
}

MOONBIT_FFI_EXPORT sapp_touchpoint *mb_app_sapp_touchpoint_copy(sapp_touchpoint *self) {
    return mb_copy_sapp_touchpoint(self);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_touchpoint_native(sapp_touchpoint *self) {
    return self;
}

MOONBIT_FFI_EXPORT sapp_touchpoint *mb_app_sapp_touchpoint_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sapp_touchpoint(ptr);
}

MOONBIT_FFI_EXPORT uint64_t mb_app_sapp_touchpoint_get_identifier(sapp_touchpoint *self) {
    sapp_touchpoint *value = self;
    return value->identifier;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_touchpoint_set_identifier(sapp_touchpoint *self,
                                                              uint64_t replacement) {
    sapp_touchpoint *value = self;
    value->identifier = (uintptr_t)replacement;
}

MOONBIT_FFI_EXPORT float mb_app_sapp_touchpoint_get_pos_x(sapp_touchpoint *self) {
    sapp_touchpoint *value = self;
    return value->pos_x;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_touchpoint_set_pos_x(sapp_touchpoint *self, float replacement) {
    sapp_touchpoint *value = self;
    value->pos_x = (float)replacement;
}

MOONBIT_FFI_EXPORT float mb_app_sapp_touchpoint_get_pos_y(sapp_touchpoint *self) {
    sapp_touchpoint *value = self;
    return value->pos_y;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_touchpoint_set_pos_y(sapp_touchpoint *self, float replacement) {
    sapp_touchpoint *value = self;
    value->pos_y = (float)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_app_sapp_touchpoint_get_android_tooltype(sapp_touchpoint *self) {
    sapp_touchpoint *value = self;
    return value->android_tooltype;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_touchpoint_set_android_tooltype(sapp_touchpoint *self,
                                                                    int32_t replacement) {
    sapp_touchpoint *value = self;
    value->android_tooltype = (sapp_android_tooltype)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_app_sapp_touchpoint_get_changed(sapp_touchpoint *self) {
    sapp_touchpoint *value = self;
    return value->changed;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_touchpoint_set_changed(sapp_touchpoint *self,
                                                           int32_t replacement) {
    sapp_touchpoint *value = self;
    value->changed = (bool)replacement;
}

MOONBIT_FFI_EXPORT sapp_event *mb_app_sapp_event_new(void) {
    return mb_new_sapp_event();
}

MOONBIT_FFI_EXPORT sapp_event *mb_app_sapp_event_copy(sapp_event *self) {
    return mb_copy_sapp_event(self);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_event_native(sapp_event *self) {
    return self;
}

MOONBIT_FFI_EXPORT sapp_event *mb_app_sapp_event_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sapp_event(ptr);
}

MOONBIT_FFI_EXPORT uint64_t mb_app_sapp_event_get_frame_count(sapp_event *self) {
    sapp_event *value = self;
    return value->frame_count;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_frame_count(sapp_event *self, uint64_t replacement) {
    sapp_event *value = self;
    value->frame_count = (uint64_t)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_app_sapp_event_get_type(sapp_event *self) {
    sapp_event *value = self;
    return value->type;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_type(sapp_event *self, int32_t replacement) {
    sapp_event *value = self;
    value->type = (sapp_event_type)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_app_sapp_event_get_key_code(sapp_event *self) {
    sapp_event *value = self;
    return value->key_code;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_key_code(sapp_event *self, int32_t replacement) {
    sapp_event *value = self;
    value->key_code = (sapp_keycode)replacement;
}

MOONBIT_FFI_EXPORT uint32_t mb_app_sapp_event_get_char_code(sapp_event *self) {
    sapp_event *value = self;
    return value->char_code;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_char_code(sapp_event *self, uint32_t replacement) {
    sapp_event *value = self;
    value->char_code = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_app_sapp_event_get_key_repeat(sapp_event *self) {
    sapp_event *value = self;
    return value->key_repeat;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_key_repeat(sapp_event *self, int32_t replacement) {
    sapp_event *value = self;
    value->key_repeat = (bool)replacement;
}

MOONBIT_FFI_EXPORT uint32_t mb_app_sapp_event_get_modifiers(sapp_event *self) {
    sapp_event *value = self;
    return value->modifiers;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_modifiers(sapp_event *self, uint32_t replacement) {
    sapp_event *value = self;
    value->modifiers = (uint32_t)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_app_sapp_event_get_mouse_button(sapp_event *self) {
    sapp_event *value = self;
    return value->mouse_button;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_mouse_button(sapp_event *self, int32_t replacement) {
    sapp_event *value = self;
    value->mouse_button = (sapp_mousebutton)replacement;
}

MOONBIT_FFI_EXPORT float mb_app_sapp_event_get_mouse_x(sapp_event *self) {
    sapp_event *value = self;
    return value->mouse_x;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_mouse_x(sapp_event *self, float replacement) {
    sapp_event *value = self;
    value->mouse_x = (float)replacement;
}

MOONBIT_FFI_EXPORT float mb_app_sapp_event_get_mouse_y(sapp_event *self) {
    sapp_event *value = self;
    return value->mouse_y;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_mouse_y(sapp_event *self, float replacement) {
    sapp_event *value = self;
    value->mouse_y = (float)replacement;
}

MOONBIT_FFI_EXPORT float mb_app_sapp_event_get_mouse_dx(sapp_event *self) {
    sapp_event *value = self;
    return value->mouse_dx;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_mouse_dx(sapp_event *self, float replacement) {
    sapp_event *value = self;
    value->mouse_dx = (float)replacement;
}

MOONBIT_FFI_EXPORT float mb_app_sapp_event_get_mouse_dy(sapp_event *self) {
    sapp_event *value = self;
    return value->mouse_dy;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_mouse_dy(sapp_event *self, float replacement) {
    sapp_event *value = self;
    value->mouse_dy = (float)replacement;
}

MOONBIT_FFI_EXPORT float mb_app_sapp_event_get_scroll_x(sapp_event *self) {
    sapp_event *value = self;
    return value->scroll_x;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_scroll_x(sapp_event *self, float replacement) {
    sapp_event *value = self;
    value->scroll_x = (float)replacement;
}

MOONBIT_FFI_EXPORT float mb_app_sapp_event_get_scroll_y(sapp_event *self) {
    sapp_event *value = self;
    return value->scroll_y;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_scroll_y(sapp_event *self, float replacement) {
    sapp_event *value = self;
    value->scroll_y = (float)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_app_sapp_event_get_num_touches(sapp_event *self) {
    sapp_event *value = self;
    return value->num_touches;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_num_touches(sapp_event *self, int32_t replacement) {
    sapp_event *value = self;
    value->num_touches = (int)replacement;
}

MOONBIT_FFI_EXPORT sapp_touchpoint *mb_app_sapp_event_get_touches(sapp_event *self, int32_t i0) {
    if (i0 < 0 || i0 >= 8) {
        abort();
    }
    sapp_event *value = self;
    return mb_copy_sapp_touchpoint(&value->touches[i0]);
}

MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_touches(sapp_event *self, int32_t i0,
                                                      sapp_touchpoint *replacement) {
    if (i0 < 0 || i0 >= 8) {
        abort();
    }
    sapp_event *value = self;
    sapp_touchpoint copy;
    mb_clone_sapp_touchpoint(&copy, replacement);
    mb_drop_sapp_touchpoint(&value->touches[i0]);
    value->touches[i0] = copy;
}

MOONBIT_FFI_EXPORT int32_t mb_app_sapp_event_get_window_width(sapp_event *self) {
    sapp_event *value = self;
    return value->window_width;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_window_width(sapp_event *self, int32_t replacement) {
    sapp_event *value = self;
    value->window_width = (int)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_app_sapp_event_get_window_height(sapp_event *self) {
    sapp_event *value = self;
    return value->window_height;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_window_height(sapp_event *self, int32_t replacement) {
    sapp_event *value = self;
    value->window_height = (int)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_app_sapp_event_get_framebuffer_width(sapp_event *self) {
    sapp_event *value = self;
    return value->framebuffer_width;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_framebuffer_width(sapp_event *self,
                                                                int32_t replacement) {
    sapp_event *value = self;
    value->framebuffer_width = (int)replacement;
}

MOONBIT_FFI_EXPORT int32_t mb_app_sapp_event_get_framebuffer_height(sapp_event *self) {
    sapp_event *value = self;
    return value->framebuffer_height;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_framebuffer_height(sapp_event *self,
                                                                 int32_t replacement) {
    sapp_event *value = self;
    value->framebuffer_height = (int)replacement;
}
