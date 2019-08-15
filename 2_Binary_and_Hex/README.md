# Lab 2 - Binary and Hexadecimal

### Objectives
Upon completion of this lab, the student shall be able to:

1. Use a64's MOV instruction
2. Use a handful of a64's instructions that operate at the bit level (LSL, CLZ, REV32, and BFI)
3. Write basic assembly routines that can be called from C code

### Tasks
1. (10 pts) Write the following assembly routines:
   (src/bitwise.s contains empty subroutines)
   - \_bitwise_count_leading_zeroes_binary_64_bits
   - \_bitwise_repeat_byte_64_bits
   - \_bitwise_swap_endianness_64_bits   
   - \_bitwise_two_power_nth_64_bits
    
    Hint: Use LSL, CLZ, REV32, and BFI.

### Deliverables
1. A screenshot of the output from running your solution to this lab


### Resources on the WEB
- (Section 2.5 and 2.6) [The A64 Instruction Set](https://static.docs.arm.com/100898/0100/the_a64_Instruction_set_100898_0100.pdf)
- [Thumb-2 Instruction Set](http://infocenter.arm.com/help/topic/com.arm.doc.qrc0001m/QRC0001_UAL.pdf)
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
  <img src="https://github.com/rromanotero/computer_architecture_labs/blob/master/1_Hello_World/images/lab2_solution.png" width="380"/>
