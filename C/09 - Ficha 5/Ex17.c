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
    struct Produto lista[6];
    int i;
    FILE *fp;

    fp = fopen("mercadoria.txt", "r");

    for (i = 0; i < 6; i++)
    {
        fscanf(fp, "%s %f %d", lista[i].nome, &lista[i].preco, &lista[i].quantidade);

        printf("Produto %d: \n", i);
        printf("Nome: %s\n", lista[i].nome);
        printf("Preço: %.2f\n", lista[i].preco);
        printf("Quantidade: %d\n", lista[i].quantidade);
        printf("\n");
    }

    fclose(fp);
}
