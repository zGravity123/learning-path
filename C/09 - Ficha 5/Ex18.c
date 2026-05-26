#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    FILE *fp;
    int ch;
    int tamanho = 0;

    fp = fopen("origem.txt", "r");

    while ((ch = fgetc(fp)) != EOF)
    {
        tamanho++;
    }

    fclose(fp);

    printf("Existem %d caracteres no arquivo \n", tamanho);
}
