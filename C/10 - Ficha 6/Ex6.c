#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int numeros[10];
    int soma = 0;

    for (int i = 0; i < 10; i++)
    {
        printf("Número %d: \n", i);
        printf("Introduza o valor: ");
        scanf("%d", &numeros[i]);
        printf("\n");
    }

    for (int i = 0; i < 10; i++)
        soma = soma + numeros[i];

    printf("A soma dos números é: %d\n", soma);
}
