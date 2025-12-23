global main
extern ExitProcess

section .text
main:
    xor rcx, rcx        ; exit code 0
    call ExitProcess
