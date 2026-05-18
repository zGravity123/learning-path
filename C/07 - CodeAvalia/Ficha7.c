#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{
    int notas[10];
    int i, maior = -9999, menor = 9999;
    int soma = 0, positiva = 0, negativa = 0, acimadamed = 0;
    float med;

    setlocale(LC_ALL, "Portuguese");

    for (i = 0; i < 10; i++)
    {
        printf("Introduza a nota do aluno %d: \n", i + 1);
        scanf("%d", &notas[i]);

        soma = soma + notas[i];

        if (notas[i] > maior)
            maior = notas[i];
        if (notas[i] < menor)
            menor = notas[i];

        if (notas[i] >= 9.5)
            positiva = positiva + 1;
        else
            negativa = negativa + 1;
    }

    med = soma / 10;

    for (i = 0; i < 10; i++)
    {
        if (notas[i] > med)
            acimadamed = acimadamed + 1;
    }

    printf("Media da turma: %.2f \n", med);
    printf("Nota mais alta: %d \n", maior);
    printf("Nota mais baixa: %d \n", menor);
    printf("Alunos com positiva: %d \n", positiva);
    printf("Alunos com negativa: %d \n", negativa);
    printf("Alunos acima da media: %d \n", acimadamed);

    FILE *f = fopen("Notas.TXT", "w");

    for (i = 0; i < 10; i++)
    {
        fprintf(f, "%d\n", notas[i]);
    }

    fclose(f);

    printf("Notas guardadas no ficheiro Notas.TXT \n");
}
