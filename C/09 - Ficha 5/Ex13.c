#include <stdio.h>
#include <locale.h>

struct Funcionario
{
    char nome[50];
    float salario;
    char departamento[50];
};

main()
{
    setlocale(LC_ALL, "Portuguese");

    struct Funcionario lista[5];
    int i;
    FILE *fp;

    for (i = 0; i < 5; i++)
    {
        printf("Funcionario %d: \n", i+1o);
        printf("Introduza o nome: ");
        scanf("%s", lista[i].nome);
        printf("Introduza o salário: ");
        scanf("%f", &lista[i].salario);
        printf("Introduza o departamento: ");
        scanf("%s", lista[i].departamento);
        printf("\n");
    }

    fp = fopen("funcionarios.txt", "w");

    for (i = 0; i < 5; i++)
        fprintf(fp, "%s %.2f %s\n", lista[i].nome, lista[i].salario, lista[i].departamento);

    fclose(fp);
}
