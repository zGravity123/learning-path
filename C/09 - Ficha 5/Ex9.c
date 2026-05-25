#include <stdio.h>
#include <locale.h>

struct Cliente
{
    char nome[50];
    int idade;
};

main()
{
    setlocale(LC_ALL, "Portuguese");

    struct Cliente lista[10];
    int i;
    int soma = 0;
    float media;

    for (i = 0; i < 10; i++)
    {
        printf("Cliente %d: \n", i);
        printf("Introduza o nome: ");
        scanf("%s", lista[i].nome);
        printf("Introduza a idade: ");
        scanf("%d", &lista[i].idade);
        printf("\n");

        soma = soma + lista[i].idade;
    }

    media = soma / (float)10;

    printf("A idade média dos clientes é: %.2f\n", media);
}
