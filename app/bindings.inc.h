/* Header inputs: 4915afc88d2518acdb6c9b4c2b6fdd8fe1e73b930f265a8c23c2168a3fd13472. Regenerate after editing shared headers. */
/* C-layout adapters. Resource ownership is handled in support.c. */
#include "../native/common.h"
#define SOKOL_NO_ENTRY
#define SOKOL_API_IMPL MOONBIT_FFI_EXPORT
#define SOKOL_IMPL
#include "../native/sokol_app.h"
static void mb_clone_sapp_allocator(sapp_allocator*, const sapp_allocator*);
static void mb_drop_sapp_allocator(void*);
static void mb_clone_sapp_android_desc(sapp_android_desc*, const sapp_android_desc*);
static void mb_drop_sapp_android_desc(void*);
static void mb_clone_sapp_d3d11_environment(sapp_d3d11_environment*, const sapp_d3d11_environment*);
static void mb_drop_sapp_d3d11_environment(void*);
static void mb_clone_sapp_d3d11_swapchain(sapp_d3d11_swapchain*, const sapp_d3d11_swapchain*);
static void mb_drop_sapp_d3d11_swapchain(void*);
static void mb_clone_sapp_desc(sapp_desc*, const sapp_desc*);
static void mb_drop_sapp_desc(void*);
static void mb_clone_sapp_environment(sapp_environment*, const sapp_environment*);
static void mb_drop_sapp_environment(void*);
static void mb_clone_sapp_environment_defaults(sapp_environment_defaults*, const sapp_environment_defaults*);
static void mb_drop_sapp_environment_defaults(void*);
static void mb_clone_sapp_event(sapp_event*, const sapp_event*);
static void mb_drop_sapp_event(void*);
static void mb_clone_sapp_gl_desc(sapp_gl_desc*, const sapp_gl_desc*);
static void mb_drop_sapp_gl_desc(void*);
static void mb_clone_sapp_gl_swapchain(sapp_gl_swapchain*, const sapp_gl_swapchain*);
static void mb_drop_sapp_gl_swapchain(void*);
static void mb_clone_sapp_html5_desc(sapp_html5_desc*, const sapp_html5_desc*);
static void mb_drop_sapp_html5_desc(void*);
static void mb_clone_sapp_html5_fetch_request(sapp_html5_fetch_request*, const sapp_html5_fetch_request*);
static void mb_drop_sapp_html5_fetch_request(void*);
static void mb_clone_sapp_html5_fetch_response(sapp_html5_fetch_response*, const sapp_html5_fetch_response*);
static void mb_drop_sapp_html5_fetch_response(void*);
static void mb_clone_sapp_icon_desc(sapp_icon_desc*, const sapp_icon_desc*);
static void mb_drop_sapp_icon_desc(void*);
static void mb_clone_sapp_image_desc(sapp_image_desc*, const sapp_image_desc*);
static void mb_drop_sapp_image_desc(void*);
static void mb_clone_sapp_ios_desc(sapp_ios_desc*, const sapp_ios_desc*);
static void mb_drop_sapp_ios_desc(void*);
static void mb_clone_sapp_logger(sapp_logger*, const sapp_logger*);
static void mb_drop_sapp_logger(void*);
static void mb_clone_sapp_metal_desc(sapp_metal_desc*, const sapp_metal_desc*);
static void mb_drop_sapp_metal_desc(void*);
static void mb_clone_sapp_metal_environment(sapp_metal_environment*, const sapp_metal_environment*);
static void mb_drop_sapp_metal_environment(void*);
static void mb_clone_sapp_metal_swapchain(sapp_metal_swapchain*, const sapp_metal_swapchain*);
static void mb_drop_sapp_metal_swapchain(void*);
static void mb_clone_sapp_range(sapp_range*, const sapp_range*);
static void mb_drop_sapp_range(void*);
static void mb_clone_sapp_swapchain(sapp_swapchain*, const sapp_swapchain*);
static void mb_drop_sapp_swapchain(void*);
static void mb_clone_sapp_touchpoint(sapp_touchpoint*, const sapp_touchpoint*);
static void mb_drop_sapp_touchpoint(void*);
static void mb_clone_sapp_vulkan_environment(sapp_vulkan_environment*, const sapp_vulkan_environment*);
static void mb_drop_sapp_vulkan_environment(void*);
static void mb_clone_sapp_vulkan_swapchain(sapp_vulkan_swapchain*, const sapp_vulkan_swapchain*);
static void mb_drop_sapp_vulkan_swapchain(void*);
static void mb_clone_sapp_wgpu_environment(sapp_wgpu_environment*, const sapp_wgpu_environment*);
static void mb_drop_sapp_wgpu_environment(void*);
static void mb_clone_sapp_wgpu_swapchain(sapp_wgpu_swapchain*, const sapp_wgpu_swapchain*);
static void mb_drop_sapp_wgpu_swapchain(void*);
static void mb_clone_sapp_win32_desc(sapp_win32_desc*, const sapp_win32_desc*);
static void mb_drop_sapp_win32_desc(void*);
static void mb_clone_sapp_allocator(sapp_allocator *dst, const sapp_allocator *src) { *dst = *src;
}
static void mb_drop_sapp_allocator(void *object) { sapp_allocator *value = object;
}
_Static_assert(_Alignof(sapp_allocator) <= _Alignof(void*), "external payload alignment");
static sapp_allocator *mb_new_sapp_allocator(void) { return mb_object_new(sizeof(sapp_allocator), mb_drop_sapp_allocator); }
static sapp_allocator *mb_copy_sapp_allocator(const sapp_allocator *source) { sapp_allocator *r = mb_new_sapp_allocator(); mb_clone_sapp_allocator(r, source); return r; }
static void mb_clone_sapp_android_desc(sapp_android_desc *dst, const sapp_android_desc *src) { *dst = *src;
}
static void mb_drop_sapp_android_desc(void *object) { sapp_android_desc *value = object;
}
_Static_assert(_Alignof(sapp_android_desc) <= _Alignof(void*), "external payload alignment");
static sapp_android_desc *mb_new_sapp_android_desc(void) { return mb_object_new(sizeof(sapp_android_desc), mb_drop_sapp_android_desc); }
static sapp_android_desc *mb_copy_sapp_android_desc(const sapp_android_desc *source) { sapp_android_desc *r = mb_new_sapp_android_desc(); mb_clone_sapp_android_desc(r, source); return r; }
static void mb_clone_sapp_d3d11_environment(sapp_d3d11_environment *dst, const sapp_d3d11_environment *src) { *dst = *src;
}
static void mb_drop_sapp_d3d11_environment(void *object) { sapp_d3d11_environment *value = object;
}
_Static_assert(_Alignof(sapp_d3d11_environment) <= _Alignof(void*), "external payload alignment");
static sapp_d3d11_environment *mb_new_sapp_d3d11_environment(void) { return mb_object_new(sizeof(sapp_d3d11_environment), mb_drop_sapp_d3d11_environment); }
static sapp_d3d11_environment *mb_copy_sapp_d3d11_environment(const sapp_d3d11_environment *source) { sapp_d3d11_environment *r = mb_new_sapp_d3d11_environment(); mb_clone_sapp_d3d11_environment(r, source); return r; }
static void mb_clone_sapp_d3d11_swapchain(sapp_d3d11_swapchain *dst, const sapp_d3d11_swapchain *src) { *dst = *src;
}
static void mb_drop_sapp_d3d11_swapchain(void *object) { sapp_d3d11_swapchain *value = object;
}
_Static_assert(_Alignof(sapp_d3d11_swapchain) <= _Alignof(void*), "external payload alignment");
static sapp_d3d11_swapchain *mb_new_sapp_d3d11_swapchain(void) { return mb_object_new(sizeof(sapp_d3d11_swapchain), mb_drop_sapp_d3d11_swapchain); }
static sapp_d3d11_swapchain *mb_copy_sapp_d3d11_swapchain(const sapp_d3d11_swapchain *source) { sapp_d3d11_swapchain *r = mb_new_sapp_d3d11_swapchain(); mb_clone_sapp_d3d11_swapchain(r, source); return r; }
static void mb_clone_sapp_desc(sapp_desc *dst, const sapp_desc *src) { *dst = *src;
dst->window_title = mb_string(src->window_title);
mb_clone_sapp_icon_desc(&dst->icon, &src->icon);
mb_clone_sapp_allocator(&dst->allocator, &src->allocator);
mb_clone_sapp_logger(&dst->logger, &src->logger);
mb_clone_sapp_gl_desc(&dst->gl, &src->gl);
mb_clone_sapp_metal_desc(&dst->metal, &src->metal);
mb_clone_sapp_win32_desc(&dst->win32, &src->win32);
mb_clone_sapp_html5_desc(&dst->html5, &src->html5);
mb_clone_sapp_ios_desc(&dst->ios, &src->ios);
mb_clone_sapp_android_desc(&dst->android, &src->android);
}
static void mb_drop_sapp_desc(void *object) { sapp_desc *value = object;
free((void*)value->window_title);
mb_drop_sapp_icon_desc(&value->icon);
mb_drop_sapp_allocator(&value->allocator);
mb_drop_sapp_logger(&value->logger);
mb_drop_sapp_gl_desc(&value->gl);
mb_drop_sapp_metal_desc(&value->metal);
mb_drop_sapp_win32_desc(&value->win32);
mb_drop_sapp_html5_desc(&value->html5);
mb_drop_sapp_ios_desc(&value->ios);
mb_drop_sapp_android_desc(&value->android);
}
_Static_assert(_Alignof(sapp_desc) <= _Alignof(void*), "external payload alignment");
static sapp_desc *mb_new_sapp_desc(void) { return mb_object_new(sizeof(sapp_desc), mb_drop_sapp_desc); }
static sapp_desc *mb_copy_sapp_desc(const sapp_desc *source) { sapp_desc *r = mb_new_sapp_desc(); mb_clone_sapp_desc(r, source); return r; }
static void mb_clone_sapp_environment(sapp_environment *dst, const sapp_environment *src) { *dst = *src;
mb_clone_sapp_environment_defaults(&dst->defaults, &src->defaults);
mb_clone_sapp_metal_environment(&dst->metal, &src->metal);
mb_clone_sapp_d3d11_environment(&dst->d3d11, &src->d3d11);
mb_clone_sapp_wgpu_environment(&dst->wgpu, &src->wgpu);
mb_clone_sapp_vulkan_environment(&dst->vulkan, &src->vulkan);
}
static void mb_drop_sapp_environment(void *object) { sapp_environment *value = object;
mb_drop_sapp_environment_defaults(&value->defaults);
mb_drop_sapp_metal_environment(&value->metal);
mb_drop_sapp_d3d11_environment(&value->d3d11);
mb_drop_sapp_wgpu_environment(&value->wgpu);
mb_drop_sapp_vulkan_environment(&value->vulkan);
}
_Static_assert(_Alignof(sapp_environment) <= _Alignof(void*), "external payload alignment");
static sapp_environment *mb_new_sapp_environment(void) { return mb_object_new(sizeof(sapp_environment), mb_drop_sapp_environment); }
static sapp_environment *mb_copy_sapp_environment(const sapp_environment *source) { sapp_environment *r = mb_new_sapp_environment(); mb_clone_sapp_environment(r, source); return r; }
static void mb_clone_sapp_environment_defaults(sapp_environment_defaults *dst, const sapp_environment_defaults *src) { *dst = *src;
}
static void mb_drop_sapp_environment_defaults(void *object) { sapp_environment_defaults *value = object;
}
_Static_assert(_Alignof(sapp_environment_defaults) <= _Alignof(void*), "external payload alignment");
static sapp_environment_defaults *mb_new_sapp_environment_defaults(void) { return mb_object_new(sizeof(sapp_environment_defaults), mb_drop_sapp_environment_defaults); }
static sapp_environment_defaults *mb_copy_sapp_environment_defaults(const sapp_environment_defaults *source) { sapp_environment_defaults *r = mb_new_sapp_environment_defaults(); mb_clone_sapp_environment_defaults(r, source); return r; }
static void mb_clone_sapp_event(sapp_event *dst, const sapp_event *src) { *dst = *src;
for (int i0=0; i0<8; i0++) { mb_clone_sapp_touchpoint(&dst->touches[i0], &src->touches[i0]); }
}
static void mb_drop_sapp_event(void *object) { sapp_event *value = object;
for (int i0=0; i0<8; i0++) { mb_drop_sapp_touchpoint(&value->touches[i0]); }
}
_Static_assert(_Alignof(sapp_event) <= _Alignof(void*), "external payload alignment");
static sapp_event *mb_new_sapp_event(void) { return mb_object_new(sizeof(sapp_event), mb_drop_sapp_event); }
static sapp_event *mb_copy_sapp_event(const sapp_event *source) { sapp_event *r = mb_new_sapp_event(); mb_clone_sapp_event(r, source); return r; }
static void mb_clone_sapp_gl_desc(sapp_gl_desc *dst, const sapp_gl_desc *src) { *dst = *src;
}
static void mb_drop_sapp_gl_desc(void *object) { sapp_gl_desc *value = object;
}
_Static_assert(_Alignof(sapp_gl_desc) <= _Alignof(void*), "external payload alignment");
static sapp_gl_desc *mb_new_sapp_gl_desc(void) { return mb_object_new(sizeof(sapp_gl_desc), mb_drop_sapp_gl_desc); }
static sapp_gl_desc *mb_copy_sapp_gl_desc(const sapp_gl_desc *source) { sapp_gl_desc *r = mb_new_sapp_gl_desc(); mb_clone_sapp_gl_desc(r, source); return r; }
static void mb_clone_sapp_gl_swapchain(sapp_gl_swapchain *dst, const sapp_gl_swapchain *src) { *dst = *src;
}
static void mb_drop_sapp_gl_swapchain(void *object) { sapp_gl_swapchain *value = object;
}
_Static_assert(_Alignof(sapp_gl_swapchain) <= _Alignof(void*), "external payload alignment");
static sapp_gl_swapchain *mb_new_sapp_gl_swapchain(void) { return mb_object_new(sizeof(sapp_gl_swapchain), mb_drop_sapp_gl_swapchain); }
static sapp_gl_swapchain *mb_copy_sapp_gl_swapchain(const sapp_gl_swapchain *source) { sapp_gl_swapchain *r = mb_new_sapp_gl_swapchain(); mb_clone_sapp_gl_swapchain(r, source); return r; }
static void mb_clone_sapp_html5_desc(sapp_html5_desc *dst, const sapp_html5_desc *src) { *dst = *src;
dst->canvas_selector = mb_string(src->canvas_selector);
}
static void mb_drop_sapp_html5_desc(void *object) { sapp_html5_desc *value = object;
free((void*)value->canvas_selector);
}
_Static_assert(_Alignof(sapp_html5_desc) <= _Alignof(void*), "external payload alignment");
static sapp_html5_desc *mb_new_sapp_html5_desc(void) { return mb_object_new(sizeof(sapp_html5_desc), mb_drop_sapp_html5_desc); }
static sapp_html5_desc *mb_copy_sapp_html5_desc(const sapp_html5_desc *source) { sapp_html5_desc *r = mb_new_sapp_html5_desc(); mb_clone_sapp_html5_desc(r, source); return r; }
static void mb_clone_sapp_html5_fetch_request(sapp_html5_fetch_request *dst, const sapp_html5_fetch_request *src) { *dst = *src;
mb_clone_sapp_range(&dst->buffer, &src->buffer);
}
static void mb_drop_sapp_html5_fetch_request(void *object) { sapp_html5_fetch_request *value = object;
mb_drop_sapp_range(&value->buffer);
}
_Static_assert(_Alignof(sapp_html5_fetch_request) <= _Alignof(void*), "external payload alignment");
static sapp_html5_fetch_request *mb_new_sapp_html5_fetch_request(void) { return mb_object_new(sizeof(sapp_html5_fetch_request), mb_drop_sapp_html5_fetch_request); }
static sapp_html5_fetch_request *mb_copy_sapp_html5_fetch_request(const sapp_html5_fetch_request *source) { sapp_html5_fetch_request *r = mb_new_sapp_html5_fetch_request(); mb_clone_sapp_html5_fetch_request(r, source); return r; }
static void mb_clone_sapp_html5_fetch_response(sapp_html5_fetch_response *dst, const sapp_html5_fetch_response *src) { *dst = *src;
mb_clone_sapp_range(&dst->data, &src->data);
mb_clone_sapp_range(&dst->buffer, &src->buffer);
}
static void mb_drop_sapp_html5_fetch_response(void *object) { sapp_html5_fetch_response *value = object;
mb_drop_sapp_range(&value->data);
mb_drop_sapp_range(&value->buffer);
}
_Static_assert(_Alignof(sapp_html5_fetch_response) <= _Alignof(void*), "external payload alignment");
static sapp_html5_fetch_response *mb_new_sapp_html5_fetch_response(void) { return mb_object_new(sizeof(sapp_html5_fetch_response), mb_drop_sapp_html5_fetch_response); }
static sapp_html5_fetch_response *mb_copy_sapp_html5_fetch_response(const sapp_html5_fetch_response *source) { sapp_html5_fetch_response *r = mb_new_sapp_html5_fetch_response(); mb_clone_sapp_html5_fetch_response(r, source); return r; }
static void mb_clone_sapp_icon_desc(sapp_icon_desc *dst, const sapp_icon_desc *src) { *dst = *src;
for (int i0=0; i0<8; i0++) { mb_clone_sapp_image_desc(&dst->images[i0], &src->images[i0]); }
}
static void mb_drop_sapp_icon_desc(void *object) { sapp_icon_desc *value = object;
for (int i0=0; i0<8; i0++) { mb_drop_sapp_image_desc(&value->images[i0]); }
}
_Static_assert(_Alignof(sapp_icon_desc) <= _Alignof(void*), "external payload alignment");
static sapp_icon_desc *mb_new_sapp_icon_desc(void) { return mb_object_new(sizeof(sapp_icon_desc), mb_drop_sapp_icon_desc); }
static sapp_icon_desc *mb_copy_sapp_icon_desc(const sapp_icon_desc *source) { sapp_icon_desc *r = mb_new_sapp_icon_desc(); mb_clone_sapp_icon_desc(r, source); return r; }
static void mb_clone_sapp_image_desc(sapp_image_desc *dst, const sapp_image_desc *src) { *dst = *src;
mb_clone_sapp_range(&dst->pixels, &src->pixels);
}
static void mb_drop_sapp_image_desc(void *object) { sapp_image_desc *value = object;
mb_drop_sapp_range(&value->pixels);
}
_Static_assert(_Alignof(sapp_image_desc) <= _Alignof(void*), "external payload alignment");
static sapp_image_desc *mb_new_sapp_image_desc(void) { return mb_object_new(sizeof(sapp_image_desc), mb_drop_sapp_image_desc); }
static sapp_image_desc *mb_copy_sapp_image_desc(const sapp_image_desc *source) { sapp_image_desc *r = mb_new_sapp_image_desc(); mb_clone_sapp_image_desc(r, source); return r; }
static void mb_clone_sapp_ios_desc(sapp_ios_desc *dst, const sapp_ios_desc *src) { *dst = *src;
}
static void mb_drop_sapp_ios_desc(void *object) { sapp_ios_desc *value = object;
}
_Static_assert(_Alignof(sapp_ios_desc) <= _Alignof(void*), "external payload alignment");
static sapp_ios_desc *mb_new_sapp_ios_desc(void) { return mb_object_new(sizeof(sapp_ios_desc), mb_drop_sapp_ios_desc); }
static sapp_ios_desc *mb_copy_sapp_ios_desc(const sapp_ios_desc *source) { sapp_ios_desc *r = mb_new_sapp_ios_desc(); mb_clone_sapp_ios_desc(r, source); return r; }
static void mb_clone_sapp_logger(sapp_logger *dst, const sapp_logger *src) { *dst = *src;
}
static void mb_drop_sapp_logger(void *object) { sapp_logger *value = object;
}
_Static_assert(_Alignof(sapp_logger) <= _Alignof(void*), "external payload alignment");
static sapp_logger *mb_new_sapp_logger(void) { return mb_object_new(sizeof(sapp_logger), mb_drop_sapp_logger); }
static sapp_logger *mb_copy_sapp_logger(const sapp_logger *source) { sapp_logger *r = mb_new_sapp_logger(); mb_clone_sapp_logger(r, source); return r; }
static void mb_clone_sapp_metal_desc(sapp_metal_desc *dst, const sapp_metal_desc *src) { *dst = *src;
}
static void mb_drop_sapp_metal_desc(void *object) { sapp_metal_desc *value = object;
}
_Static_assert(_Alignof(sapp_metal_desc) <= _Alignof(void*), "external payload alignment");
static sapp_metal_desc *mb_new_sapp_metal_desc(void) { return mb_object_new(sizeof(sapp_metal_desc), mb_drop_sapp_metal_desc); }
static sapp_metal_desc *mb_copy_sapp_metal_desc(const sapp_metal_desc *source) { sapp_metal_desc *r = mb_new_sapp_metal_desc(); mb_clone_sapp_metal_desc(r, source); return r; }
static void mb_clone_sapp_metal_environment(sapp_metal_environment *dst, const sapp_metal_environment *src) { *dst = *src;
}
static void mb_drop_sapp_metal_environment(void *object) { sapp_metal_environment *value = object;
}
_Static_assert(_Alignof(sapp_metal_environment) <= _Alignof(void*), "external payload alignment");
static sapp_metal_environment *mb_new_sapp_metal_environment(void) { return mb_object_new(sizeof(sapp_metal_environment), mb_drop_sapp_metal_environment); }
static sapp_metal_environment *mb_copy_sapp_metal_environment(const sapp_metal_environment *source) { sapp_metal_environment *r = mb_new_sapp_metal_environment(); mb_clone_sapp_metal_environment(r, source); return r; }
static void mb_clone_sapp_metal_swapchain(sapp_metal_swapchain *dst, const sapp_metal_swapchain *src) { *dst = *src;
}
static void mb_drop_sapp_metal_swapchain(void *object) { sapp_metal_swapchain *value = object;
}
_Static_assert(_Alignof(sapp_metal_swapchain) <= _Alignof(void*), "external payload alignment");
static sapp_metal_swapchain *mb_new_sapp_metal_swapchain(void) { return mb_object_new(sizeof(sapp_metal_swapchain), mb_drop_sapp_metal_swapchain); }
static sapp_metal_swapchain *mb_copy_sapp_metal_swapchain(const sapp_metal_swapchain *source) { sapp_metal_swapchain *r = mb_new_sapp_metal_swapchain(); mb_clone_sapp_metal_swapchain(r, source); return r; }
static void mb_clone_sapp_range(sapp_range *dst, const sapp_range *src) { *dst = *src;
dst->ptr = mb_copy(src->ptr, src->size);
}
static void mb_drop_sapp_range(void *object) { sapp_range *value = object;
free((void*)value->ptr);
}
_Static_assert(_Alignof(sapp_range) <= _Alignof(void*), "external payload alignment");
static sapp_range *mb_new_sapp_range(void) { return mb_object_new(sizeof(sapp_range), mb_drop_sapp_range); }
static sapp_range *mb_copy_sapp_range(const sapp_range *source) { sapp_range *r = mb_new_sapp_range(); mb_clone_sapp_range(r, source); return r; }
static void mb_clone_sapp_swapchain(sapp_swapchain *dst, const sapp_swapchain *src) { *dst = *src;
mb_clone_sapp_metal_swapchain(&dst->metal, &src->metal);
mb_clone_sapp_d3d11_swapchain(&dst->d3d11, &src->d3d11);
mb_clone_sapp_wgpu_swapchain(&dst->wgpu, &src->wgpu);
mb_clone_sapp_vulkan_swapchain(&dst->vulkan, &src->vulkan);
mb_clone_sapp_gl_swapchain(&dst->gl, &src->gl);
}
static void mb_drop_sapp_swapchain(void *object) { sapp_swapchain *value = object;
mb_drop_sapp_metal_swapchain(&value->metal);
mb_drop_sapp_d3d11_swapchain(&value->d3d11);
mb_drop_sapp_wgpu_swapchain(&value->wgpu);
mb_drop_sapp_vulkan_swapchain(&value->vulkan);
mb_drop_sapp_gl_swapchain(&value->gl);
}
_Static_assert(_Alignof(sapp_swapchain) <= _Alignof(void*), "external payload alignment");
static sapp_swapchain *mb_new_sapp_swapchain(void) { return mb_object_new(sizeof(sapp_swapchain), mb_drop_sapp_swapchain); }
static sapp_swapchain *mb_copy_sapp_swapchain(const sapp_swapchain *source) { sapp_swapchain *r = mb_new_sapp_swapchain(); mb_clone_sapp_swapchain(r, source); return r; }
static void mb_clone_sapp_touchpoint(sapp_touchpoint *dst, const sapp_touchpoint *src) { *dst = *src;
}
static void mb_drop_sapp_touchpoint(void *object) { sapp_touchpoint *value = object;
}
_Static_assert(_Alignof(sapp_touchpoint) <= _Alignof(void*), "external payload alignment");
static sapp_touchpoint *mb_new_sapp_touchpoint(void) { return mb_object_new(sizeof(sapp_touchpoint), mb_drop_sapp_touchpoint); }
static sapp_touchpoint *mb_copy_sapp_touchpoint(const sapp_touchpoint *source) { sapp_touchpoint *r = mb_new_sapp_touchpoint(); mb_clone_sapp_touchpoint(r, source); return r; }
static void mb_clone_sapp_vulkan_environment(sapp_vulkan_environment *dst, const sapp_vulkan_environment *src) { *dst = *src;
}
static void mb_drop_sapp_vulkan_environment(void *object) { sapp_vulkan_environment *value = object;
}
_Static_assert(_Alignof(sapp_vulkan_environment) <= _Alignof(void*), "external payload alignment");
static sapp_vulkan_environment *mb_new_sapp_vulkan_environment(void) { return mb_object_new(sizeof(sapp_vulkan_environment), mb_drop_sapp_vulkan_environment); }
static sapp_vulkan_environment *mb_copy_sapp_vulkan_environment(const sapp_vulkan_environment *source) { sapp_vulkan_environment *r = mb_new_sapp_vulkan_environment(); mb_clone_sapp_vulkan_environment(r, source); return r; }
static void mb_clone_sapp_vulkan_swapchain(sapp_vulkan_swapchain *dst, const sapp_vulkan_swapchain *src) { *dst = *src;
}
static void mb_drop_sapp_vulkan_swapchain(void *object) { sapp_vulkan_swapchain *value = object;
}
_Static_assert(_Alignof(sapp_vulkan_swapchain) <= _Alignof(void*), "external payload alignment");
static sapp_vulkan_swapchain *mb_new_sapp_vulkan_swapchain(void) { return mb_object_new(sizeof(sapp_vulkan_swapchain), mb_drop_sapp_vulkan_swapchain); }
static sapp_vulkan_swapchain *mb_copy_sapp_vulkan_swapchain(const sapp_vulkan_swapchain *source) { sapp_vulkan_swapchain *r = mb_new_sapp_vulkan_swapchain(); mb_clone_sapp_vulkan_swapchain(r, source); return r; }
static void mb_clone_sapp_wgpu_environment(sapp_wgpu_environment *dst, const sapp_wgpu_environment *src) { *dst = *src;
}
static void mb_drop_sapp_wgpu_environment(void *object) { sapp_wgpu_environment *value = object;
}
_Static_assert(_Alignof(sapp_wgpu_environment) <= _Alignof(void*), "external payload alignment");
static sapp_wgpu_environment *mb_new_sapp_wgpu_environment(void) { return mb_object_new(sizeof(sapp_wgpu_environment), mb_drop_sapp_wgpu_environment); }
static sapp_wgpu_environment *mb_copy_sapp_wgpu_environment(const sapp_wgpu_environment *source) { sapp_wgpu_environment *r = mb_new_sapp_wgpu_environment(); mb_clone_sapp_wgpu_environment(r, source); return r; }
static void mb_clone_sapp_wgpu_swapchain(sapp_wgpu_swapchain *dst, const sapp_wgpu_swapchain *src) { *dst = *src;
}
static void mb_drop_sapp_wgpu_swapchain(void *object) { sapp_wgpu_swapchain *value = object;
}
_Static_assert(_Alignof(sapp_wgpu_swapchain) <= _Alignof(void*), "external payload alignment");
static sapp_wgpu_swapchain *mb_new_sapp_wgpu_swapchain(void) { return mb_object_new(sizeof(sapp_wgpu_swapchain), mb_drop_sapp_wgpu_swapchain); }
static sapp_wgpu_swapchain *mb_copy_sapp_wgpu_swapchain(const sapp_wgpu_swapchain *source) { sapp_wgpu_swapchain *r = mb_new_sapp_wgpu_swapchain(); mb_clone_sapp_wgpu_swapchain(r, source); return r; }
static void mb_clone_sapp_win32_desc(sapp_win32_desc *dst, const sapp_win32_desc *src) { *dst = *src;
}
static void mb_drop_sapp_win32_desc(void *object) { sapp_win32_desc *value = object;
}
_Static_assert(_Alignof(sapp_win32_desc) <= _Alignof(void*), "external payload alignment");
static sapp_win32_desc *mb_new_sapp_win32_desc(void) { return mb_object_new(sizeof(sapp_win32_desc), mb_drop_sapp_win32_desc); }
static sapp_win32_desc *mb_copy_sapp_win32_desc(const sapp_win32_desc *source) { sapp_win32_desc *r = mb_new_sapp_win32_desc(); mb_clone_sapp_win32_desc(r, source); return r; }
MOONBIT_FFI_EXPORT sapp_touchpoint * mb_app_sapp_touchpoint_new(void) { return mb_new_sapp_touchpoint(); }
MOONBIT_FFI_EXPORT sapp_touchpoint * mb_app_sapp_touchpoint_copy(sapp_touchpoint * self) { return mb_copy_sapp_touchpoint(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_touchpoint_native(sapp_touchpoint * self) { return self; }
MOONBIT_FFI_EXPORT sapp_touchpoint * mb_app_sapp_touchpoint_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_touchpoint(ptr); }
MOONBIT_FFI_EXPORT uint64_t mb_app_sapp_touchpoint_get_identifier(sapp_touchpoint * self) {  sapp_touchpoint *v = self; return v->identifier; }
MOONBIT_FFI_EXPORT void mb_app_sapp_touchpoint_set_identifier(sapp_touchpoint * self, uint64_t value) {  sapp_touchpoint *v = self; v->identifier = (uintptr_t)value; }
MOONBIT_FFI_EXPORT float mb_app_sapp_touchpoint_get_pos_x(sapp_touchpoint * self) {  sapp_touchpoint *v = self; return v->pos_x; }
MOONBIT_FFI_EXPORT void mb_app_sapp_touchpoint_set_pos_x(sapp_touchpoint * self, float value) {  sapp_touchpoint *v = self; v->pos_x = (float)value; }
MOONBIT_FFI_EXPORT float mb_app_sapp_touchpoint_get_pos_y(sapp_touchpoint * self) {  sapp_touchpoint *v = self; return v->pos_y; }
MOONBIT_FFI_EXPORT void mb_app_sapp_touchpoint_set_pos_y(sapp_touchpoint * self, float value) {  sapp_touchpoint *v = self; v->pos_y = (float)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_touchpoint_get_android_tooltype(sapp_touchpoint * self) {  sapp_touchpoint *v = self; return v->android_tooltype; }
MOONBIT_FFI_EXPORT void mb_app_sapp_touchpoint_set_android_tooltype(sapp_touchpoint * self, int32_t value) {  sapp_touchpoint *v = self; v->android_tooltype = (sapp_android_tooltype)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_touchpoint_get_changed(sapp_touchpoint * self) {  sapp_touchpoint *v = self; return v->changed; }
MOONBIT_FFI_EXPORT void mb_app_sapp_touchpoint_set_changed(sapp_touchpoint * self, int32_t value) {  sapp_touchpoint *v = self; v->changed = (bool)value; }
MOONBIT_FFI_EXPORT sapp_event * mb_app_sapp_event_new(void) { return mb_new_sapp_event(); }
MOONBIT_FFI_EXPORT sapp_event * mb_app_sapp_event_copy(sapp_event * self) { return mb_copy_sapp_event(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_event_native(sapp_event * self) { return self; }
MOONBIT_FFI_EXPORT sapp_event * mb_app_sapp_event_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_event(ptr); }
MOONBIT_FFI_EXPORT uint64_t mb_app_sapp_event_get_frame_count(sapp_event * self) {  sapp_event *v = self; return v->frame_count; }
MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_frame_count(sapp_event * self, uint64_t value) {  sapp_event *v = self; v->frame_count = (uint64_t)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_event_get_type(sapp_event * self) {  sapp_event *v = self; return v->type; }
MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_type(sapp_event * self, int32_t value) {  sapp_event *v = self; v->type = (sapp_event_type)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_event_get_key_code(sapp_event * self) {  sapp_event *v = self; return v->key_code; }
MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_key_code(sapp_event * self, int32_t value) {  sapp_event *v = self; v->key_code = (sapp_keycode)value; }
MOONBIT_FFI_EXPORT uint32_t mb_app_sapp_event_get_char_code(sapp_event * self) {  sapp_event *v = self; return v->char_code; }
MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_char_code(sapp_event * self, uint32_t value) {  sapp_event *v = self; v->char_code = (uint32_t)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_event_get_key_repeat(sapp_event * self) {  sapp_event *v = self; return v->key_repeat; }
MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_key_repeat(sapp_event * self, int32_t value) {  sapp_event *v = self; v->key_repeat = (bool)value; }
MOONBIT_FFI_EXPORT uint32_t mb_app_sapp_event_get_modifiers(sapp_event * self) {  sapp_event *v = self; return v->modifiers; }
MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_modifiers(sapp_event * self, uint32_t value) {  sapp_event *v = self; v->modifiers = (uint32_t)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_event_get_mouse_button(sapp_event * self) {  sapp_event *v = self; return v->mouse_button; }
MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_mouse_button(sapp_event * self, int32_t value) {  sapp_event *v = self; v->mouse_button = (sapp_mousebutton)value; }
MOONBIT_FFI_EXPORT float mb_app_sapp_event_get_mouse_x(sapp_event * self) {  sapp_event *v = self; return v->mouse_x; }
MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_mouse_x(sapp_event * self, float value) {  sapp_event *v = self; v->mouse_x = (float)value; }
MOONBIT_FFI_EXPORT float mb_app_sapp_event_get_mouse_y(sapp_event * self) {  sapp_event *v = self; return v->mouse_y; }
MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_mouse_y(sapp_event * self, float value) {  sapp_event *v = self; v->mouse_y = (float)value; }
MOONBIT_FFI_EXPORT float mb_app_sapp_event_get_mouse_dx(sapp_event * self) {  sapp_event *v = self; return v->mouse_dx; }
MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_mouse_dx(sapp_event * self, float value) {  sapp_event *v = self; v->mouse_dx = (float)value; }
MOONBIT_FFI_EXPORT float mb_app_sapp_event_get_mouse_dy(sapp_event * self) {  sapp_event *v = self; return v->mouse_dy; }
MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_mouse_dy(sapp_event * self, float value) {  sapp_event *v = self; v->mouse_dy = (float)value; }
MOONBIT_FFI_EXPORT float mb_app_sapp_event_get_scroll_x(sapp_event * self) {  sapp_event *v = self; return v->scroll_x; }
MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_scroll_x(sapp_event * self, float value) {  sapp_event *v = self; v->scroll_x = (float)value; }
MOONBIT_FFI_EXPORT float mb_app_sapp_event_get_scroll_y(sapp_event * self) {  sapp_event *v = self; return v->scroll_y; }
MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_scroll_y(sapp_event * self, float value) {  sapp_event *v = self; v->scroll_y = (float)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_event_get_num_touches(sapp_event * self) {  sapp_event *v = self; return v->num_touches; }
MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_num_touches(sapp_event * self, int32_t value) {  sapp_event *v = self; v->num_touches = (int)value; }
MOONBIT_FFI_EXPORT sapp_touchpoint * mb_app_sapp_event_get_touches(sapp_event * self, int32_t i0) { if (i0<0 || i0>=8) abort(); sapp_event *v = self; return mb_copy_sapp_touchpoint(&v->touches[i0]); }
MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_touches(sapp_event * self, int32_t i0, sapp_touchpoint * value) { if (i0<0 || i0>=8) abort(); sapp_event *v = self; sapp_touchpoint replacement; mb_clone_sapp_touchpoint(&replacement, value); mb_drop_sapp_touchpoint(&v->touches[i0]); v->touches[i0] = replacement; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_event_get_window_width(sapp_event * self) {  sapp_event *v = self; return v->window_width; }
MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_window_width(sapp_event * self, int32_t value) {  sapp_event *v = self; v->window_width = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_event_get_window_height(sapp_event * self) {  sapp_event *v = self; return v->window_height; }
MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_window_height(sapp_event * self, int32_t value) {  sapp_event *v = self; v->window_height = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_event_get_framebuffer_width(sapp_event * self) {  sapp_event *v = self; return v->framebuffer_width; }
MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_framebuffer_width(sapp_event * self, int32_t value) {  sapp_event *v = self; v->framebuffer_width = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_event_get_framebuffer_height(sapp_event * self) {  sapp_event *v = self; return v->framebuffer_height; }
MOONBIT_FFI_EXPORT void mb_app_sapp_event_set_framebuffer_height(sapp_event * self, int32_t value) {  sapp_event *v = self; v->framebuffer_height = (int)value; }
MOONBIT_FFI_EXPORT sapp_range * mb_app_sapp_range_new(void) { return mb_new_sapp_range(); }
MOONBIT_FFI_EXPORT sapp_range * mb_app_sapp_range_copy(sapp_range * self) { return mb_copy_sapp_range(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_range_native(sapp_range * self) { return self; }
MOONBIT_FFI_EXPORT sapp_range * mb_app_sapp_range_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_range(ptr); }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_app_sapp_range_bytes(sapp_range * self) { sapp_range *v = self; return mb_bytes(v->ptr, v->size); }
MOONBIT_FFI_EXPORT sapp_range * mb_app_sapp_range_data(moonbit_bytes_t data) { sapp_range source = { .ptr = data, .size = Moonbit_array_length(data) }; return mb_copy_sapp_range(&source); }
MOONBIT_FFI_EXPORT uint64_t mb_app_sapp_range_get_size(sapp_range * self) {  sapp_range *v = self; return v->size; }
MOONBIT_FFI_EXPORT sapp_image_desc * mb_app_sapp_image_desc_new(void) { return mb_new_sapp_image_desc(); }
MOONBIT_FFI_EXPORT sapp_image_desc * mb_app_sapp_image_desc_copy(sapp_image_desc * self) { return mb_copy_sapp_image_desc(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_image_desc_native(sapp_image_desc * self) { return self; }
MOONBIT_FFI_EXPORT sapp_image_desc * mb_app_sapp_image_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_image_desc(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_image_desc_get_width(sapp_image_desc * self) {  sapp_image_desc *v = self; return v->width; }
MOONBIT_FFI_EXPORT void mb_app_sapp_image_desc_set_width(sapp_image_desc * self, int32_t value) {  sapp_image_desc *v = self; v->width = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_image_desc_get_height(sapp_image_desc * self) {  sapp_image_desc *v = self; return v->height; }
MOONBIT_FFI_EXPORT void mb_app_sapp_image_desc_set_height(sapp_image_desc * self, int32_t value) {  sapp_image_desc *v = self; v->height = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_image_desc_get_cursor_hotspot_x(sapp_image_desc * self) {  sapp_image_desc *v = self; return v->cursor_hotspot_x; }
MOONBIT_FFI_EXPORT void mb_app_sapp_image_desc_set_cursor_hotspot_x(sapp_image_desc * self, int32_t value) {  sapp_image_desc *v = self; v->cursor_hotspot_x = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_image_desc_get_cursor_hotspot_y(sapp_image_desc * self) {  sapp_image_desc *v = self; return v->cursor_hotspot_y; }
MOONBIT_FFI_EXPORT void mb_app_sapp_image_desc_set_cursor_hotspot_y(sapp_image_desc * self, int32_t value) {  sapp_image_desc *v = self; v->cursor_hotspot_y = (int)value; }
MOONBIT_FFI_EXPORT sapp_range * mb_app_sapp_image_desc_get_pixels(sapp_image_desc * self) {  sapp_image_desc *v = self; return mb_copy_sapp_range(&v->pixels); }
MOONBIT_FFI_EXPORT void mb_app_sapp_image_desc_set_pixels(sapp_image_desc * self, sapp_range * value) {  sapp_image_desc *v = self; sapp_range replacement; mb_clone_sapp_range(&replacement, value); mb_drop_sapp_range(&v->pixels); v->pixels = replacement; }
MOONBIT_FFI_EXPORT sapp_icon_desc * mb_app_sapp_icon_desc_new(void) { return mb_new_sapp_icon_desc(); }
MOONBIT_FFI_EXPORT sapp_icon_desc * mb_app_sapp_icon_desc_copy(sapp_icon_desc * self) { return mb_copy_sapp_icon_desc(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_icon_desc_native(sapp_icon_desc * self) { return self; }
MOONBIT_FFI_EXPORT sapp_icon_desc * mb_app_sapp_icon_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_icon_desc(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_icon_desc_get_sokol_default(sapp_icon_desc * self) {  sapp_icon_desc *v = self; return v->sokol_default; }
MOONBIT_FFI_EXPORT void mb_app_sapp_icon_desc_set_sokol_default(sapp_icon_desc * self, int32_t value) {  sapp_icon_desc *v = self; v->sokol_default = (bool)value; }
MOONBIT_FFI_EXPORT sapp_image_desc * mb_app_sapp_icon_desc_get_images(sapp_icon_desc * self, int32_t i0) { if (i0<0 || i0>=8) abort(); sapp_icon_desc *v = self; return mb_copy_sapp_image_desc(&v->images[i0]); }
MOONBIT_FFI_EXPORT void mb_app_sapp_icon_desc_set_images(sapp_icon_desc * self, int32_t i0, sapp_image_desc * value) { if (i0<0 || i0>=8) abort(); sapp_icon_desc *v = self; sapp_image_desc replacement; mb_clone_sapp_image_desc(&replacement, value); mb_drop_sapp_image_desc(&v->images[i0]); v->images[i0] = replacement; }
MOONBIT_FFI_EXPORT sapp_allocator * mb_app_sapp_allocator_new(void) { return mb_new_sapp_allocator(); }
MOONBIT_FFI_EXPORT sapp_allocator * mb_app_sapp_allocator_copy(sapp_allocator * self) { return mb_copy_sapp_allocator(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_allocator_native(sapp_allocator * self) { return self; }
MOONBIT_FFI_EXPORT sapp_allocator * mb_app_sapp_allocator_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_allocator(ptr); }
typedef void * (*mb_sapp_allocator_alloc_fn_fn)(size_t, void *);
MOONBIT_FFI_EXPORT void * mb_app_sapp_allocator_get_alloc_fn(sapp_allocator * self) {  sapp_allocator *v = self; return (void*)v->alloc_fn; }
MOONBIT_FFI_EXPORT void mb_app_sapp_allocator_set_alloc_fn(sapp_allocator * self, void * value) {  sapp_allocator *v = self; v->alloc_fn = (mb_sapp_allocator_alloc_fn_fn)value; }
typedef void  (*mb_sapp_allocator_free_fn_fn)(void *, void *);
MOONBIT_FFI_EXPORT void * mb_app_sapp_allocator_get_free_fn(sapp_allocator * self) {  sapp_allocator *v = self; return (void*)v->free_fn; }
MOONBIT_FFI_EXPORT void mb_app_sapp_allocator_set_free_fn(sapp_allocator * self, void * value) {  sapp_allocator *v = self; v->free_fn = (mb_sapp_allocator_free_fn_fn)value; }
MOONBIT_FFI_EXPORT void * mb_app_sapp_allocator_get_user_data(sapp_allocator * self) {  sapp_allocator *v = self; return (void*)v->user_data; }
MOONBIT_FFI_EXPORT void mb_app_sapp_allocator_set_user_data(sapp_allocator * self, void * value) {  sapp_allocator *v = self; v->user_data = value; }
MOONBIT_FFI_EXPORT sapp_environment_defaults * mb_app_sapp_environment_defaults_new(void) { return mb_new_sapp_environment_defaults(); }
MOONBIT_FFI_EXPORT sapp_environment_defaults * mb_app_sapp_environment_defaults_copy(sapp_environment_defaults * self) { return mb_copy_sapp_environment_defaults(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_environment_defaults_native(sapp_environment_defaults * self) { return self; }
MOONBIT_FFI_EXPORT sapp_environment_defaults * mb_app_sapp_environment_defaults_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_environment_defaults(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_environment_defaults_get_color_format(sapp_environment_defaults * self) {  sapp_environment_defaults *v = self; return v->color_format; }
MOONBIT_FFI_EXPORT void mb_app_sapp_environment_defaults_set_color_format(sapp_environment_defaults * self, int32_t value) {  sapp_environment_defaults *v = self; v->color_format = (sapp_pixel_format)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_environment_defaults_get_depth_format(sapp_environment_defaults * self) {  sapp_environment_defaults *v = self; return v->depth_format; }
MOONBIT_FFI_EXPORT void mb_app_sapp_environment_defaults_set_depth_format(sapp_environment_defaults * self, int32_t value) {  sapp_environment_defaults *v = self; v->depth_format = (sapp_pixel_format)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_environment_defaults_get_sample_count(sapp_environment_defaults * self) {  sapp_environment_defaults *v = self; return v->sample_count; }
MOONBIT_FFI_EXPORT void mb_app_sapp_environment_defaults_set_sample_count(sapp_environment_defaults * self, int32_t value) {  sapp_environment_defaults *v = self; v->sample_count = (int)value; }
MOONBIT_FFI_EXPORT sapp_metal_environment * mb_app_sapp_metal_environment_new(void) { return mb_new_sapp_metal_environment(); }
MOONBIT_FFI_EXPORT sapp_metal_environment * mb_app_sapp_metal_environment_copy(sapp_metal_environment * self) { return mb_copy_sapp_metal_environment(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_metal_environment_native(sapp_metal_environment * self) { return self; }
MOONBIT_FFI_EXPORT sapp_metal_environment * mb_app_sapp_metal_environment_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_metal_environment(ptr); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_metal_environment_get_device(sapp_metal_environment * self) {  sapp_metal_environment *v = self; return (void*)v->device; }
MOONBIT_FFI_EXPORT void mb_app_sapp_metal_environment_set_device(sapp_metal_environment * self, void * value) {  sapp_metal_environment *v = self; v->device = value; }
MOONBIT_FFI_EXPORT sapp_d3d11_environment * mb_app_sapp_d3d11_environment_new(void) { return mb_new_sapp_d3d11_environment(); }
MOONBIT_FFI_EXPORT sapp_d3d11_environment * mb_app_sapp_d3d11_environment_copy(sapp_d3d11_environment * self) { return mb_copy_sapp_d3d11_environment(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_d3d11_environment_native(sapp_d3d11_environment * self) { return self; }
MOONBIT_FFI_EXPORT sapp_d3d11_environment * mb_app_sapp_d3d11_environment_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_d3d11_environment(ptr); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_d3d11_environment_get_device(sapp_d3d11_environment * self) {  sapp_d3d11_environment *v = self; return (void*)v->device; }
MOONBIT_FFI_EXPORT void mb_app_sapp_d3d11_environment_set_device(sapp_d3d11_environment * self, void * value) {  sapp_d3d11_environment *v = self; v->device = value; }
MOONBIT_FFI_EXPORT void * mb_app_sapp_d3d11_environment_get_device_context(sapp_d3d11_environment * self) {  sapp_d3d11_environment *v = self; return (void*)v->device_context; }
MOONBIT_FFI_EXPORT void mb_app_sapp_d3d11_environment_set_device_context(sapp_d3d11_environment * self, void * value) {  sapp_d3d11_environment *v = self; v->device_context = value; }
MOONBIT_FFI_EXPORT sapp_wgpu_environment * mb_app_sapp_wgpu_environment_new(void) { return mb_new_sapp_wgpu_environment(); }
MOONBIT_FFI_EXPORT sapp_wgpu_environment * mb_app_sapp_wgpu_environment_copy(sapp_wgpu_environment * self) { return mb_copy_sapp_wgpu_environment(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_wgpu_environment_native(sapp_wgpu_environment * self) { return self; }
MOONBIT_FFI_EXPORT sapp_wgpu_environment * mb_app_sapp_wgpu_environment_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_wgpu_environment(ptr); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_wgpu_environment_get_device(sapp_wgpu_environment * self) {  sapp_wgpu_environment *v = self; return (void*)v->device; }
MOONBIT_FFI_EXPORT void mb_app_sapp_wgpu_environment_set_device(sapp_wgpu_environment * self, void * value) {  sapp_wgpu_environment *v = self; v->device = value; }
MOONBIT_FFI_EXPORT sapp_vulkan_environment * mb_app_sapp_vulkan_environment_new(void) { return mb_new_sapp_vulkan_environment(); }
MOONBIT_FFI_EXPORT sapp_vulkan_environment * mb_app_sapp_vulkan_environment_copy(sapp_vulkan_environment * self) { return mb_copy_sapp_vulkan_environment(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_vulkan_environment_native(sapp_vulkan_environment * self) { return self; }
MOONBIT_FFI_EXPORT sapp_vulkan_environment * mb_app_sapp_vulkan_environment_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_vulkan_environment(ptr); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_vulkan_environment_get_instance(sapp_vulkan_environment * self) {  sapp_vulkan_environment *v = self; return (void*)v->instance; }
MOONBIT_FFI_EXPORT void mb_app_sapp_vulkan_environment_set_instance(sapp_vulkan_environment * self, void * value) {  sapp_vulkan_environment *v = self; v->instance = value; }
MOONBIT_FFI_EXPORT void * mb_app_sapp_vulkan_environment_get_physical_device(sapp_vulkan_environment * self) {  sapp_vulkan_environment *v = self; return (void*)v->physical_device; }
MOONBIT_FFI_EXPORT void mb_app_sapp_vulkan_environment_set_physical_device(sapp_vulkan_environment * self, void * value) {  sapp_vulkan_environment *v = self; v->physical_device = value; }
MOONBIT_FFI_EXPORT void * mb_app_sapp_vulkan_environment_get_device(sapp_vulkan_environment * self) {  sapp_vulkan_environment *v = self; return (void*)v->device; }
MOONBIT_FFI_EXPORT void mb_app_sapp_vulkan_environment_set_device(sapp_vulkan_environment * self, void * value) {  sapp_vulkan_environment *v = self; v->device = value; }
MOONBIT_FFI_EXPORT void * mb_app_sapp_vulkan_environment_get_queue(sapp_vulkan_environment * self) {  sapp_vulkan_environment *v = self; return (void*)v->queue; }
MOONBIT_FFI_EXPORT void mb_app_sapp_vulkan_environment_set_queue(sapp_vulkan_environment * self, void * value) {  sapp_vulkan_environment *v = self; v->queue = value; }
MOONBIT_FFI_EXPORT uint32_t mb_app_sapp_vulkan_environment_get_queue_family_index(sapp_vulkan_environment * self) {  sapp_vulkan_environment *v = self; return v->queue_family_index; }
MOONBIT_FFI_EXPORT void mb_app_sapp_vulkan_environment_set_queue_family_index(sapp_vulkan_environment * self, uint32_t value) {  sapp_vulkan_environment *v = self; v->queue_family_index = (uint32_t)value; }
MOONBIT_FFI_EXPORT sapp_environment * mb_app_sapp_environment_new(void) { return mb_new_sapp_environment(); }
MOONBIT_FFI_EXPORT sapp_environment * mb_app_sapp_environment_copy(sapp_environment * self) { return mb_copy_sapp_environment(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_environment_native(sapp_environment * self) { return self; }
MOONBIT_FFI_EXPORT sapp_environment * mb_app_sapp_environment_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_environment(ptr); }
MOONBIT_FFI_EXPORT sapp_environment_defaults * mb_app_sapp_environment_get_defaults(sapp_environment * self) {  sapp_environment *v = self; return mb_copy_sapp_environment_defaults(&v->defaults); }
MOONBIT_FFI_EXPORT void mb_app_sapp_environment_set_defaults(sapp_environment * self, sapp_environment_defaults * value) {  sapp_environment *v = self; sapp_environment_defaults replacement; mb_clone_sapp_environment_defaults(&replacement, value); mb_drop_sapp_environment_defaults(&v->defaults); v->defaults = replacement; }
MOONBIT_FFI_EXPORT sapp_metal_environment * mb_app_sapp_environment_get_metal(sapp_environment * self) {  sapp_environment *v = self; return mb_copy_sapp_metal_environment(&v->metal); }
MOONBIT_FFI_EXPORT void mb_app_sapp_environment_set_metal(sapp_environment * self, sapp_metal_environment * value) {  sapp_environment *v = self; sapp_metal_environment replacement; mb_clone_sapp_metal_environment(&replacement, value); mb_drop_sapp_metal_environment(&v->metal); v->metal = replacement; }
MOONBIT_FFI_EXPORT sapp_d3d11_environment * mb_app_sapp_environment_get_d3d11(sapp_environment * self) {  sapp_environment *v = self; return mb_copy_sapp_d3d11_environment(&v->d3d11); }
MOONBIT_FFI_EXPORT void mb_app_sapp_environment_set_d3d11(sapp_environment * self, sapp_d3d11_environment * value) {  sapp_environment *v = self; sapp_d3d11_environment replacement; mb_clone_sapp_d3d11_environment(&replacement, value); mb_drop_sapp_d3d11_environment(&v->d3d11); v->d3d11 = replacement; }
MOONBIT_FFI_EXPORT sapp_wgpu_environment * mb_app_sapp_environment_get_wgpu(sapp_environment * self) {  sapp_environment *v = self; return mb_copy_sapp_wgpu_environment(&v->wgpu); }
MOONBIT_FFI_EXPORT void mb_app_sapp_environment_set_wgpu(sapp_environment * self, sapp_wgpu_environment * value) {  sapp_environment *v = self; sapp_wgpu_environment replacement; mb_clone_sapp_wgpu_environment(&replacement, value); mb_drop_sapp_wgpu_environment(&v->wgpu); v->wgpu = replacement; }
MOONBIT_FFI_EXPORT sapp_vulkan_environment * mb_app_sapp_environment_get_vulkan(sapp_environment * self) {  sapp_environment *v = self; return mb_copy_sapp_vulkan_environment(&v->vulkan); }
MOONBIT_FFI_EXPORT void mb_app_sapp_environment_set_vulkan(sapp_environment * self, sapp_vulkan_environment * value) {  sapp_environment *v = self; sapp_vulkan_environment replacement; mb_clone_sapp_vulkan_environment(&replacement, value); mb_drop_sapp_vulkan_environment(&v->vulkan); v->vulkan = replacement; }
MOONBIT_FFI_EXPORT sapp_metal_swapchain * mb_app_sapp_metal_swapchain_new(void) { return mb_new_sapp_metal_swapchain(); }
MOONBIT_FFI_EXPORT sapp_metal_swapchain * mb_app_sapp_metal_swapchain_copy(sapp_metal_swapchain * self) { return mb_copy_sapp_metal_swapchain(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_metal_swapchain_native(sapp_metal_swapchain * self) { return self; }
MOONBIT_FFI_EXPORT sapp_metal_swapchain * mb_app_sapp_metal_swapchain_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_metal_swapchain(ptr); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_metal_swapchain_get_current_drawable(sapp_metal_swapchain * self) {  sapp_metal_swapchain *v = self; return (void*)v->current_drawable; }
MOONBIT_FFI_EXPORT void mb_app_sapp_metal_swapchain_set_current_drawable(sapp_metal_swapchain * self, void * value) {  sapp_metal_swapchain *v = self; v->current_drawable = value; }
MOONBIT_FFI_EXPORT void * mb_app_sapp_metal_swapchain_get_depth_stencil_texture(sapp_metal_swapchain * self) {  sapp_metal_swapchain *v = self; return (void*)v->depth_stencil_texture; }
MOONBIT_FFI_EXPORT void mb_app_sapp_metal_swapchain_set_depth_stencil_texture(sapp_metal_swapchain * self, void * value) {  sapp_metal_swapchain *v = self; v->depth_stencil_texture = value; }
MOONBIT_FFI_EXPORT void * mb_app_sapp_metal_swapchain_get_msaa_color_texture(sapp_metal_swapchain * self) {  sapp_metal_swapchain *v = self; return (void*)v->msaa_color_texture; }
MOONBIT_FFI_EXPORT void mb_app_sapp_metal_swapchain_set_msaa_color_texture(sapp_metal_swapchain * self, void * value) {  sapp_metal_swapchain *v = self; v->msaa_color_texture = value; }
MOONBIT_FFI_EXPORT sapp_d3d11_swapchain * mb_app_sapp_d3d11_swapchain_new(void) { return mb_new_sapp_d3d11_swapchain(); }
MOONBIT_FFI_EXPORT sapp_d3d11_swapchain * mb_app_sapp_d3d11_swapchain_copy(sapp_d3d11_swapchain * self) { return mb_copy_sapp_d3d11_swapchain(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_d3d11_swapchain_native(sapp_d3d11_swapchain * self) { return self; }
MOONBIT_FFI_EXPORT sapp_d3d11_swapchain * mb_app_sapp_d3d11_swapchain_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_d3d11_swapchain(ptr); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_d3d11_swapchain_get_render_view(sapp_d3d11_swapchain * self) {  sapp_d3d11_swapchain *v = self; return (void*)v->render_view; }
MOONBIT_FFI_EXPORT void mb_app_sapp_d3d11_swapchain_set_render_view(sapp_d3d11_swapchain * self, void * value) {  sapp_d3d11_swapchain *v = self; v->render_view = value; }
MOONBIT_FFI_EXPORT void * mb_app_sapp_d3d11_swapchain_get_resolve_view(sapp_d3d11_swapchain * self) {  sapp_d3d11_swapchain *v = self; return (void*)v->resolve_view; }
MOONBIT_FFI_EXPORT void mb_app_sapp_d3d11_swapchain_set_resolve_view(sapp_d3d11_swapchain * self, void * value) {  sapp_d3d11_swapchain *v = self; v->resolve_view = value; }
MOONBIT_FFI_EXPORT void * mb_app_sapp_d3d11_swapchain_get_depth_stencil_view(sapp_d3d11_swapchain * self) {  sapp_d3d11_swapchain *v = self; return (void*)v->depth_stencil_view; }
MOONBIT_FFI_EXPORT void mb_app_sapp_d3d11_swapchain_set_depth_stencil_view(sapp_d3d11_swapchain * self, void * value) {  sapp_d3d11_swapchain *v = self; v->depth_stencil_view = value; }
MOONBIT_FFI_EXPORT sapp_wgpu_swapchain * mb_app_sapp_wgpu_swapchain_new(void) { return mb_new_sapp_wgpu_swapchain(); }
MOONBIT_FFI_EXPORT sapp_wgpu_swapchain * mb_app_sapp_wgpu_swapchain_copy(sapp_wgpu_swapchain * self) { return mb_copy_sapp_wgpu_swapchain(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_wgpu_swapchain_native(sapp_wgpu_swapchain * self) { return self; }
MOONBIT_FFI_EXPORT sapp_wgpu_swapchain * mb_app_sapp_wgpu_swapchain_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_wgpu_swapchain(ptr); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_wgpu_swapchain_get_render_view(sapp_wgpu_swapchain * self) {  sapp_wgpu_swapchain *v = self; return (void*)v->render_view; }
MOONBIT_FFI_EXPORT void mb_app_sapp_wgpu_swapchain_set_render_view(sapp_wgpu_swapchain * self, void * value) {  sapp_wgpu_swapchain *v = self; v->render_view = value; }
MOONBIT_FFI_EXPORT void * mb_app_sapp_wgpu_swapchain_get_resolve_view(sapp_wgpu_swapchain * self) {  sapp_wgpu_swapchain *v = self; return (void*)v->resolve_view; }
MOONBIT_FFI_EXPORT void mb_app_sapp_wgpu_swapchain_set_resolve_view(sapp_wgpu_swapchain * self, void * value) {  sapp_wgpu_swapchain *v = self; v->resolve_view = value; }
MOONBIT_FFI_EXPORT void * mb_app_sapp_wgpu_swapchain_get_depth_stencil_view(sapp_wgpu_swapchain * self) {  sapp_wgpu_swapchain *v = self; return (void*)v->depth_stencil_view; }
MOONBIT_FFI_EXPORT void mb_app_sapp_wgpu_swapchain_set_depth_stencil_view(sapp_wgpu_swapchain * self, void * value) {  sapp_wgpu_swapchain *v = self; v->depth_stencil_view = value; }
MOONBIT_FFI_EXPORT sapp_vulkan_swapchain * mb_app_sapp_vulkan_swapchain_new(void) { return mb_new_sapp_vulkan_swapchain(); }
MOONBIT_FFI_EXPORT sapp_vulkan_swapchain * mb_app_sapp_vulkan_swapchain_copy(sapp_vulkan_swapchain * self) { return mb_copy_sapp_vulkan_swapchain(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_vulkan_swapchain_native(sapp_vulkan_swapchain * self) { return self; }
MOONBIT_FFI_EXPORT sapp_vulkan_swapchain * mb_app_sapp_vulkan_swapchain_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_vulkan_swapchain(ptr); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_vulkan_swapchain_get_render_image(sapp_vulkan_swapchain * self) {  sapp_vulkan_swapchain *v = self; return (void*)v->render_image; }
MOONBIT_FFI_EXPORT void mb_app_sapp_vulkan_swapchain_set_render_image(sapp_vulkan_swapchain * self, void * value) {  sapp_vulkan_swapchain *v = self; v->render_image = value; }
MOONBIT_FFI_EXPORT void * mb_app_sapp_vulkan_swapchain_get_render_view(sapp_vulkan_swapchain * self) {  sapp_vulkan_swapchain *v = self; return (void*)v->render_view; }
MOONBIT_FFI_EXPORT void mb_app_sapp_vulkan_swapchain_set_render_view(sapp_vulkan_swapchain * self, void * value) {  sapp_vulkan_swapchain *v = self; v->render_view = value; }
MOONBIT_FFI_EXPORT void * mb_app_sapp_vulkan_swapchain_get_resolve_image(sapp_vulkan_swapchain * self) {  sapp_vulkan_swapchain *v = self; return (void*)v->resolve_image; }
MOONBIT_FFI_EXPORT void mb_app_sapp_vulkan_swapchain_set_resolve_image(sapp_vulkan_swapchain * self, void * value) {  sapp_vulkan_swapchain *v = self; v->resolve_image = value; }
MOONBIT_FFI_EXPORT void * mb_app_sapp_vulkan_swapchain_get_resolve_view(sapp_vulkan_swapchain * self) {  sapp_vulkan_swapchain *v = self; return (void*)v->resolve_view; }
MOONBIT_FFI_EXPORT void mb_app_sapp_vulkan_swapchain_set_resolve_view(sapp_vulkan_swapchain * self, void * value) {  sapp_vulkan_swapchain *v = self; v->resolve_view = value; }
MOONBIT_FFI_EXPORT void * mb_app_sapp_vulkan_swapchain_get_depth_stencil_image(sapp_vulkan_swapchain * self) {  sapp_vulkan_swapchain *v = self; return (void*)v->depth_stencil_image; }
MOONBIT_FFI_EXPORT void mb_app_sapp_vulkan_swapchain_set_depth_stencil_image(sapp_vulkan_swapchain * self, void * value) {  sapp_vulkan_swapchain *v = self; v->depth_stencil_image = value; }
MOONBIT_FFI_EXPORT void * mb_app_sapp_vulkan_swapchain_get_depth_stencil_view(sapp_vulkan_swapchain * self) {  sapp_vulkan_swapchain *v = self; return (void*)v->depth_stencil_view; }
MOONBIT_FFI_EXPORT void mb_app_sapp_vulkan_swapchain_set_depth_stencil_view(sapp_vulkan_swapchain * self, void * value) {  sapp_vulkan_swapchain *v = self; v->depth_stencil_view = value; }
MOONBIT_FFI_EXPORT void * mb_app_sapp_vulkan_swapchain_get_render_finished_semaphore(sapp_vulkan_swapchain * self) {  sapp_vulkan_swapchain *v = self; return (void*)v->render_finished_semaphore; }
MOONBIT_FFI_EXPORT void mb_app_sapp_vulkan_swapchain_set_render_finished_semaphore(sapp_vulkan_swapchain * self, void * value) {  sapp_vulkan_swapchain *v = self; v->render_finished_semaphore = value; }
MOONBIT_FFI_EXPORT void * mb_app_sapp_vulkan_swapchain_get_present_complete_semaphore(sapp_vulkan_swapchain * self) {  sapp_vulkan_swapchain *v = self; return (void*)v->present_complete_semaphore; }
MOONBIT_FFI_EXPORT void mb_app_sapp_vulkan_swapchain_set_present_complete_semaphore(sapp_vulkan_swapchain * self, void * value) {  sapp_vulkan_swapchain *v = self; v->present_complete_semaphore = value; }
MOONBIT_FFI_EXPORT sapp_gl_swapchain * mb_app_sapp_gl_swapchain_new(void) { return mb_new_sapp_gl_swapchain(); }
MOONBIT_FFI_EXPORT sapp_gl_swapchain * mb_app_sapp_gl_swapchain_copy(sapp_gl_swapchain * self) { return mb_copy_sapp_gl_swapchain(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_gl_swapchain_native(sapp_gl_swapchain * self) { return self; }
MOONBIT_FFI_EXPORT sapp_gl_swapchain * mb_app_sapp_gl_swapchain_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_gl_swapchain(ptr); }
MOONBIT_FFI_EXPORT uint32_t mb_app_sapp_gl_swapchain_get_framebuffer(sapp_gl_swapchain * self) {  sapp_gl_swapchain *v = self; return v->framebuffer; }
MOONBIT_FFI_EXPORT void mb_app_sapp_gl_swapchain_set_framebuffer(sapp_gl_swapchain * self, uint32_t value) {  sapp_gl_swapchain *v = self; v->framebuffer = (uint32_t)value; }
MOONBIT_FFI_EXPORT sapp_swapchain * mb_app_sapp_swapchain_new(void) { return mb_new_sapp_swapchain(); }
MOONBIT_FFI_EXPORT sapp_swapchain * mb_app_sapp_swapchain_copy(sapp_swapchain * self) { return mb_copy_sapp_swapchain(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_swapchain_native(sapp_swapchain * self) { return self; }
MOONBIT_FFI_EXPORT sapp_swapchain * mb_app_sapp_swapchain_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_swapchain(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_swapchain_get_invalid(sapp_swapchain * self) {  sapp_swapchain *v = self; return v->invalid; }
MOONBIT_FFI_EXPORT void mb_app_sapp_swapchain_set_invalid(sapp_swapchain * self, int32_t value) {  sapp_swapchain *v = self; v->invalid = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_swapchain_get_width(sapp_swapchain * self) {  sapp_swapchain *v = self; return v->width; }
MOONBIT_FFI_EXPORT void mb_app_sapp_swapchain_set_width(sapp_swapchain * self, int32_t value) {  sapp_swapchain *v = self; v->width = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_swapchain_get_height(sapp_swapchain * self) {  sapp_swapchain *v = self; return v->height; }
MOONBIT_FFI_EXPORT void mb_app_sapp_swapchain_set_height(sapp_swapchain * self, int32_t value) {  sapp_swapchain *v = self; v->height = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_swapchain_get_sample_count(sapp_swapchain * self) {  sapp_swapchain *v = self; return v->sample_count; }
MOONBIT_FFI_EXPORT void mb_app_sapp_swapchain_set_sample_count(sapp_swapchain * self, int32_t value) {  sapp_swapchain *v = self; v->sample_count = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_swapchain_get_color_format(sapp_swapchain * self) {  sapp_swapchain *v = self; return v->color_format; }
MOONBIT_FFI_EXPORT void mb_app_sapp_swapchain_set_color_format(sapp_swapchain * self, int32_t value) {  sapp_swapchain *v = self; v->color_format = (sapp_pixel_format)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_swapchain_get_depth_format(sapp_swapchain * self) {  sapp_swapchain *v = self; return v->depth_format; }
MOONBIT_FFI_EXPORT void mb_app_sapp_swapchain_set_depth_format(sapp_swapchain * self, int32_t value) {  sapp_swapchain *v = self; v->depth_format = (sapp_pixel_format)value; }
MOONBIT_FFI_EXPORT sapp_metal_swapchain * mb_app_sapp_swapchain_get_metal(sapp_swapchain * self) {  sapp_swapchain *v = self; return mb_copy_sapp_metal_swapchain(&v->metal); }
MOONBIT_FFI_EXPORT void mb_app_sapp_swapchain_set_metal(sapp_swapchain * self, sapp_metal_swapchain * value) {  sapp_swapchain *v = self; sapp_metal_swapchain replacement; mb_clone_sapp_metal_swapchain(&replacement, value); mb_drop_sapp_metal_swapchain(&v->metal); v->metal = replacement; }
MOONBIT_FFI_EXPORT sapp_d3d11_swapchain * mb_app_sapp_swapchain_get_d3d11(sapp_swapchain * self) {  sapp_swapchain *v = self; return mb_copy_sapp_d3d11_swapchain(&v->d3d11); }
MOONBIT_FFI_EXPORT void mb_app_sapp_swapchain_set_d3d11(sapp_swapchain * self, sapp_d3d11_swapchain * value) {  sapp_swapchain *v = self; sapp_d3d11_swapchain replacement; mb_clone_sapp_d3d11_swapchain(&replacement, value); mb_drop_sapp_d3d11_swapchain(&v->d3d11); v->d3d11 = replacement; }
MOONBIT_FFI_EXPORT sapp_wgpu_swapchain * mb_app_sapp_swapchain_get_wgpu(sapp_swapchain * self) {  sapp_swapchain *v = self; return mb_copy_sapp_wgpu_swapchain(&v->wgpu); }
MOONBIT_FFI_EXPORT void mb_app_sapp_swapchain_set_wgpu(sapp_swapchain * self, sapp_wgpu_swapchain * value) {  sapp_swapchain *v = self; sapp_wgpu_swapchain replacement; mb_clone_sapp_wgpu_swapchain(&replacement, value); mb_drop_sapp_wgpu_swapchain(&v->wgpu); v->wgpu = replacement; }
MOONBIT_FFI_EXPORT sapp_vulkan_swapchain * mb_app_sapp_swapchain_get_vulkan(sapp_swapchain * self) {  sapp_swapchain *v = self; return mb_copy_sapp_vulkan_swapchain(&v->vulkan); }
MOONBIT_FFI_EXPORT void mb_app_sapp_swapchain_set_vulkan(sapp_swapchain * self, sapp_vulkan_swapchain * value) {  sapp_swapchain *v = self; sapp_vulkan_swapchain replacement; mb_clone_sapp_vulkan_swapchain(&replacement, value); mb_drop_sapp_vulkan_swapchain(&v->vulkan); v->vulkan = replacement; }
MOONBIT_FFI_EXPORT sapp_gl_swapchain * mb_app_sapp_swapchain_get_gl(sapp_swapchain * self) {  sapp_swapchain *v = self; return mb_copy_sapp_gl_swapchain(&v->gl); }
MOONBIT_FFI_EXPORT void mb_app_sapp_swapchain_set_gl(sapp_swapchain * self, sapp_gl_swapchain * value) {  sapp_swapchain *v = self; sapp_gl_swapchain replacement; mb_clone_sapp_gl_swapchain(&replacement, value); mb_drop_sapp_gl_swapchain(&v->gl); v->gl = replacement; }
MOONBIT_FFI_EXPORT sapp_logger * mb_app_sapp_logger_new(void) { return mb_new_sapp_logger(); }
MOONBIT_FFI_EXPORT sapp_logger * mb_app_sapp_logger_copy(sapp_logger * self) { return mb_copy_sapp_logger(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_logger_native(sapp_logger * self) { return self; }
MOONBIT_FFI_EXPORT sapp_logger * mb_app_sapp_logger_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_logger(ptr); }
typedef void  (*mb_sapp_logger_func_fn)(const char *, uint32_t, uint32_t, const char *, uint32_t, const char *, void *);
MOONBIT_FFI_EXPORT void * mb_app_sapp_logger_get_func(sapp_logger * self) {  sapp_logger *v = self; return (void*)v->func; }
MOONBIT_FFI_EXPORT void mb_app_sapp_logger_set_func(sapp_logger * self, void * value) {  sapp_logger *v = self; v->func = (mb_sapp_logger_func_fn)value; }
MOONBIT_FFI_EXPORT void * mb_app_sapp_logger_get_user_data(sapp_logger * self) {  sapp_logger *v = self; return (void*)v->user_data; }
MOONBIT_FFI_EXPORT void mb_app_sapp_logger_set_user_data(sapp_logger * self, void * value) {  sapp_logger *v = self; v->user_data = value; }
MOONBIT_FFI_EXPORT sapp_gl_desc * mb_app_sapp_gl_desc_new(void) { return mb_new_sapp_gl_desc(); }
MOONBIT_FFI_EXPORT sapp_gl_desc * mb_app_sapp_gl_desc_copy(sapp_gl_desc * self) { return mb_copy_sapp_gl_desc(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_gl_desc_native(sapp_gl_desc * self) { return self; }
MOONBIT_FFI_EXPORT sapp_gl_desc * mb_app_sapp_gl_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_gl_desc(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_gl_desc_get_major_version(sapp_gl_desc * self) {  sapp_gl_desc *v = self; return v->major_version; }
MOONBIT_FFI_EXPORT void mb_app_sapp_gl_desc_set_major_version(sapp_gl_desc * self, int32_t value) {  sapp_gl_desc *v = self; v->major_version = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_gl_desc_get_minor_version(sapp_gl_desc * self) {  sapp_gl_desc *v = self; return v->minor_version; }
MOONBIT_FFI_EXPORT void mb_app_sapp_gl_desc_set_minor_version(sapp_gl_desc * self, int32_t value) {  sapp_gl_desc *v = self; v->minor_version = (int)value; }
MOONBIT_FFI_EXPORT sapp_win32_desc * mb_app_sapp_win32_desc_new(void) { return mb_new_sapp_win32_desc(); }
MOONBIT_FFI_EXPORT sapp_win32_desc * mb_app_sapp_win32_desc_copy(sapp_win32_desc * self) { return mb_copy_sapp_win32_desc(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_win32_desc_native(sapp_win32_desc * self) { return self; }
MOONBIT_FFI_EXPORT sapp_win32_desc * mb_app_sapp_win32_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_win32_desc(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_win32_desc_get_console_utf8(sapp_win32_desc * self) {  sapp_win32_desc *v = self; return v->console_utf8; }
MOONBIT_FFI_EXPORT void mb_app_sapp_win32_desc_set_console_utf8(sapp_win32_desc * self, int32_t value) {  sapp_win32_desc *v = self; v->console_utf8 = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_win32_desc_get_console_create(sapp_win32_desc * self) {  sapp_win32_desc *v = self; return v->console_create; }
MOONBIT_FFI_EXPORT void mb_app_sapp_win32_desc_set_console_create(sapp_win32_desc * self, int32_t value) {  sapp_win32_desc *v = self; v->console_create = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_win32_desc_get_console_attach(sapp_win32_desc * self) {  sapp_win32_desc *v = self; return v->console_attach; }
MOONBIT_FFI_EXPORT void mb_app_sapp_win32_desc_set_console_attach(sapp_win32_desc * self, int32_t value) {  sapp_win32_desc *v = self; v->console_attach = (bool)value; }
MOONBIT_FFI_EXPORT sapp_html5_desc * mb_app_sapp_html5_desc_new(void) { return mb_new_sapp_html5_desc(); }
MOONBIT_FFI_EXPORT sapp_html5_desc * mb_app_sapp_html5_desc_copy(sapp_html5_desc * self) { return mb_copy_sapp_html5_desc(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_html5_desc_native(sapp_html5_desc * self) { return self; }
MOONBIT_FFI_EXPORT sapp_html5_desc * mb_app_sapp_html5_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_html5_desc(ptr); }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_app_sapp_html5_desc_get_canvas_selector(sapp_html5_desc * self) {  sapp_html5_desc *v = self; return mb_utf8(v->canvas_selector); }
MOONBIT_FFI_EXPORT void mb_app_sapp_html5_desc_set_canvas_selector(sapp_html5_desc * self, moonbit_bytes_t value) {  sapp_html5_desc *v = self; const char *replacement = mb_string((const char*)value); free((void*)v->canvas_selector); v->canvas_selector = replacement; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_html5_desc_get_canvas_resize(sapp_html5_desc * self) {  sapp_html5_desc *v = self; return v->canvas_resize; }
MOONBIT_FFI_EXPORT void mb_app_sapp_html5_desc_set_canvas_resize(sapp_html5_desc * self, int32_t value) {  sapp_html5_desc *v = self; v->canvas_resize = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_html5_desc_get_preserve_drawing_buffer(sapp_html5_desc * self) {  sapp_html5_desc *v = self; return v->preserve_drawing_buffer; }
MOONBIT_FFI_EXPORT void mb_app_sapp_html5_desc_set_preserve_drawing_buffer(sapp_html5_desc * self, int32_t value) {  sapp_html5_desc *v = self; v->preserve_drawing_buffer = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_html5_desc_get_ask_leave_site(sapp_html5_desc * self) {  sapp_html5_desc *v = self; return v->ask_leave_site; }
MOONBIT_FFI_EXPORT void mb_app_sapp_html5_desc_set_ask_leave_site(sapp_html5_desc * self, int32_t value) {  sapp_html5_desc *v = self; v->ask_leave_site = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_html5_desc_get_update_document_title(sapp_html5_desc * self) {  sapp_html5_desc *v = self; return v->update_document_title; }
MOONBIT_FFI_EXPORT void mb_app_sapp_html5_desc_set_update_document_title(sapp_html5_desc * self, int32_t value) {  sapp_html5_desc *v = self; v->update_document_title = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_html5_desc_get_bubble_mouse_events(sapp_html5_desc * self) {  sapp_html5_desc *v = self; return v->bubble_mouse_events; }
MOONBIT_FFI_EXPORT void mb_app_sapp_html5_desc_set_bubble_mouse_events(sapp_html5_desc * self, int32_t value) {  sapp_html5_desc *v = self; v->bubble_mouse_events = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_html5_desc_get_bubble_touch_events(sapp_html5_desc * self) {  sapp_html5_desc *v = self; return v->bubble_touch_events; }
MOONBIT_FFI_EXPORT void mb_app_sapp_html5_desc_set_bubble_touch_events(sapp_html5_desc * self, int32_t value) {  sapp_html5_desc *v = self; v->bubble_touch_events = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_html5_desc_get_bubble_wheel_events(sapp_html5_desc * self) {  sapp_html5_desc *v = self; return v->bubble_wheel_events; }
MOONBIT_FFI_EXPORT void mb_app_sapp_html5_desc_set_bubble_wheel_events(sapp_html5_desc * self, int32_t value) {  sapp_html5_desc *v = self; v->bubble_wheel_events = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_html5_desc_get_bubble_key_events(sapp_html5_desc * self) {  sapp_html5_desc *v = self; return v->bubble_key_events; }
MOONBIT_FFI_EXPORT void mb_app_sapp_html5_desc_set_bubble_key_events(sapp_html5_desc * self, int32_t value) {  sapp_html5_desc *v = self; v->bubble_key_events = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_html5_desc_get_bubble_char_events(sapp_html5_desc * self) {  sapp_html5_desc *v = self; return v->bubble_char_events; }
MOONBIT_FFI_EXPORT void mb_app_sapp_html5_desc_set_bubble_char_events(sapp_html5_desc * self, int32_t value) {  sapp_html5_desc *v = self; v->bubble_char_events = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_html5_desc_get_use_emsc_set_main_loop(sapp_html5_desc * self) {  sapp_html5_desc *v = self; return v->use_emsc_set_main_loop; }
MOONBIT_FFI_EXPORT void mb_app_sapp_html5_desc_set_use_emsc_set_main_loop(sapp_html5_desc * self, int32_t value) {  sapp_html5_desc *v = self; v->use_emsc_set_main_loop = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_html5_desc_get_emsc_set_main_loop_simulate_infinite_loop(sapp_html5_desc * self) {  sapp_html5_desc *v = self; return v->emsc_set_main_loop_simulate_infinite_loop; }
MOONBIT_FFI_EXPORT void mb_app_sapp_html5_desc_set_emsc_set_main_loop_simulate_infinite_loop(sapp_html5_desc * self, int32_t value) {  sapp_html5_desc *v = self; v->emsc_set_main_loop_simulate_infinite_loop = (bool)value; }
MOONBIT_FFI_EXPORT sapp_ios_desc * mb_app_sapp_ios_desc_new(void) { return mb_new_sapp_ios_desc(); }
MOONBIT_FFI_EXPORT sapp_ios_desc * mb_app_sapp_ios_desc_copy(sapp_ios_desc * self) { return mb_copy_sapp_ios_desc(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_ios_desc_native(sapp_ios_desc * self) { return self; }
MOONBIT_FFI_EXPORT sapp_ios_desc * mb_app_sapp_ios_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_ios_desc(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_ios_desc_get_keyboard_resizes_canvas(sapp_ios_desc * self) {  sapp_ios_desc *v = self; return v->keyboard_resizes_canvas; }
MOONBIT_FFI_EXPORT void mb_app_sapp_ios_desc_set_keyboard_resizes_canvas(sapp_ios_desc * self, int32_t value) {  sapp_ios_desc *v = self; v->keyboard_resizes_canvas = (bool)value; }
MOONBIT_FFI_EXPORT sapp_metal_desc * mb_app_sapp_metal_desc_new(void) { return mb_new_sapp_metal_desc(); }
MOONBIT_FFI_EXPORT sapp_metal_desc * mb_app_sapp_metal_desc_copy(sapp_metal_desc * self) { return mb_copy_sapp_metal_desc(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_metal_desc_native(sapp_metal_desc * self) { return self; }
MOONBIT_FFI_EXPORT sapp_metal_desc * mb_app_sapp_metal_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_metal_desc(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_metal_desc_get_disable_display_sync(sapp_metal_desc * self) {  sapp_metal_desc *v = self; return v->disable_display_sync; }
MOONBIT_FFI_EXPORT void mb_app_sapp_metal_desc_set_disable_display_sync(sapp_metal_desc * self, int32_t value) {  sapp_metal_desc *v = self; v->disable_display_sync = (bool)value; }
MOONBIT_FFI_EXPORT sapp_android_desc * mb_app_sapp_android_desc_new(void) { return mb_new_sapp_android_desc(); }
MOONBIT_FFI_EXPORT sapp_android_desc * mb_app_sapp_android_desc_copy(sapp_android_desc * self) { return mb_copy_sapp_android_desc(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_android_desc_native(sapp_android_desc * self) { return self; }
MOONBIT_FFI_EXPORT sapp_android_desc * mb_app_sapp_android_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_android_desc(ptr); }
typedef bool  (*mb_sapp_android_desc_native_event_cb_fn)(const void *);
MOONBIT_FFI_EXPORT void * mb_app_sapp_android_desc_get_native_event_cb(sapp_android_desc * self) {  sapp_android_desc *v = self; return (void*)v->native_event_cb; }
MOONBIT_FFI_EXPORT void mb_app_sapp_android_desc_set_native_event_cb(sapp_android_desc * self, void * value) {  sapp_android_desc *v = self; v->native_event_cb = (mb_sapp_android_desc_native_event_cb_fn)value; }
MOONBIT_FFI_EXPORT sapp_desc * mb_app_sapp_desc_new(void) { return mb_new_sapp_desc(); }
MOONBIT_FFI_EXPORT sapp_desc * mb_app_sapp_desc_copy(sapp_desc * self) { return mb_copy_sapp_desc(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_desc_native(sapp_desc * self) { return self; }
MOONBIT_FFI_EXPORT sapp_desc * mb_app_sapp_desc_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_desc(ptr); }
typedef void  (*mb_sapp_desc_init_cb_fn)(void);
MOONBIT_FFI_EXPORT void * mb_app_sapp_desc_get_init_cb(sapp_desc * self) {  sapp_desc *v = self; return (void*)v->init_cb; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_init_cb(sapp_desc * self, void * value) {  sapp_desc *v = self; v->init_cb = (mb_sapp_desc_init_cb_fn)value; }
typedef void  (*mb_sapp_desc_frame_cb_fn)(void);
MOONBIT_FFI_EXPORT void * mb_app_sapp_desc_get_frame_cb(sapp_desc * self) {  sapp_desc *v = self; return (void*)v->frame_cb; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_frame_cb(sapp_desc * self, void * value) {  sapp_desc *v = self; v->frame_cb = (mb_sapp_desc_frame_cb_fn)value; }
typedef void  (*mb_sapp_desc_cleanup_cb_fn)(void);
MOONBIT_FFI_EXPORT void * mb_app_sapp_desc_get_cleanup_cb(sapp_desc * self) {  sapp_desc *v = self; return (void*)v->cleanup_cb; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_cleanup_cb(sapp_desc * self, void * value) {  sapp_desc *v = self; v->cleanup_cb = (mb_sapp_desc_cleanup_cb_fn)value; }
typedef void  (*mb_sapp_desc_event_cb_fn)(const sapp_event *);
MOONBIT_FFI_EXPORT void * mb_app_sapp_desc_get_event_cb(sapp_desc * self) {  sapp_desc *v = self; return (void*)v->event_cb; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_event_cb(sapp_desc * self, void * value) {  sapp_desc *v = self; v->event_cb = (mb_sapp_desc_event_cb_fn)value; }
MOONBIT_FFI_EXPORT void * mb_app_sapp_desc_get_user_data(sapp_desc * self) {  sapp_desc *v = self; return (void*)v->user_data; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_user_data(sapp_desc * self, void * value) {  sapp_desc *v = self; v->user_data = value; }
typedef void  (*mb_sapp_desc_init_userdata_cb_fn)(void *);
MOONBIT_FFI_EXPORT void * mb_app_sapp_desc_get_init_userdata_cb(sapp_desc * self) {  sapp_desc *v = self; return (void*)v->init_userdata_cb; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_init_userdata_cb(sapp_desc * self, void * value) {  sapp_desc *v = self; v->init_userdata_cb = (mb_sapp_desc_init_userdata_cb_fn)value; }
typedef void  (*mb_sapp_desc_frame_userdata_cb_fn)(void *);
MOONBIT_FFI_EXPORT void * mb_app_sapp_desc_get_frame_userdata_cb(sapp_desc * self) {  sapp_desc *v = self; return (void*)v->frame_userdata_cb; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_frame_userdata_cb(sapp_desc * self, void * value) {  sapp_desc *v = self; v->frame_userdata_cb = (mb_sapp_desc_frame_userdata_cb_fn)value; }
typedef void  (*mb_sapp_desc_cleanup_userdata_cb_fn)(void *);
MOONBIT_FFI_EXPORT void * mb_app_sapp_desc_get_cleanup_userdata_cb(sapp_desc * self) {  sapp_desc *v = self; return (void*)v->cleanup_userdata_cb; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_cleanup_userdata_cb(sapp_desc * self, void * value) {  sapp_desc *v = self; v->cleanup_userdata_cb = (mb_sapp_desc_cleanup_userdata_cb_fn)value; }
typedef void  (*mb_sapp_desc_event_userdata_cb_fn)(const sapp_event *, void *);
MOONBIT_FFI_EXPORT void * mb_app_sapp_desc_get_event_userdata_cb(sapp_desc * self) {  sapp_desc *v = self; return (void*)v->event_userdata_cb; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_event_userdata_cb(sapp_desc * self, void * value) {  sapp_desc *v = self; v->event_userdata_cb = (mb_sapp_desc_event_userdata_cb_fn)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_desc_get_width(sapp_desc * self) {  sapp_desc *v = self; return v->width; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_width(sapp_desc * self, int32_t value) {  sapp_desc *v = self; v->width = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_desc_get_height(sapp_desc * self) {  sapp_desc *v = self; return v->height; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_height(sapp_desc * self, int32_t value) {  sapp_desc *v = self; v->height = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_desc_get_depth_format(sapp_desc * self) {  sapp_desc *v = self; return v->depth_format; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_depth_format(sapp_desc * self, int32_t value) {  sapp_desc *v = self; v->depth_format = (sapp_pixel_format)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_desc_get_composite_mode(sapp_desc * self) {  sapp_desc *v = self; return v->composite_mode; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_composite_mode(sapp_desc * self, int32_t value) {  sapp_desc *v = self; v->composite_mode = (sapp_composite_mode)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_desc_get_sample_count(sapp_desc * self) {  sapp_desc *v = self; return v->sample_count; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_sample_count(sapp_desc * self, int32_t value) {  sapp_desc *v = self; v->sample_count = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_desc_get_swap_interval(sapp_desc * self) {  sapp_desc *v = self; return v->swap_interval; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_swap_interval(sapp_desc * self, int32_t value) {  sapp_desc *v = self; v->swap_interval = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_desc_get_srgb(sapp_desc * self) {  sapp_desc *v = self; return v->srgb; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_srgb(sapp_desc * self, int32_t value) {  sapp_desc *v = self; v->srgb = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_desc_get_hdr(sapp_desc * self) {  sapp_desc *v = self; return v->hdr; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_hdr(sapp_desc * self, int32_t value) {  sapp_desc *v = self; v->hdr = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_desc_get_disable_vsync(sapp_desc * self) {  sapp_desc *v = self; return v->disable_vsync; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_disable_vsync(sapp_desc * self, int32_t value) {  sapp_desc *v = self; v->disable_vsync = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_desc_get_high_dpi(sapp_desc * self) {  sapp_desc *v = self; return v->high_dpi; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_high_dpi(sapp_desc * self, int32_t value) {  sapp_desc *v = self; v->high_dpi = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_desc_get_fullscreen(sapp_desc * self) {  sapp_desc *v = self; return v->fullscreen; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_fullscreen(sapp_desc * self, int32_t value) {  sapp_desc *v = self; v->fullscreen = (bool)value; }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_app_sapp_desc_get_window_title(sapp_desc * self) {  sapp_desc *v = self; return mb_utf8(v->window_title); }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_window_title(sapp_desc * self, moonbit_bytes_t value) {  sapp_desc *v = self; const char *replacement = mb_string((const char*)value); free((void*)v->window_title); v->window_title = replacement; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_desc_get_enable_clipboard(sapp_desc * self) {  sapp_desc *v = self; return v->enable_clipboard; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_enable_clipboard(sapp_desc * self, int32_t value) {  sapp_desc *v = self; v->enable_clipboard = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_desc_get_clipboard_size(sapp_desc * self) {  sapp_desc *v = self; return v->clipboard_size; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_clipboard_size(sapp_desc * self, int32_t value) {  sapp_desc *v = self; v->clipboard_size = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_desc_get_enable_dragndrop(sapp_desc * self) {  sapp_desc *v = self; return v->enable_dragndrop; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_enable_dragndrop(sapp_desc * self, int32_t value) {  sapp_desc *v = self; v->enable_dragndrop = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_desc_get_max_dropped_files(sapp_desc * self) {  sapp_desc *v = self; return v->max_dropped_files; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_max_dropped_files(sapp_desc * self, int32_t value) {  sapp_desc *v = self; v->max_dropped_files = (int)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_desc_get_max_dropped_file_path_length(sapp_desc * self) {  sapp_desc *v = self; return v->max_dropped_file_path_length; }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_max_dropped_file_path_length(sapp_desc * self, int32_t value) {  sapp_desc *v = self; v->max_dropped_file_path_length = (int)value; }
MOONBIT_FFI_EXPORT sapp_icon_desc * mb_app_sapp_desc_get_icon(sapp_desc * self) {  sapp_desc *v = self; return mb_copy_sapp_icon_desc(&v->icon); }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_icon(sapp_desc * self, sapp_icon_desc * value) {  sapp_desc *v = self; sapp_icon_desc replacement; mb_clone_sapp_icon_desc(&replacement, value); mb_drop_sapp_icon_desc(&v->icon); v->icon = replacement; }
MOONBIT_FFI_EXPORT sapp_allocator * mb_app_sapp_desc_get_allocator(sapp_desc * self) {  sapp_desc *v = self; return mb_copy_sapp_allocator(&v->allocator); }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_allocator(sapp_desc * self, sapp_allocator * value) {  sapp_desc *v = self; sapp_allocator replacement; mb_clone_sapp_allocator(&replacement, value); mb_drop_sapp_allocator(&v->allocator); v->allocator = replacement; }
MOONBIT_FFI_EXPORT sapp_logger * mb_app_sapp_desc_get_logger(sapp_desc * self) {  sapp_desc *v = self; return mb_copy_sapp_logger(&v->logger); }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_logger(sapp_desc * self, sapp_logger * value) {  sapp_desc *v = self; sapp_logger replacement; mb_clone_sapp_logger(&replacement, value); mb_drop_sapp_logger(&v->logger); v->logger = replacement; }
MOONBIT_FFI_EXPORT sapp_gl_desc * mb_app_sapp_desc_get_gl(sapp_desc * self) {  sapp_desc *v = self; return mb_copy_sapp_gl_desc(&v->gl); }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_gl(sapp_desc * self, sapp_gl_desc * value) {  sapp_desc *v = self; sapp_gl_desc replacement; mb_clone_sapp_gl_desc(&replacement, value); mb_drop_sapp_gl_desc(&v->gl); v->gl = replacement; }
MOONBIT_FFI_EXPORT sapp_metal_desc * mb_app_sapp_desc_get_metal(sapp_desc * self) {  sapp_desc *v = self; return mb_copy_sapp_metal_desc(&v->metal); }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_metal(sapp_desc * self, sapp_metal_desc * value) {  sapp_desc *v = self; sapp_metal_desc replacement; mb_clone_sapp_metal_desc(&replacement, value); mb_drop_sapp_metal_desc(&v->metal); v->metal = replacement; }
MOONBIT_FFI_EXPORT sapp_win32_desc * mb_app_sapp_desc_get_win32(sapp_desc * self) {  sapp_desc *v = self; return mb_copy_sapp_win32_desc(&v->win32); }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_win32(sapp_desc * self, sapp_win32_desc * value) {  sapp_desc *v = self; sapp_win32_desc replacement; mb_clone_sapp_win32_desc(&replacement, value); mb_drop_sapp_win32_desc(&v->win32); v->win32 = replacement; }
MOONBIT_FFI_EXPORT sapp_html5_desc * mb_app_sapp_desc_get_html5(sapp_desc * self) {  sapp_desc *v = self; return mb_copy_sapp_html5_desc(&v->html5); }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_html5(sapp_desc * self, sapp_html5_desc * value) {  sapp_desc *v = self; sapp_html5_desc replacement; mb_clone_sapp_html5_desc(&replacement, value); mb_drop_sapp_html5_desc(&v->html5); v->html5 = replacement; }
MOONBIT_FFI_EXPORT sapp_ios_desc * mb_app_sapp_desc_get_ios(sapp_desc * self) {  sapp_desc *v = self; return mb_copy_sapp_ios_desc(&v->ios); }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_ios(sapp_desc * self, sapp_ios_desc * value) {  sapp_desc *v = self; sapp_ios_desc replacement; mb_clone_sapp_ios_desc(&replacement, value); mb_drop_sapp_ios_desc(&v->ios); v->ios = replacement; }
MOONBIT_FFI_EXPORT sapp_android_desc * mb_app_sapp_desc_get_android(sapp_desc * self) {  sapp_desc *v = self; return mb_copy_sapp_android_desc(&v->android); }
MOONBIT_FFI_EXPORT void mb_app_sapp_desc_set_android(sapp_desc * self, sapp_android_desc * value) {  sapp_desc *v = self; sapp_android_desc replacement; mb_clone_sapp_android_desc(&replacement, value); mb_drop_sapp_android_desc(&v->android); v->android = replacement; }
MOONBIT_FFI_EXPORT sapp_html5_fetch_response * mb_app_sapp_html5_fetch_response_new(void) { return mb_new_sapp_html5_fetch_response(); }
MOONBIT_FFI_EXPORT sapp_html5_fetch_response * mb_app_sapp_html5_fetch_response_copy(sapp_html5_fetch_response * self) { return mb_copy_sapp_html5_fetch_response(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_html5_fetch_response_native(sapp_html5_fetch_response * self) { return self; }
MOONBIT_FFI_EXPORT sapp_html5_fetch_response * mb_app_sapp_html5_fetch_response_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_html5_fetch_response(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_html5_fetch_response_get_succeeded(sapp_html5_fetch_response * self) {  sapp_html5_fetch_response *v = self; return v->succeeded; }
MOONBIT_FFI_EXPORT void mb_app_sapp_html5_fetch_response_set_succeeded(sapp_html5_fetch_response * self, int32_t value) {  sapp_html5_fetch_response *v = self; v->succeeded = (bool)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_html5_fetch_response_get_error_code(sapp_html5_fetch_response * self) {  sapp_html5_fetch_response *v = self; return v->error_code; }
MOONBIT_FFI_EXPORT void mb_app_sapp_html5_fetch_response_set_error_code(sapp_html5_fetch_response * self, int32_t value) {  sapp_html5_fetch_response *v = self; v->error_code = (sapp_html5_fetch_error)value; }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_html5_fetch_response_get_file_index(sapp_html5_fetch_response * self) {  sapp_html5_fetch_response *v = self; return v->file_index; }
MOONBIT_FFI_EXPORT void mb_app_sapp_html5_fetch_response_set_file_index(sapp_html5_fetch_response * self, int32_t value) {  sapp_html5_fetch_response *v = self; v->file_index = (int)value; }
MOONBIT_FFI_EXPORT sapp_range * mb_app_sapp_html5_fetch_response_get_data(sapp_html5_fetch_response * self) {  sapp_html5_fetch_response *v = self; return mb_copy_sapp_range(&v->data); }
MOONBIT_FFI_EXPORT void mb_app_sapp_html5_fetch_response_set_data(sapp_html5_fetch_response * self, sapp_range * value) {  sapp_html5_fetch_response *v = self; sapp_range replacement; mb_clone_sapp_range(&replacement, value); mb_drop_sapp_range(&v->data); v->data = replacement; }
MOONBIT_FFI_EXPORT sapp_range * mb_app_sapp_html5_fetch_response_get_buffer(sapp_html5_fetch_response * self) {  sapp_html5_fetch_response *v = self; return mb_copy_sapp_range(&v->buffer); }
MOONBIT_FFI_EXPORT void mb_app_sapp_html5_fetch_response_set_buffer(sapp_html5_fetch_response * self, sapp_range * value) {  sapp_html5_fetch_response *v = self; sapp_range replacement; mb_clone_sapp_range(&replacement, value); mb_drop_sapp_range(&v->buffer); v->buffer = replacement; }
MOONBIT_FFI_EXPORT void * mb_app_sapp_html5_fetch_response_get_user_data(sapp_html5_fetch_response * self) {  sapp_html5_fetch_response *v = self; return (void*)v->user_data; }
MOONBIT_FFI_EXPORT void mb_app_sapp_html5_fetch_response_set_user_data(sapp_html5_fetch_response * self, void * value) {  sapp_html5_fetch_response *v = self; v->user_data = value; }
MOONBIT_FFI_EXPORT sapp_html5_fetch_request * mb_app_sapp_html5_fetch_request_new(void) { return mb_new_sapp_html5_fetch_request(); }
MOONBIT_FFI_EXPORT sapp_html5_fetch_request * mb_app_sapp_html5_fetch_request_copy(sapp_html5_fetch_request * self) { return mb_copy_sapp_html5_fetch_request(self); }
MOONBIT_FFI_EXPORT void * mb_app_sapp_html5_fetch_request_native(sapp_html5_fetch_request * self) { return self; }
MOONBIT_FFI_EXPORT sapp_html5_fetch_request * mb_app_sapp_html5_fetch_request_from_native(void * ptr) { if (!ptr) abort(); return mb_copy_sapp_html5_fetch_request(ptr); }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_html5_fetch_request_get_dropped_file_index(sapp_html5_fetch_request * self) {  sapp_html5_fetch_request *v = self; return v->dropped_file_index; }
MOONBIT_FFI_EXPORT void mb_app_sapp_html5_fetch_request_set_dropped_file_index(sapp_html5_fetch_request * self, int32_t value) {  sapp_html5_fetch_request *v = self; v->dropped_file_index = (int)value; }
typedef void  (*mb_sapp_html5_fetch_request_callback_fn)(const sapp_html5_fetch_response *);
MOONBIT_FFI_EXPORT void * mb_app_sapp_html5_fetch_request_get_callback(sapp_html5_fetch_request * self) {  sapp_html5_fetch_request *v = self; return (void*)v->callback; }
MOONBIT_FFI_EXPORT void mb_app_sapp_html5_fetch_request_set_callback(sapp_html5_fetch_request * self, void * value) {  sapp_html5_fetch_request *v = self; v->callback = (mb_sapp_html5_fetch_request_callback_fn)value; }
MOONBIT_FFI_EXPORT sapp_range * mb_app_sapp_html5_fetch_request_get_buffer(sapp_html5_fetch_request * self) {  sapp_html5_fetch_request *v = self; return mb_copy_sapp_range(&v->buffer); }
MOONBIT_FFI_EXPORT void mb_app_sapp_html5_fetch_request_set_buffer(sapp_html5_fetch_request * self, sapp_range * value) {  sapp_html5_fetch_request *v = self; sapp_range replacement; mb_clone_sapp_range(&replacement, value); mb_drop_sapp_range(&v->buffer); v->buffer = replacement; }
MOONBIT_FFI_EXPORT void * mb_app_sapp_html5_fetch_request_get_user_data(sapp_html5_fetch_request * self) {  sapp_html5_fetch_request *v = self; return (void*)v->user_data; }
MOONBIT_FFI_EXPORT void mb_app_sapp_html5_fetch_request_set_user_data(sapp_html5_fetch_request * self, void * value) {  sapp_html5_fetch_request *v = self; v->user_data = value; }
MOONBIT_FFI_EXPORT sapp_environment * mb_app_sapp_get_environment(void) { sapp_environment value = sapp_get_environment(); return mb_copy_sapp_environment(&value); }
MOONBIT_FFI_EXPORT sapp_swapchain * mb_app_sapp_acquire_swapchain(void) { sapp_swapchain value = sapp_acquire_swapchain(); return mb_copy_sapp_swapchain(&value); }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_isvalid(void) { return sapp_isvalid(); }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_high_dpi(void) { return sapp_high_dpi(); }
MOONBIT_FFI_EXPORT void mb_app_sapp_show_keyboard(int32_t show) { sapp_show_keyboard((bool)show); }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_keyboard_shown(void) { return sapp_keyboard_shown(); }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_is_fullscreen(void) { return sapp_is_fullscreen(); }
MOONBIT_FFI_EXPORT void mb_app_sapp_show_mouse(int32_t show) { sapp_show_mouse((bool)show); }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_mouse_shown(void) { return sapp_mouse_shown(); }
MOONBIT_FFI_EXPORT void mb_app_sapp_lock_mouse(int32_t lock) { sapp_lock_mouse((bool)lock); }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_mouse_locked(void) { return sapp_mouse_locked(); }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_bind_mouse_cursor_image(int32_t cursor, sapp_image_desc * desc) { return sapp_bind_mouse_cursor_image((sapp_mouse_cursor)cursor, desc); }
MOONBIT_FFI_EXPORT sapp_desc * mb_app_sapp_query_desc(void) { sapp_desc value = sapp_query_desc(); return mb_copy_sapp_desc(&value); }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_app_sapp_get_clipboard_string(void) { return mb_utf8(sapp_get_clipboard_string()); }
MOONBIT_FFI_EXPORT void mb_app_sapp_set_icon(sapp_icon_desc * icon_desc) { sapp_set_icon(icon_desc); }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_app_sapp_get_dropped_file_path(int32_t index) { return mb_utf8(sapp_get_dropped_file_path((int)index)); }
MOONBIT_FFI_EXPORT void mb_app_sapp_html5_ask_leave_site(int32_t ask) { sapp_html5_ask_leave_site((bool)ask); }
MOONBIT_FFI_EXPORT int32_t mb_app_sapp_gl_is_gles(void) { return sapp_gl_is_gles(); }
MOONBIT_FFI_EXPORT sapp_logger * mb_app_sapp_logger_default(void) { sapp_logger *r = mb_new_sapp_logger(); r->func = slog_func; return r; }
