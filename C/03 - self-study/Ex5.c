
#include <stdio.h>
#include <locale.h>

// Cria um programa que leia um único carácter do teclado e indique se se trata de uma
// letra maiúscula, uma letra minúscula ou um algarismo numérico.

int main()
{

    setlocale(LC_ALL, "Portuguese");

    char caracter;

    printf("Introduza um único caracter: ");
    scanf("%c", &caracter);

    if (caracter >= 'A' && caracter <= 'Z')
      printf("O caracter inserido é uma letra maiúscula!");
    else if (caracter >= 'a' && caracter <= 'z')
      printf("O caracter inserido é uma letra minúscula!");
    else if (caracter >= '0' && caracter <= '9')
      printf("O caracter inserido é um algarismo numérico!");
    else
      printf("Erro! Tente novamente");






}
