// pedimos o valor em segundos e dizemos em minuto e os segundos que faltam por ex

#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int dia;

    printf("\033[36mIntroduza o dia em número \n");
    scanf("%d", &dia);

    system("cls");

    switch(dia)
    {
        case 1: printf("Domingo\n"); break;
        case 2: printf("Segunda-Feira"); break;
        case 3: printf("Terça-Feira\n"); break;
        case 4: printf("Quarta-Feira\n"); break;
        case 5: printf("Quinta-Feira\n"); break;
        case 6: printf("Sexta-Feira\n"); break;
        case 7: printf("Sábado\n"); break;

        default: printf("\033[31m Dia Invalido! \033[0m \n");
    }
}
