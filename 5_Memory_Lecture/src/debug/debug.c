

#include "debug.h"
#include "hal.h"

void debug( uint8_t* msg ){
    if( SYSTEM_DEBUG_ON == true ){
        hal_io_serial_puts( SerialA, "msg" );
    }
}
void debug_puthex_64_bits( uint64_t num ){
    if( SYSTEM_DEBUG_ON == true ){
        hal_io_serial_puthex_64_bits( SerialA, num );
    }
}
