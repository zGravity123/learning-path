// pedimos o valor em segundos e dizemos em minuto e os segundos que faltam por ex

#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    char estado;

    printf("\033[36mIntroduza o seu estado: \nS - Solteiro\nC - Casado\nV - Viuvo\nD - Divorciado \n");
    scanf("%c", &estado);

    system("cls");

    switch(estado)
    {
        case 'S':
        case 's': printf("Solteiro\n"); break;
        case 'C':
        case 'c': printf("Casado"); break;
        case 'V':
        case 'v': printf("Viuvo\n"); break;
        case 'D':
        case 'd': printf("Divorciado\n"); break;

        default: printf("\033[31m Erro 404! \033[0m \n");
    }
}
