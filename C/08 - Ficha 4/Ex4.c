#include <stdio.h>
#include <locale.h>

main()
{
    int numeros[15];
    int pares = 0, impares = 0;

    setlocale(lC_ALL,"Portuguese");

    for (int i = 0; i < 15; i++)
    {
        printf("Digite o %dº número: ", i + 1);
        scanf("%d", &numeros[i]);
    }

    for (int i = 0; i < 15; i++)
    {
        if (numeros[i] % 2 == 0)
            pares++;
        else
            impares++;
    }

    printf("Quantidade de números pares: %d\n", pares);
    printf("Quantidade de números ímpares: %d\n", impares);
}
