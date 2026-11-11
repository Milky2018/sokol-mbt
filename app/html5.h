static void mb_clone_sapp_html5_fetch_request(sapp_html5_fetch_request *dst,
                                              const sapp_html5_fetch_request *src) {
    *dst = *src;
    mb_clone_sapp_range(&dst->buffer, &src->buffer);
}

static void mb_drop_sapp_html5_fetch_request(void *object) {
    sapp_html5_fetch_request *value = object;
    mb_drop_sapp_range(&value->buffer);
}

_Static_assert(_Alignof(sapp_html5_fetch_request) <= _Alignof(void *),
               "external payload alignment");

static sapp_html5_fetch_request *mb_new_sapp_html5_fetch_request(void) {
    return mb_object_new(sizeof(sapp_html5_fetch_request), mb_drop_sapp_html5_fetch_request);
}

static sapp_html5_fetch_request *
mb_copy_sapp_html5_fetch_request(const sapp_html5_fetch_request *source) {
    sapp_html5_fetch_request *result = mb_new_sapp_html5_fetch_request();
    mb_clone_sapp_html5_fetch_request(result, source);
    return result;
}

static void mb_clone_sapp_html5_fetch_response(sapp_html5_fetch_response *dst,
                                               const sapp_html5_fetch_response *src) {
    *dst = *src;
    mb_clone_sapp_range(&dst->data, &src->data);
    mb_clone_sapp_range(&dst->buffer, &src->buffer);
}

static void mb_drop_sapp_html5_fetch_response(void *object) {
    sapp_html5_fetch_response *value = object;
    mb_drop_sapp_range(&value->data);
    mb_drop_sapp_range(&value->buffer);
}

_Static_assert(_Alignof(sapp_html5_fetch_response) <= _Alignof(void *),
               "external payload alignment");

static sapp_html5_fetch_response *mb_new_sapp_html5_fetch_response(void) {
    return mb_object_new(sizeof(sapp_html5_fetch_response), mb_drop_sapp_html5_fetch_response);
}

static sapp_html5_fetch_response *
mb_copy_sapp_html5_fetch_response(const sapp_html5_fetch_response *source) {
    sapp_html5_fetch_response *result = mb_new_sapp_html5_fetch_response();
    mb_clone_sapp_html5_fetch_response(result, source);
    return result;
}

MOONBIT_FFI_EXPORT sapp_html5_fetch_response *mb_app_sapp_html5_fetch_response_new(void) {
    return mb_new_sapp_html5_fetch_response();
}

MOONBIT_FFI_EXPORT sapp_html5_fetch_response *
mb_app_sapp_html5_fetch_response_copy(sapp_html5_fetch_response *self) {
    return mb_copy_sapp_html5_fetch_response(self);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_html5_fetch_response_native(sapp_html5_fetch_response *self) {
    return self;
}

MOONBIT_FFI_EXPORT sapp_html5_fetch_response *
mb_app_sapp_html5_fetch_response_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sapp_html5_fetch_response(ptr);
}

MOONBIT_FFI_EXPORT int32_t
mb_app_sapp_html5_fetch_response_get_succeeded(sapp_html5_fetch_response *self) {
    sapp_html5_fetch_response *value = self;
    return value->succeeded;
}

MOONBIT_FFI_EXPORT void
mb_app_sapp_html5_fetch_response_set_succeeded(sapp_html5_fetch_response *self,
                                               int32_t replacement) {
    sapp_html5_fetch_response *value = self;
    value->succeeded = (bool)replacement;
}

MOONBIT_FFI_EXPORT int32_t
mb_app_sapp_html5_fetch_response_get_error_code(sapp_html5_fetch_response *self) {
    sapp_html5_fetch_response *value = self;
    return value->error_code;
}

MOONBIT_FFI_EXPORT void
mb_app_sapp_html5_fetch_response_set_error_code(sapp_html5_fetch_response *self,
                                                int32_t replacement) {
    sapp_html5_fetch_response *value = self;
    value->error_code = (sapp_html5_fetch_error)replacement;
}

MOONBIT_FFI_EXPORT int32_t
mb_app_sapp_html5_fetch_response_get_file_index(sapp_html5_fetch_response *self) {
    sapp_html5_fetch_response *value = self;
    return value->file_index;
}

MOONBIT_FFI_EXPORT void
mb_app_sapp_html5_fetch_response_set_file_index(sapp_html5_fetch_response *self,
                                                int32_t replacement) {
    sapp_html5_fetch_response *value = self;
    value->file_index = (int)replacement;
}

MOONBIT_FFI_EXPORT sapp_range *
mb_app_sapp_html5_fetch_response_get_data(sapp_html5_fetch_response *self) {
    sapp_html5_fetch_response *value = self;
    return mb_copy_sapp_range(&value->data);
}

