/* Native implementation and cross-file helper declarations. */

#include "../native/common.h"

/* Sokol configuration. */
#define SOKOL_NO_ENTRY
#define SOKOL_API_IMPL MOONBIT_FFI_EXPORT
#define SOKOL_IMPL
#include "../native/sokol_app.h"

/* Copy and allocation helpers. */

static void mb_clone_sapp_allocator(sapp_allocator *, const sapp_allocator *);
static void mb_drop_sapp_allocator(void *);
static sapp_allocator *mb_new_sapp_allocator(void);
static sapp_allocator *mb_copy_sapp_allocator(const sapp_allocator *);

static void mb_clone_sapp_android_desc(sapp_android_desc *, const sapp_android_desc *);
static void mb_drop_sapp_android_desc(void *);
static sapp_android_desc *mb_new_sapp_android_desc(void);
static sapp_android_desc *mb_copy_sapp_android_desc(const sapp_android_desc *);

static void mb_clone_sapp_d3d11_environment(sapp_d3d11_environment *,
                                            const sapp_d3d11_environment *);
static void mb_drop_sapp_d3d11_environment(void *);
static sapp_d3d11_environment *mb_new_sapp_d3d11_environment(void);
static sapp_d3d11_environment *mb_copy_sapp_d3d11_environment(const sapp_d3d11_environment *);

static void mb_clone_sapp_d3d11_swapchain(sapp_d3d11_swapchain *, const sapp_d3d11_swapchain *);
static void mb_drop_sapp_d3d11_swapchain(void *);
static sapp_d3d11_swapchain *mb_new_sapp_d3d11_swapchain(void);
static sapp_d3d11_swapchain *mb_copy_sapp_d3d11_swapchain(const sapp_d3d11_swapchain *);

static void mb_clone_sapp_desc(sapp_desc *, const sapp_desc *);
static void mb_drop_sapp_desc(void *);
static sapp_desc *mb_new_sapp_desc(void);
static sapp_desc *mb_copy_sapp_desc(const sapp_desc *);

static void mb_clone_sapp_environment(sapp_environment *, const sapp_environment *);
static void mb_drop_sapp_environment(void *);
static sapp_environment *mb_new_sapp_environment(void);
static sapp_environment *mb_copy_sapp_environment(const sapp_environment *);

static void mb_clone_sapp_environment_defaults(sapp_environment_defaults *,
                                               const sapp_environment_defaults *);
static void mb_drop_sapp_environment_defaults(void *);
static sapp_environment_defaults *mb_new_sapp_environment_defaults(void);
static sapp_environment_defaults *
mb_copy_sapp_environment_defaults(const sapp_environment_defaults *);

static void mb_clone_sapp_event(sapp_event *, const sapp_event *);
static void mb_drop_sapp_event(void *);
static sapp_event *mb_new_sapp_event(void);
static sapp_event *mb_copy_sapp_event(const sapp_event *);

static void mb_clone_sapp_gl_desc(sapp_gl_desc *, const sapp_gl_desc *);
static void mb_drop_sapp_gl_desc(void *);
static sapp_gl_desc *mb_new_sapp_gl_desc(void);
static sapp_gl_desc *mb_copy_sapp_gl_desc(const sapp_gl_desc *);

static void mb_clone_sapp_gl_swapchain(sapp_gl_swapchain *, const sapp_gl_swapchain *);
static void mb_drop_sapp_gl_swapchain(void *);
static sapp_gl_swapchain *mb_new_sapp_gl_swapchain(void);
static sapp_gl_swapchain *mb_copy_sapp_gl_swapchain(const sapp_gl_swapchain *);

static void mb_clone_sapp_html5_desc(sapp_html5_desc *, const sapp_html5_desc *);
static void mb_drop_sapp_html5_desc(void *);
static sapp_html5_desc *mb_new_sapp_html5_desc(void);
static sapp_html5_desc *mb_copy_sapp_html5_desc(const sapp_html5_desc *);

static void mb_clone_sapp_html5_fetch_request(sapp_html5_fetch_request *,
                                              const sapp_html5_fetch_request *);
static void mb_drop_sapp_html5_fetch_request(void *);
static sapp_html5_fetch_request *mb_new_sapp_html5_fetch_request(void);
static sapp_html5_fetch_request *mb_copy_sapp_html5_fetch_request(const sapp_html5_fetch_request *);

static void mb_clone_sapp_html5_fetch_response(sapp_html5_fetch_response *,
                                               const sapp_html5_fetch_response *);
static void mb_drop_sapp_html5_fetch_response(void *);
static sapp_html5_fetch_response *mb_new_sapp_html5_fetch_response(void);
static sapp_html5_fetch_response *
mb_copy_sapp_html5_fetch_response(const sapp_html5_fetch_response *);

static void mb_clone_sapp_icon_desc(sapp_icon_desc *, const sapp_icon_desc *);
static void mb_drop_sapp_icon_desc(void *);
static sapp_icon_desc *mb_new_sapp_icon_desc(void);
static sapp_icon_desc *mb_copy_sapp_icon_desc(const sapp_icon_desc *);

