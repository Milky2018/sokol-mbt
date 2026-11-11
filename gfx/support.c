#include "internal.h"
#include "trace_callbacks.h"
#include "listener_callback.h"

/* Sokol copies the hook struct but borrows its userdata until replacement. */
static sg_trace_hooks *mb_installed_hooks;
MOONBIT_FFI_EXPORT sg_trace_hooks *mb_gfx_install_trace_hooks(sg_trace_hooks *hooks) {
    sg_trace_hooks *installed = mb_copy_sg_trace_hooks(hooks);
    sg_trace_hooks previous = sg_install_trace_hooks(installed);
    sg_trace_hooks *old = mb_copy_sg_trace_hooks(&previous);
    if (mb_installed_hooks) {
        moonbit_decref(mb_installed_hooks);
    }
    mb_installed_hooks = installed;
    return old;
}

typedef struct mb_listener_entry {
    sg_commit_listener *owner;
    sg_commit_listener listener;
    struct mb_listener_entry *next;
} mb_listener_entry;
static mb_listener_entry *mb_listeners;

MOONBIT_FFI_EXPORT int32_t mb_gfx_add_commit_listener(sg_commit_listener *listener) {
    sg_commit_listener value = *(sg_commit_listener *)listener;
    int ok = sg_add_commit_listener(value);
    if (ok) {
        mb_listener_entry *entry = mb_malloc(sizeof(*entry));
        entry->owner = listener;
        moonbit_incref(listener);
        entry->listener = value;
        entry->next = mb_listeners;
        mb_listeners = entry;
    }
    return ok;
}
MOONBIT_FFI_EXPORT int32_t mb_gfx_remove_commit_listener(sg_commit_listener *listener) {
    sg_commit_listener value = *(sg_commit_listener *)listener;
    int ok = sg_remove_commit_listener(value);
    if (ok) {
        mb_listener_entry **link = &mb_listeners;
        while (*link) {
            mb_listener_entry *entry = *link;
            if (entry->listener.func == value.func &&
                entry->listener.user_data == value.user_data) {
                *link = entry->next;
                moonbit_decref(entry->owner);
                free(entry);
                break;
            }
            link = &entry->next;
        }
    }
    return ok;
}
MOONBIT_FFI_EXPORT void mb_gfx_shutdown(void) {
    sg_shutdown();
    while (mb_listeners) {
        mb_listener_entry *entry = mb_listeners;
        mb_listeners = entry->next;
        moonbit_decref(entry->owner);
        free(entry);
    }
    if (mb_installed_hooks) {
        moonbit_decref(mb_installed_hooks);
        mb_installed_hooks = NULL;
    }
}
MOONBIT_FFI_EXPORT int32_t mb_gfx_headless(void) {
#ifdef SOKOL_DUMMY_BACKEND
    return 1;
#else
    return 0;
#endif
}
#define MB_GFX_DATA(name, type)                                                                    \
    MOONBIT_FFI_EXPORT sg_range *mb_gfx_##name(type *data) {                                       \
        sg_range value = {.ptr = data, .size = (size_t)Moonbit_array_length(data) * sizeof(type)}; \
        return mb_copy_sg_range(&value);                                                           \
    }
MB_GFX_DATA(floats, float)
MB_GFX_DATA(uints, uint32_t)
MB_GFX_DATA(ushorts, uint16_t)
