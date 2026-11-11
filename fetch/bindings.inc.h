/* Header inputs: 1cfdda7ad6ae71c3d1f354b57b2ac3f33062fd58c460e56a6c17de9a70f133db. Regenerate after editing shared headers. */
/* C-layout adapters. Resource ownership is handled in support.c. */
#include "../native/common.h"
#define SOKOL_API_IMPL MOONBIT_FFI_EXPORT
#define SOKOL_IMPL
#include "../native/sokol_fetch.h"
static void mb_clone_sfetch_allocator_t(sfetch_allocator_t*, const sfetch_allocator_t*);
static void mb_drop_sfetch_allocator_t(void*);
static void mb_clone_sfetch_desc_t(sfetch_desc_t*, const sfetch_desc_t*);
static void mb_drop_sfetch_desc_t(void*);
static void mb_clone_sfetch_logger_t(sfetch_logger_t*, const sfetch_logger_t*);
static void mb_drop_sfetch_logger_t(void*);
static void mb_clone_sfetch_range_t(sfetch_range_t*, const sfetch_range_t*);
static void mb_drop_sfetch_range_t(void*);
static void mb_clone_sfetch_request_t(sfetch_request_t*, const sfetch_request_t*);
static void mb_drop_sfetch_request_t(void*);
static void mb_clone_sfetch_response_t(sfetch_response_t*, const sfetch_response_t*);
static void mb_drop_sfetch_response_t(void*);
static void mb_clone_sfetch_allocator_t(sfetch_allocator_t *dst, const sfetch_allocator_t *src) { *dst = *src;
}
static void mb_drop_sfetch_allocator_t(void *object) { sfetch_allocator_t *value = object;
}
_Static_assert(_Alignof(sfetch_allocator_t) <= _Alignof(void*), "external payload alignment");
static sfetch_allocator_t *mb_new_sfetch_allocator_t(void) { return mb_object_new(sizeof(sfetch_allocator_t), mb_drop_sfetch_allocator_t); }
static sfetch_allocator_t *mb_copy_sfetch_allocator_t(const sfetch_allocator_t *source) { sfetch_allocator_t *r = mb_new_sfetch_allocator_t(); mb_clone_sfetch_allocator_t(r, source); return r; }
static void mb_clone_sfetch_desc_t(sfetch_desc_t *dst, const sfetch_desc_t *src) { *dst = *src;
mb_clone_sfetch_allocator_t(&dst->allocator, &src->allocator);
mb_clone_sfetch_logger_t(&dst->logger, &src->logger);
}
static void mb_drop_sfetch_desc_t(void *object) { sfetch_desc_t *value = object;
mb_drop_sfetch_allocator_t(&value->allocator);
mb_drop_sfetch_logger_t(&value->logger);
}
_Static_assert(_Alignof(sfetch_desc_t) <= _Alignof(void*), "external payload alignment");
static sfetch_desc_t *mb_new_sfetch_desc_t(void) { return mb_object_new(sizeof(sfetch_desc_t), mb_drop_sfetch_desc_t); }
static sfetch_desc_t *mb_copy_sfetch_desc_t(const sfetch_desc_t *source) { sfetch_desc_t *r = mb_new_sfetch_desc_t(); mb_clone_sfetch_desc_t(r, source); return r; }
static void mb_clone_sfetch_logger_t(sfetch_logger_t *dst, const sfetch_logger_t *src) { *dst = *src;
}
static void mb_drop_sfetch_logger_t(void *object) { sfetch_logger_t *value = object;
}
_Static_assert(_Alignof(sfetch_logger_t) <= _Alignof(void*), "external payload alignment");
static sfetch_logger_t *mb_new_sfetch_logger_t(void) { return mb_object_new(sizeof(sfetch_logger_t), mb_drop_sfetch_logger_t); }
static sfetch_logger_t *mb_copy_sfetch_logger_t(const sfetch_logger_t *source) { sfetch_logger_t *r = mb_new_sfetch_logger_t(); mb_clone_sfetch_logger_t(r, source); return r; }
static void mb_clone_sfetch_range_t(sfetch_range_t *dst, const sfetch_range_t *src) { *dst = *src;
dst->ptr = mb_copy(src->ptr, src->size);
}
static void mb_drop_sfetch_range_t(void *object) { sfetch_range_t *value = object;
free((void*)value->ptr);
}
_Static_assert(_Alignof(sfetch_range_t) <= _Alignof(void*), "external payload alignment");
static sfetch_range_t *mb_new_sfetch_range_t(void) { return mb_object_new(sizeof(sfetch_range_t), mb_drop_sfetch_range_t); }
static sfetch_range_t *mb_copy_sfetch_range_t(const sfetch_range_t *source) { sfetch_range_t *r = mb_new_sfetch_range_t(); mb_clone_sfetch_range_t(r, source); return r; }
static void mb_clone_sfetch_request_t(sfetch_request_t *dst, const sfetch_request_t *src) { *dst = *src;
dst->path = mb_string(src->path);
mb_clone_sfetch_range_t(&dst->buffer, &src->buffer);
mb_clone_sfetch_range_t(&dst->user_data, &src->user_data);
}
static void mb_drop_sfetch_request_t(void *object) { sfetch_request_t *value = object;
free((void*)value->path);
mb_drop_sfetch_range_t(&value->buffer);
mb_drop_sfetch_range_t(&value->user_data);
}
_Static_assert(_Alignof(sfetch_request_t) <= _Alignof(void*), "external payload alignment");
static sfetch_request_t *mb_new_sfetch_request_t(void) { return mb_object_new(sizeof(sfetch_request_t), mb_drop_sfetch_request_t); }
static sfetch_request_t *mb_copy_sfetch_request_t(const sfetch_request_t *source) { sfetch_request_t *r = mb_new_sfetch_request_t(); mb_clone_sfetch_request_t(r, source); return r; }
static void mb_clone_sfetch_response_t(sfetch_response_t *dst, const sfetch_response_t *src) { *dst = *src;
dst->path = mb_string(src->path);
mb_clone_sfetch_range_t(&dst->buffer, &src->buffer);
if (dst->buffer.ptr && mb_contains(src->buffer.ptr, src->buffer.size, src->data.ptr, src->data.size)) { dst->data.ptr = (const uint8_t*)dst->buffer.ptr + ((uintptr_t)src->data.ptr - (uintptr_t)src->buffer.ptr); } else { mb_clone_sfetch_range_t(&dst->data, &src->data); }
}
static void mb_drop_sfetch_response_t(void *object) { sfetch_response_t *value = object;
if (!mb_contains(value->buffer.ptr, value->buffer.size, value->data.ptr, value->data.size)) free((void*)value->data.ptr);
free((void*)value->buffer.ptr); free((void*)value->path);
}
_Static_assert(_Alignof(sfetch_response_t) <= _Alignof(void*), "external payload alignment");
static sfetch_response_t *mb_new_sfetch_response_t(void) { return mb_object_new(sizeof(sfetch_response_t), mb_drop_sfetch_response_t); }
static sfetch_response_t *mb_copy_sfetch_response_t(const sfetch_response_t *source) { sfetch_response_t *r = mb_new_sfetch_response_t(); mb_clone_sfetch_response_t(r, source); return r; }
MOONBIT_FFI_EXPORT sfetch_logger_t * mb_fetch_sfetch_logger_t_new(void) { return mb_new_sfetch_logger_t(); }
MOONBIT_FFI_EXPORT sfetch_logger_t * mb_fetch_sfetch_logger_t_copy(sfetch_logger_t * self) { return mb_copy_sfetch_logger_t(self); }
MOONBIT_FFI_EXPORT void * mb_fetch_sfetch_logger_t_native(sfetch_logger_t * self) { return self; }
MOONBIT_FFI_EXPORT sfetch_logger_t * mb_fetch_sfetch_logger_t_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sfetch_logger_t(ptr); }
typedef void  (*mb_sfetch_logger_t_func_fn)(const char *, uint32_t, uint32_t, const char *, uint32_t, const char *, void *);
MOONBIT_FFI_EXPORT void * mb_fetch_sfetch_logger_t_get_func(sfetch_logger_t * self) {  sfetch_logger_t *v = self; return (void*)v->func; }
MOONBIT_FFI_EXPORT void mb_fetch_sfetch_logger_t_set_func(sfetch_logger_t * self, void * value) {  sfetch_logger_t *v = self; v->func = (mb_sfetch_logger_t_func_fn)value; }
MOONBIT_FFI_EXPORT void * mb_fetch_sfetch_logger_t_get_user_data(sfetch_logger_t * self) {  sfetch_logger_t *v = self; return (void*)v->user_data; }
MOONBIT_FFI_EXPORT void mb_fetch_sfetch_logger_t_set_user_data(sfetch_logger_t * self, void * value) {  sfetch_logger_t *v = self; v->user_data = value; }
MOONBIT_FFI_EXPORT sfetch_range_t * mb_fetch_sfetch_range_t_new(void) { return mb_new_sfetch_range_t(); }
MOONBIT_FFI_EXPORT sfetch_range_t * mb_fetch_sfetch_range_t_copy(sfetch_range_t * self) { return mb_copy_sfetch_range_t(self); }
MOONBIT_FFI_EXPORT void * mb_fetch_sfetch_range_t_native(sfetch_range_t * self) { return self; }
MOONBIT_FFI_EXPORT sfetch_range_t * mb_fetch_sfetch_range_t_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sfetch_range_t(ptr); }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_fetch_sfetch_range_t_bytes(sfetch_range_t * self) { sfetch_range_t *v = self; return mb_bytes(v->ptr, v->size); }
MOONBIT_FFI_EXPORT sfetch_range_t * mb_fetch_sfetch_range_t_data(moonbit_bytes_t data) { sfetch_range_t source = { .ptr = data, .size = Moonbit_array_length(data) }; return mb_copy_sfetch_range_t(&source); }
MOONBIT_FFI_EXPORT uint64_t mb_fetch_sfetch_range_t_get_size(sfetch_range_t * self) {  sfetch_range_t *v = self; return v->size; }
MOONBIT_FFI_EXPORT sfetch_allocator_t * mb_fetch_sfetch_allocator_t_new(void) { return mb_new_sfetch_allocator_t(); }
MOONBIT_FFI_EXPORT sfetch_allocator_t * mb_fetch_sfetch_allocator_t_copy(sfetch_allocator_t * self) { return mb_copy_sfetch_allocator_t(self); }
MOONBIT_FFI_EXPORT void * mb_fetch_sfetch_allocator_t_native(sfetch_allocator_t * self) { return self; }
MOONBIT_FFI_EXPORT sfetch_allocator_t * mb_fetch_sfetch_allocator_t_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sfetch_allocator_t(ptr); }
typedef void * (*mb_sfetch_allocator_t_alloc_fn_fn)(size_t, void *);
MOONBIT_FFI_EXPORT void * mb_fetch_sfetch_allocator_t_get_alloc_fn(sfetch_allocator_t * self) {  sfetch_allocator_t *v = self; return (void*)v->alloc_fn; }
MOONBIT_FFI_EXPORT void mb_fetch_sfetch_allocator_t_set_alloc_fn(sfetch_allocator_t * self, void * value) {  sfetch_allocator_t *v = self; v->alloc_fn = (mb_sfetch_allocator_t_alloc_fn_fn)value; }
typedef void  (*mb_sfetch_allocator_t_free_fn_fn)(void *, void *);
MOONBIT_FFI_EXPORT void * mb_fetch_sfetch_allocator_t_get_free_fn(sfetch_allocator_t * self) {  sfetch_allocator_t *v = self; return (void*)v->free_fn; }
MOONBIT_FFI_EXPORT void mb_fetch_sfetch_allocator_t_set_free_fn(sfetch_allocator_t * self, void * value) {  sfetch_allocator_t *v = self; v->free_fn = (mb_sfetch_allocator_t_free_fn_fn)value; }
MOONBIT_FFI_EXPORT void * mb_fetch_sfetch_allocator_t_get_user_data(sfetch_allocator_t * self) {  sfetch_allocator_t *v = self; return (void*)v->user_data; }
MOONBIT_FFI_EXPORT void mb_fetch_sfetch_allocator_t_set_user_data(sfetch_allocator_t * self, void * value) {  sfetch_allocator_t *v = self; v->user_data = value; }
MOONBIT_FFI_EXPORT sfetch_desc_t * mb_fetch_sfetch_desc_t_new(void) { return mb_new_sfetch_desc_t(); }
MOONBIT_FFI_EXPORT sfetch_desc_t * mb_fetch_sfetch_desc_t_copy(sfetch_desc_t * self) { return mb_copy_sfetch_desc_t(self); }
MOONBIT_FFI_EXPORT void * mb_fetch_sfetch_desc_t_native(sfetch_desc_t * self) { return self; }
MOONBIT_FFI_EXPORT sfetch_desc_t * mb_fetch_sfetch_desc_t_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sfetch_desc_t(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_fetch_sfetch_desc_t_get_max_requests(sfetch_desc_t * self) {  sfetch_desc_t *v = self; return v->max_requests; }
MOONBIT_FFI_EXPORT void mb_fetch_sfetch_desc_t_set_max_requests(sfetch_desc_t * self, uint32_t value) {  sfetch_desc_t *v = self; v->max_requests = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_fetch_sfetch_desc_t_get_num_channels(sfetch_desc_t * self) {  sfetch_desc_t *v = self; return v->num_channels; }
MOONBIT_FFI_EXPORT void mb_fetch_sfetch_desc_t_set_num_channels(sfetch_desc_t * self, uint32_t value) {  sfetch_desc_t *v = self; v->num_channels = (uint32_t)value; }
MOONBIT_FFI_EXPORT uint32_t mb_fetch_sfetch_desc_t_get_num_lanes(sfetch_desc_t * self) {  sfetch_desc_t *v = self; return v->num_lanes; }
MOONBIT_FFI_EXPORT void mb_fetch_sfetch_desc_t_set_num_lanes(sfetch_desc_t * self, uint32_t value) {  sfetch_desc_t *v = self; v->num_lanes = (uint32_t)value; }
MOONBIT_FFI_EXPORT sfetch_allocator_t * mb_fetch_sfetch_desc_t_get_allocator(sfetch_desc_t * self) {  sfetch_desc_t *v = self; return mb_copy_sfetch_allocator_t(&v->allocator); }
MOONBIT_FFI_EXPORT void mb_fetch_sfetch_desc_t_set_allocator(sfetch_desc_t * self, sfetch_allocator_t * value) {  sfetch_desc_t *v = self; sfetch_allocator_t replacement; mb_clone_sfetch_allocator_t(&replacement, value); mb_drop_sfetch_allocator_t(&v->allocator); v->allocator = replacement; }
MOONBIT_FFI_EXPORT sfetch_logger_t * mb_fetch_sfetch_desc_t_get_logger(sfetch_desc_t * self) {  sfetch_desc_t *v = self; return mb_copy_sfetch_logger_t(&v->logger); }
MOONBIT_FFI_EXPORT void mb_fetch_sfetch_desc_t_set_logger(sfetch_desc_t * self, sfetch_logger_t * value) {  sfetch_desc_t *v = self; sfetch_logger_t replacement; mb_clone_sfetch_logger_t(&replacement, value); mb_drop_sfetch_logger_t(&v->logger); v->logger = replacement; }
MOONBIT_FFI_EXPORT uint32_t mb_fetch_sfetch_handle_t_read_id(void * ptr) { if (!ptr) abort(); uint32_t id; memcpy(&id, ptr, sizeof(id)); return id; }
MOONBIT_FFI_EXPORT sfetch_response_t * mb_fetch_sfetch_response_t_new(void) { return mb_new_sfetch_response_t(); }
MOONBIT_FFI_EXPORT sfetch_response_t * mb_fetch_sfetch_response_t_copy(sfetch_response_t * self) { return mb_copy_sfetch_response_t(self); }
MOONBIT_FFI_EXPORT void * mb_fetch_sfetch_response_t_native(sfetch_response_t * self) { return self; }
MOONBIT_FFI_EXPORT sfetch_response_t * mb_fetch_sfetch_response_t_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sfetch_response_t(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_fetch_sfetch_response_t_get_handle(sfetch_response_t * self) {  sfetch_response_t *v = self; return v->handle.id; }
MOONBIT_FFI_EXPORT int32_t mb_fetch_sfetch_response_t_get_dispatched(sfetch_response_t * self) {  sfetch_response_t *v = self; return v->dispatched; }
MOONBIT_FFI_EXPORT int32_t mb_fetch_sfetch_response_t_get_fetched(sfetch_response_t * self) {  sfetch_response_t *v = self; return v->fetched; }
MOONBIT_FFI_EXPORT int32_t mb_fetch_sfetch_response_t_get_paused(sfetch_response_t * self) {  sfetch_response_t *v = self; return v->paused; }
MOONBIT_FFI_EXPORT int32_t mb_fetch_sfetch_response_t_get_finished(sfetch_response_t * self) {  sfetch_response_t *v = self; return v->finished; }
MOONBIT_FFI_EXPORT int32_t mb_fetch_sfetch_response_t_get_failed(sfetch_response_t * self) {  sfetch_response_t *v = self; return v->failed; }
MOONBIT_FFI_EXPORT int32_t mb_fetch_sfetch_response_t_get_cancelled(sfetch_response_t * self) {  sfetch_response_t *v = self; return v->cancelled; }
MOONBIT_FFI_EXPORT int32_t mb_fetch_sfetch_response_t_get_error_code(sfetch_response_t * self) {  sfetch_response_t *v = self; return v->error_code; }
MOONBIT_FFI_EXPORT uint32_t mb_fetch_sfetch_response_t_get_channel(sfetch_response_t * self) {  sfetch_response_t *v = self; return v->channel; }
MOONBIT_FFI_EXPORT uint32_t mb_fetch_sfetch_response_t_get_lane(sfetch_response_t * self) {  sfetch_response_t *v = self; return v->lane; }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_fetch_sfetch_response_t_get_path(sfetch_response_t * self) {  sfetch_response_t *v = self; return mb_utf8(v->path); }
MOONBIT_FFI_EXPORT void * mb_fetch_sfetch_response_t_get_user_data(sfetch_response_t * self) {  sfetch_response_t *v = self; return (void*)v->user_data; }
MOONBIT_FFI_EXPORT uint32_t mb_fetch_sfetch_response_t_get_data_offset(sfetch_response_t * self) {  sfetch_response_t *v = self; return v->data_offset; }
MOONBIT_FFI_EXPORT sfetch_range_t * mb_fetch_sfetch_response_t_get_data(sfetch_response_t * self) {  sfetch_response_t *v = self; return mb_copy_sfetch_range_t(&v->data); }
MOONBIT_FFI_EXPORT sfetch_range_t * mb_fetch_sfetch_response_t_get_buffer(sfetch_response_t * self) {  sfetch_response_t *v = self; return mb_copy_sfetch_range_t(&v->buffer); }
MOONBIT_FFI_EXPORT sfetch_request_t * mb_fetch_sfetch_request_t_new(void) { return mb_new_sfetch_request_t(); }
MOONBIT_FFI_EXPORT sfetch_request_t * mb_fetch_sfetch_request_t_copy(sfetch_request_t * self) { return mb_copy_sfetch_request_t(self); }
MOONBIT_FFI_EXPORT void * mb_fetch_sfetch_request_t_native(sfetch_request_t * self) { return self; }
MOONBIT_FFI_EXPORT sfetch_request_t * mb_fetch_sfetch_request_t_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sfetch_request_t(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_fetch_sfetch_request_t_get_channel(sfetch_request_t * self) {  sfetch_request_t *v = self; return v->channel; }
MOONBIT_FFI_EXPORT void mb_fetch_sfetch_request_t_set_channel(sfetch_request_t * self, uint32_t value) {  sfetch_request_t *v = self; v->channel = (uint32_t)value; }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_fetch_sfetch_request_t_get_path(sfetch_request_t * self) {  sfetch_request_t *v = self; return mb_utf8(v->path); }
MOONBIT_FFI_EXPORT void mb_fetch_sfetch_request_t_set_path(sfetch_request_t * self, moonbit_bytes_t value) {  sfetch_request_t *v = self; const char *replacement = mb_string((const char*)value); free((void*)v->path); v->path = replacement; }
typedef void  (*mb_sfetch_request_t_callback_fn)(const sfetch_response_t *);
MOONBIT_FFI_EXPORT void * mb_fetch_sfetch_request_t_get_callback(sfetch_request_t * self) {  sfetch_request_t *v = self; return (void*)v->callback; }
MOONBIT_FFI_EXPORT void mb_fetch_sfetch_request_t_set_callback(sfetch_request_t * self, void * value) {  sfetch_request_t *v = self; v->callback = (mb_sfetch_request_t_callback_fn)value; }
MOONBIT_FFI_EXPORT uint32_t mb_fetch_sfetch_request_t_get_chunk_size(sfetch_request_t * self) {  sfetch_request_t *v = self; return v->chunk_size; }
MOONBIT_FFI_EXPORT void mb_fetch_sfetch_request_t_set_chunk_size(sfetch_request_t * self, uint32_t value) {  sfetch_request_t *v = self; v->chunk_size = (uint32_t)value; }
MOONBIT_FFI_EXPORT sfetch_range_t * mb_fetch_sfetch_request_t_get_buffer(sfetch_request_t * self) {  sfetch_request_t *v = self; return mb_copy_sfetch_range_t(&v->buffer); }
MOONBIT_FFI_EXPORT void mb_fetch_sfetch_request_t_set_buffer(sfetch_request_t * self, sfetch_range_t * value) {  sfetch_request_t *v = self; sfetch_range_t replacement; mb_clone_sfetch_range_t(&replacement, value); mb_drop_sfetch_range_t(&v->buffer); v->buffer = replacement; }
MOONBIT_FFI_EXPORT sfetch_range_t * mb_fetch_sfetch_request_t_get_user_data(sfetch_request_t * self) {  sfetch_request_t *v = self; return mb_copy_sfetch_range_t(&v->user_data); }
MOONBIT_FFI_EXPORT void mb_fetch_sfetch_request_t_set_user_data(sfetch_request_t * self, sfetch_range_t * value) {  sfetch_request_t *v = self; sfetch_range_t replacement; mb_clone_sfetch_range_t(&replacement, value); mb_drop_sfetch_range_t(&v->user_data); v->user_data = replacement; }
MOONBIT_FFI_EXPORT void mb_fetch_sfetch_setup(sfetch_desc_t * desc) { sfetch_setup(desc); }
MOONBIT_FFI_EXPORT int32_t mb_fetch_sfetch_valid(void) { return sfetch_valid(); }
MOONBIT_FFI_EXPORT sfetch_desc_t * mb_fetch_sfetch_desc(void) { sfetch_desc_t value = sfetch_desc(); return mb_copy_sfetch_desc_t(&value); }
MOONBIT_FFI_EXPORT int32_t mb_fetch_sfetch_handle_valid(uint32_t h) { return sfetch_handle_valid((sfetch_handle_t){ .id = h }); }
MOONBIT_FFI_EXPORT void mb_fetch_sfetch_cancel(uint32_t h) { sfetch_cancel((sfetch_handle_t){ .id = h }); }
MOONBIT_FFI_EXPORT void mb_fetch_sfetch_pause(uint32_t h) { sfetch_pause((sfetch_handle_t){ .id = h }); }
MOONBIT_FFI_EXPORT void mb_fetch_sfetch_continue(uint32_t h) { sfetch_continue((sfetch_handle_t){ .id = h }); }
MOONBIT_FFI_EXPORT sfetch_logger_t * mb_fetch_sfetch_logger_t_default(void) { sfetch_logger_t *r = mb_new_sfetch_logger_t(); r->func = slog_func; return r; }
