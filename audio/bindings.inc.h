/* Header inputs: 903197c1ef289e20429dde51e37efb25bd8cbf35558113eba77961d3d603d743. Regenerate after editing shared headers. */
/* C-layout adapters. Resource ownership is handled in support.c. */
#include "../native/common.h"
#define SOKOL_API_IMPL MOONBIT_FFI_EXPORT
#define SOKOL_IMPL
#include "../native/sokol_audio.h"
static void mb_clone_saudio_allocator(saudio_allocator*, const saudio_allocator*);
static void mb_drop_saudio_allocator(void*);
static void mb_clone_saudio_desc(saudio_desc*, const saudio_desc*);
static void mb_drop_saudio_desc(void*);
static void mb_clone_saudio_logger(saudio_logger*, const saudio_logger*);
static void mb_drop_saudio_logger(void*);
static void mb_clone_saudio_n3ds_desc(saudio_n3ds_desc*, const saudio_n3ds_desc*);
static void mb_drop_saudio_n3ds_desc(void*);
static void mb_clone_saudio_win32_desc(saudio_win32_desc*, const saudio_win32_desc*);
static void mb_drop_saudio_win32_desc(void*);
static void mb_clone_saudio_allocator(saudio_allocator *dst, const saudio_allocator *src) { *dst = *src;
}
static void mb_drop_saudio_allocator(void *object) { saudio_allocator *value = object;
}
_Static_assert(_Alignof(saudio_allocator) <= _Alignof(void*), "external payload alignment");
static saudio_allocator *mb_new_saudio_allocator(void) { return mb_object_new(sizeof(saudio_allocator), mb_drop_saudio_allocator); }
static saudio_allocator *mb_copy_saudio_allocator(const saudio_allocator *source) { saudio_allocator *r = mb_new_saudio_allocator(); mb_clone_saudio_allocator(r, source); return r; }
static void mb_clone_saudio_desc(saudio_desc *dst, const saudio_desc *src) { *dst = *src;
mb_clone_saudio_win32_desc(&dst->win32, &src->win32);
mb_clone_saudio_n3ds_desc(&dst->n3ds, &src->n3ds);
mb_clone_saudio_allocator(&dst->allocator, &src->allocator);
mb_clone_saudio_logger(&dst->logger, &src->logger);
}
static void mb_drop_saudio_desc(void *object) { saudio_desc *value = object;
mb_drop_saudio_win32_desc(&value->win32);
mb_drop_saudio_n3ds_desc(&value->n3ds);
mb_drop_saudio_allocator(&value->allocator);
mb_drop_saudio_logger(&value->logger);
}
_Static_assert(_Alignof(saudio_desc) <= _Alignof(void*), "external payload alignment");
static saudio_desc *mb_new_saudio_desc(void) { return mb_object_new(sizeof(saudio_desc), mb_drop_saudio_desc); }
static saudio_desc *mb_copy_saudio_desc(const saudio_desc *source) { saudio_desc *r = mb_new_saudio_desc(); mb_clone_saudio_desc(r, source); return r; }
static void mb_clone_saudio_logger(saudio_logger *dst, const saudio_logger *src) { *dst = *src;
}
static void mb_drop_saudio_logger(void *object) { saudio_logger *value = object;
}
_Static_assert(_Alignof(saudio_logger) <= _Alignof(void*), "external payload alignment");
static saudio_logger *mb_new_saudio_logger(void) { return mb_object_new(sizeof(saudio_logger), mb_drop_saudio_logger); }
static saudio_logger *mb_copy_saudio_logger(const saudio_logger *source) { saudio_logger *r = mb_new_saudio_logger(); mb_clone_saudio_logger(r, source); return r; }
static void mb_clone_saudio_n3ds_desc(saudio_n3ds_desc *dst, const saudio_n3ds_desc *src) { *dst = *src;
}
static void mb_drop_saudio_n3ds_desc(void *object) { saudio_n3ds_desc *value = object;
}
_Static_assert(_Alignof(saudio_n3ds_desc) <= _Alignof(void*), "external payload alignment");
static saudio_n3ds_desc *mb_new_saudio_n3ds_desc(void) { return mb_object_new(sizeof(saudio_n3ds_desc), mb_drop_saudio_n3ds_desc); }
static saudio_n3ds_desc *mb_copy_saudio_n3ds_desc(const saudio_n3ds_desc *source) { saudio_n3ds_desc *r = mb_new_saudio_n3ds_desc(); mb_clone_saudio_n3ds_desc(r, source); return r; }
static void mb_clone_saudio_win32_desc(saudio_win32_desc *dst, const saudio_win32_desc *src) { *dst = *src;
}
static void mb_drop_saudio_win32_desc(void *object) { saudio_win32_desc *value = object;
}
_Static_assert(_Alignof(saudio_win32_desc) <= _Alignof(void*), "external payload alignment");
static saudio_win32_desc *mb_new_saudio_win32_desc(void) { return mb_object_new(sizeof(saudio_win32_desc), mb_drop_saudio_win32_desc); }
static saudio_win32_desc *mb_copy_saudio_win32_desc(const saudio_win32_desc *source) { saudio_win32_desc *r = mb_new_saudio_win32_desc(); mb_clone_saudio_win32_desc(r, source); return r; }
MOONBIT_FFI_EXPORT saudio_logger * mb_audio_saudio_logger_new(void) { return mb_new_saudio_logger(); }
MOONBIT_FFI_EXPORT saudio_logger * mb_audio_saudio_logger_copy(saudio_logger * self) { return mb_copy_saudio_logger(self); }
MOONBIT_FFI_EXPORT void * mb_audio_saudio_logger_native(saudio_logger * self) { return self; }
MOONBIT_FFI_EXPORT saudio_logger * mb_audio_saudio_logger_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_saudio_logger(ptr); }
typedef void  (*mb_saudio_logger_func_fn)(const char *, uint32_t, uint32_t, const char *, uint32_t, const char *, void *);
MOONBIT_FFI_EXPORT void * mb_audio_saudio_logger_get_func(saudio_logger * self) {  saudio_logger *v = self; return (void*)v->func; }
MOONBIT_FFI_EXPORT void mb_audio_saudio_logger_set_func(saudio_logger * self, void * value) {  saudio_logger *v = self; v->func = (mb_saudio_logger_func_fn)value; }
MOONBIT_FFI_EXPORT void * mb_audio_saudio_logger_get_user_data(saudio_logger * self) {  saudio_logger *v = self; return (void*)v->user_data; }
MOONBIT_FFI_EXPORT void mb_audio_saudio_logger_set_user_data(saudio_logger * self, void * value) {  saudio_logger *v = self; v->user_data = value; }
MOONBIT_FFI_EXPORT saudio_allocator * mb_audio_saudio_allocator_new(void) { return mb_new_saudio_allocator(); }
MOONBIT_FFI_EXPORT saudio_allocator * mb_audio_saudio_allocator_copy(saudio_allocator * self) { return mb_copy_saudio_allocator(self); }
MOONBIT_FFI_EXPORT void * mb_audio_saudio_allocator_native(saudio_allocator * self) { return self; }
MOONBIT_FFI_EXPORT saudio_allocator * mb_audio_saudio_allocator_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_saudio_allocator(ptr); }
typedef void * (*mb_saudio_allocator_alloc_fn_fn)(size_t, void *);
MOONBIT_FFI_EXPORT void * mb_audio_saudio_allocator_get_alloc_fn(saudio_allocator * self) {  saudio_allocator *v = self; return (void*)v->alloc_fn; }
MOONBIT_FFI_EXPORT void mb_audio_saudio_allocator_set_alloc_fn(saudio_allocator * self, void * value) {  saudio_allocator *v = self; v->alloc_fn = (mb_saudio_allocator_alloc_fn_fn)value; }
typedef void  (*mb_saudio_allocator_free_fn_fn)(void *, void *);
MOONBIT_FFI_EXPORT void * mb_audio_saudio_allocator_get_free_fn(saudio_allocator * self) {  saudio_allocator *v = self; return (void*)v->free_fn; }
MOONBIT_FFI_EXPORT void mb_audio_saudio_allocator_set_free_fn(saudio_allocator * self, void * value) {  saudio_allocator *v = self; v->free_fn = (mb_saudio_allocator_free_fn_fn)value; }
MOONBIT_FFI_EXPORT void * mb_audio_saudio_allocator_get_user_data(saudio_allocator * self) {  saudio_allocator *v = self; return (void*)v->user_data; }
MOONBIT_FFI_EXPORT void mb_audio_saudio_allocator_set_user_data(saudio_allocator * self, void * value) {  saudio_allocator *v = self; v->user_data = value; }
MOONBIT_FFI_EXPORT saudio_n3ds_desc * mb_audio_saudio_n3ds_desc_new(void) { return mb_new_saudio_n3ds_desc(); }
MOONBIT_FFI_EXPORT saudio_n3ds_desc * mb_audio_saudio_n3ds_desc_copy(saudio_n3ds_desc * self) { return mb_copy_saudio_n3ds_desc(self); }
MOONBIT_FFI_EXPORT void * mb_audio_saudio_n3ds_desc_native(saudio_n3ds_desc * self) { return self; }
MOONBIT_FFI_EXPORT saudio_n3ds_desc * mb_audio_saudio_n3ds_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_saudio_n3ds_desc(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_audio_saudio_n3ds_desc_get_queue_count(saudio_n3ds_desc * self) {  saudio_n3ds_desc *v = self; return v->queue_count; }
MOONBIT_FFI_EXPORT void mb_audio_saudio_n3ds_desc_set_queue_count(saudio_n3ds_desc * self, int32_t value) {  saudio_n3ds_desc *v = self; v->queue_count = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_audio_saudio_n3ds_desc_get_interpolation_type(saudio_n3ds_desc * self) {  saudio_n3ds_desc *v = self; return v->interpolation_type; }
MOONBIT_FFI_EXPORT void mb_audio_saudio_n3ds_desc_set_interpolation_type(saudio_n3ds_desc * self, int32_t value) {  saudio_n3ds_desc *v = self; v->interpolation_type = (saudio_n3ds_ndspinterptype)value; }
MOONBIT_FFI_EXPORT int32_t mb_audio_saudio_n3ds_desc_get_channel_id(saudio_n3ds_desc * self) {  saudio_n3ds_desc *v = self; return v->channel_id; }
MOONBIT_FFI_EXPORT void mb_audio_saudio_n3ds_desc_set_channel_id(saudio_n3ds_desc * self, int32_t value) {  saudio_n3ds_desc *v = self; v->channel_id = (int)value; }
MOONBIT_FFI_EXPORT saudio_win32_desc * mb_audio_saudio_win32_desc_new(void) { return mb_new_saudio_win32_desc(); }
MOONBIT_FFI_EXPORT saudio_win32_desc * mb_audio_saudio_win32_desc_copy(saudio_win32_desc * self) { return mb_copy_saudio_win32_desc(self); }
MOONBIT_FFI_EXPORT void * mb_audio_saudio_win32_desc_native(saudio_win32_desc * self) { return self; }
MOONBIT_FFI_EXPORT saudio_win32_desc * mb_audio_saudio_win32_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_saudio_win32_desc(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_audio_saudio_win32_desc_get_skip_coinitialize(saudio_win32_desc * self) {  saudio_win32_desc *v = self; return v->skip_coinitialize; }
MOONBIT_FFI_EXPORT void mb_audio_saudio_win32_desc_set_skip_coinitialize(saudio_win32_desc * self, int32_t value) {  saudio_win32_desc *v = self; v->skip_coinitialize = (bool)value; }
MOONBIT_FFI_EXPORT saudio_desc * mb_audio_saudio_desc_new(void) { return mb_new_saudio_desc(); }
MOONBIT_FFI_EXPORT saudio_desc * mb_audio_saudio_desc_copy(saudio_desc * self) { return mb_copy_saudio_desc(self); }
MOONBIT_FFI_EXPORT void * mb_audio_saudio_desc_native(saudio_desc * self) { return self; }
MOONBIT_FFI_EXPORT saudio_desc * mb_audio_saudio_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_saudio_desc(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_audio_saudio_desc_get_sample_rate(saudio_desc * self) {  saudio_desc *v = self; return v->sample_rate; }
MOONBIT_FFI_EXPORT void mb_audio_saudio_desc_set_sample_rate(saudio_desc * self, int32_t value) {  saudio_desc *v = self; v->sample_rate = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_audio_saudio_desc_get_num_channels(saudio_desc * self) {  saudio_desc *v = self; return v->num_channels; }
MOONBIT_FFI_EXPORT void mb_audio_saudio_desc_set_num_channels(saudio_desc * self, int32_t value) {  saudio_desc *v = self; v->num_channels = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_audio_saudio_desc_get_buffer_frames(saudio_desc * self) {  saudio_desc *v = self; return v->buffer_frames; }
MOONBIT_FFI_EXPORT void mb_audio_saudio_desc_set_buffer_frames(saudio_desc * self, int32_t value) {  saudio_desc *v = self; v->buffer_frames = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_audio_saudio_desc_get_packet_frames(saudio_desc * self) {  saudio_desc *v = self; return v->packet_frames; }
MOONBIT_FFI_EXPORT void mb_audio_saudio_desc_set_packet_frames(saudio_desc * self, int32_t value) {  saudio_desc *v = self; v->packet_frames = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_audio_saudio_desc_get_num_packets(saudio_desc * self) {  saudio_desc *v = self; return v->num_packets; }
MOONBIT_FFI_EXPORT void mb_audio_saudio_desc_set_num_packets(saudio_desc * self, int32_t value) {  saudio_desc *v = self; v->num_packets = (int)value; }
typedef void  (*mb_saudio_desc_stream_cb_fn)(float *, int, int);
MOONBIT_FFI_EXPORT void * mb_audio_saudio_desc_get_stream_cb(saudio_desc * self) {  saudio_desc *v = self; return (void*)v->stream_cb; }
MOONBIT_FFI_EXPORT void mb_audio_saudio_desc_set_stream_cb(saudio_desc * self, void * value) {  saudio_desc *v = self; v->stream_cb = (mb_saudio_desc_stream_cb_fn)value; }
typedef void  (*mb_saudio_desc_stream_userdata_cb_fn)(float *, int, int, void *);
MOONBIT_FFI_EXPORT void * mb_audio_saudio_desc_get_stream_userdata_cb(saudio_desc * self) {  saudio_desc *v = self; return (void*)v->stream_userdata_cb; }
MOONBIT_FFI_EXPORT void mb_audio_saudio_desc_set_stream_userdata_cb(saudio_desc * self, void * value) {  saudio_desc *v = self; v->stream_userdata_cb = (mb_saudio_desc_stream_userdata_cb_fn)value; }
MOONBIT_FFI_EXPORT void * mb_audio_saudio_desc_get_user_data(saudio_desc * self) {  saudio_desc *v = self; return (void*)v->user_data; }
MOONBIT_FFI_EXPORT void mb_audio_saudio_desc_set_user_data(saudio_desc * self, void * value) {  saudio_desc *v = self; v->user_data = value; }
MOONBIT_FFI_EXPORT saudio_win32_desc * mb_audio_saudio_desc_get_win32(saudio_desc * self) {  saudio_desc *v = self; return mb_copy_saudio_win32_desc(&v->win32); }
MOONBIT_FFI_EXPORT void mb_audio_saudio_desc_set_win32(saudio_desc * self, saudio_win32_desc * value) {  saudio_desc *v = self; saudio_win32_desc replacement; mb_clone_saudio_win32_desc(&replacement, value); mb_drop_saudio_win32_desc(&v->win32); v->win32 = replacement; }
MOONBIT_FFI_EXPORT saudio_n3ds_desc * mb_audio_saudio_desc_get_n3ds(saudio_desc * self) {  saudio_desc *v = self; return mb_copy_saudio_n3ds_desc(&v->n3ds); }
MOONBIT_FFI_EXPORT void mb_audio_saudio_desc_set_n3ds(saudio_desc * self, saudio_n3ds_desc * value) {  saudio_desc *v = self; saudio_n3ds_desc replacement; mb_clone_saudio_n3ds_desc(&replacement, value); mb_drop_saudio_n3ds_desc(&v->n3ds); v->n3ds = replacement; }
MOONBIT_FFI_EXPORT saudio_allocator * mb_audio_saudio_desc_get_allocator(saudio_desc * self) {  saudio_desc *v = self; return mb_copy_saudio_allocator(&v->allocator); }
MOONBIT_FFI_EXPORT void mb_audio_saudio_desc_set_allocator(saudio_desc * self, saudio_allocator * value) {  saudio_desc *v = self; saudio_allocator replacement; mb_clone_saudio_allocator(&replacement, value); mb_drop_saudio_allocator(&v->allocator); v->allocator = replacement; }
MOONBIT_FFI_EXPORT saudio_logger * mb_audio_saudio_desc_get_logger(saudio_desc * self) {  saudio_desc *v = self; return mb_copy_saudio_logger(&v->logger); }
MOONBIT_FFI_EXPORT void mb_audio_saudio_desc_set_logger(saudio_desc * self, saudio_logger * value) {  saudio_desc *v = self; saudio_logger replacement; mb_clone_saudio_logger(&replacement, value); mb_drop_saudio_logger(&v->logger); v->logger = replacement; }
MOONBIT_FFI_EXPORT void mb_audio_saudio_setup(saudio_desc * desc) { saudio_setup(desc); }
MOONBIT_FFI_EXPORT int32_t mb_audio_saudio_isvalid(void) { return saudio_isvalid(); }
MOONBIT_FFI_EXPORT saudio_desc * mb_audio_saudio_query_desc(void) { saudio_desc value = saudio_query_desc(); return mb_copy_saudio_desc(&value); }
MOONBIT_FFI_EXPORT int32_t mb_audio_saudio_suspended(void) { return saudio_suspended(); }
MOONBIT_FFI_EXPORT saudio_logger * mb_audio_saudio_logger_default(void) { saudio_logger *r = mb_new_saudio_logger(); r->func = slog_func; return r; }
