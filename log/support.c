#include "generated.h"
MOONBIT_FFI_EXPORT void mb_log_write(moonbit_bytes_t tag,uint32_t level,uint32_t item,moonbit_bytes_t message,uint32_t line,moonbit_bytes_t file) {
    slog_func((char*)tag,level,item,(char*)message,line,(char*)file,NULL);
}
