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

extern uint64_t _de_morgan_not_PAREN_xy_PAREN( uint64_t, uint64_t );
extern uint64_t _de_morgan_not_x_or_not_y( uint64_t, uint64_t );
extern uint64_t _de_morgan_not_PAREN_x_or_y_PAREN( uint64_t, uint64_t );
extern uint64_t _de_morgan_not_x_not_y( uint64_t, uint64_t );
extern uint64_t _gates_nand( uint64_t, uint64_t );

void print_line_de_morgan_first_law( uint64_t, uint64_t );
void print_line_de_morgan_second_law( uint64_t, uint64_t );
void print_line_half_adder( uint64_t, uint64_t );

void main(){
    uart_init();

    uart_puts( "         x       |         y       |       (xy)'      |      x' + y'    \n" );
    uart_puts( "-----------------------------------------------------------------------\n" );
    for( uint8_t x = 0; x<2; x++){
        for( uint8_t y = 0; y<2; y++)
            print_line_de_morgan_first_law( x, y );
    }


    uart_puts( "\n         x       |         y       |       (x + y)'    |      x'y'    \n" );
    uart_puts( "-------------------------------------------------------------------------\n" );
    for( uint8_t x = 0; x<2; x++){
      for( uint8_t y = 0; y<2; y++)
          print_line_de_morgan_second_law( x, y );
    }

    uart_puts( "\n         x       |         y       |        sum       |      carry    \n" );
    uart_puts( "-------------------------------------------------------------------------\n" );
    for( uint8_t x = 0; x<2; x++){
        for( uint8_t y = 0; y<2; y++)
            print_line_half_adder( x, y );
    }


    //Echo back everything
    while(1) uart_putc( uart_getc() );
}

void print_line_de_morgan_first_law( uint64_t x, uint64_t y){
    uart_puthex_64_bits(x);
    uart_puts( "  " );
    uart_puthex_64_bits(y);
    uart_puts( " | " );
    uart_puthex_64_bits( _de_morgan_not_PAREN_xy_PAREN(x,y) );
    uart_puts( " | " );
    uart_puthex_64_bits( _de_morgan_not_x_or_not_y(x,y) );
    uart_puts( "\n" );
}

void print_line_de_morgan_second_law( uint64_t x, uint64_t y){
    uart_puthex_64_bits(x);
    uart_puts( "  " );
    uart_puthex_64_bits(y);
    uart_puts( " | " );
    uart_puthex_64_bits( _de_morgan_not_PAREN_x_or_y_PAREN(x,y) );
    uart_puts( " | " );
    uart_puthex_64_bits( _de_morgan_not_x_not_y(x,y) );
    uart_puts( "\n" );
}

void print_line_half_adder( uint64_t x, uint64_t y){
    uint64_t(*_nand)(uint64_t,uint64_t);
    _nand = _gates_nand;

    uint64_t sum = 0;     //solution goes here: _nand( _nand( ... )
    uint64_t carry = 0;   //solution goes here: _nand( _nand( ... )

    uart_puthex_64_bits(x);
    uart_puts( "  " );
    uart_puthex_64_bits(y);
    uart_puts( " | " );
    uart_puthex_64_bits( sum );
    uart_puts( " | " );
    uart_puthex_64_bits( carry );
    uart_puts( "\n" );
}
