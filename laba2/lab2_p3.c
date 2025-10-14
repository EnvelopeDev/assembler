#include <stdio.h>

int main() {
   unsigned short num;
   printf("Enter a number: ");
   scanf("%hu", &num);
   printf("\nYour number (unsigned short): %hu", num);
   return 0;
}
