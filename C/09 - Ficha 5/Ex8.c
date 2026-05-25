#include <stdio.h>
#include <locale.h>

struct Produto
{
    char nome[50];
    float preco;
    int quantidade;
};

main()
{
    setlocale(LC_ALL, "Portuguese");

    struct Produto lista[7];
    int i;

    for (i = 0; i < 7; i++)
    {
        printf("Produto %d: \n", i);
        printf("Introduza o nome: ");
        scanf("%s", lista[i].nome);
        printf("Introduza o preço: ");
        scanf("%f", &lista[i].preco);
        printf("Introduza a quantidade: ");
        scanf("%d", &lista[i].quantidade);
        printf("\n");
    }

    for (i = 0; i < 7; i++)
    {
        printf("Produto %d:\n", i);
        printf("Nome: %s\n", lista[i].nome);
        printf("Preço: %.2f\n", lista[i].preco);
        printf("Quantidade: %d\n\n", lista[i].quantidade);
    }
}
