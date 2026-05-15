#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int consumo[8];
    int i, maior = 0, dmaior = 0, acdias = 0;
    int ctotal = 0;
    float med;

    for (i = 1; i <= 7; i++)
    {
        printf("Introduza o consumo de água (L) do dia %d: ",i);
        scanf("%d", &consumo[i]);

        ctotal = ctotal + consumo[i];

        if (consumo[i] > maior)
        {
            maior = consumo[i];
            dmaior = i;
        }
    }



    med = ctotal /(float) 7;



    for (i = 0; i <= 7; i++)
    {
        if (consumo[i] > med)
            acdias++;
    }

    printf("\nConsumo total: %d L\n", ctotal);
    printf("Media diária: %.2f L\n", med);
    printf("Maior consumo: %d L\n", maior);
    printf("Dia do maior consumo: %d\n", dmaior);
    printf("Dias acima da media: %d\n", acdias);

}
