/* Header inputs: 632aa457c98256360414c6817bcd63a7144f1d78baea423e31de8cf8b3adc6d7. Regenerate after editing shared headers. */
/* C-layout adapters. Resource ownership is handled in support.c. */
#include "../native/common.h"
#include "../native/sokol_gfx.h"
#include "../native/sokol_app.h"
#define SOKOL_API_IMPL MOONBIT_FFI_EXPORT
#define SOKOL_IMPL
#include "../native/sokol_glue.h"
static void mb_clone_sg_d3d11_environment(sg_d3d11_environment*, const sg_d3d11_environment*);
static void mb_drop_sg_d3d11_environment(void*);
static void mb_clone_sg_d3d11_swapchain(sg_d3d11_swapchain*, const sg_d3d11_swapchain*);
static void mb_drop_sg_d3d11_swapchain(void*);
static void mb_clone_sg_environment(sg_environment*, const sg_environment*);
static void mb_drop_sg_environment(void*);
static void mb_clone_sg_environment_defaults(sg_environment_defaults*, const sg_environment_defaults*);
static void mb_drop_sg_environment_defaults(void*);
static void mb_clone_sg_gl_swapchain(sg_gl_swapchain*, const sg_gl_swapchain*);
static void mb_drop_sg_gl_swapchain(void*);
static void mb_clone_sg_metal_environment(sg_metal_environment*, const sg_metal_environment*);
static void mb_drop_sg_metal_environment(void*);
static void mb_clone_sg_metal_swapchain(sg_metal_swapchain*, const sg_metal_swapchain*);
static void mb_drop_sg_metal_swapchain(void*);
static void mb_clone_sg_swapchain(sg_swapchain*, const sg_swapchain*);
static void mb_drop_sg_swapchain(void*);
static void mb_clone_sg_vulkan_environment(sg_vulkan_environment*, const sg_vulkan_environment*);
static void mb_drop_sg_vulkan_environment(void*);
static void mb_clone_sg_vulkan_swapchain(sg_vulkan_swapchain*, const sg_vulkan_swapchain*);
static void mb_drop_sg_vulkan_swapchain(void*);
static void mb_clone_sg_wgpu_environment(sg_wgpu_environment*, const sg_wgpu_environment*);
static void mb_drop_sg_wgpu_environment(void*);
static void mb_clone_sg_wgpu_swapchain(sg_wgpu_swapchain*, const sg_wgpu_swapchain*);
static void mb_drop_sg_wgpu_swapchain(void*);
static void mb_clone_sg_d3d11_environment(sg_d3d11_environment *dst, const sg_d3d11_environment *src) { *dst = *src;
}
static void mb_drop_sg_d3d11_environment(void *object) { sg_d3d11_environment *value = object;
}
_Static_assert(_Alignof(sg_d3d11_environment) <= _Alignof(void*), "external payload alignment");
static sg_d3d11_environment *mb_new_sg_d3d11_environment(void) { return mb_object_new(sizeof(sg_d3d11_environment), mb_drop_sg_d3d11_environment); }
static sg_d3d11_environment *mb_copy_sg_d3d11_environment(const sg_d3d11_environment *source) { sg_d3d11_environment *r = mb_new_sg_d3d11_environment(); mb_clone_sg_d3d11_environment(r, source); return r; }
static void mb_clone_sg_d3d11_swapchain(sg_d3d11_swapchain *dst, const sg_d3d11_swapchain *src) { *dst = *src;
}
static void mb_drop_sg_d3d11_swapchain(void *object) { sg_d3d11_swapchain *value = object;
}
_Static_assert(_Alignof(sg_d3d11_swapchain) <= _Alignof(void*), "external payload alignment");
static sg_d3d11_swapchain *mb_new_sg_d3d11_swapchain(void) { return mb_object_new(sizeof(sg_d3d11_swapchain), mb_drop_sg_d3d11_swapchain); }
static sg_d3d11_swapchain *mb_copy_sg_d3d11_swapchain(const sg_d3d11_swapchain *source) { sg_d3d11_swapchain *r = mb_new_sg_d3d11_swapchain(); mb_clone_sg_d3d11_swapchain(r, source); return r; }
static void mb_clone_sg_environment(sg_environment *dst, const sg_environment *src) { *dst = *src;
mb_clone_sg_environment_defaults(&dst->defaults, &src->defaults);
mb_clone_sg_metal_environment(&dst->metal, &src->metal);
mb_clone_sg_d3d11_environment(&dst->d3d11, &src->d3d11);
mb_clone_sg_wgpu_environment(&dst->wgpu, &src->wgpu);
mb_clone_sg_vulkan_environment(&dst->vulkan, &src->vulkan);
}
static void mb_drop_sg_environment(void *object) { sg_environment *value = object;
mb_drop_sg_environment_defaults(&value->defaults);
mb_drop_sg_metal_environment(&value->metal);
mb_drop_sg_d3d11_environment(&value->d3d11);
mb_drop_sg_wgpu_environment(&value->wgpu);
mb_drop_sg_vulkan_environment(&value->vulkan);
}
_Static_assert(_Alignof(sg_environment) <= _Alignof(void*), "external payload alignment");
static sg_environment *mb_new_sg_environment(void) { return mb_object_new(sizeof(sg_environment), mb_drop_sg_environment); }
static sg_environment *mb_copy_sg_environment(const sg_environment *source) { sg_environment *r = mb_new_sg_environment(); mb_clone_sg_environment(r, source); return r; }
static void mb_clone_sg_environment_defaults(sg_environment_defaults *dst, const sg_environment_defaults *src) { *dst = *src;
}
static void mb_drop_sg_environment_defaults(void *object) { sg_environment_defaults *value = object;
}
_Static_assert(_Alignof(sg_environment_defaults) <= _Alignof(void*), "external payload alignment");
static sg_environment_defaults *mb_new_sg_environment_defaults(void) { return mb_object_new(sizeof(sg_environment_defaults), mb_drop_sg_environment_defaults); }
static sg_environment_defaults *mb_copy_sg_environment_defaults(const sg_environment_defaults *source) { sg_environment_defaults *r = mb_new_sg_environment_defaults(); mb_clone_sg_environment_defaults(r, source); return r; }
static void mb_clone_sg_gl_swapchain(sg_gl_swapchain *dst, const sg_gl_swapchain *src) { *dst = *src;
}
static void mb_drop_sg_gl_swapchain(void *object) { sg_gl_swapchain *value = object;
}
_Static_assert(_Alignof(sg_gl_swapchain) <= _Alignof(void*), "external payload alignment");
static sg_gl_swapchain *mb_new_sg_gl_swapchain(void) { return mb_object_new(sizeof(sg_gl_swapchain), mb_drop_sg_gl_swapchain); }
static sg_gl_swapchain *mb_copy_sg_gl_swapchain(const sg_gl_swapchain *source) { sg_gl_swapchain *r = mb_new_sg_gl_swapchain(); mb_clone_sg_gl_swapchain(r, source); return r; }
static void mb_clone_sg_metal_environment(sg_metal_environment *dst, const sg_metal_environment *src) { *dst = *src;
}
static void mb_drop_sg_metal_environment(void *object) { sg_metal_environment *value = object;
}
_Static_assert(_Alignof(sg_metal_environment) <= _Alignof(void*), "external payload alignment");
static sg_metal_environment *mb_new_sg_metal_environment(void) { return mb_object_new(sizeof(sg_metal_environment), mb_drop_sg_metal_environment); }
static sg_metal_environment *mb_copy_sg_metal_environment(const sg_metal_environment *source) { sg_metal_environment *r = mb_new_sg_metal_environment(); mb_clone_sg_metal_environment(r, source); return r; }
static void mb_clone_sg_metal_swapchain(sg_metal_swapchain *dst, const sg_metal_swapchain *src) { *dst = *src;
}
static void mb_drop_sg_metal_swapchain(void *object) { sg_metal_swapchain *value = object;
}
_Static_assert(_Alignof(sg_metal_swapchain) <= _Alignof(void*), "external payload alignment");
static sg_metal_swapchain *mb_new_sg_metal_swapchain(void) { return mb_object_new(sizeof(sg_metal_swapchain), mb_drop_sg_metal_swapchain); }
static sg_metal_swapchain *mb_copy_sg_metal_swapchain(const sg_metal_swapchain *source) { sg_metal_swapchain *r = mb_new_sg_metal_swapchain(); mb_clone_sg_metal_swapchain(r, source); return r; }
static void mb_clone_sg_swapchain(sg_swapchain *dst, const sg_swapchain *src) { *dst = *src;
mb_clone_sg_metal_swapchain(&dst->metal, &src->metal);
mb_clone_sg_d3d11_swapchain(&dst->d3d11, &src->d3d11);
mb_clone_sg_wgpu_swapchain(&dst->wgpu, &src->wgpu);
mb_clone_sg_vulkan_swapchain(&dst->vulkan, &src->vulkan);
mb_clone_sg_gl_swapchain(&dst->gl, &src->gl);
}
static void mb_drop_sg_swapchain(void *object) { sg_swapchain *value = object;
mb_drop_sg_metal_swapchain(&value->metal);
mb_drop_sg_d3d11_swapchain(&value->d3d11);
mb_drop_sg_wgpu_swapchain(&value->wgpu);
mb_drop_sg_vulkan_swapchain(&value->vulkan);
mb_drop_sg_gl_swapchain(&value->gl);
}
_Static_assert(_Alignof(sg_swapchain) <= _Alignof(void*), "external payload alignment");
static sg_swapchain *mb_new_sg_swapchain(void) { return mb_object_new(sizeof(sg_swapchain), mb_drop_sg_swapchain); }
static sg_swapchain *mb_copy_sg_swapchain(const sg_swapchain *source) { sg_swapchain *r = mb_new_sg_swapchain(); mb_clone_sg_swapchain(r, source); return r; }
static void mb_clone_sg_vulkan_environment(sg_vulkan_environment *dst, const sg_vulkan_environment *src) { *dst = *src;
}
static void mb_drop_sg_vulkan_environment(void *object) { sg_vulkan_environment *value = object;
}
_Static_assert(_Alignof(sg_vulkan_environment) <= _Alignof(void*), "external payload alignment");
static sg_vulkan_environment *mb_new_sg_vulkan_environment(void) { return mb_object_new(sizeof(sg_vulkan_environment), mb_drop_sg_vulkan_environment); }
static sg_vulkan_environment *mb_copy_sg_vulkan_environment(const sg_vulkan_environment *source) { sg_vulkan_environment *r = mb_new_sg_vulkan_environment(); mb_clone_sg_vulkan_environment(r, source); return r; }
static void mb_clone_sg_vulkan_swapchain(sg_vulkan_swapchain *dst, const sg_vulkan_swapchain *src) { *dst = *src;
}
static void mb_drop_sg_vulkan_swapchain(void *object) { sg_vulkan_swapchain *value = object;
}
_Static_assert(_Alignof(sg_vulkan_swapchain) <= _Alignof(void*), "external payload alignment");
static sg_vulkan_swapchain *mb_new_sg_vulkan_swapchain(void) { return mb_object_new(sizeof(sg_vulkan_swapchain), mb_drop_sg_vulkan_swapchain); }
static sg_vulkan_swapchain *mb_copy_sg_vulkan_swapchain(const sg_vulkan_swapchain *source) { sg_vulkan_swapchain *r = mb_new_sg_vulkan_swapchain(); mb_clone_sg_vulkan_swapchain(r, source); return r; }
static void mb_clone_sg_wgpu_environment(sg_wgpu_environment *dst, const sg_wgpu_environment *src) { *dst = *src;
}
static void mb_drop_sg_wgpu_environment(void *object) { sg_wgpu_environment *value = object;
}
_Static_assert(_Alignof(sg_wgpu_environment) <= _Alignof(void*), "external payload alignment");
static sg_wgpu_environment *mb_new_sg_wgpu_environment(void) { return mb_object_new(sizeof(sg_wgpu_environment), mb_drop_sg_wgpu_environment); }
static sg_wgpu_environment *mb_copy_sg_wgpu_environment(const sg_wgpu_environment *source) { sg_wgpu_environment *r = mb_new_sg_wgpu_environment(); mb_clone_sg_wgpu_environment(r, source); return r; }
static void mb_clone_sg_wgpu_swapchain(sg_wgpu_swapchain *dst, const sg_wgpu_swapchain *src) { *dst = *src;
}
static void mb_drop_sg_wgpu_swapchain(void *object) { sg_wgpu_swapchain *value = object;
}
_Static_assert(_Alignof(sg_wgpu_swapchain) <= _Alignof(void*), "external payload alignment");
static sg_wgpu_swapchain *mb_new_sg_wgpu_swapchain(void) { return mb_object_new(sizeof(sg_wgpu_swapchain), mb_drop_sg_wgpu_swapchain); }
static sg_wgpu_swapchain *mb_copy_sg_wgpu_swapchain(const sg_wgpu_swapchain *source) { sg_wgpu_swapchain *r = mb_new_sg_wgpu_swapchain(); mb_clone_sg_wgpu_swapchain(r, source); return r; }
MOONBIT_FFI_EXPORT sg_environment * mb_glue_sglue_environment(void) { sg_environment value = sglue_environment(); return mb_copy_sg_environment(&value); }
MOONBIT_FFI_EXPORT sg_swapchain * mb_glue_sglue_swapchain(void) { sg_swapchain value = sglue_swapchain(); return mb_copy_sg_swapchain(&value); }
