/* Native implementation and cross-file helper declarations. */

#include "../native/common.h"

/* Sokol configuration. */
#define SOKOL_API_IMPL MOONBIT_FFI_EXPORT
#define SOKOL_IMPL
#include "../native/sokol_time.h"
