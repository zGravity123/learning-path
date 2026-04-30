#include <stdio.h>

main()
{
    int classificacao;

    printf("Introduz uma classificacao de 1-4: ");
    scanf("%d", &classificacao);

    switch (classificacao)
    {
        case 1: printf("Fraco \n"); break;

        case 2: printf("Satisfatorio \n"); break;

        case 3: printf("Bom \n"); break;

        case 4: printf("Muito Bom \n"); break;

        default: printf("Valor invalido \n"); break;
    }
}
