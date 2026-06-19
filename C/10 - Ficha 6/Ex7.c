#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    float temperaturas[7];
    float soma = 0;
    float media;

    for (int i = 0; i < 7; i++)
    {
        printf("Temperatura %d: \n", i);
        printf("Introduza o valor: ");
        scanf("%f", &temperaturas[i]);
        printf("\n");
    }

    for (int i = 0; i < 7; i++)
        soma = soma + temperaturas[i];

    media = soma / (float)7;

    printf("--- Temperaturas Introduzidas ---\n");
    for (int i = 0; i < 7; i++)
        printf("Dia %d: %.2f\n", i, temperaturas[i]);

    printf("\nA temperatura média da semana é: %.2f\n", media);
}
