#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int a,b;

    printf("Introduza dois números! \n");
    scanf("%d %d", &a, &b);
    system("cls");

    if (a > b)
        printf("O maior número é: %d",a);
    else if (b > a)
        printf("O maior número é: %d",b);

    else
        printf("ERRO!");

}
