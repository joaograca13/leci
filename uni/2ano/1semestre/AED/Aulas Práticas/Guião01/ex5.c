#include <stdio.h>
#include <math.h>

int main() {
    int limite;

printf("Quantos numeros queres na tabela? ");
scanf("%d", &limite);


// cabecalho
printf("Numero | Quadrado | Raiz Quadrada \n");
printf("------------------------------------\n");


    for (int i = 1; i <= limite; i++) {
        printf("%6d | %8d | %14.2f \n", i, i*i, sqrt(i));
    } 

return 0;

}