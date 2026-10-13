#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{

    int v,cubo;

    setlocale(LC_ALL, "Portuguese");

    printf("Introduza um valor: ");
    scanf("%d",&v);

    cubo = v * v * v;

    printf("O cubo de %d e %d\n", v, cubo);

}
