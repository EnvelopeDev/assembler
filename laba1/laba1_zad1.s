.global _start
.text
_start: add t1, x0, x0 # t1 = 0 + 0
addi t0, t1, 0x9 # additional immediate t0 = t1 + 9
ori t1, t0, 0x3 # t1 = t1 or 0x3 =
# = 00001001 xor 00000011 = 00001010 = 0A
srli t1, t1, 0x1 # shift right t1 = t1 >> 1 =
# 00001010 << 2 = 00101000
jal _start