#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int i = 0,v;

    printf("Introduza um valor inteiro: ");
    scanf("%d",&v);

    while(i < 10)
    {
        i ++;
        printf("%d x %d = %d \n",v,i,v*i);
    }


}
