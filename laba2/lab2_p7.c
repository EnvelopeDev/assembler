#include <stdio.h>

void print_binary(unsigned short n){
    printf("Binary: ");
    for(int i=15; i>=0; i--){
        printf("%d", (n >> i) & 1);
        if(i%4==0 && i!=0) printf(" ");
    }
    printf("\n");
}

void print_hex(unsigned short n){
    printf("Hexadecimal: 0x%04X\n", n);
}

int main(){
    unsigned short num;
    
    printf("Enter a number: ");
    scanf("%hu", &num);
    
    printf("Decimal: %hu\n", num);
    print_hex(num);
    print_binary(num);
    
    printf("Memory address: %p\n", (void*)&num);
    printf("Size: %zu bytes\n", sizeof(num));
    
    return 0;
}