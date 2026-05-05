#include <stdio.h>
#include <locale.h>

main()
{
        setlocale(LC_ALL,"Portuguese");

        char s1[50], s2[50];

        printf("S1: \n");
        scanf("%s",&s1);

        printf("S2: \n");
        scanf("%s",&s2);

        int valor = strcmp(s1,s2);
        printf("Valor do STRCMP %d\n",valor);

        if (valor == 0)
            printf("São Iguais \n");
        else
            printf("São Diferentes \n");
}


