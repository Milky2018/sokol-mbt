#include "bindings.inc.h"

/* Sokol has one application context. The bridge has the same static lifetime;
   captured objects and the descriptor have explicit ownership until cleanup. */
typedef struct {
    sapp_desc *desc;
    void (*call)(void *);
    void (*event_call)(void *, sapp_event *);
    void *init, *frame, *cleanup, *event;
} mb_app_callbacks;
static mb_app_callbacks mb_app_state;
static int mb_app_running;
static sapp_desc *mb_native_desc;
static sapp_desc mb_native_callbacks;

static void mb_app_call(void *closure) {
    moonbit_incref(closure);
    mb_app_state.call(closure);
    moonbit_decref(closure);
}
static void mb_app_release(void) {
    if (!mb_app_state.desc) {
        return;
    }
    moonbit_decref(mb_app_state.init);
    moonbit_decref(mb_app_state.frame);
    moonbit_decref(mb_app_state.cleanup);
    moonbit_decref(mb_app_state.event);
    moonbit_decref(mb_app_state.desc);
    memset(&mb_app_state, 0, sizeof(mb_app_state));
}
static void mb_app_init(void *unused) {
    (void)unused;
    mb_app_call(mb_app_state.init);
}
static void mb_app_frame(void *unused) {
    (void)unused;
    mb_app_call(mb_app_state.frame);
}
static void mb_app_event(const sapp_event *event, void *unused) {
    (void)unused;
    sapp_event *snapshot = mb_copy_sapp_event(event);
    void *closure = mb_app_state.event;
    moonbit_incref(closure);
    mb_app_state.event_call(closure, snapshot);
    moonbit_decref(snapshot);
    moonbit_decref(closure);
}
static void mb_app_cleanup(void *unused) {
    (void)unused;
    mb_app_call(mb_app_state.cleanup);
    mb_app_release();
}
MOONBIT_FFI_EXPORT void mb_app_run(sapp_desc *desc, void (*call)(void *), void *init, void *frame,
                                   void *cleanup, void (*event_call)(void *, sapp_event *),
                                   void *event) {
    if (mb_app_running) {
        abort();
    }
    mb_app_running = 1;
    mb_app_state = (mb_app_callbacks){desc, call, event_call, init, frame, cleanup, event};
    sapp_desc value = *desc;
    value.init_cb = NULL;
    value.frame_cb = NULL;
    value.cleanup_cb = NULL;
    value.event_cb = NULL;
    value.init_userdata_cb = mb_app_init;
    value.frame_userdata_cb = mb_app_frame;
    value.cleanup_userdata_cb = mb_app_cleanup;
    value.event_userdata_cb = mb_app_event;
    value.user_data = NULL;
    sapp_run(&value);
    /* Some desktop platforms return; macOS terminates inside Sokol after cleanup. */
    mb_app_release();
    mb_app_running = 0;
}
MOONBIT_FFI_EXPORT void mb_app_html5_fetch(sapp_html5_fetch_request *request) {
    sapp_html5_fetch_dropped_file(request);
}
static void mb_app_native_cleanup(void) {
    if (mb_native_callbacks.cleanup_cb) {
        mb_native_callbacks.cleanup_cb();
    } else if (mb_native_callbacks.cleanup_userdata_cb) {
        mb_native_callbacks.cleanup_userdata_cb(mb_native_callbacks.user_data);
    }
    if (mb_native_desc) {
        moonbit_decref(mb_native_desc);
        mb_native_desc = NULL;
    }
}
MOONBIT_FFI_EXPORT void mb_app_run_native(sapp_desc *desc) {
    if (mb_app_running) {
        abort();
    }
    mb_app_running = 1;
    mb_native_desc = desc;
    mb_native_callbacks = *desc;
    sapp_desc value = mb_native_callbacks;
    value.cleanup_cb = mb_app_native_cleanup;
    value.cleanup_userdata_cb = NULL;
    sapp_run(&value);
    if (mb_native_desc) {
        moonbit_decref(mb_native_desc);
        mb_native_desc = NULL;
    }
    mb_app_running = 0;
}
