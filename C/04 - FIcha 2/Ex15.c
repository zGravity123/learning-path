#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{

    int v;


    setlocale(LC_ALL, "Portuguese");

    printf("Introduza um número: ");
    scanf("%d",&v);

    if (v >= 10 && v <= 20)
      printf("O valor introduzido está entre 10 e 20!");
    else
      printf("O valor introduzido não está entre 10 e 20!");
}
