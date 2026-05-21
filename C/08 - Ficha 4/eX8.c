#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

struct produto {
    char nome[50];
    float preco;
    int quantidade;
};

main()
{
    setlocale(LC_ALL, "Portuguese");

    struct produto lista[5];
    int i;

    for (i = 0; i < 5; i++)
    {
        printf("Produto %d: \n",i);
        printf("Introduza o nome: ", i);
        scanf("%s", lista[i].nome);
        printf("Introduza o preço: ", i);
        scanf("%f", &lista[i].preco);
        printf("Introduza a quantidade: ", i);
        scanf("%d", &lista[i].quantidade);
        printf("\n");
    }

    system("cls");

    printf("--- Dados dos Produtos ---\n\n");

    for (i = 0; i < 5; i++)
    {
        printf("Produto %d:\n", i);
        printf("Nome: %s\n", lista[i].nome);
        printf("Preço: %.2f\n", lista[i].preco);
        printf("Quantidade: %d\n", lista[i].quantidade);
        printf("\n");
    }
}
