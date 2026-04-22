#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int a,b,c;

    printf("Introduza o valor A \n");
    scanf("%d",&a);
    system("cls");

    printf("Introduza o valor b \n");
    scanf("%d",&b);
    system("cls");

    printf("Introduza o valor C \n");
    scanf("%d",&c);
    system("cls");

    printf("\n");
    printf("A media ponderada dos 3 valores é: %.2f", (a*0.4) + (b*0.4) + (c*0.2) );

}
