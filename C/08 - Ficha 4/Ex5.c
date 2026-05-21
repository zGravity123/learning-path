#include <stdio.h>
#include <locale.h>

main()
{
    int numeros[10];
    int i, j, temp;

    setlocale(LC_ALL, "Portuguese");

    for (i = 0; i < 10; i++)
    {
        printf("Digite o %dº número: ", i + 1);
        scanf("%d", &numeros[i]);
    }

    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 9 - i; j++)
        {
            if (numeros[j] > numeros[j + 1]) /// se o número da esquerda for maior que o da direita, troca-os
            {
                temp = numeros[j]; /// guarda o valor de numeros[j]
                numeros[j] = numeros[j + 1]; /// coloca o valor maior (ou menor) na posição j
                numeros[j + 1] = temp; /// coloca o valor original de numeros[j] na posição j+1
            }
        }
    }

    printf("Vetor em ordem crescente: ");
    for (i = 0; i < 10; i++)
    {
        printf("%d ", numeros[i]);
    }
    printf("\n");
}
