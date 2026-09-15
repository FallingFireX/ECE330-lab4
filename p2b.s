// file: lab04p2b.s
// desc: lab04 p2b
// author: <your-names>

.global main
main:

.section .text

    push {r4,r5,r6,r7}

    ldr r4, =DS
    ldrb r5, [r4, #-4]
    ldr r6, [r4, #4]

all_done: nop

    pop {r4,r5,r6,r7}

    bx lr

.section .data
    .org 300
    .align 2, 0xaa

    .word 0xbbbbbbbb
B:  .byte 85

    .align 2, 0xaa
DS: .word ~0

    .align 2, 0xaa
W:  .word 287454020

    .word 0xeeeeeeee
.end
