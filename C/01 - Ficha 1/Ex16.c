#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int v;

    printf("Introduza um valor! \n");
    scanf("%d",&v);
    system("cls");

    printf("%d x 1 = %d \n",v,v * 1);
    printf("%d x 2 = %d \n",v,v * 2);
    printf("%d x 3 = %d \n",v,v * 3);
    printf("%d x 4 = %d \n",v,v * 4);
    printf("%d x 5 = %d \n",v,v * 5);
    printf("%d x 6 = %d \n",v,v * 6);
    printf("%d x 7 = %d \n",v,v * 7);
    printf("%d x 8 = %d \n",v,v * 8);
    printf("%d x 9 = %d \n",v,v * 9);
    printf("%d x 10 = %d \n",v,v * 10);
}
