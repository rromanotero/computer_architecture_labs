.section ".text"
.align 2


/*
*
*   Print Solution Euler Problem A
*
*/
.global _print_solution_euler_A
_print_solution_euler_A:
    str	x30, [sp, #-16]!     //push ret address


    // solution
    // here
    // ...

    //this prints a 7 + a newline (just an example)
    mov x0, 7                     //uart_puthex_64_bits(7)
    ldr x5, =uart_puthex_64_bits
    blr x5

    mov x0, '\n'                  //uart_putc('\n')
    ldr x5, =uart_putc
    blr x5


    ldr	x30, [sp], #16        //pop ret address
    blr x30                   //return


/*
*
*   Print Solution Euler Problem B
*
*/
.global _print_solution_euler_B
_print_solution_euler_B:
    str	x30, [sp, #-16]!     //push ret address


    // solution
    // here
    // ...

    //this prints an 8 + a newline (just an example)
    mov x0, 8                     //uart_puthex_64_bits(7)
    ldr x5, =uart_puthex_64_bits
    blr x5

    mov x0, '\n'                  //uart_putc('\n')
    ldr x5, =uart_putc
    blr x5



    ldr	x30, [sp], #16        //pop ret address
    blr x30                   //return



/*
*
*   Print Solution Euler Problem C
*
*/
.global _print_solution_euler_C
_print_solution_euler_C:
    str	x30, [sp, #-16]!     //push ret address


    // solution
    // here
    // ...

    //this prints a 9 + a newline (just an example)
    mov x0, 'y'                     //uart_putc('y')
    ldr x5, =uart_putc
    blr x5

    mov x0, '\n'                  //uart_putc('\n')
    ldr x5, =uart_putc
    blr x5


    ldr	x30, [sp], #16        //pop ret address
    blr x30                   //return




/*
*
*   Print Solution Euler Problem D
*
*/
.global _print_solution_euler_D
_print_solution_euler_D:
    str	x30, [sp, #-16]!     //push ret address


    // solution
    // here
    // ...

    //this prints a 'w' + a newline (just an example)
    mov x0, 'w'                    //uart_putc('w')
    ldr x5, =uart_putc
    blr x5

    mov x0, '\n'                  //uart_putc('\n')
    ldr x5, =uart_putc
    blr x5



    ldr	x30, [sp], #16        //pop ret address
    blr x30                   //return
