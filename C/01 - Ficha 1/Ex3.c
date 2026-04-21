#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int a,b;

    printf("Introduza dois números! \n");
    scanf("%d %d", &a, &b);
    system("cls");
    printf("A soma é: %d",a+b);

}
