#include <stdio.h>

int main() {
    char nome[50];
    char apelido[50];

    printf("Qual o teu nome? ");
    scanf("%49s", nome);

    printf("Qual o teu apelido? ");
    scanf("%49s", apelido);

    
    printf("hello %s %s! \n", nome, apelido);

    return 0;
}