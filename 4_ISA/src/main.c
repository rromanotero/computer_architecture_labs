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

extern void _print_solution_euler_A(void);
extern void _print_solution_euler_B(void);
extern void _print_solution_euler_C(void);
extern void _print_solution_euler_D(void);

void main(){
    uart_init();

    uart_puts( "Answer to problem A:\n" );
    _print_solution_euler_A();
    uart_puts( "Answer to problem B:\n" );
    _print_solution_euler_B();
    uart_puts( "Answer to problem C:\n" );
    _print_solution_euler_C();
    uart_puts( "Answer to problem D:\n" );
    _print_solution_euler_D();

    while(1);
}
