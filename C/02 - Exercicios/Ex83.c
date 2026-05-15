#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

struct Atleta {
    int idade;
    float altura;
};

main()
{
    setlocale(LC_ALL, "Portuguese");

    struct Atleta vet[10];
    int sidade = 0;
    float saltura = 0;

    char s[30] = "atletas.txt";
    FILE *fp;

    fp = fopen(s, "w");

    if (fp == NULL)
      printf("Erro ao abrir ficheiro!");

    fprintf(fp, "Num | Idade | Altura\n");

    for (int i = 0; i < 10; i++)
    {
        system("cls");
        printf("Atleta %d   \n", i + 1);

        printf("Idade: ");
        scanf("%d", &vet[i].idade);

        printf("Altura: ");
        scanf("%f", &vet[i].altura);

        fprintf(fp, " %d  |  %d   | %.2f\n", i, vet[i].idade, vet[i].altura);

        sidade = sidade + vet[i].idade;
        saltura = saltura + vet[i].altura;
    }

    fclose(fp);

    printf("Med das idades: %d \n", sidade /10);
    printf("Med das alturas: %.2f \n", saltura/(float)10);

}
