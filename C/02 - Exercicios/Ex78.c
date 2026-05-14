#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{
    char s[100], s1[100] = "Sérgio Almeida";
    FILE *fp;

    setlocale(LC_ALL, "Portuguese");
    printf("Introduza o Nome do Ficheiro \n");
    scanf("%s",&s);

    fp = fopen(s,"r");

    int ch;

    while ((ch = fgetc(fp)) != EOF)
    {
        putchar(ch);
    }
    fclose(fp);

}
