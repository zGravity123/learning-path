#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>
#include <windows.h>

main()
{

    char palavra[30];
    int tamanho, op, tentativas = 5;

    setlocale(LC_ALL, "Portuguese");

    printf("Introduza uma palavra: ");
    scanf("%s", palavra);
    system("cls");

    tamanho = strlen(palavra);

    while (tentativas > 0)
    {

        printf("Adivinhe quantos caracteres tem a palavra introduzida: ");
        scanf("%d", &op);

        if (op == tamanho)
        {
         printf("Parabéns! Conseguiste adivinhar com sucesso.");
         break;
        }

        else if (tentativas <= 0)
            printf("Perdeste! Usaste todas as tuas 5 tentativas.");

        else
        {
            printf("OPS! Erraste, tenta novamente \n");
            Sleep(2000);
            system("cls");
            tentativas--;
        }
    }

}
