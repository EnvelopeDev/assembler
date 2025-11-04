#include "ripes_system.h"

#define W LED_MATRIX_0_WIDTH
#define H LED_MATRIX_0_HEIGHT
unsigned* led_base = LED_MATRIX_0_BASE;

void main() {
    //x=3, y: all and not y=4
    while (1) {
        for (int y = 0; y < H; y++) {
            for (int x = 0; x < W; x++) {
                unsigned idx = y * W + x;
                if(x==3 && y!=4){
                    *(led_base + idx) = 0xFFFF00;
                }
                else{
                    *(led_base + idx) = 0x00FF00;
                }
            }
        }
    }
}
