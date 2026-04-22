// Verificamos se é par ou impar

#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int v;

    printf("Insira um número");
    scanf("&d", &v);

    system("cls");

    if (v%2==0)
        printf("O valor inserido é Par \n");
    else
        printf("O valor inserio é impar");
}
