#ifndef MOONBIT_SOKOL_COMMON_H
#define MOONBIT_SOKOL_COMMON_H
#include <moonbit.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>
/* Keep the logger local to each stub so static archive order cannot leave
   a logger reference unresolved when native/libnative.a is scanned first. */
#define SOKOL_LOG_API_DECL static
#define SOKOL_API_IMPL static
#define SOKOL_LOG_IMPL
#include "sokol_log.h"
#undef SOKOL_LOG_IMPL
#undef SOKOL_LOG_API_DECL
#undef SOKOL_API_IMPL

/* Windows requires the declaration and definition to agree on dllexport. */
#define SOKOL_API_DECL MOONBIT_FFI_EXPORT

/* C values live directly in MoonBit external-object payloads. Their
   destructors release owned fields; the runtime frees the payload itself. */
static void *mb_malloc(size_t size) {
    void *p = calloc(1, size ? size : 1);
    if (!p) {
        abort();
    }
    return p;
}

static void *mb_copy(const void *source, size_t size) {
    if (!source || !size) {
        return NULL;
    }
    void *p = mb_malloc(size);
    memcpy(p, source, size);
    return p;
}

static const char *mb_string(const char *source) {
    return source ? mb_copy(source, strlen(source) + 1) : NULL;
}

static moonbit_bytes_t mb_bytes(const void *source, size_t size) {
    if (size > INT32_MAX || (size && !source)) {
        abort();
    }
    moonbit_bytes_t bytes = moonbit_make_bytes((int32_t)size, 0);
    if (size) {
        memcpy(bytes, source, size);
    }
    return bytes;
}

static moonbit_bytes_t mb_utf8(const char *source) {
    return mb_bytes(source, source ? strlen(source) : 0);
}

static void *mb_object_new(size_t size, void (*drop)(void *)) {
    void *value = moonbit_make_external_object(drop, size);
    memset(value, 0, size);
    return value;
}

/* uintptr_t comparisons also work for unrelated allocations; pointer
   subtraction/comparison would have undefined behavior in that case. */
static int mb_contains(const void *outer, size_t capacity, const void *inner, size_t size) {
    uintptr_t a = (uintptr_t)outer, b = (uintptr_t)inner;
    return outer && inner && b >= a && b - a <= capacity && size <= capacity - (b - a);
}
#endif
