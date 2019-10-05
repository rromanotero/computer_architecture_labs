# Lab 4 - ISA

### Objectives
Upon completion of this lab, the student will be able to:

1. Write assembly that uses arithmetic instructions, conditional branching, and loops.
2. Disassemble machine code that uses common instructions such as B, MOV, and ADD, and identify their opcode.

### Tasks
(src/solution.s contains empty subroutines)
1. (4 pts) Write the assembly routine \_solution_print_gcd
2. (2 pts) Go through the disassembly of \_solution_print_gcd (in output/kernel8.lss) and manually translate every instruction to binary. In the translation, highlight instruction's opcode.
3. (4 pts) Check [https://www.projecteuler.net/archives](Project Euler Archives), and solve any of the following problems: 1,2,3,4,5,6,7,9,10,12, and 14. Call the subroutine \_print_solution_euler_N, where N is the problem you're solving. Use .req to name variables for full marks.

NOTE:
    - You can verify your answers to Project Euler problems by signing in to Project Euler and submitting your answer.
    - For problem 12 you can do 160 divisors, since 500 may take too long to compute (feel free to do 500).
    - Opcode are in [ARM A64 Instruction Set Architecture](https://static.docs.arm.com/ddi0596/a/DDI_0596_ARM_a64_instruction_set_architecture.pdf)

HINT:
- Do not use x0-x18 to keep intermediate states of a computation. Use x19-x28. Why? When you do a function call (e.g. when you call uart_puthex_64_bits) registers may get modified (other functions need to use registers as well). The [http://infocenter.arm.com/help/topic/com.arm.doc.ihi0055b/IHI0055B_aapcs64.pdf](Procedure Call Standard for the AARCH64) (pg. 14 and 15) states that callee functions must preserve register x19-28. Meaning you can be sure that your register x21 will have the exact same content before and after a function call (it won't get corrupted).

- To print from assembly use:
```asm
mov x0, 7                     //uart_puthex_64_bits(7)
ldr x5, =uart_puthex_64_bits
blr x5

mov x0, '\n'                  //uart_putc('\n')
ldr x5, =uart_putc
blr x5

mov x0, '\r'                  //uart_putc('\r')
ldr x5, =uart_putc
blr x5
```
- Bare in mind that calling a subroutine with blr means the current ``return address" in x30 will get overwritten. So you will need to store it on subroutine entry and restore it on subroutine return like this:

```asm
.global _print_collatz
_print_collatz:
    str	x30, [sp, #-16]!     //push ret address

    // solution
    // here...

    ldr	x30, [sp], #16        //pop ret address
    blr x30                   //return
```

### Deliverables
1. A screenshot of the output from running your solution (matching the output from the solution sample below)
2. A screenshot of the translated binary of \_solution_gcd
2. arithmetic.s


### Resources on the WEB
- [ARM A64 Instruction Set Architecture](https://static.docs.arm.com/ddi0596/a/DDI_0596_ARM_a64_instruction_set_architecture.pdf)
- [The A64 Instruction Set](https://static.docs.arm.com/100898/0100/the_a64_Instruction_set_100898_0100.pdf)
- [ARMv8 A64 Quick Reference](https://courses.cs.washington.edu/courses/cse469/18wi/Materials/arm64.pdf)
- [ARM Architecture Reference Manual](https://static.docs.arm.com/ddi0487/ea/DDI0487E_a_armv8_arm.pdf?_ga=2.204759571.2043138464.1566012116-96909423.1563002005)


### Solution sample for this Lab
##### QEMU
```bash
qemu-system-aarch64 -M raspi3 -kernel .\4_ISA\output\kernel8.img -serial null -serial stdio
GCD(930,180):
000000000000001E
```
##### PI 3
  <img src="https://github.com/rromanotero/computer_architecture_labs/blob/master/4_ISA/images/lab_solution.png" width="300"/>
