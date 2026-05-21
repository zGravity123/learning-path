#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int num[10];
    int i;

    FILE *f = fopen("numeros.txt", "r");

    for (i = 0; i < 10; i++)
    {
        fscanf(f, "%d", &num[i]);
        printf("%d\n", num[i]);
    }

    fclose(f);
}
