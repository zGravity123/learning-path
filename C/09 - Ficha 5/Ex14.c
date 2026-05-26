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

    fp = fopen("funcionarios.txt", "r");

    for (i = 0; i < 5; i++)
    {
        fscanf(fp, "%s %f %s", lista[i].nome, &lista[i].salario, lista[i].departamento);
        printf("Funcionário %d:\n", i);
        printf("Nome: %s\n", lista[i].nome);
        printf("Salário: %.2f\n", lista[i].salario);
        printf("Departamento: %s\n\n", lista[i].departamento);
    }

    fclose(fp);
}
