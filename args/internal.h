/* Native implementation and cross-file helper declarations. */

#include "../native/common.h"

/* Sokol configuration. */
#define SOKOL_API_IMPL MOONBIT_FFI_EXPORT
#define SOKOL_IMPL
#include "../native/sokol_args.h"

/* Copy and allocation helpers. */

static void mb_clone_sargs_allocator(sargs_allocator *, const sargs_allocator *);
static void mb_drop_sargs_allocator(void *);
static sargs_allocator *mb_new_sargs_allocator(void);
static sargs_allocator *mb_copy_sargs_allocator(const sargs_allocator *);

static void mb_clone_sargs_desc(sargs_desc *, const sargs_desc *);
static void mb_drop_sargs_desc(void *);
static sargs_desc *mb_new_sargs_desc(void);
static sargs_desc *mb_copy_sargs_desc(const sargs_desc *);

/* Feature implementations. */
#include "bindings.h"
