// pedimos o valor em segundos e dizemos em minuto e os segundos que faltam por ex

#include <stdio.h>
#include <locale.h>
#include <string.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    char frase[500];

    printf("\033[36mIntroduza uma string! \n");
    scanf("%[^\n]s", &frase);

    system("cls");

    printf("A frase em maisculas é %s \n",strupr(frase));

}
