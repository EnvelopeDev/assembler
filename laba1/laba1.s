.global _start
.text
_start:
addi a0, x0, 1 # file descriptor = 1
la a1, strHello # buffer
addi a2, x0, 15 # size
addi a7, x0, 64 # syscall write (64)
ecall
addi a0, x0, 0 # exit code
addi a7, x0, 93 # syscall exit
ecall
.data
strHello1: .asciz "Hello, Gushchin K. D. from team 3!!!!!!!!!!!\n"
strHello2: .asciz "Hello, Ustinov V. A. from team 3!!!!!!!!!!!\n"
strHello3: .asciz "Hello, Parlakach Y. from team 3!!!!!!!!!!!\n\n"