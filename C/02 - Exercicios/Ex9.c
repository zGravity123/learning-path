#include <stdio.h>
#include <locale.h>


main()
{
    setlocale(LC_ALL, "Portuguese");

    int a;

    printf("Introduza um valor \n");
    scanf("%d",&a);

    printf("\n");
    printf("O caracter introduzido foi %d \n", a);
}

