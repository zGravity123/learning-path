#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <ctype.h>

struct Carro {
    int ano;
    char combustivel;
};

main()
{
    setlocale(LC_ALL, "Portuguese");

    struct Carro carro[10];

    int g = 0, d = 0, e = 0, h = 0;

    for (int i = 0; i < 10; i++)
    {
        printf("Introduza o ano do carro: ");
        scanf("%d", &carro[i].ano);

        printf("Introduza o tipo de combustível do carro:\n");
        printf("G - Gásolio \nD - Diesel \nE - Elétrico \nH - Híbrido\n");
        scanf(" %c", &carro[i].combustivel);

        carro[i].combustivel = toupper(carro[i].combustivel);

        if (carro[i].combustivel == 'G')
        {
            printf("Carro %d: Gásolio\n");
            g ++;
        }

        else if (carro[i].combustivel == 'D')
        {
            printf("Carro %d: Diesel\n");
            d ++;
        }

        else if (carro[i].combustivel == 'E')
        {
            printf("Carro %d: Elétrico\n");
            e ++;
        }

        else if (carro[i].combustivel =='H')
        {
            printf("Carro %d: Híbrido\n");
            h ++;
        }

        else
            printf("Erro!\n");
    }

    printf(" ----- RESUMO ---- \n \n");
    printf("Gásolio: %d \n",g);
    printf("Diesel: %d \n",d);
    printf("Elétrico: %d \n",e);
    printf("Híbrido: %d \n \n",h);
    printf("Anos dos carros: ");

    for (int i = 0; i < 10; i++)
    {
        printf("%d | ",carro[i].ano);
    }


}
