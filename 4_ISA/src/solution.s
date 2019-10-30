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


    mov x19, 0
loop:
    mov x20, 7

    mov x21, x19
    udiv x19, x19, x20
    mul x19, x19, x20
    sub x19, x21, x19

    cmp x19, 0
    bne endif

    mov x0, x21           //uart_puthex_64_bits(x21)
    ldr x5, =uart_puthex_64_bits
    blr x5

    mov x0, '\n'
    ldr x5, =uart_putc    //uart_putc('\n')
    blr x5

endif:
    mov x19, x21
    add x19, x19, 1
    b loop





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
    mov x0, 8                     //uart_puthex_64_bits(8)
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
    mov x0, 9                     //uart_puthex_64_bits(9)
    ldr x5, =uart_puthex_64_bits
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

    //this prints a 10 + a newline (just an example)
    mov x0, 10                     //uart_puthex_64_bits(10)
    ldr x5, =uart_puthex_64_bits
    blr x5

    mov x0, '\n'                  //uart_putc('\n')
    ldr x5, =uart_putc
    blr x5



    ldr	x30, [sp], #16        //pop ret address
    blr x30                   //return
