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

    for (i = 0; i < 6; i++)
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

    fp = fopen("mercadoria.txt", "w");

    for (i = 0; i < 6; i++)
    {
        fprintf(fp, "%s %f %d\n", lista[i].nome, lista[i].preco, lista[i].quantidade);
    }

    fclose(fp);
}
