#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int v, v2;

    printf("Introduza dois números! \n");
    scanf("%d &d", &v, &v2);
    system("cls");
    printf("O quadrado do número inserido é: %d",v*v2);

}
