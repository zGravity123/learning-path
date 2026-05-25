#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int numeros[8];
    int i, soma = 0, acima = 0;
    float media;

    for (i = 0; i < 8; i++)
    {
        printf("Introduza o número %d: ", i);
        scanf("%d", &numeros[i]);
        soma = soma + numeros[i];
    }

    media = soma /(float) 8;

    for (i = 0; i < 8; i++)
    {
        if (numeros[i] > media)
            acima = acima + 1;
    }

    printf("Média: %.2f\n", media);
    printf("Quantidade de valores acima da média: %d\n", acima);
}
