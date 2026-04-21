#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int a,b,c;
    float med;

    printf("Introduza três números! \n");
    scanf("%d %d %d", &a, &b, &c);
    system("cls");

    med = (a + b + c) /(float)3;

    printf("A media é: %.2f",med);

}
