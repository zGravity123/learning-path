#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{

    setlocale(LC_ALL, "Portuguese");

    int n1, n2, i;
    int menor, maior;
    int somapares = 0;
    int impares = 1;

    printf("Introduza dois numeros: ");
    scanf("%d %d", &n1, &n2);

    if (n1 == n2)
    {


        printf("Os numeros têm que ser diferentes");
        goto home;
    }

    if (n1 != n2)
    {

         if (n1 < n2)
         {
          menor = n1;
          maior = n2;
         }

         else
         {
          menor = n2;
          maior = n1;

         }

    for (i = menor; i <= maior; i++)
    {
      if (i % 2 == 0)
        somapares = somapares + i;
      else
        impares = impares * i;
    }

        printf("Soma dos pares: %d\n", somapares);
        printf("Impares: %d\n", impares);

    }
}
