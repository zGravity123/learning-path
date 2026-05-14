#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{
    char s[100];
    int num,i;
    FILE *fp;

    setlocale(LC_ALL, "Portuguese");
    printf("Introduza o Nome do Ficheiro: ");
    scanf("%s", s);

    system("cls");

    printf("Introduza um número: ");
    scanf("%d", &num);

    fp = fopen(s,"w");

    if (fp == NULL)
    {
        printf("Impossivel abrir o ficheiro \n");
        system("pause");
    }

    else
    {
        printf("Ficheiro aberto com sucesso \n");

        for (i = 0; i <= 10; i++)
        {
            fprintf(fp,"%d * %d = %d\n",num,i, num*i);
        }

            fclose(fp);
    }

}
