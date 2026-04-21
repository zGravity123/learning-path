// tres valores inteiros e no final dizemos a amplitude termica (max - m,in

#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int t1,t2,t3,max,min;

    printf("Insira o valor de 3 temperaturas (vlaor inteiro) \n");
    scanf("%d %d %d", &t1, &t2, &t3);

    system("cls");

    max = t1;
    min = t1;

    if (t1 > max)
        max = t1;
    if (t2 > max)
        max = t2;
    if (t3 > max)
        max = t3;

    if (t1 < min)
        min = t1;
    if (t2 < min)
        min = t2;
    if (t3 < min)
        min = t3;

    printf("A amplitude termica dos valores inseridos é: %0.2d", max - min);

}
