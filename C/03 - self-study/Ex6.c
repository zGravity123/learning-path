
#include <stdio.h>
#include <locale.h>

// Faz um programa que leia um ano e indique se este é bissexto ou não
// (um ano é bissexto se for divisível por 4 e não por 100, exceto se for também divisível por 400).

int main()
{

    setlocale(LC_ALL, "Portuguese");

    int i, ano;

    printf("Introduza um ano: ");
    scanf("%d", &ano);

    if ((ano % 4 == 0) && !(ano % 100 == 0) || (ano % 400 == 0))
      printf("O ano é bissexto! \n");
    else
      printf("O ano não é bissexto!");






}
