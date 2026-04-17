#include <stdio.h>
#include <locale.h>

main ()
{
    setlocale(LC_ALL, "Portuguese");

    float trab,teste,med;

    printf("Introduza a nota do trabalho \n");
    scanf("%f",&trab);
    system("cls");

    printf("Introduza a nota do teste \n");
    scanf("%f",&teste);
    system("cls");

    med = (teste + trab)/(float)2;

    printf("\n");

    if (med >= 9.5)
        printf("Aprovado, a média é %.1f", med);
    else
        printf("Reprovado a média é %.1f", med);

}
