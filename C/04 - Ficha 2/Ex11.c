#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{

    int i,v;

    setlocale(LC_ALL, "Portuguese");

    printf("Introduza um valor: ");
    scanf("%d",&v);

    for (i=0; i <= v; i++)
    {

        if (i %2==0)
            printf("%d\n",i);

    }
}
