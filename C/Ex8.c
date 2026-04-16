#include <stdio.h>
#include <locale.h>


main()
{
    setlocale(LC_ALL, "Portuguese");

    char letra;

    printf("Introduza um caracter qualquer \n");
    scanf("%c",&letra);

    printf("\n");
    printf("O caracter introduzido foi %c \n", letra);
}

