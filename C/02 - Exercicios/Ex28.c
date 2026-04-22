// pedimos o valor em segundos e dizemos em minuto e os segundos que faltam por ex

#include <stdio.h>
#include <locale.h>
#include <string.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    char palavra[30];

    printf("\033[36mIntroduza uma string! \n");
    scanf("%s", &palavra);

    system("cls");

    printf("A palavra em maisculas é %s \n",strupr(palavra));

}
