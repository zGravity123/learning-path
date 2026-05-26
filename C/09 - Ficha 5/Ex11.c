#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int i;
    int valor[10];

    FILE *fp;
    fp = fopen("inteiros.txt", "w");

    for (i = 0; i < 10; i++)
    {
        printf("Valor %d: \n", i+1);
        printf("Introduza o valor: ");
        scanf("%d", &valor[i]);
        printf("\n");

        fprintf(fp, "%d\n", valor[i]);
    }

    fclose(fp);
}
