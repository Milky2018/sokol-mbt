#include "bindings.inc.h"
MOONBIT_FFI_EXPORT void mb_args_setup(sargs_desc *desc, moonbit_bytes_t *args) {
    sargs_desc d = *desc;
    d.argc = Moonbit_array_length(args);
    d.argv = mb_malloc(sizeof(char *) * (size_t)(d.argc + 1));
    for (int i = 0; i < d.argc; i++) {
        d.argv[i] = (char *)args[i];
    }
    sargs_setup(&d);
    free(d.argv);
}
