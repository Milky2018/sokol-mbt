#include <moonbit.h>
#include <stdint.h>
#include <string.h>
#if defined(__APPLE__)
#import <Metal/Metal.h>
static id<MTLDevice> mb_test_device;
MOONBIT_FFI_EXPORT void *mb_test_metal_device(void) {
    mb_test_device=MTLCreateSystemDefaultDevice(); return (__bridge void*)mb_test_device;
}
MOONBIT_FFI_EXPORT uint32_t mb_test_pixel(void *texture_ptr,void *queue_ptr,int32_t x,int32_t y) {
    id<MTLTexture> texture=(__bridge id<MTLTexture>)texture_ptr;
    id<MTLCommandQueue> queue=(__bridge id<MTLCommandQueue>)queue_ptr;
    id<MTLBuffer> staging=[mb_test_device newBufferWithLength:256 options:MTLResourceStorageModeShared];
    id<MTLCommandBuffer> command=[queue commandBuffer];
    id<MTLBlitCommandEncoder> blit=[command blitCommandEncoder];
    [blit copyFromTexture:texture sourceSlice:0 sourceLevel:0 sourceOrigin:MTLOriginMake(x,y,0) sourceSize:MTLSizeMake(1,1,1)
        toBuffer:staging destinationOffset:0 destinationBytesPerRow:256 destinationBytesPerImage:256];
    [blit endEncoding]; [command commit]; [command waitUntilCompleted];
    return *(uint32_t*)[staging contents];
}
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_test_buffer(void *buffer_ptr,void *queue_ptr) {
    id<MTLBuffer> buffer=(__bridge id<MTLBuffer>)buffer_ptr;
    id<MTLCommandQueue> queue=(__bridge id<MTLCommandQueue>)queue_ptr;
    id<MTLBuffer> staging=[mb_test_device newBufferWithLength:16 options:MTLResourceStorageModeShared];
    id<MTLCommandBuffer> command=[queue commandBuffer];
    id<MTLBlitCommandEncoder> blit=[command blitCommandEncoder];
    [blit copyFromBuffer:buffer sourceOffset:0 toBuffer:staging destinationOffset:0 size:16];
    [blit endEncoding]; [command commit]; [command waitUntilCompleted];
    moonbit_bytes_t bytes=moonbit_make_bytes(16,0); memcpy(bytes,[staging contents],16); return bytes;
}
#else
MOONBIT_FFI_EXPORT void *mb_test_metal_device(void) { return NULL; }
MOONBIT_FFI_EXPORT uint32_t mb_test_pixel(void *texture,void *queue,int32_t x,int32_t y) { (void)texture; (void)queue; (void)x; (void)y; return 0; }
MOONBIT_FFI_EXPORT moonbit_bytes_t mb_test_buffer(void *buffer,void *queue) { (void)buffer; (void)queue; return moonbit_make_bytes(0,0); }
#endif
