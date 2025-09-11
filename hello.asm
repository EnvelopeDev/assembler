; hello.asm
section .data
    msg db  'Hello, world!', 0xA   ; Сообщение и символ перевода строки (0xA)
    len equ $ - msg               ; Длина сообщения

section .text
    global _start                 ; Точка входа для линковщика

_start:
    ; write(1, msg, len)
    mov eax, 4          ; номер системного вызова (sys_write)
    mov ebx, 1          ; файловый дескриптор (stdout)
    mov ecx, msg        ; адрес сообщения
    mov edx, len        ; длина сообщения
    int 0x80            ; вызов ядра

    ; exit(0)
    mov eax, 1          ; номер системного вызова (sys_exit)
    mov ebx, 0          ; код возврата
    int 0x80            ; вызов ядра