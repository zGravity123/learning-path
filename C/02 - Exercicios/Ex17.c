#include <stdio.h>
#include <locale.h>

main ()
{
    setlocale(LC_ALL, "Portuguese");

    int b,h;

    printf("Introduza a base \n");
    scanf("%d",&b);
    system("cls");

    printf("Introduza a Altura \n");
    scanf("%d",&h);
    system("cls");

    printf("A area do triangulo é: %.2f", (b*h)/(float)2);
}
