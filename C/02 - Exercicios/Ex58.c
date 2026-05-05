#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{
    home:
    setlocale(LC_ALL, "Portuguese");

    int op;
    float n1, n2;

    printf("\n===== Menu de operações =====\n");
    printf("1: Somar dois números\n");
    printf("2: Subtrair dois números\n");
    printf("3: Multiplicar dois números\n");
    printf("4: Dividir dois números\n");
    printf("\n");
    printf("0 - Sair\n");
    printf("\n");
    printf("Selecione uma opção: ");
    scanf("%d", &op);

    switch(op)
    {

        case 1:

            printf("Digite dois números para somar: ");
            scanf("%f %f", &n1, &n2);

            printf("Soma: %.2f\n", n1 + n2);
            break;

        case 2:

            printf("Digite dois números para subtrair: ");
            scanf("%f %f", &n1, &n2);

            printf("Subtração: %.2f\n", n1 - n2); break;

        case 3:

            printf("Digite dois números para multiplicar: ");
            scanf("%f %f", &n1, &n2);

            printf("Multiplicação: %.2f\n", n1 * n2); break;

        case 4:

            printf("Digite dois números para dividir: ");
            scanf("%f %f", &n1, &n2);

            if (n2 != 0)
                printf("Divisão: %.2f\n", n1 / n2);
            else
                printf("Erro: divisão por zero!\n"); break;
    }

    goto home;
}
