#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <time.h>



main()
{

    int vet[10],pares = 0,impares = 0,i,soma = 0;
    float med;

    srand(time(NULL)); //faz não ser smp os mesmos números no random

    setlocale(LC_ALL, "Portuguese");

    for (i = 0; i < 10; i++)
    {
        vet[i] = rand() % 101;

        soma = soma + vet[i];

        if (vet[i] % 2 == 0)
         pares = pares + 1;
        else
         impares = impares + 1;
    }

    med = soma /(float) 10;

    printf("Existem %d valores pares e %d impares \n", pares, impares);
    printf("A media dos 10 valores é: %0.2f", med);


}
