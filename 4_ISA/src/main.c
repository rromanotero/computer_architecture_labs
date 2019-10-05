/**
*   This file is part of computer_architecture_labs
*   (https://github.com/rromanotero/computer_architecture_labs).
*
*   Copyright (c) 2019 Rafael Roman Otero.
*
*   This program is free software: you can redistribute it and/or modify
*   it under the terms of the GNU General Public License as published by
*   the Free Software Foundation, either version 3 of the License, or
*   (at your option) any later version.
*
*   This program is distributed in the hope that it will be useful,
*   but WITHOUT ANY WARRANTY; without even the implied warranty of
*   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*   GNU General Public License for more details.
*
*   You should have received a copy of the GNU General Public License
*   along with this program.  If not, see <https://www.gnu.org/licenses/>.
*
**/

#include <stdint.h>
#include "uart.h"

extern uint64_t _test(uint32_t);
extern void _arithmetic_print_collatz_sequence( uint64_t );
extern uint64_t _arithmetic_gcd( uint64_t, uint64_t );

void main(){
    uart_init();

    uint64_t next_triangle=0;
    uint64_t count=0;
    uint64_t num_of_divs=0;
    while(1){
        next_triangle+=count;

        num_of_divs=0;
        for(uint64_t i=1; i<=next_triangle; i++){
            if( (next_triangle) % i == 0 )
                num_of_divs++;
        }

         if( num_of_divs>=190 ){
            uart_puthex_64_bits( next_triangle );
            uart_puts( "\n" );
            uart_puthex_64_bits( num_of_divs );
            uart_puts( "\n" );
        }
        if(num_of_divs>=500){
            break;
        }


        count++;
    }



    uart_puts( "GCD(930,180):\n" );
    uart_puthex_64_bits( _arithmetic_gcd(930,180) );

    uart_puts( "\n\nCollatz Sequence for 21:\n" );
    _arithmetic_print_collatz_sequence(21);

    //Echo back everything
    while(1) uart_putc( uart_getc() );
}
