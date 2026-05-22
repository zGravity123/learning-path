#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int numeros[10];
    int i;
    int maior = -99999, segundo_maior = -99999;
    int menor = 99999, segundo_menor = 99999;

    for (i = 0; i < 10; i++)
    {
        printf("Introduza o número %d: ", i);
        scanf("%d", &numeros[i]);

        if (numeros[i] > maior)
        {
            segundo_maior = maior;
            maior = numeros[i];
        }

        else if (numeros[i] > segundo_maior)
            segundo_maior = numeros[i];

        if (numeros[i] < menor)
        {
            segundo_menor = menor;
            menor = numeros[i];
        }

        else if (numeros[i] < segundo_menor)
            segundo_menor = numeros[i];
    }

    printf("O segundo menor valor é: %d\n", segundo_menor);
    printf("O segundo maior valor é: %d\n", segundo_maior);
}
