#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int i;
    int valor[10];

    FILE *fp;
    fp = fopen("inteiros.txt", "r");

    for (i = 0; i < 10; i++)
    {
        fscanf(fp, "%d", &valor[i]);
        printf("%d\n", valor[i]);
    }

    fclose(fp);
}

