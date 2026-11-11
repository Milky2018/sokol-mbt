#include "bindings.inc.h"
MOONBIT_FFI_EXPORT int32_t mb_audio_push(float *samples) {
    int channels = saudio_channels();
    int n = Moonbit_array_length(samples);
    if (channels <= 0 || n % channels) {
        abort();
    }
    return saudio_push(samples, n / channels);
}
MOONBIT_FFI_EXPORT int32_t mb_audio_headless(void) {
#ifdef SOKOL_DUMMY_BACKEND
    return 1;
#else
    return 0;
#endif
}
