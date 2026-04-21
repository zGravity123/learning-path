// pedimos o valor em segundos e dizemos em minuto e os segundos que faltam por ex

#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int segundos;

    printf("Introduza o valor em segundos \n");
    scanf("%d", &segundos);

    system("cls");

    printf("O valor em minutos é %.2f", segundos/(float)60);
}
