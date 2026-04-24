#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{

    int nota;

    setlocale(LC_ALL, "Portuguese");

    printf("Introduza a nota de um aluno: ");
    scanf("%d",&nota);

    if (nota >= 10)
      printf("Aprovado!");
    else
      printf("Reprovado!");
}
