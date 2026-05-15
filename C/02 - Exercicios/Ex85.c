#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <time.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int matriz[10][10];
    int qnt = 0;

    srand(time(NULL));

    for (int i = 0; i < 10; i++)
    {
        for (int j = 0; j < 10; j++)
        {
            matriz[i][j] = rand()%100;

            if (matriz[i][j] % 5 == 0)
            {
               matriz[i][j] = 0;
               qnt++;
            }


            printf("%d | ",matriz[i][j]);
        }
        printf("\n");
    }
    printf("\n Foram trocados %d valores! \n",qnt);
}
