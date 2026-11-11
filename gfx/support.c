#include "generated.h"
#include "callbacks.h"
#define MB_GFX_DATA(name,type) \
MOONBIT_FFI_EXPORT mb_box *mb_gfx_##name(type *data) { \
    mb_box *r=mb_box_new(sizeof(sg_range)); sg_range *v=r->value; \
    v->size=(size_t)Moonbit_array_length(data)*sizeof(type); v->ptr=mb_copy(r->arena,data,v->size); return r; \
}
MB_GFX_DATA(floats,float)
MB_GFX_DATA(uints,uint32_t)
MB_GFX_DATA(ushorts,uint16_t)
