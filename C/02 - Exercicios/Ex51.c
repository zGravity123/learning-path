#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <time.h>

main()
{
    setlocale(LC_ALL, "Portuguese");
    srand(time(NULL)); // = Randomize

    int vet[11], maior,menor;

    maior = 0;
    menor = 999;

    for (int i = 0; i <5; i++)
    {
        vet[i] = rand()%100;

        if(vet[i] > maior)
          maior = vet[i];
        if (vet[i] < menor)
          menor = vet[i];
    }

    printf("Maior: %d \n", maior);
    printf("Menor: %d \n", menor);


}
