#include <stdio.h>

int main() {

    int a[12] = {31,28,31,30,31,30,31,31,30,31,30,31};
    int i;
    
    printf("a:\n");

    for (i = 0; i < 12; i++) {
        printf("%d ", a[i]);
    }
    return 0;

}