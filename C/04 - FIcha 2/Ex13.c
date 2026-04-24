#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{

    int i,v,r;
    float area,Pi;

    setlocale(LC_ALL, "Portuguese");

    printf("Introduza a raio círculo: ");
    scanf("%d",&r);

    Pi = 3.14;
    area = Pi * (r * r);

    printf("A arêa é: %0.2f",area);
}
