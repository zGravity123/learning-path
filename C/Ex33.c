#include <stdio.h>
#include <locale.h>
#include <string.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int i = 0;
    int v;

    printf("Introdzua o número que deseja ver a tabuada \n");
    scanf("%d",&v);

    system("cls");

    do
    {
        printf("%d x %d = %d \n",v,i, i*v);
        i = i + 1;
    } while (i <= 10);

}
