# Lab 3 - Logic Gates and Boolean Algebra

### Objectives
Upon completion of this lab, the student should be able to:

1. Write assembly programs with bitwise ARM instructions
2. Implement a HALF added with NAND gates

### Tasks
1. (8 pts) Write a program to verify de Morgan's Laws
1. (2 pts) Write a \_gates_nand subroutine, and use it to simulate a half adder

    Hint:
     - Use *.req*, it'll make your assembly writing simpler
         - *and x, y* is more intuitive than *and x4, x5*
     - Can't make sense of ARM documentation?
         - Test instructions, observe what they do.
         - Look for keywords in the documentation

### Deliverables
1. A screenshot of the output from running your solution (matching the output from the solution sample below)
2. de_morgan.s
3. gates.s

### Resources on the WEB
- [ARM A64 Instruction Set Architecture](https://static.docs.arm.com/ddi0596/a/DDI_0596_ARM_a64_instruction_set_architecture.pdf)
- [The A64 Instruction Set](https://static.docs.arm.com/100898/0100/the_a64_Instruction_set_100898_0100.pdf)
- [ARMv8 A64 Quick Reference](https://courses.cs.washington.edu/courses/cse469/18wi/Materials/arm64.pdf)

### Solution sample for this Lab
##### QEMU
```bash
qemu-system-aarch64 -M raspi3 -kernel .\3_Logic_Gates_and_Boolean_Algebra\output\kernel8.img -serial null -serial stdio
        x       |         y       |       (xy)'      |      x' + y'
-----------------------------------------------------------------------
0000000000000000  0000000000000000 | 0000000000000001 | 0000000000000001
0000000000000000  0000000000000001 | 0000000000000001 | 0000000000000001
0000000000000001  0000000000000000 | 0000000000000001 | 0000000000000001
0000000000000001  0000000000000001 | 0000000000000000 | 0000000000000000

        x       |         y       |       (x + y)'    |      x'y'
-------------------------------------------------------------------------
0000000000000000  0000000000000000 | 0000000000000001 | 0000000000000001
0000000000000000  0000000000000001 | 0000000000000000 | 0000000000000000
0000000000000001  0000000000000000 | 0000000000000000 | 0000000000000000
0000000000000001  0000000000000001 | 0000000000000000 | 0000000000000000

        x       |         y       |        sum       |      carry
-------------------------------------------------------------------------
0000000000000000  0000000000000000 | 0000000000000000 | 0000000000000000
0000000000000000  0000000000000001 | 0000000000000001 | 0000000000000000
0000000000000001  0000000000000000 | 0000000000000001 | 0000000000000000
0000000000000001  0000000000000001 | 0000000000000000 | 0000000000000001
```
##### PI 3
  <img src="https://github.com/rromanotero/computer_architecture_labs/blob/master/3_Logic_Gates_and_Boolean_Algebra/images/lab3_solution.png" width="720"/>
