/**
*   This file is part of os_labs
*   (https://github.com/rromanotero/os_labs).
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
#include "system.h"
#include "kprintf.h"

extern uint32_t _test(void);
extern void _test2(void);

extern uint32_t* fb;

void main(){

	system_init();

	kprintf( "Test returned: %d", _test() );
	_test2();

	//Draw some pixels red
	//for(uint32_t i=0; i<700; i++)
	//	*(fb + i) = 0x000000FF;

}

////////////////////////////////////////////////////////////////////
