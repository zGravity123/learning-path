#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

struct veiculo {
    char marca[30];
    char modelo[30];
    int ano;
};

main()
{
    setlocale(LC_ALL, "Portuguese");

    struct veiculo lista[5];
    int i;

    for (i = 0; i < 5; i++)
    {
        printf("Veículo %d: \n", i);

        printf("Introduza a marca: ");
        scanf("%s", lista[i].marca);

        printf("Introduza o modelo: ");
        scanf("%s", lista[i].modelo);

        printf("Introduza o ano: ");
        scanf("%d", &lista[i].ano);
        printf("\n");
    }

    system("cls");

    printf("--- Lista de veiculos ---\n\n");
    for (i = 0; i < 5; i++)
    {
        printf("Veículo %d:\n", i);
        printf("Marca: %s\n", lista[i].marca);
        printf("Modelo: %s\n", lista[i].modelo);
        printf("Ano: %d\n", lista[i].ano);
        printf("-----------------------\n");
    }
}
