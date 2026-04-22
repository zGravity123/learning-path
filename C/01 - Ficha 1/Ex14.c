#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int v;

    printf("Introduza um valor! \n");
    scanf("%d",&v);
    system("cls");

    if (v > 0)
        printf("O valor inserido é positivo!");
    if (v == 0)
        printf("O valor inserido é Zero!");
    if (v < 0)
        printf("O valor inserido é negativo!");
}
