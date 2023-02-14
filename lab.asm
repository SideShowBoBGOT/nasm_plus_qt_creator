bits 64

SYS_WRITE equ 1
STDOUT equ 1
NEW_LINE_CHARACTER equ 10

section .data
msg: db "Hello, World", NEW_LINE_CHARACTER, 0 ; length is 13
section .text
global asm_main
asm_main:
    xor rax, rax
    mov rax, SYS_WRITE
    mov rdi, STDOUT
    mov rsi, msg
    mov rdx, 13
    syscall
    ret
