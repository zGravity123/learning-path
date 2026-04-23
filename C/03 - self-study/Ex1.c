#include <stdio.h>
#include <locale.h>

int main()
{

    int v1, v2, v3;
    float med;

    setlocale(LC_ALL, "Portuguese");
    printf("Introduza tres valores inteiros! \n");
    scanf("%d %d %d", &v1, &v2, &v3);

    med = (v1 + v2 + v3) /(float)3;

    printf("A media dos valores introduzidos é: %0.2f", med);


}
