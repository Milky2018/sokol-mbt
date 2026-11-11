#include "generated.h"
typedef struct {
    mb_box *desc;
    void (*call)(void*);
    void (*event_call)(void*,mb_box*);
    void *init,*frame,*cleanup,*event;
} mb_app_callbacks;
static mb_app_callbacks *mb_app_active;
static void mb_app_init(void *ptr) { mb_app_callbacks *s=ptr; moonbit_incref(s->init); s->call(s->init); }
static void mb_app_frame(void *ptr) { mb_app_callbacks *s=ptr; moonbit_incref(s->frame); s->call(s->frame); }
static void mb_app_event(const sapp_event *event,void *ptr) {
    mb_app_callbacks *s=ptr; mb_box *b=mb_box_new(sizeof(*event)); mb_clone_sapp_event(b->arena,b->value,event);
    moonbit_incref(s->event); s->event_call(s->event,b);
}
static void mb_app_cleanup(void *ptr) {
    mb_app_callbacks *s=ptr;
    moonbit_incref(s->cleanup); s->call(s->cleanup);
    moonbit_decref(s->init); moonbit_decref(s->frame); moonbit_decref(s->cleanup); moonbit_decref(s->event);
    s->init=s->frame=s->cleanup=s->event=NULL;
}
MOONBIT_FFI_EXPORT void mb_app_run(mb_box *desc,void (*call)(void*),void *init,void *frame,void *cleanup,void (*event_call)(void*,mb_box*),void *event) {
    if(mb_app_active) abort();
    mb_app_callbacks *s=mb_malloc(sizeof(*s));
    s->desc=desc; s->call=call; s->init=init; s->frame=frame; s->cleanup=cleanup; s->event_call=event_call; s->event=event;
    sapp_desc d=*(sapp_desc*)desc->value;
    d.init_cb=NULL; d.frame_cb=NULL; d.cleanup_cb=NULL; d.event_cb=NULL;
    d.init_userdata_cb=mb_app_init; d.frame_userdata_cb=mb_app_frame; d.cleanup_userdata_cb=mb_app_cleanup; d.event_userdata_cb=mb_app_event; d.user_data=s;
    mb_app_active=s; sapp_run(&d);
    /* Desktop backends which return do so after cleanup. macOS exits inside Sokol. */
#if !defined(__EMSCRIPTEN__)
    mb_app_active=NULL; moonbit_decref(desc); free(s);
#endif
}
/* Raw native callbacks support platform integrations without MoonBit runtime calls. */
MOONBIT_FFI_EXPORT void mb_app_html5_fetch(mb_box *request) { sapp_html5_fetch_dropped_file(request->value); }
MOONBIT_FFI_EXPORT void mb_app_run_native(mb_box *desc) {
    sapp_run(desc->value);
#if !defined(__EMSCRIPTEN__)
    moonbit_decref(desc);
#endif
}
