#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <time.h>

main()
{
    setlocale(LC_ALL, "Portuguese");
    srand(time(NULL)); // = Randomize

    int soma, vet[5];

    for (int i = 0; i <5; i++)
    {
        vet[i] = rand()%10;

        soma = soma + vet[i];

        printf("%d \n",vet[i]);
    }

    printf("Soma: %d \n", soma);
    printf("Med: %d \n",soma/(float)5);
}
