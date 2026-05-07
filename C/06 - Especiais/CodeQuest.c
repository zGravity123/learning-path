#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <locale.h>

main()
{
    int num[5];
    int i, j, resposta[5];
    int tentativas = 0, max_tentativas = 10;

    setlocale(LC_ALL, "Portuguese");
    srand(time(NULL));

    for (i = 0; i <= 4; i++) // gera o código secreto
    {
        num[i] = rand() % 10;
    }

    while (tentativas < max_tentativas)
    {
        tentativas++;

        int posicao_certa = 0;
        int correto = 0;

        printf("Tentativa %d:\n", tentativas);

        for (i = 0; i <= 4; i++)
        {
            printf("Adivinhe o dígito %d do código secreto: ", i + 1);
            scanf("%d", &resposta[i]);

            if (resposta[i] == 707)
            {
                printf("\033[31m\n O código é: ");
                for (j = 0; j <= 4; j++)
                {
                    printf("%d", num[j]);
                }
                printf("\n");
                printf("\033[0m\n");
            }
        }

        // verifica posição correta

        for (i = 0; i <= 4; i++)
        {
            if (resposta[i] == num[i])
            {
                posicao_certa++;
            }
        }

        // Posição diferente

        for (i = 0; i <= 4; i++)
        {
            if (resposta[i] != num[i]) // Se o número na posição atual [i] n for igual ao numero secreto na mesma posição
            {
                for (int j = 0; j <= 4; j++) // Aqui vê o código secreto dnv p procurar o numero
                {

                    if (resposta[i] == num[j]) // Aq verifica: O numero que eu errei a posição existe em ALGUM outro lugar [j] ?
                    {
                        correto++; // Se sim: (numero certo, lugar errado)
                        break;
                    }

                }
            }
        }

         // Dicas

        printf("\n Dica: %d dígitos estão nas posiçoes corretas \n", posicao_certa);
        printf("\n Dica: %d dígitos corretos em posição diferentes \n\n", correto);

        if (posicao_certa == 5)
        {
            printf("Parabéns! Conseguiste acertar o código! \n");
            break;
        }
    }

    if (tentativas == max_tentativas)
    {
        printf("O código secreto era: ");
        for (i = 0; i <= 4; i++)
            printf("%d \n", num[i]);
    }
}
