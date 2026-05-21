#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

struct estudante {
    char nome[50];
    int idade;
};

main()
{
    setlocale(LC_ALL, "Portuguese");

    struct estudante lista[10];
    int i;
    int soma_idades = 0;
    float med;

    for (i = 0; i < 10; i++)
    {
        printf("Estudante %d: \n", i);

        printf("Introduza o nome: ");
        scanf("%s", lista[i].nome);

        printf("Introduza a idade: ");
        scanf("%d", &lista[i].idade);
        printf("\n");

        soma_idades = soma_idades + lista[i].idade;
    }

    med = soma_idades / (float) 10;

    system("cls");
    printf("Idade média da turma: %.2f anos\n", med);
}
