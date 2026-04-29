#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    char origem[50];

    printf("Introduza uma String \n");
    scanf("%s",&origem);

    printf("O resultado da função de Strlen é %d \n",strlen(origem)); // Conta os números
    printf("O resultado da função de Strlwr é %s \n",strlwr(origem)); // Deixa em minusculas
    printf("O resultado da função de Strupr é %s \n",strupr(origem)); // Deixa em maisuculas

    printf("\n");

}
