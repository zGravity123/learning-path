#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{

    int v1,v2, v3, maior, menor;

    setlocale(LC_ALL, "Portuguese");

    printf("Introduza dois valores: ");
    scanf("%d %d",&v1, &v2);

    maior = v1;
    menor = v1;

    if (v1 > maior)
     maior = v1;
     maior = v2;



    printf("A diferença é %d", maior - menor);

}
