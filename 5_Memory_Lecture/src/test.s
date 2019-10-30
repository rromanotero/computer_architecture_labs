.align 2
.section .text


.global _test
_test:
    /*
    *   Reading variables in AARCH64 Demo (Test)
    */

    //read var as a word
    ldr x0, =var
    ldr x1, [x0]

    //read var as a byte
    //ldr x0, =var
    //ldrb w1, [x0]

    //read another_var as a word
    //ldr x0, =another_var
    //ldr x1, [x0]

    //read another_var as a byte
    //ldr x0, =another_var
    //ldrb w1, [x0]

    //read a[0] as a word
    //ldr x0, =a
    //ldr x1, [x0] //x1 = b[0]

    //read a[1] as a word
    //ldr x0, =a
    //mov x1, 1  //Index
    //ldr x2, [x0, x1] //x1 = b[1]

    //read b[0] as a byte
    //ldr x0, =b
    //ldrb w1, [x0] //x1 = b[0]

    //read b[1] as a byte
    //ldr x0, =b
    //mov x1, 1
    //ldrb w1, [x0, x1] //x1 = b[0]

    //read my_string
    //ldr x0, =my_string
    //mov x1, 1
    //ldrb w1, [x0, x1]

    mov x0, x1
    br x30


.align 2
.section .data

var:
.word 7

another_var:
.word 0x11223344

a:
.word 1, 2, 3, 4 // array

b:
.byte 1, 2, 3, 4 // array

my_string:
.ascii "hello!"



//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

.align 2
.section .text

.global _test2
_test2:
    /*
    *   Writing to Memory Demo (Test2)
    */
    mov x0, 0                  //Counter
    ldr w1, =0xFF              //Red

    ldr x2, =0x3C100000        //fb

    //Can also grab the address from fb
    //(Actually it's better this way since fb  may change)
    //ldr x2, fb              //address where fb is. So x2=fb
    //ldr x2, [x2]            //address of fb.       So x2=*fb
loop:
    str w1, [x2], 4          //Pixel size is 400

    add x0, x0, 1
    cmp x0, 700
    ble loop

    mov x0, x2
    ret
