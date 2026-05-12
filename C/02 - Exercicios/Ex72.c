#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{
    float notas[5];
    char nomes[5][30];
    int max = 0, min = 0;

    setlocale(LC_ALL, "Portuguese");

    for (int i = 0; i < 5; i++)
    {
        printf("Introduza o primeiro nome do aluno #%d: ", i + 1);
        scanf("%s", nomes[i]);

        printf("Introduza a nota: ");
        scanf("%f", &notas[i]);

        if (notas[i] > notas[max])
            max = i;
        if (notas[i] < notas[min])
            min = i;
    }

    printf("O aluno %s teve a melhor nota: %.2f\n", nomes[max], notas[max]);
    printf("O aluno %s teve a pior nota: %.2f\n", nomes[min], notas[min]);

}
