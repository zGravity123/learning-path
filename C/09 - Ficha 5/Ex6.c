#include <stdio.h>
#include <locale.h>

struct Livro
{
    char titulo[100];
    char autor[100];
    int ano;
};

main()
{
    setlocale(LC_ALL, "Portuguese");

    struct Livro lista[5];
    int i;

    for (i = 0; i < 5; i++)
    {
        printf("Livro %d: \n", i);
        printf("Introduza o título: ");
        scanf("%s", lista[i].titulo);
        printf("Introduza o autor: ");
        scanf("%s", lista[i].autor);
        printf("Introduza o ano: ");
        scanf("%d", &lista[i].ano);
        printf("\n");
    }

    for (i = 0; i < 5; i++)
    {
        printf("Livro %d: \n", i);
        printf("Título: %s\n", lista[i].titulo);
        printf("Autor: %s\n", lista[i].autor);
        printf("Ano: %d\n", lista[i].ano);
        printf("\n");
    }
}
