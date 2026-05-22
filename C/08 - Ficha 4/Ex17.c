#include <stdio.h>
#include <locale.h>

struct produto {
    char nome[50];
    float preco;
    int quantidade;
};

main()
{
    setlocale(LC_CTYPE, "Portuguese");

    struct produto lista[5];
    int i;

    FILE *f = fopen("produtos.txt", "r");

    for (i = 0; i < 5; i++)
    {
        fscanf(f, "Produto %d: \n", &i);
        fscanf(f, "Nome: %s\n", lista[i].nome);
        fscanf(f, "Preço: %f\n", &lista[i].preco);
        fscanf(f, "Quantidade: %d\n\n", &lista[i].quantidade);
    }

    fclose(f);

    printf("--- Dados Lidos do Ficheiro ---\n");

    for (i = 0; i < 5; i++)
    {
        printf("Produto %d - Nome: %s | Preço: %.2f | Qtd: %d\n", i, lista[i].nome, lista[i].preco, lista[i].quantidade);
    }
}
