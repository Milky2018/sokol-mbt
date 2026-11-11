#include "bindings.inc.h"

/* Only IO buffers and a callback reference survive send(). Sokol copies the
   path and userdata bytes synchronously (sokol_fetch.h:_sfetch_item_init). */
typedef struct mb_fetch_pending {
    uint32_t id;
    void *closure;
    void (*call)(void*, sfetch_response_t*);
    sfetch_range_t buffer;
    struct mb_fetch_pending *next;
} mb_fetch_pending;
static mb_fetch_pending *mb_fetch_requests;
static mb_fetch_pending *mb_fetch_active;

static void mb_fetch_remove(mb_fetch_pending *request) {
    mb_fetch_pending **link = &mb_fetch_requests;
    while (*link && *link != request) link = &(*link)->next;
    if (*link) *link = request->next;
    moonbit_decref(request->closure);
    free((void*)request->buffer.ptr);
    free(request);
}
static void mb_fetch_response(const sfetch_response_t *response) {
    mb_fetch_pending *request;
    memcpy(&request, response->user_data, sizeof(request));
    sfetch_response_t *snapshot = mb_copy_sfetch_response_t(response);
    snapshot->user_data = NULL;
    mb_fetch_active = request;
    moonbit_incref(request->closure);
    request->call(request->closure, snapshot);
    moonbit_decref(snapshot);
    moonbit_decref(request->closure);
    mb_fetch_active = NULL;
    if (response->finished) mb_fetch_remove(request);
}
MOONBIT_FFI_EXPORT uint32_t mb_fetch_send(sfetch_request_t *request, void (*call)(void*,sfetch_response_t*), void *closure) {
    sfetch_request_t value = *request;
    mb_fetch_pending *pending = mb_malloc(sizeof(*pending));
    pending->closure = closure; pending->call = call;
    mb_clone_sfetch_range_t(&pending->buffer, &value.buffer);
    value.buffer = pending->buffer;
    value.callback = mb_fetch_response;
    value.user_data = (sfetch_range_t){ .ptr = &pending, .size = sizeof(pending) };
    sfetch_handle_t handle = sfetch_send(&value);
    if (handle.id) {
        pending->id = handle.id; pending->next = mb_fetch_requests; mb_fetch_requests = pending;
    } else {
        moonbit_decref(closure); free((void*)pending->buffer.ptr); free(pending);
    }
    return handle.id;
}
MOONBIT_FFI_EXPORT void mb_fetch_shutdown(void) {
    if (mb_fetch_active) abort();
    /* Stop and join workers before freeing anything they can still write. */
    sfetch_shutdown();
    while (mb_fetch_requests) mb_fetch_remove(mb_fetch_requests);
}
MOONBIT_FFI_EXPORT uint32_t mb_fetch_active_request(void) {
    return mb_fetch_active ? mb_fetch_active->id : 0;
}
MOONBIT_FFI_EXPORT void mb_fetch_bind_buffer(uint32_t id, sfetch_range_t *buffer) {
    if (!mb_fetch_active || mb_fetch_active->id != id || mb_fetch_active->buffer.ptr) abort();
    mb_clone_sfetch_range_t(&mb_fetch_active->buffer, buffer);
    sfetch_bind_buffer((sfetch_handle_t){ .id = id }, mb_fetch_active->buffer);
}
MOONBIT_FFI_EXPORT sfetch_range_t *mb_fetch_unbind_buffer(uint32_t id) {
    if (!mb_fetch_active || mb_fetch_active->id != id) abort();
    sfetch_unbind_buffer((sfetch_handle_t){ .id = id });
    sfetch_range_t *result = mb_new_sfetch_range_t();
    *result = mb_fetch_active->buffer;
    mb_fetch_active->buffer = (sfetch_range_t){0};
    return result;
}
MOONBIT_FFI_EXPORT void mb_fetch_dowork(void) {
    if (mb_fetch_active) abort();
    sfetch_dowork();
}
