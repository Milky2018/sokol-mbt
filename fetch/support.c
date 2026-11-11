#include "generated.h"
typedef struct mb_fetch_pending {
    uint32_t id;
    void *closure;
    void (*call)(void*,mb_box*);
    mb_arena *request_arena,*buffer_arena;
    sfetch_range_t buffer;
    struct mb_fetch_pending *next;
} mb_fetch_pending;
static mb_fetch_pending *mb_fetch_requests;
static int mb_fetch_callback_depth;
static mb_fetch_pending *mb_fetch_find(uint32_t id) {
    for(mb_fetch_pending *p=mb_fetch_requests;p;p=p->next) if(p->id==id) return p;
    return NULL;
}
static void mb_fetch_remove(mb_fetch_pending *p) {
    mb_fetch_pending **link=&mb_fetch_requests;
    while(*link && *link!=p) link=&(*link)->next;
    if(*link) *link=p->next;
    moonbit_decref(p->closure); mb_arena_drop(p->request_arena);
    if(p->buffer_arena) mb_arena_drop(p->buffer_arena);
    free(p);
}
static void mb_fetch_response(const sfetch_response_t *response) {
    mb_fetch_pending *p=*(mb_fetch_pending**)response->user_data;
    mb_box *r=mb_box_new(sizeof(*response)); mb_clone_sfetch_response_t(r->arena,r->value,response);
    /* Never expose Sokol's temporary pointer to our private request context. */
    ((sfetch_response_t*)r->value)->user_data=NULL;
    mb_fetch_callback_depth++;
    moonbit_incref(p->closure); p->call(p->closure,r);
    mb_fetch_callback_depth--;
    if(response->finished) mb_fetch_remove(p);
}
MOONBIT_FFI_EXPORT mb_box *mb_fetch_send(mb_box *request,void (*call)(void*,mb_box*),void *closure) {
    mb_arena *storage=mb_arena_new();
    sfetch_request_t d; mb_clone_sfetch_request_t(storage,&d,request->value);
    mb_fetch_pending *p=mb_malloc(sizeof(*p)); p->closure=closure; p->call=call;
    p->request_arena=storage;
    p->buffer=d.buffer;
    d.callback=mb_fetch_response; d.user_data.ptr=&p; d.user_data.size=sizeof(p);
    sfetch_handle_t h=sfetch_send(&d);
    if(h.id) { p->id=h.id; p->next=mb_fetch_requests; mb_fetch_requests=p; }
    else { moonbit_decref(closure); mb_arena_drop(p->request_arena); free(p); }
    mb_box *r=mb_box_new(sizeof(h)); *(sfetch_handle_t*)r->value=h; return r;
}
MOONBIT_FFI_EXPORT void mb_fetch_shutdown(void) {
    if(mb_fetch_callback_depth) abort();
    sfetch_shutdown(); while(mb_fetch_requests) mb_fetch_remove(mb_fetch_requests); mb_release_all();
}
MOONBIT_FFI_EXPORT void mb_fetch_bind_buffer(mb_box *handle,mb_box *buffer) {
    if(!mb_fetch_callback_depth) abort();
    sfetch_handle_t h=*(sfetch_handle_t*)handle->value;
    mb_fetch_pending *p=mb_fetch_find(h.id); if(!p || p->buffer.ptr) abort();
    p->buffer_arena=mb_arena_new();
    mb_clone_sfetch_range_t(p->buffer_arena,&p->buffer,buffer->value);
    sfetch_bind_buffer(h,p->buffer);
}
MOONBIT_FFI_EXPORT mb_box *mb_fetch_unbind_buffer(mb_box *handle) {
    if(!mb_fetch_callback_depth) abort();
    sfetch_handle_t h=*(sfetch_handle_t*)handle->value;
    mb_fetch_pending *p=mb_fetch_find(h.id); if(!p) abort();
    sfetch_unbind_buffer(h);
    mb_box *r=mb_box_new(sizeof(sfetch_range_t)); mb_clone_sfetch_range_t(r->arena,r->value,&p->buffer);
    p->buffer.ptr=NULL; p->buffer.size=0;
    if(p->buffer_arena) { mb_arena_drop(p->buffer_arena); p->buffer_arena=NULL; }
    return r;
}
MOONBIT_FFI_EXPORT void mb_fetch_dowork(void) {
    if(mb_fetch_callback_depth) abort();
    sfetch_dowork();
}
