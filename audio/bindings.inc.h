/* Header inputs: 99d60fd4811a34cd111d631586f3158de9b2b89f761b334646e142f3d7f821d9. Regenerate after
 * editing shared headers. */
#include "../native/common.h"
#define SOKOL_API_IMPL MOONBIT_FFI_EXPORT
#define SOKOL_IMPL
#include "../native/sokol_audio.h"
static void mb_clone_saudio_allocator(saudio_allocator *, const saudio_allocator *);
static void mb_drop_saudio_allocator(void *);
static saudio_allocator *mb_new_saudio_allocator(void);
static saudio_allocator *mb_copy_saudio_allocator(const saudio_allocator *);
static void mb_clone_saudio_desc(saudio_desc *, const saudio_desc *);
static void mb_drop_saudio_desc(void *);
static saudio_desc *mb_new_saudio_desc(void);
static saudio_desc *mb_copy_saudio_desc(const saudio_desc *);
static void mb_clone_saudio_logger(saudio_logger *, const saudio_logger *);
static void mb_drop_saudio_logger(void *);
static saudio_logger *mb_new_saudio_logger(void);
static saudio_logger *mb_copy_saudio_logger(const saudio_logger *);
static void mb_clone_saudio_n3ds_desc(saudio_n3ds_desc *, const saudio_n3ds_desc *);
static void mb_drop_saudio_n3ds_desc(void *);
static saudio_n3ds_desc *mb_new_saudio_n3ds_desc(void);
static saudio_n3ds_desc *mb_copy_saudio_n3ds_desc(const saudio_n3ds_desc *);
static void mb_clone_saudio_win32_desc(saudio_win32_desc *, const saudio_win32_desc *);
static void mb_drop_saudio_win32_desc(void *);
static saudio_win32_desc *mb_new_saudio_win32_desc(void);
static saudio_win32_desc *mb_copy_saudio_win32_desc(const saudio_win32_desc *);
#include "bindings.generated.h"
