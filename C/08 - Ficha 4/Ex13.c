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

    FILE *f = fopen("pessoas.txt", "w");

    for (i = 0; i < 5; i++)
    {
        printf("Pessoa %d: \n", i);

        printf("Introduza o nome: ");
        scanf("%s", pessoas[i].nome);

        printf("Introduza a idade: ");
        scanf("%d", &pessoas[i].idade);

        printf("Introduza a altura: ");
        scanf("%f", &pessoas[i].altura);
        printf("\n");

        fprintf(f, "%s %d %.2f\n", pessoas[i].nome, pessoas[i].idade, pessoas[i].altura);
    }

    fclose(f);
}
