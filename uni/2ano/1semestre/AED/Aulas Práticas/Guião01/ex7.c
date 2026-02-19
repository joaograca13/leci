#include <stdio.h>

int main() {
    char frase[100];

    printf("Qual e o teu nome? ");
    fgets(frase, sizeof(frase), stdin);

    printf("Ola %s", frase);
    return 0;

}
