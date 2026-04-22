#include <stdio.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    int t1, t2, t3, meio, maior, menor;

    printf("Introduza três temperatura (valores inteiros) \n");
    scanf("%d %d %d", &t1, &t2, &t3);

    maior = t1;

    if (t2 > maior)
     maior = t2;
    if (t3 > maior)
     maior = t3;

    menor = t1;

    if (t2 < menor)
      menor = t2;
    if (t3 < menor)
      menor = t3;

    meio = t1 + t2 + t3 - maior - menor;

    printf("Em ordem decrescente: %d %d %d\n", menor, meio, maior);
    printf("\n");
    printf("Em ordem crescente: %d %d %d\n", maior, meio, menor);

}
