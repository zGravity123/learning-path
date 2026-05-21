#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

struct Aluno {
    char nome[50];
    float nota1;
    float nota2;
};

main()
{
    setlocale(LC_ALL, "Portuguese");

    struct Aluno alunos[3];
    int i;
    float med;

    for (i = 0; i < 3; i++)
    {
        printf("Introduza o nome do aluno %d: ", i);
        scanf("%s", alunos[i].nome);
        printf("Introduza a nota #1: ");
        scanf("%f", &alunos[i].nota1);
        printf("Introduza a nota #2: ");
        scanf("%f", &alunos[i].nota2);
        printf("\n");
    }

    system("cls");

    for (i = 0; i < 3; i++)
    {
        med = (alunos[i].nota1 + alunos[i].nota2) / 2;
        printf("Aluno: %s\n", alunos[i].nome);
        printf("Média: %.2f\n", med);
        printf("---------------------\n");
    }

}
