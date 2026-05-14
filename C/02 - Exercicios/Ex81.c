#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <time.h>

main()
{
    srand(time(NULL));

    char s[100];
    int i;
    FILE *fp;

    setlocale(LC_ALL, "Portuguese");
    printf("Introduza o Nome do Ficheiro: ");
    scanf("%s", s);

    system("cls");

    fp = fopen(s,"w");

    if (fp == NULL)
    {
        printf("Impossivel abrir o ficheiro \n");
        system("pause");
    }

    else
    {
        printf("Ficheiro aberto com sucesso \n");

        for (i = 1; i <= 100; i++)
        {
            fprintf(fp,"%d \n",rand() % 100);
        }

            fclose(fp);
    }

}
