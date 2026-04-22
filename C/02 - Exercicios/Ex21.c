#include <stdio.h>
#include <locale.h>

main ()
{
    setlocale(LC_ALL, "Portuguese");

    float v;

    printf("Introduza um valor \n");
    scanf("%f",&v);
    system("cls");

    printf("\n");

    if (v == 0)
        printf("O valor é zero");
    else if (v > 0)
        printf("O valor é positivo");
    else
        printf("O valor é negativo");

}
