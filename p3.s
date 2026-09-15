// file: lab04p3.s
// desc: lab04 p3
// author: <your-names>

.global main
main:
.section .text
    push    {r4, r5, r6, r7, lr}    // Save registers to follow calling convention
    
    ldr     r4, =DS              
    ldrb    r5, [r4, #(A - DS)]   
    ldrh    r6, [r4, #(B - DS)]    
    add     r7, r5, r6              
    str     r7, [r4, #(C - DS)]     
    
    pop     {r4, r5, r6, r7, pc}

.section .data
.org 234
.align 2, 0xa5

DS: .word 0xbbbbbbbb

A:  .byte 123

    .align 1, 0xa5
B:  .short 47587

    .align 2, 0xa5
C:  .word ~0

    .align 3, 0xa5
    .word 0xeeeeeeee
