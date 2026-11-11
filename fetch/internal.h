/* Native implementation and cross-file helper declarations. */

#include "../native/common.h"

/* Sokol configuration. */
#define SOKOL_API_IMPL MOONBIT_FFI_EXPORT
#define SOKOL_IMPL
#include "../native/sokol_fetch.h"

/* Copy and allocation helpers. */

static void mb_clone_sfetch_allocator_t(sfetch_allocator_t *, const sfetch_allocator_t *);
static void mb_drop_sfetch_allocator_t(void *);
static sfetch_allocator_t *mb_new_sfetch_allocator_t(void);
static sfetch_allocator_t *mb_copy_sfetch_allocator_t(const sfetch_allocator_t *);

static void mb_clone_sfetch_desc_t(sfetch_desc_t *, const sfetch_desc_t *);
static void mb_drop_sfetch_desc_t(void *);
static sfetch_desc_t *mb_new_sfetch_desc_t(void);
static sfetch_desc_t *mb_copy_sfetch_desc_t(const sfetch_desc_t *);

static void mb_clone_sfetch_logger_t(sfetch_logger_t *, const sfetch_logger_t *);
static void mb_drop_sfetch_logger_t(void *);
static sfetch_logger_t *mb_new_sfetch_logger_t(void);
static sfetch_logger_t *mb_copy_sfetch_logger_t(const sfetch_logger_t *);

static void mb_clone_sfetch_range_t(sfetch_range_t *, const sfetch_range_t *);
static void mb_drop_sfetch_range_t(void *);
static sfetch_range_t *mb_new_sfetch_range_t(void);
static sfetch_range_t *mb_copy_sfetch_range_t(const sfetch_range_t *);

static void mb_clone_sfetch_request_t(sfetch_request_t *, const sfetch_request_t *);
static void mb_drop_sfetch_request_t(void *);
static sfetch_request_t *mb_new_sfetch_request_t(void);
static sfetch_request_t *mb_copy_sfetch_request_t(const sfetch_request_t *);

static void mb_clone_sfetch_response_t(sfetch_response_t *, const sfetch_response_t *);
static void mb_drop_sfetch_response_t(void *);
static sfetch_response_t *mb_new_sfetch_response_t(void);
static sfetch_response_t *mb_copy_sfetch_response_t(const sfetch_response_t *);

/* Feature implementations. */
#include "bindings.h"
