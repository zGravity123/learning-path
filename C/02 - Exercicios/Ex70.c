#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");
    int op;

        printf("--------------\n");
        printf("Número da Sorte - Escolha o Concurso\n");
        printf("1 - Totoloto \n");
        printf("2 - EuroMilhões \n");
        printf("3 - Sair \n");
        printf("--------------\n");
        printf("Opção: ");
        scanf("%d", &op);

        switch(op)
        {
            case 1:
            {
                printf("Escolheste o Totoloto!\n");
                int numeros[5];
                int i, j, temp;

                srand(time(NULL));

                for(i = 0; i < 5; i++)
                {
                    temp = rand() % 49 + 1;

                    for(j = 0; j < i; j++)
                    {
                        if(numeros[j] == temp)
                            break;
                    }

                    if(j < i)
                        i--;

                    numeros[i] = temp;
                }

                printf("Números sorteados: ");
                for(i = 0; i < 5; i++) printf("%d ", numeros[i]);
                printf("\n\n");

                break;
            }


            case 2:
            {
                printf("\n----- EUROMILHÕES -----\n");
                int numeros[5], estrelas[2];
                int i, j, temp;

                srand(time(NULL));

                // Números

                for(i = 0; i < 5; i++)
                {
                    temp = rand() % 50 + 1;

                    for(j = 0; j < i; j++)
                    {
                        if(numeros[j] == temp) break;
                    }

                    if(j < i) i--;
                    else numeros[i] = temp;
                }


                // Estrelas

                for(i = 0; i < 2; i++)
                {
                    temp = rand() % 12 + 1;

                    for(j = 0; j < i; j++)
                    {
                        if(estrelas[j] == temp)
                          break;
                    }

                    if(j < i)
                        i--;
                    else estrelas[i] = temp;
                }

                printf("Números sorteados: ");

                for(i = 0; i < 5; i++)
                    printf("%d ", numeros[i]);

                printf("\nEstrelas: ");
                for(i = 0; i < 2; i++)
                    printf("%d ", estrelas[i]);

                printf("\n");

                break;
            }
            case 3: printf("A sair do programa...\n"); break;
            default: printf("Opção inválida! \n");
        }
}
