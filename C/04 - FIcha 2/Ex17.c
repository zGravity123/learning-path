#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{

    int v1,v2;


    setlocale(LC_ALL, "Portuguese");

    printf("Introduza dois valores: ");
    scanf("%d %d",&v1, &v2);

    if (v1 != v2)
     printf("Os valores introduzidos são diferentes!");
    else
     printf("Os valores introduzidos são iguais!");
}
