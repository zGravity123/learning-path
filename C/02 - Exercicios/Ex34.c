#include <stdio.h> //nota 20 alunos e no final mostramos a media da turma, num positivas e negativas (positvias superior ou igual a 9.5)
#include <locale.h>
#include <string.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int i = 0, positivas = 0, soma = 0, negativas = 0, nota;
    float med;

    while (i < 21)
    {
        system("cls");
        printf("Introduza a nota do aluno #%d \n",i);
        scanf("%d", &nota);

        soma = soma + nota;

        if (nota >= 9.5)
         positivas = positivas + 1;
        else
         negativas = negativas + 1;

        i = i + 1;


    }

    med = soma /(float) 20;

    printf("Existem %d pessoas aprovadas e %d reprovadas \n", positivas, negativas);
    printf("A media da turma é: %0.2f\n", med);

}
