#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    float numeros[12];
    int i;
    float soma = 0, med;

    for (i = 0; i < 12; i++)
    {
        printf("Introduza o número %d: ", i);
        scanf("%f", &numeros[i]);
        soma = soma + numeros[i];
    }

    med = soma / 12;

    printf("A méed dos números introduzidos é: %.2f\n", med);
}