static void mb_clone_sapp_image_desc(sapp_image_desc *, const sapp_image_desc *);
static void mb_drop_sapp_image_desc(void *);
static sapp_image_desc *mb_new_sapp_image_desc(void);
static sapp_image_desc *mb_copy_sapp_image_desc(const sapp_image_desc *);

static void mb_clone_sapp_ios_desc(sapp_ios_desc *, const sapp_ios_desc *);
static void mb_drop_sapp_ios_desc(void *);
static sapp_ios_desc *mb_new_sapp_ios_desc(void);
static sapp_ios_desc *mb_copy_sapp_ios_desc(const sapp_ios_desc *);

static void mb_clone_sapp_logger(sapp_logger *, const sapp_logger *);
static void mb_drop_sapp_logger(void *);
static sapp_logger *mb_new_sapp_logger(void);
static sapp_logger *mb_copy_sapp_logger(const sapp_logger *);

static void mb_clone_sapp_metal_desc(sapp_metal_desc *, const sapp_metal_desc *);
static void mb_drop_sapp_metal_desc(void *);
static sapp_metal_desc *mb_new_sapp_metal_desc(void);
static sapp_metal_desc *mb_copy_sapp_metal_desc(const sapp_metal_desc *);

static void mb_clone_sapp_metal_environment(sapp_metal_environment *,
                                            const sapp_metal_environment *);
static void mb_drop_sapp_metal_environment(void *);
static sapp_metal_environment *mb_new_sapp_metal_environment(void);
static sapp_metal_environment *mb_copy_sapp_metal_environment(const sapp_metal_environment *);

static void mb_clone_sapp_metal_swapchain(sapp_metal_swapchain *, const sapp_metal_swapchain *);
static void mb_drop_sapp_metal_swapchain(void *);
static sapp_metal_swapchain *mb_new_sapp_metal_swapchain(void);
static sapp_metal_swapchain *mb_copy_sapp_metal_swapchain(const sapp_metal_swapchain *);

static void mb_clone_sapp_range(sapp_range *, const sapp_range *);
static void mb_drop_sapp_range(void *);
static sapp_range *mb_new_sapp_range(void);
static sapp_range *mb_copy_sapp_range(const sapp_range *);

static void mb_clone_sapp_swapchain(sapp_swapchain *, const sapp_swapchain *);
static void mb_drop_sapp_swapchain(void *);
static sapp_swapchain *mb_new_sapp_swapchain(void);
static sapp_swapchain *mb_copy_sapp_swapchain(const sapp_swapchain *);

static void mb_clone_sapp_touchpoint(sapp_touchpoint *, const sapp_touchpoint *);
static void mb_drop_sapp_touchpoint(void *);
static sapp_touchpoint *mb_new_sapp_touchpoint(void);
static sapp_touchpoint *mb_copy_sapp_touchpoint(const sapp_touchpoint *);

static void mb_clone_sapp_vulkan_environment(sapp_vulkan_environment *,
                                             const sapp_vulkan_environment *);
static void mb_drop_sapp_vulkan_environment(void *);
static sapp_vulkan_environment *mb_new_sapp_vulkan_environment(void);
static sapp_vulkan_environment *mb_copy_sapp_vulkan_environment(const sapp_vulkan_environment *);

static void mb_clone_sapp_vulkan_swapchain(sapp_vulkan_swapchain *, const sapp_vulkan_swapchain *);
static void mb_drop_sapp_vulkan_swapchain(void *);
static sapp_vulkan_swapchain *mb_new_sapp_vulkan_swapchain(void);
static sapp_vulkan_swapchain *mb_copy_sapp_vulkan_swapchain(const sapp_vulkan_swapchain *);

static void mb_clone_sapp_wgpu_environment(sapp_wgpu_environment *, const sapp_wgpu_environment *);
static void mb_drop_sapp_wgpu_environment(void *);
static sapp_wgpu_environment *mb_new_sapp_wgpu_environment(void);
static sapp_wgpu_environment *mb_copy_sapp_wgpu_environment(const sapp_wgpu_environment *);

static void mb_clone_sapp_wgpu_swapchain(sapp_wgpu_swapchain *, const sapp_wgpu_swapchain *);
static void mb_drop_sapp_wgpu_swapchain(void *);
static sapp_wgpu_swapchain *mb_new_sapp_wgpu_swapchain(void);
static sapp_wgpu_swapchain *mb_copy_sapp_wgpu_swapchain(const sapp_wgpu_swapchain *);

static void mb_clone_sapp_win32_desc(sapp_win32_desc *, const sapp_win32_desc *);
static void mb_drop_sapp_win32_desc(void *);
static sapp_win32_desc *mb_new_sapp_win32_desc(void);
static sapp_win32_desc *mb_copy_sapp_win32_desc(const sapp_win32_desc *);

/* Feature implementations. */
#include "context.h"
#include "platform.h"
#include "environment.h"
#include "swapchain.h"
#include "event.h"
#include "html5.h"
#include "icon.h"
#include "window.h"
