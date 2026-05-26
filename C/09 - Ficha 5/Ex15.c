#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    char linhas[100][256];
    int total_linhas = 0;
    FILE *origem;
    FILE *destino;

    origem = fopen("origem.txt", "r");

    while (fgets(linhas[total_linhas], sizeof(linhas[total_linhas]), origem) != NULL)
    {
        total_linhas++;
    }

    fclose(origem);

    destino = fopen("destino.txt", "w");

    int i;
    for (i = total_linhas - 1; i >= 0; i--)
    {
        fprintf(destino, "%s", linhas[i]);
    }

    fclose(destino);
}