MOONBIT_FFI_EXPORT void mb_app_sapp_html5_fetch_response_set_data(sapp_html5_fetch_response *self,
                                                                  sapp_range *replacement) {
    sapp_html5_fetch_response *value = self;
    sapp_range copy;
    mb_clone_sapp_range(&copy, replacement);
    mb_drop_sapp_range(&value->data);
    value->data = copy;
}

MOONBIT_FFI_EXPORT sapp_range *
mb_app_sapp_html5_fetch_response_get_buffer(sapp_html5_fetch_response *self) {
    sapp_html5_fetch_response *value = self;
    return mb_copy_sapp_range(&value->buffer);
}

MOONBIT_FFI_EXPORT void mb_app_sapp_html5_fetch_response_set_buffer(sapp_html5_fetch_response *self,
                                                                    sapp_range *replacement) {
    sapp_html5_fetch_response *value = self;
    sapp_range copy;
    mb_clone_sapp_range(&copy, replacement);
    mb_drop_sapp_range(&value->buffer);
    value->buffer = copy;
}

MOONBIT_FFI_EXPORT void *
mb_app_sapp_html5_fetch_response_get_user_data(sapp_html5_fetch_response *self) {
    sapp_html5_fetch_response *value = self;
    return (void *)value->user_data;
}

MOONBIT_FFI_EXPORT void
mb_app_sapp_html5_fetch_response_set_user_data(sapp_html5_fetch_response *self, void *replacement) {
    sapp_html5_fetch_response *value = self;
    value->user_data = replacement;
}

MOONBIT_FFI_EXPORT sapp_html5_fetch_request *mb_app_sapp_html5_fetch_request_new(void) {
    return mb_new_sapp_html5_fetch_request();
}

MOONBIT_FFI_EXPORT sapp_html5_fetch_request *
mb_app_sapp_html5_fetch_request_copy(sapp_html5_fetch_request *self) {
    return mb_copy_sapp_html5_fetch_request(self);
}

MOONBIT_FFI_EXPORT void *mb_app_sapp_html5_fetch_request_native(sapp_html5_fetch_request *self) {
    return self;
}

MOONBIT_FFI_EXPORT sapp_html5_fetch_request *
mb_app_sapp_html5_fetch_request_from_native(void *ptr) {
    if (!ptr) {
        abort();
    }
    return mb_copy_sapp_html5_fetch_request(ptr);
}

MOONBIT_FFI_EXPORT int32_t
mb_app_sapp_html5_fetch_request_get_dropped_file_index(sapp_html5_fetch_request *self) {
    sapp_html5_fetch_request *value = self;
    return value->dropped_file_index;
}

MOONBIT_FFI_EXPORT void
mb_app_sapp_html5_fetch_request_set_dropped_file_index(sapp_html5_fetch_request *self,
                                                       int32_t replacement) {
    sapp_html5_fetch_request *value = self;
    value->dropped_file_index = (int)replacement;
}

typedef void (*mb_sapp_html5_fetch_request_callback_fn)(const sapp_html5_fetch_response *);

MOONBIT_FFI_EXPORT void *
mb_app_sapp_html5_fetch_request_get_callback(sapp_html5_fetch_request *self) {
    sapp_html5_fetch_request *value = self;
    return (void *)value->callback;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_html5_fetch_request_set_callback(sapp_html5_fetch_request *self,
                                                                     void *replacement) {
    sapp_html5_fetch_request *value = self;
    value->callback = (mb_sapp_html5_fetch_request_callback_fn)replacement;
}

MOONBIT_FFI_EXPORT sapp_range *
mb_app_sapp_html5_fetch_request_get_buffer(sapp_html5_fetch_request *self) {
    sapp_html5_fetch_request *value = self;
    return mb_copy_sapp_range(&value->buffer);
}

MOONBIT_FFI_EXPORT void mb_app_sapp_html5_fetch_request_set_buffer(sapp_html5_fetch_request *self,
                                                                   sapp_range *replacement) {
    sapp_html5_fetch_request *value = self;
    sapp_range copy;
    mb_clone_sapp_range(&copy, replacement);
    mb_drop_sapp_range(&value->buffer);
    value->buffer = copy;
}

MOONBIT_FFI_EXPORT void *
mb_app_sapp_html5_fetch_request_get_user_data(sapp_html5_fetch_request *self) {
    sapp_html5_fetch_request *value = self;
    return (void *)value->user_data;
}

MOONBIT_FFI_EXPORT void
mb_app_sapp_html5_fetch_request_set_user_data(sapp_html5_fetch_request *self, void *replacement) {
    sapp_html5_fetch_request *value = self;
    value->user_data = replacement;
}

MOONBIT_FFI_EXPORT void mb_app_sapp_html5_ask_leave_site(int32_t ask) {
    sapp_html5_ask_leave_site((bool)ask);
}
