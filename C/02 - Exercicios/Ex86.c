#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int matriz[3][3];
    int i, j;

    printf("Introduza os valores para a matriz 3x3: ");
    for (i = 0; i < 3; i++) {
        for (j = 0; j < 3; j++) {
            system("cls");
            printf("Posição [%d][%d]: \n", i, j);
            scanf("%d", &matriz[i][j]);
        }
    }



    printf("Tabela original: \n \n");
    for (i = 0; i < 3; i++) {
        for (j = 0; j < 3; j++) {
            printf("%d\t", matriz[i][j]);
        }
        printf("\n");
    }



    printf("\n \<Tabela Invertida: \n \n");
    for (i = 0; i < 3; i++) {
        for (j = 0; j < 3; j++) {
            printf("%d\t", matriz[j][i]);
        }
        printf("\n");
    }
}
