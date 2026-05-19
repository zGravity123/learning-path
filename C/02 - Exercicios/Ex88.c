#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

struct cliente {
    char nome[30];
    int numconta;
    int saldo;
};

main()
{
    setlocale(LC_ALL, "Portuguese");

    struct cliente clientes[5];

    FILE *fp = fopen("Clientes.TXT", "w");

    if (fp == NULL)
        printf("Erro ao abrir ficheiro!\n");

    for (int i = 0; i < 5; i++)
    {
        system("cls");
        printf("Cliente %d   \n", i + 1);

        printf("Nome: ");
        scanf("%s", &clientes[i].nome);

        printf("Número da Conta: ");
        scanf("%d", &clientes[i].numconta);

        printf("Saldo: ");
        scanf("%d", &clientes[i].saldo);

        fprintf(fp, " Cliente %d; \nNome: %d\nNúmero da Conta: %d\nSaldo: %d\n", i + 1, clientes[i].nome, clientes[i].numconta, clientes[i].saldo);
    }


    for(int i = 0; i < 5; i++)
    {
     fprintf(fp, "\n=== Cliente %d ===\n", i + 1);
     fprintf(fp, "Nome: %s\n", clientes[i].nome);
     fprintf(fp, "Número da Conta: %d\n", clientes[i].numconta);
     fprintf(fp, "Saldo: %d\n", clientes[i].saldo);
    }
    fclose(fp);

    fp = fopen("Clientes.TXT", "r");

    if (fp != NULL)
        fclose(fp);

    for(int i = 0; i < 5; i++)
    {
        printf("\n=== Cliente %d ===\n", i + 1);
        printf("Nome: %s\n", clientes[i].nome);
        printf("Número da Conta: %d\n", clientes[i].numconta);
        printf("Saldo: %d\n", clientes[i].saldo);
    }
}
