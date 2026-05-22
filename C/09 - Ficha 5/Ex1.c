#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int numeros[15];
    int i, soma = 0;

    for (i = 0; i < 15; i++)
    {
        printf("Introduza o número %d: ", i);
        scanf("%d", &numeros[i]);
        soma = soma + numeros[i];
    }

    printf("A soma dos números introduzidos é: %d\n", soma);
}
