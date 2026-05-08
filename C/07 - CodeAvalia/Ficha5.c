#include <stdio.h>
#include <locale.h>

main()
{
    int h;
    float v;

    setlocale(LC_ALL, "Portuguese");

    printf("Introduza o número de horas em que esteve estacionado: ");
    scanf("%d", &h);

    if (h <= 2)
        v = h * 1.50;
    else if (h <= 5)
        v = h * 1.25;
    else
        v = h * 1.00;

    printf("Horas estacionadas: %d \n", h);
    printf("A pagar: %.2f euros \n", v);

    if (v > 5)
        printf("Cliente com estacionamento prolongado. \n");
}
