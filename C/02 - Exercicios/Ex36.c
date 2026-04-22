#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int i,v;

    printf("Introduza um valor! \n");
    scanf("%d", &v);

    for ( i = 0; i <= 10; i = i + 1)
    {
        printf("%d * %d = %d \n", v, i, v*i);
    }


    printf("\n");

}
