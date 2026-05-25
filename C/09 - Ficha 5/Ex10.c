#include <stdio.h>
#include <locale.h>

struct Filme
{
    char titulo[100];
    char diretor[100];
    int ano;
};

main()
{
    setlocale(LC_ALL, "Portuguese");

    struct Filme lista[5];
    int i;

    for (i = 0; i < 5; i++)
    {
        printf("Filme %d: \n", i);
        printf("Introduza o título: ");
        scanf("%s", lista[i].titulo);
        printf("Introduza o diretor: ");
        scanf("%s", lista[i].diretor);
        printf("Introduza o ano: ");
        scanf("%d", &lista[i].ano);
        printf("\n");
    }

    for (i = 0; i < 5; i++)
    {
        printf("Filme %d:\n", i);
        printf("Título: %s\n", lista[i].titulo);
        printf("Diretor: %s\n", lista[i].diretor);
        printf("Ano: %d\n\n", lista[i].ano);
    }
}
