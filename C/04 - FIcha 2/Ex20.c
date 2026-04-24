#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{

    int v,i,soma=0;


    setlocale(LC_ALL, "Portuguese");

    printf("Introduza um valor: ");
    scanf("%d",&v);

    for (i = 1; i <= v; i++)
    {
      soma = soma + i;

    }

    printf("A soma de 1 até %d é: %d\n", v, soma);

}
