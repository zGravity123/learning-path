#include <stdio.h>
#include <locale.h>

struct Pessoa
{
    char nome[50];
    int idade;
    float altura;
};

main()
{
    struct Pessoa pessoas[5];
    int i;

    setlocale(LC_ALL, "Portuguese");

    for (i = 0; i < 5; i++)
    {
        printf("Digite o nome da pessoa %d: ");
        scanf(" %s", pessoas[i].nome);
        printf("Digite a idade da pessoa %d: ");
        scanf("%d", &pessoas[i].idade);
        printf("Digite a altura da pessoa %d: ");
        scanf("%f", &pessoas[i].altura);
    }

    printf("\nDados das pessoas:\n");
    for (i = 0; i < 5; i++)
    {
        printf("Pessoa %d:\n", i + 1);
        printf("Nome: %s\n", pessoas[i].nome);
        printf("Idade: %d\n", pessoas[i].idade);
        printf("Altura: %.2f\n\n", pessoas[i].altura);
    }
}
