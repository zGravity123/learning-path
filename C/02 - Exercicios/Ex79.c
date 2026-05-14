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

    int c = 0,ch;

    while ((ch = fgetc(fp)) != EOF) // EOS = End of file (fim do ficheiro)
    {
       c++;

    }
    fclose(fp);
    printf("O ficheiro tem %d caracteres",c);

}
