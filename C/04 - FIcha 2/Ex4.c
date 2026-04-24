#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{

    int idade;
    char nome[20];

    setlocale(LC_ALL, "Portuguese");

    printf("Introduza o seu nome: ");
    scanf("%s",&nome);

    printf("Introduza a sua Idade: ");
    scanf("%d",&idade);

    printf("%s tem %d anos.",nome,idade);

}
