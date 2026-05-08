#include <stdio.h>
#include <stdlib.h>
#include <locale.h>


main()
{
    int v,i,soma = 0;

    setlocale(LC_ALL, "Portuguese");

    printf("Introduza um número positivo: ");
    scanf("%d", &v);

    if (v % 2 == 0)
      printf("O número introduzido é par \n");
    else
      printf("O valor introduzido é impar \n");


    if (v % 3 == 0)
      printf("O número introduzido é multiplo de 3 \n");


    for (i = 1; i <= v; i++)
    {
      if (v % i == 0)
       printf("%d\n", i); // todos os divisores
    }


    for (i = 1; i <= v; i++)
    {
     soma = soma + i; // soma de 1 a v
    }

    printf("Soma: %d\n", soma);



}
