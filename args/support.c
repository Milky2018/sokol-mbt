#include "generated.h"
MOONBIT_FFI_EXPORT void mb_args_setup(mb_box *desc,moonbit_bytes_t *args) {
    sargs_desc d=*(sargs_desc*)desc->value;
    d.argc=Moonbit_array_length(args);
    d.argv=mb_malloc(sizeof(char*)*(size_t)(d.argc+1));
    for(int i=0;i<d.argc;i++) d.argv[i]=(char*)args[i];
    sargs_setup(&d); free(d.argv); mb_store(0,desc->arena);
}
