
#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int v;

    printf("Introduza um número! \n");
    scanf("%d",&v);
    system("cls");
    printf("O quadrado do número inserido é: %d",v*v);

}
