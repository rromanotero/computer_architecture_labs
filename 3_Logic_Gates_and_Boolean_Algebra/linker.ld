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

MEMORY
{
	ram : ORIGIN = 0x80000, LENGTH = 0x20000000 /* 512 MB */
}
__stack_size__ = DEFINED(__stack_size__) ? __stack_size__ : 0x3000; /* 12KB */

SECTIONS
{
		. = 0x80000;
		__start = .;

		.text : {
				__text_start = .;
				KEEP(*(.boot))
				*(.text)
				__text_end = .;
		} > ram

		.data :
		{
				. = ALIGN(4);
				__data_start = .;
				*(.data)
				__data_end = .;
		} > ram

		.bss (NOLOAD):
		{
			 . = ALIGN(4);
				__bss_start = .;
				*(.bss)
				__bss_end = .;
		} > ram

		.rodata : {
				. = ALIGN(4);
				__rodata_start = .;
				*(.rodata)
				__rodata_end = .;
		} > ram

		.stack (NOLOAD):
      {
          . = ALIGN(8);
          __stack_start = .;
          . = . + __stack_size__;
          __stack_end = .;
      } > ram

		/DISCARD/ : { *(.comment) *(.gnu*) *(.note*) *(.eh_frame*) }
}

__bss_size = (__bss_end - __bss_start)>>3;
