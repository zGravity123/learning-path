// pedimos o valor em segundos e dizemos em minuto e os segundos que faltam por ex

#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int segundos,min,resto;

    printf("\033[36mIntroduza o valor em segundos \n");
    scanf("%d", &segundos);

    system("cls");

    min = segundos/(float)60;
    resto = segundos%60;

    printf("O valor convertido possui %d minutos e %d segundos!\n %.2", min,resto);
}
