#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <time.h>

main()
{

    // 10 valores aleatorios até 100 mostramos os valores, mostramos o mais alto
    // e em qual posição ele tá, o player pd repetir o progamma

    home:

    setlocale(LC_ALL, "Portuguese");

    srand(time(NULL));

    int vet[10], i, maior = -9999, pos = 0,op;

    for (i = 0; i < 10; i++)
    {
        vet[i] = rand() % 100;

        if (vet[i] > maior)
        {
          maior = vet[i];
          pos = i;
        }

        printf("%d \n",vet[i]);
    }

    printf("O maior valor é %d na posição %d \n",maior,pos);

    printf("Digite '0' se quiser reniciar o código, pressione qualquer tecla pra fechar: ");
    scanf("%d",&op);
    system("cls");

    if (op == 0)
     goto home;



}
