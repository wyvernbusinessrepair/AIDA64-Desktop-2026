section .data
    title db "System Report", 10
    title_len equ $ - title

    cpu_msg db "Processor information available", 10
    cpu_len equ $ - cpu_msg

    done_msg db "Report completed", 10
    done_len equ $ - done_msg

section .text
    global _start

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, title
    mov rdx, title_len
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, cpu_msg
    mov rdx, cpu_len
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, done_msg
    mov rdx, done_len
    syscall

    mov rax, 60
    xor rdi, rdi
    syscall