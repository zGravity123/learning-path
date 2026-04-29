#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int soma = 0, i = 1;

    loop:
        soma = soma + i * i;

        i++;

        if (i <= 4)
            goto loop;

    printf("Soma dos primeiros 4 quadrados é %d\n", soma);
    printf("\n");


}
