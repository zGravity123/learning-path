#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{

    int v,i;


    setlocale(LC_ALL, "Portuguese");

    printf("Introduza um valor: ");
    scanf("%d",&v);

    for (i = 1; i <= v; i++)
    {
        if (v % i == 0)
        {
            printf("%d \n", i);
        }
    }

}
