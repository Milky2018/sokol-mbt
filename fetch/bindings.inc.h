/* Header inputs: d2d6826b820af0a7d3c4665d84e425f2a3958bd268f3410281af39d3f29c35e4. Regenerate after
 * editing shared headers. */
#include "../native/common.h"
#define SOKOL_API_IMPL MOONBIT_FFI_EXPORT
#define SOKOL_IMPL
#include "../native/sokol_fetch.h"
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
#include "bindings.generated.h"
