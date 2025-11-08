.section .text
.globl _start

_start:
    li a0, 0x10000000      # Адрес LED матрицы
    li t1, 0x00FF00        # Зеленый цвет
    li t2, 0xFFFF00        # Желтый цвет
    li a1, 64              # Всего пикселей (8x8 = 64)

init_loop:
    # Сначала заполняем всё зеленым
    sw t1, 0(a0)
    addi a0, a0, 4
    addi a1, a1, -1
    bnez a1, init_loop
    
    # Теперь рисуем желтую линию в столбце x=3, кроме y=4
    li a0, 0x10000000      # Сбрасываем адрес
    li a1, 0               # y counter
    
draw_line:
    li a2, 0               # x counter
pixel_loop:
    # Вычисляем адрес
    slli t3, a1, 5         # y * 32 (8*4)
    slli t4, a2, 2         # x * 4
    add t5, t3, t4
    add t6, a0, t5         # Адрес пикселя
    
    # Проверяем условие
    li t3, 3
    bne a2, t3, next_pixel
    li t3, 4
    beq a1, t3, next_pixel
    
    # x=3 и y!=4 - рисуем желтый
    sw t2, 0(t6)
    
next_pixel:
    addi a2, a2, 1
    li t3, 8
    blt a2, t3, pixel_loop
    
    addi a1, a1, 1
    li t3, 8
    blt a1, t3, draw_line
    
    # Бесконечный цикл
end:
    j end