#include <stdio.h>
#include <math.h>
#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif

int main() {
    int limite = 359;


// cabecalho
printf("    ang  sin(ang)   cos(ang) \n");
printf("    ---  ---------  -----------\n");


    for (int i = 0; i <= limite; i++) {
        double rad = i * M_PI / 180.0;
        printf("%6d | %8.4f | %6.4f\n", i, sin(rad), cos(rad));
    }

return 0;

}



