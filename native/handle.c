#define SOKOL_LOG_IMPL
#include "common.h"
MOONBIT_FFI_EXPORT void *mb_sokol_null(void) { return NULL; }
MOONBIT_FFI_EXPORT uint64_t mb_sokol_address(void *p) { return (uintptr_t)p; }
MOONBIT_FFI_EXPORT void *mb_sokol_from_address(uint64_t p) { return (void*)(uintptr_t)p; }
MOONBIT_FFI_EXPORT int32_t mb_sokol_enum_identity(int32_t p) { return p; }
