#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    float temp;

    printf("Introduza uma temperatura (C*)! \n");
    scanf("%f",&temp);
    system("cls");

    printf("Convertido em Fahrenheit = %.2f", (temp * 1.8) + 32);

}
