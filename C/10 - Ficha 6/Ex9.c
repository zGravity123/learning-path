#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{

    setlocale(LC_ALL,"Portuguese");
    int i;
    int valor[12];
    int maior = -999,menor = 9999;
    int posmaior = 0, posmenor = 0;

    for (i = 0; i < 15; i++)
    {
        printf("Valor #%d \n",i);
        printf("Introduza um valor:\n");
        scanf("%d",&valor[i]);

        if (valor[i] % 2 ==0)
            contpares ++;
        if (valor[i] % 2 ==0)
            contpares ++;
        else
            contimpares ++;


    }

    printf("O valor %d é o maior número e está na posição %d. \n",maior,posmaior);
    printf("O valor %d é o menor número e está na posição %d. \n",menor,posmenor);
}
