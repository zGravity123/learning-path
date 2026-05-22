#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_CTYPE, "Portuguese");

    char c;
    int linhas = 0;

    FILE *f = fopen("produtos.txt", "r");

    while (fscanf(f, "%c", &c) != EOF)
    {
        if (c == '\n')
        {
            linhas++;
        }
    }

    fclose(f);

    printf("O ficheiro tem %d linhas \n", linhas);
}
