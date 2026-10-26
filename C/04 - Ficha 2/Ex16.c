#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{

    char nome[50];


    setlocale(LC_ALL, "Portuguese");

    printf("Introduza o nome de uma cidade: ");
    scanf("%s",&nome);

    printf("O nome introduzido tem: %d",strlen(nome));
}
