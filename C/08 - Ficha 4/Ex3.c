#include <stdio.h>

main()
{
    int numeros[10];
    int maior, menor;

    for (int i = 0; i < 10; i++)
    {
        printf("Digite o número %d: ", i + 1);
        scanf("%d", &numeros[i]);
    }

    maior = numeros[0];
    menor = numeros[0];

    for (int i = 1; i < 10; i++)
    {
        if (numeros[i] > maior)
            maior = numeros[i];
        if (numeros[i] < menor)
            menor = numeros[i];
    }

    printf("O maior número é: %d\n", maior);
    printf("O menor número é: %d\n", menor);
}
