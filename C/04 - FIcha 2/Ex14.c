#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{

    char v[50];


    setlocale(LC_ALL, "Portuguese");

    printf("Introduza um número: ");
    scanf("%s",&v);

    printf("O valor introduzido tem: %d",strlen(v));
}
