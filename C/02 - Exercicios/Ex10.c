#include <stdio.h>
#include <locale.h>


main()
{
    setlocale(LC_ALL, "Portuguese");

    int a;
    int b;

    printf("Introduza o valor A \n");
    scanf("%d",&a);

    printf("Introduza o valor B \n");
    scanf("%d",&b);

    printf("\n");
    printf("A soma doi dois é: %d \n", a + b);
}

