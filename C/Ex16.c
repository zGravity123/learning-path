#include <stdio.h>
#include <locale.h>

main ()
{
    setlocale(LC_ALL, "Portuguese");

    int B,b,h;

    printf("Introduza a base maior \n");
    scanf("%d",&B);
    system("cls");

    printf("Introduza a base menor \n");
    scanf("%d",&b);
    system("cls");

    printf("Introduza a Altura \n");
    scanf("%d",&h);
    system("cls");

    printf("A area do trapezio é: %.2f", ((B * b) *h)/(float)2);
}
