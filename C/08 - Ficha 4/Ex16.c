#include <stdio.h>
#include <locale.h>

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

    FILE *f = fopen("produtos.txt", "w");

    for (i = 0; i < 5; i++)
    {
        printf("Produto %d: \n", i);
        fprintf(f, "Produto %d: \n", i);

        printf("Introduza o nome: ");
        fflush(stdin);
        scanf("%s", lista[i].nome);
        fprintf(f, "Nome: %s\n", lista[i].nome);

        printf("Introduza o preço: ");
        scanf("%f", &lista[i].preco);
        fprintf(f, "Preço: %f\n", lista[i].preco);

        printf("Introduza a quantidade: ");
        scanf("%d", &lista[i].quantidade);
        fprintf(f, "Quantidade: %d\n\n", lista[i].quantidade);
        printf("\n");
    }

    system("cls");

    printf("--- Dados Introduzidos ---\n");
    fprintf(f, "--- Dados Introduzidos ---\n");

    for (i = 0; i < 5; i++)
    {
        printf("Produto %d - Nome: %s | Preço: %.2f | Qtd: %d\n", i, lista[i].nome, lista[i].preco, lista[i].quantidade);
        fprintf(f, "Produto %d - Nome: %s | Preço: %.2f | Qtd: %d\n", i, lista[i].nome, lista[i].preco, lista[i].quantidade);
    }

    fclose(f);
}
