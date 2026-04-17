#include <stdio.h>
#include <locale.h>


main()
{
    setlocale(LC_ALL, "Portuguese");

    int a,b;

    printf("Introduza o valor A \n");
    scanf("%d",&a);
    system("cls");

    printf("Introduza o valor B \n");
    scanf("%d",&b);
    system("cls");

    printf("\n");
    printf("O dobro do valor A: %d \n", a*2);
    printf("O quadrado do valor B: %d", b*b);
}

