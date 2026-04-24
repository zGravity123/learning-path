#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{

    int v1,v2;

    setlocale(LC_ALL, "Portuguese");

    printf("Introduza um valor: ");
    scanf("%d",&v1);

    printf("O dobro do número \"%d\" é \n", v1, v1 * 2);

}
