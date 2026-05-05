#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int n1,n2;
    float med;

    printf("Introduza duas notas: ");
    scanf("%d %d",&n1, &n2);

    med = (n1 + n2) /(float)2;

    if (med < 10)
      printf("Reprovado\n");
    else if (med >= 10 && med < 12)
      printf("Tem que ir pra exame\n");
    else if (med >= 12 && med <= 20)
      printf("Aprovado \n");

    printf("Med: %.1f",med);

}
