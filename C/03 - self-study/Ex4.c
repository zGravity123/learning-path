
#include <stdio.h>
#include <locale.h>

// Escreve um programa que leia um número e mostre a sua tabuada de 1 a 10 exclusivamente operações
// de soma (é proibido o uso do operador de multiplicação)

int main()
{

    setlocale(LC_ALL, "Portuguese");

    int v,resultado,i;

    printf("Introduza um número: ");
    scanf("%d", &v);

    resultado = 0;

    for (i = 1; i <= 10; i++)
    {
        resultado += v;

        printf("%d * %d = %d \n", v,i, resultado);
    }




}
