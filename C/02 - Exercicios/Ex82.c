#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <unistd.h>

main()
{
    char s[50];
    FILE *fp;

    setlocale(LC_ALL, "Portuguese");
    printf("Introduza o Nome do Ficheiro: ");
    scanf("%s", s);

    system("cls");

    fp = fopen(s,"r");

    int soma = 0; int num = 0;

    while (fgetc(fp) != EOF)
    {
            fscanf(fp,"%d",&num);
            soma = soma + num;
    }

    fclose(fp);
    printf("Vai entrar o sleep \n");
    sleep(2);
    printf("Soma dos valores é %d \n",soma);
    printf("Média dos valores é %.2f \n",soma/(float)100);

}
