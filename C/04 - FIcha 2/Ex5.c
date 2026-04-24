#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{

    int v1,v2, v3, maior, menor;

    setlocale(LC_ALL, "Portuguese");

    printf("Introduza tres valores: ");
    scanf("%d %d %d",&v1, &v2, &v3);

    if (v1 > maior)
     maior = v1;
    if (v2 > maior)
     maior = v2;
    if (v3 > maior)
     maior = v3;

    if (v1 < menor)
     menor = v1;
    if (v2 < menor)
     menor = v2;
    if (v3 < menor)
     menor = v3;

    printf("O maior número é %d e o menor é %d", maior, menor);

}
