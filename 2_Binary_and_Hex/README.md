# Lab 2 - Binary and Hexadecimal

### Objectives
Upon completion of this lab, the student shall be able to:

1. Use a64's MOV instruction
2. Use a handful of a64's instructions that operate at the bit level (LSL, CLZ, REV32, and BFI)
3. Write basic assembly routines that can be called from C code

### Tasks
1. (10 pts) Write the following assembly subroutines (src/bitwise.s contains empty subroutines):
   - \_bitwise_count_leading_zeroes_binary_64_bits
   - \_bitwise_repeat_byte_64_bits
   - \_bitwise_swap_endianness_64_bits
   - \_bitwise_two_power_nth_64_bits


   Note:
    - Investigating concepts (e.g. endianness) required to write the subroutines above are part of the lab.

    Hint:
    - Have a look at main.c as well as the sample output below, you can infer the subroutines above's behaviour from them
    - Use CLZ, REV32, BFI, and LSL (Look for them in the documents in Resources on the Web)
    - In general A64 instructions are similar, they take zero or more operands and do some operation with them. The notation used in ARM's documentation is as follows:

        - Xd---the destination register
        - Xn---the register holding the first operand
        - Operand2---a second operand, which can be an immediate value or a register.

        As example consider the Mov Immediate (Constant) instruction, which moves a 16-bit immediate value to a register. Documentation states:

                            MOV <Xd>, #<imm>
        So to move the immediate (constant) value of 7 to x0 we do:

                            mov x0, 7

     - blr x30 is used to "return" from a subroutine. This is possible since x30 contains
     the return address.
     - To "return a value" in a subroutine simply write the returned value to x0, by convention compiled C code will expect it to be there. Try it!
     - Documentation is difficult to read? Try plugging in values. See what happens!



### Deliverables
1. A screenshot of the output from running your solution (matching the output from the solution sample below)
2. bitwise.s


### Resources on the WEB
- [ARM A64 Instruction Set Architecture](https://static.docs.arm.com/ddi0596/a/DDI_0596_ARM_a64_instruction_set_architecture.pdf)
- (Section 2.5 and 2.6) [The A64 Instruction Set](https://static.docs.arm.com/100898/0100/the_a64_Instruction_set_100898_0100.pdf)
- [ARMv8 A64 Quick Reference](https://courses.cs.washington.edu/courses/cse469/18wi/Materials/arm64.pdf)
- [ARM Architecture Reference Manual](https://static.docs.arm.com/ddi0487/ea/DDI0487E_a_armv8_arm.pdf?_ga=2.204759571.2043138464.1566012116-96909423.1563002005)
- [Endianness](https://en.wikipedia.org/wiki/Endianness)
- [Endian representation of 64-bit values](https://stackoverflow.com/questions/21478765/endian-representation-of-64-bit-values)


### Solution sample for this Lab
##### QEMU
```bash
qemu-system-aarch64 -M raspi3 -kernel .\2_Binary_and_Hex\output\kernel8.img -serial null -serial stdio
Leading zeroes in (64-bit)1
000000000000003F

Hex Digit repeat 0x0A
A0A0A0A0A0A0A0A0

Swap endianness of 0x0102030405060708
0807060504030201

(2^32)-1
00000000FFFFFFFF
```
##### PI 3
  <img src="https://github.com/rromanotero/computer_architecture_labs/blob/master/2_Binary_and_Hex/images/lab2_solution.png" width="380"/>
