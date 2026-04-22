#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int h,b;

    printf("Introduza a altura e base! \n");
    scanf("%d &d",&h, &b);
    system("cls");
    printf("A area do retangulo é: %d",b*h);

}
