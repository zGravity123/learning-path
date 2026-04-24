#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{

    float peso,altura;


    setlocale(LC_ALL, "Portuguese");

    printf("Introduza o peso: ");
    scanf("%f",&peso);

    printf("Introduza a altura: ");
    scanf("%f",&altura);

    printf("O IMC é: %0.2f",peso/(altura * altura));

}
