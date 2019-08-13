# Computer Architecture Labs
Computer Architecture Labs for the Raspberry PI

The PI3's CPU Cortex A53 implementes a ARMv8 architecture. To keep backwards
CODE compatibility with ARMv6M, ARMv6A, ARMv7M, ARMv7A these labs use
16-bit Thumb instructions. So while other architectures details will differ,
instructions should be able to run on any device ranging from ARMv6M/A (e.g
Raspberry PI Zero and Cortex M0 devices) to ARMv8A (e.g. Raspberry PI 3 in
32-bit mode).

Moreover, the purpose of these labs is instructional. 16-bit Thumb is simpler
than other more complex instructions sets to it lends itself for teaching purposes.
That is also why we use O0 optimization (so compiled code is easier inspected).

The ARMv6-M instruction set comprises:

- All of the 16-bit Thumb instructions from ARMv7-M excluding CBZ, CBNZ and IT
- The 32-bit Thumb instructions BL, DMB, DSB, ISB, MRS and MSR.

So we can use all 16-bit Thumb instructions, minus CBZ, CBNZ, and IT. In addition
to BL, DMB, DSB, ISB, MRS and MSR. This is all specified here in more detail in the [ARMv6M Reference Manual](https://static.docs.arm.com/ddi0419/d/DDI0419D_armv6m_arm.pdf).

## Resources

We'll be building on these repos:
https://github.com/bztsrc/raspi3-tutorial
https://github.com/mmuszkow/NoOsBootstrap/tree/master/arm
https://github.com/PeterLemon/RaspberryPi
https://github.com/LdB-ECM/Raspberry-Pi/tree/master/SD_FAT32



Sometimes 16-bit Thumb is referred to as Thumb-1, while the "complete" Thumb that
include both 16-bit and 32-bit is referred to as Thumb-2. This causes a lot of
confusion. Throughout these labs I refer to both Thumb-2 and Thumb-1 simply as Thumb,
and make the distinction where necessary of either 16-bit or 32-bit instructions.

To compile for 16-bit thumb on the PI3 one has to use the flag -mthumb:

arm-none-eabi-gcc -mthumb

As per documentation, this uses Thumb both 16- and 32-bit.

Some clarification [Here](https://stackoverflow.com/questions/28669905/what-is-the-difference-between-the-arm-thumb-and-thumb-2-instruction-encodings)

Lastly, the hardware FPU is not available for 16-bit Thumb instructions. So we use


arm-none-eabi-gcc mfloat-abi=soft
