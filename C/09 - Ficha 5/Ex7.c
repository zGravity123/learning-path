#include <stdio.h>
#include <locale.h>

struct Funcionario
{
    char nome[100];
    float salario;
    char departamento[100];
};

main()
{
    setlocale(LC_ALL, "Portuguese");

    struct Funcionario lista[3];
    int i;
    float soma = 0, media;

    for (i = 0; i < 3; i++)
    {
        printf("Funcionario %d: \n", i);
        printf("Introduza o nome: ");
        scanf("%s", lista[i].nome);
        printf("Introduza o salário: ");
        scanf("%f", &lista[i].salario);
        printf("Introduza o departamento: ");
        scanf("%s", lista[i].departamento);
        printf("\n");

        soma = soma + lista[i].salario;
    }

    media = soma /(float)3;

    printf("Salário médio: %.2f\n", media);
}
