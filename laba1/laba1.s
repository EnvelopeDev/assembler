.global _start
.text
_start:
addi a0, x0, 1 # file descriptor = 1
la a1, strHello1 # buffer
addi a2, x0, 51 # size
addi a7, x0, 64 # syscall write (64)
ecall

addi a0, x0, 1 # file descriptor = 1
la a1, strHello2 # buffer
addi a2, x0, 51 # size
addi a7, x0, 64 # syscall write (64)
ecall

addi a0, x0, 1 # file descriptor = 1
la a1, strHello3 # buffer
addi a2, x0, 51 # size
addi a7, x0, 64 # syscall write (64)
ecall

addi a0, x0, 15 # exit code
addi a7, x0, 93 # syscall exit
ecall
.data
strHello1: .asciz "Hello, I am Gushchin K. D. from team 3!!!!!!!!!!!\n"
strHello2: .asciz "Hello, I am Ustinov V. A. from team 3!!!!!!!!!!!\n"
strHello3: .asciz "Hello, I am Parlakach Y. from team 3!!!!!!!!!!!\n"