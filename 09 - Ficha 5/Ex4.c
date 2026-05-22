#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int numeros[20];
    int i, multiplos = 0, nao_multiplos = 0;

    for (i = 0; i < 20; i++)
    {
        printf("Introduza o número %d: ", i);
        scanf("%d", &numeros[i]);

        if (numeros[i] % 3 == 0)
            multiplos++;
        else
            nao_multiplos++;
    }

    system("cls");
    printf("Quantidade de números múltiplos de 3: %d\n", multiplos);
    printf("Quantidade de números não múltiplos de 3: %d\n", nao_multiplos);
}
