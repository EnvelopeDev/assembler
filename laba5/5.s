    .text
    .globl _start

_start:
    li t0, 21

    #Выделение цифр
    li t1, 10
    div t2, t0, t1     #Десятки
    rem t3, t0, t1     #Единицы

    li t4, 1           #Произведение (начальное значение)
    li t5, 0           #Флаг наличия нечётных цифр

    #Проверка десятков 
    andi t6, t2, 1     #Проверка четности
    beq t6, zero, check_units
    mul t4, t4, t2     #t4 *= t2
    li t5, 1           #Есть нечётная цифра

check_units:
    # Проверка единиц
    andi t6, t3, 1     #Проверка четности
    beq t6, zero, finish
    mul t4, t4, t3     #t4 *= t3
    li t5, 1           #Есть нечётная цифра

finish:
    beq t5, zero, return_zero #Если нечётных цифр не было — вернуть 0

    #Иначе возвращаем произведение чисел
    mv a0, t4
    j exit

return_zero:
    li a0, 0

exit:
    li a7, 93          
    ecall