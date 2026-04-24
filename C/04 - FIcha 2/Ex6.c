#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{

    int v1,v2;

    setlocale(LC_ALL, "Portuguese");

    printf("Introduza um valor: ");
    scanf("%d",&v1);

    if (v1 % 5 == 0)
     printf("O  número \"%d\" é multiplo por 3\n");
    else
     printf("O  número não é multiplo por 3\n");

}
