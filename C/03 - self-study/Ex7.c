
#include <stdio.h>
#include <locale.h>

// Escreve um programa que leia três números inteiros e os apresente no ecrã
// (ordenados por ordem crescente)

int main()
{

    setlocale(LC_ALL, "Portuguese");

    int v1, v2, v3, meio, menor, maior;

    printf("Introduza três valores: ");
    scanf("%d %d %d", &v1, &v2, &v3);

    maior = v1;
    menor = v1;

    // Maiores

    if (v1 > maior)
      maior = v1;
    if (v2 > maior)
      maior = v2;
    if (v3 > maior)
      maior = v3;

    // Menores

    if (v1 < menor)
      menor = v1;
    if (v2 < menor)
      menor = v2;
    if (v3 < menor)
      menor = v3;

    // Valor do meio

    meio = v1 + v2 + v3 - maior - menor;

    printf("Ordem crescente: %d, %d, %d", menor, meio, maior);





}

