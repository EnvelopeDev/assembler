#include "ripes_system.h"

// Используем реальные размеры из заголовочного файла
#define W LED_MATRIX_0_WIDTH  // 7
#define H LED_MATRIX_0_HEIGHT // 6
unsigned* led_base = LED_MATRIX_0_BASE;

void main() {
    while (1) {
        for (int y = 0; y < H; y++) {
            for (int x = 0; x < W; x++) {
                unsigned idx = y * W + x;
                
                // Символ "!" для матрицы 7x6
                // Центр по x = 3 (ширина 7)
                if((x == 3 && y >= 0 && y <= 3) ||  // Вертикальная палочка
                   (x == 3 && y == 5)) {            // Точка внизу
                    *(led_base + idx) = 0xFFFF00;   // Желтый
                }
                else {
                    *(led_base + idx) = 0x00FF00;   // Зеленый фон
                }
            }
        }
    }
}