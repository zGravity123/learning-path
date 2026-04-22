#include <stdio.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");

    float raio, area;
    float Pi = 3.1415;

    printf("Introduza o raio da esfera: ");
    scanf("%f", &raio);

    area = 4 * Pi * raio * raio;

    printf("A área da esfera esfera %.2f é: %.2f\n", raio, area);

}
