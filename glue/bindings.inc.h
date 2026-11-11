/* Header inputs: 8aad42662669c4d90496d60c08135a3ec78f0bcc72f4d90023dba21d8d57be1f. Regenerate after
 * editing shared headers. */
#include "../native/common.h"
#include "../native/sokol_gfx.h"
#include "../native/sokol_app.h"
#define SOKOL_API_IMPL MOONBIT_FFI_EXPORT
#define SOKOL_IMPL
#include "../native/sokol_glue.h"
static void mb_clone_sg_d3d11_environment(sg_d3d11_environment *, const sg_d3d11_environment *);
static void mb_drop_sg_d3d11_environment(void *);
static sg_d3d11_environment *mb_new_sg_d3d11_environment(void);
static sg_d3d11_environment *mb_copy_sg_d3d11_environment(const sg_d3d11_environment *);
static void mb_clone_sg_d3d11_swapchain(sg_d3d11_swapchain *, const sg_d3d11_swapchain *);
static void mb_drop_sg_d3d11_swapchain(void *);
static sg_d3d11_swapchain *mb_new_sg_d3d11_swapchain(void);
static sg_d3d11_swapchain *mb_copy_sg_d3d11_swapchain(const sg_d3d11_swapchain *);
static void mb_clone_sg_environment(sg_environment *, const sg_environment *);
static void mb_drop_sg_environment(void *);
static sg_environment *mb_new_sg_environment(void);
static sg_environment *mb_copy_sg_environment(const sg_environment *);
static void mb_clone_sg_environment_defaults(sg_environment_defaults *,
                                             const sg_environment_defaults *);
static void mb_drop_sg_environment_defaults(void *);
static sg_environment_defaults *mb_new_sg_environment_defaults(void);
static sg_environment_defaults *mb_copy_sg_environment_defaults(const sg_environment_defaults *);
static void mb_clone_sg_gl_swapchain(sg_gl_swapchain *, const sg_gl_swapchain *);
static void mb_drop_sg_gl_swapchain(void *);
static sg_gl_swapchain *mb_new_sg_gl_swapchain(void);
static sg_gl_swapchain *mb_copy_sg_gl_swapchain(const sg_gl_swapchain *);
static void mb_clone_sg_metal_environment(sg_metal_environment *, const sg_metal_environment *);
static void mb_drop_sg_metal_environment(void *);
static sg_metal_environment *mb_new_sg_metal_environment(void);
static sg_metal_environment *mb_copy_sg_metal_environment(const sg_metal_environment *);
static void mb_clone_sg_metal_swapchain(sg_metal_swapchain *, const sg_metal_swapchain *);
static void mb_drop_sg_metal_swapchain(void *);
static sg_metal_swapchain *mb_new_sg_metal_swapchain(void);
static sg_metal_swapchain *mb_copy_sg_metal_swapchain(const sg_metal_swapchain *);
static void mb_clone_sg_swapchain(sg_swapchain *, const sg_swapchain *);
static void mb_drop_sg_swapchain(void *);
static sg_swapchain *mb_new_sg_swapchain(void);
static sg_swapchain *mb_copy_sg_swapchain(const sg_swapchain *);
static void mb_clone_sg_vulkan_environment(sg_vulkan_environment *, const sg_vulkan_environment *);
static void mb_drop_sg_vulkan_environment(void *);
static sg_vulkan_environment *mb_new_sg_vulkan_environment(void);
static sg_vulkan_environment *mb_copy_sg_vulkan_environment(const sg_vulkan_environment *);
static void mb_clone_sg_vulkan_swapchain(sg_vulkan_swapchain *, const sg_vulkan_swapchain *);
static void mb_drop_sg_vulkan_swapchain(void *);
static sg_vulkan_swapchain *mb_new_sg_vulkan_swapchain(void);
static sg_vulkan_swapchain *mb_copy_sg_vulkan_swapchain(const sg_vulkan_swapchain *);
static void mb_clone_sg_wgpu_environment(sg_wgpu_environment *, const sg_wgpu_environment *);
static void mb_drop_sg_wgpu_environment(void *);
static sg_wgpu_environment *mb_new_sg_wgpu_environment(void);
static sg_wgpu_environment *mb_copy_sg_wgpu_environment(const sg_wgpu_environment *);
static void mb_clone_sg_wgpu_swapchain(sg_wgpu_swapchain *, const sg_wgpu_swapchain *);
static void mb_drop_sg_wgpu_swapchain(void *);
static sg_wgpu_swapchain *mb_new_sg_wgpu_swapchain(void);
static sg_wgpu_swapchain *mb_copy_sg_wgpu_swapchain(const sg_wgpu_swapchain *);
#include "bindings.generated.h"
