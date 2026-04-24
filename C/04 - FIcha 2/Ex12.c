#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{

    int i,v1,v2;

    setlocale(LC_ALL, "Portuguese");

    printf("Introduza dois valores: ");
    scanf("%d %d",&v1, &v2);

    printf("A divisão é: %0.2f",v1/(float)v2);
}
