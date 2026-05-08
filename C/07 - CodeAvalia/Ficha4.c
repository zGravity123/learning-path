#include <stdio.h>
#include <locale.h>
#include <stdlib.h>


main()
{

    int cmensal;
    float custo;

    printf("Introduza o consumo mensal de energia em kWh (Valor inteiro): ");
    scanf("%d", &cmensal);

    if (cmensal <= 100)
      custo = cmensal * 0.15;
    else
      custo = (100 * 0.15) + ((cmensal - 100) * 0.35);

    printf("Custo Total: %0.2f Euros\n", custo);

}

