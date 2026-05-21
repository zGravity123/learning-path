#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int num[10];
    int i;

    FILE *f = fopen("numeros.txt", "w");

    for (i = 0; i < 10; i++)
    {
        printf("Introduza o valor %d: ",i);
        scanf("%d",&num[i]);

        fprintf(f, "%d\n", num[i]);
    }

    system("cls");
    fclose(f);
}
