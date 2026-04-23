#include <stdio.h>
#include <locale.h>

// Cria um programa que leia dois números inteiros e
// troque os seus valores na memória sem utilizar uma terceira variável de apoio.

int main()
{

    int a,b;

    setlocale(LC_ALL, ("Portuguese"));

    printf("Introduza dois números inteiros! \n");
    scanf("%d %d", &a, &b );

    a = a + b;
    b = a - b;
    a = a - b;

    printf("A: %d \n", a);
    printf("B: %d \n", b);

}
