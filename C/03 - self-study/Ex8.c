
#include <stdio.h>
#include <locale.h>

// Cria um programa que leia um número inteiro positivo e indique se este é um quadrado perfeito
// sem recorrer a bibliotecas matemáticas.

int main()
{

    setlocale(LC_ALL, "Portuguese");

    int v,i,encontrado = 0;

    printf("Introduza um valor: ");
    scanf("%d", &v);

    for (i = 1; i * i <= v; i++)
    {

      if (i * i == v)
      {
        encontrado = 1;
        break;
      }

    }

    if (encontrado == 1)
      printf("O valor que introduziu (%d) é um quadrado perfeito \n", v);
    else
      printf("O valor que introduziu (%d) não é um quadrado perfeito \n", v);






}

