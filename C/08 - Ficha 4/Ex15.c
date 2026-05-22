#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    char c;

    FILE *A = fopen("origem.txt", "r");
    FILE *B = fopen("destino.txt", "w");

    while (fscanf(A, "%c", &c) != EOF)
    {
        fprintf(B, "%c", c);
    }

    fclose(A);
    fclose(B);

    printf("Conteúdo copiado com sucesso \n");
}
