#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

struct pessoa {
    int idade;
    char nome[30];
    float altura;
};

main()
{
    setlocale(LC_ALL, "Portuguese");

    struct pessoa pessoas[5];
    int i;

    FILE *f = fopen("pessoas.txt", "r");

    for (i = 0; i < 5; i++)
    {
        fscanf(f, "%s %d %f", pessoas[i].nome, &pessoas[i].idade, &pessoas[i].altura);

        printf("Pessoa %d:\n", i);
        printf("Nome: %s\n", pessoas[i].nome);
        printf("Idade: %d\n", pessoas[i].idade);
        printf("Altura: %.2f\n", pessoas[i].altura);
        printf("\n");
    }

    fclose(f);
}
