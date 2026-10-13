#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int v = 0, cont;

    printf("Introduza um valor! \n");
    scanf("%d", &v);

    while (cont <= v)
    {
        printf("%d \n", cont);

        cont = cont + 1;


    }

}
