#include <moonbit.h>
#include <stdint.h>
static int32_t live_probes;
static void probe_finalize(void *object) {
    (void)object;
    live_probes--;
}
MOONBIT_FFI_EXPORT void *mb_test_probe_new(void) {
    live_probes++;
    return moonbit_make_external_object(probe_finalize, sizeof(int32_t));
}
MOONBIT_FFI_EXPORT void mb_test_probe_touch(void *probe) {
    volatile int32_t marker = *(int32_t *)probe;
    (void)marker;
}
MOONBIT_FFI_EXPORT int32_t mb_test_probe_live(void) {
    return live_probes;
}

#include "../../native/sokol_fetch.h"
static uint8_t response_data[] = {1, 2, 3, 4};
static sfetch_response_t response_fixture;
MOONBIT_FFI_EXPORT void *mb_test_response_fixture(int32_t empty) {
    response_fixture = (sfetch_response_t){0};
    response_fixture.path = "fixture";
    response_fixture.buffer = (sfetch_range_t){response_data, empty ? 0 : 4};
    response_fixture.data = (sfetch_range_t){response_data + (empty ? 0 : 1), empty ? 0 : 2};
    return &response_fixture;
}
