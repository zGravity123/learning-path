#include <stdio.h>
#include <locale.h>

// Faz um programa que peça ao utilizador dois números inteiros e mostre todos os números pares entre eles
// O programa deve funcionar corretamente independentemente da ordem em que os valores (maior e menor) são introduzidos.

int main()
{

    int v1, v2, i, menor, maior;

    printf("Introduza dois valores inteiros: ");
    scanf("%d %d", &v1, &v2);

    menor = v1;
    maior = v1;

    if (v1 > maior)
     maior = v1;
    if (v2 > maior)
     maior = v2;

    if (v1 < menor)
     menor = v1;
    if (v2 < menor)
     menor = v2;

    for (i = menor; i <= maior; i++) // O i começa no menor numero, enquanto o i for menor ou igual que o maior acontece
                                     // i = i + 1
    {
        if (i % 2 == 0)
         printf("%d \n", i);
    }

}
