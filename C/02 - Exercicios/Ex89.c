#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

struct artigo {
    char nome[30];
    int quant;
    float preco;
    float total;
};

main()
{
    setlocale(LC_ALL, "Portuguese");

    struct artigo artigos[10];

    float totalcompras = 0;

    FILE *fp = fopen("Compras.TXT", "w");

    if (fp == NULL)
        printf("Erro ao abrir ficheiro!\n");

    for (int i = 0; i < 10; i++)
    {
        system("cls");
        printf("Artigo %d\n", i + 1);

        printf("Nome: ");
        scanf("%s", artigos[i].nome);

        printf("Quantidade: ");
        scanf("%d", &artigos[i].quant);

        printf("Preço: ");
        scanf("%f", &artigos[i].preco);

        artigos[i].total = artigos[i].quant * artigos[i].preco;
        totalcompras += artigos[i].total;

        fprintf(fp, "\n Nome: %s\nQuantidade: %d\nPreço: %.2f\nTotal: %.2f\n",
                artigos[i].nome, artigos[i].quant, artigos[i].preco, artigos[i].total);
    }



    fclose(fp);

    printf("Total da lista de compras: %.2f\n", totalcompras);
}
