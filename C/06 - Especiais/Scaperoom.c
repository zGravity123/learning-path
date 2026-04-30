#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <time.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    char R[50];
    int hp = 13, moedasdeouro = 0, acertos = 0;

    srand(time(NULL));

 // Pergunta 1

    printf("Entrada na biblioteca\n");
    printf("Qual é o número atómico do ouro?\n");
    scanf("%d", &R);

    if (R == 79)
    {
        moedasdeouro++;
        acertos++;
    }
    else
    {
        hp--;
        acertos--;
    }

 // Pergunta 2

    printf("Sou o início do conhecimento e o fim da ignorância. Quem sou eu?\n");
    scanf("%s", &R);

    if (R == 'A')
    {
        moedasdeouro++;
        acertos++;
    }
    else
    {
        hp--;
        acertos--;
    }

 // Pergunta 3

    printf("Direita ou Esquerda?\n");
    scanf("%d", &R);

 // Pergunta 4

    printf("Transforma 42 em hexadecimal\n");
    scanf("%s", &R);

    if (R == '2A')
    {
        moedasdeouro++;
        acertos++;
    }
    else
    {
        hp--;
        acertos--;
    }

 // Pergunta 5

    printf("Multiplique os ímpares de 1 a 9\n");
    scanf("%d", &R);

    if (R == 945)
    {
        moedasdeouro++;
        acertos++;
    }
    else
    {
        hp--;
        acertos--;
    }

 // Pergunta 6

    printf("Letra grega do número 3?\n");
    scanf("%s", &R);

    if (R == 'Gama')
    {
        moedasdeouro++;
        acertos++;
    }
    else
    {
        hp--;
        acertos--;
    }

 // Pergunta 7

    printf("Hidrogénio + Oxigénio = ?\n");
    scanf("%s", &R);

    if (R == 'H2O')
    {
        moedasdeouro++;
        acertos++;
    }
    else
    {
        hp--;
        acertos--;
    }

 // Pergunta 8

    printf("4 velas, uma apaga-se. Quantas ficam?\n");
    scanf("%d", &R);

    if (R == 3)
    {
        moedasdeouro++;
        acertos++;
    }
    else
    {
        hp--;
        acertos--;
    }

 // Pergunta 9

    printf("Quantos bits tem um byte?\n");
    scanf("%d", &R);

    if (R == 8)
    {
        moedasdeouro++;
        acertos++;
    }
    else
    {
        hp--;
        acertos--;
    }

 // Pergunta 10

    printf("Fatorial de 5?\n");
    scanf("%d", &R);

    if (R == 120)
    {
        moedasdeouro++;
        acertos++;
    }
    else
    {
        hp--;
        acertos--;
    }

 // Pergunta 11

    printf("7º número de Fibonacci?\n");
    scanf("%d", &R);

    if (R == 13)
    {
        moedasdeouro++;
        acertos++;
    }
    else
    {
        hp--;
        acertos--;
    }

 // Pergunta 12

    printf("Quantos planetas existem no Sistema Solar?\n");
    scanf("%d", &R);

    if (R == 8)
    {
        moedasdeouro++;
        acertos++;
    }
    else
    {
        hp--;
        acertos--;
    }

 // Pergunta 13

    printf("O que cresce quando partilhas?\n");
    scanf("%s", &R);

    if (R == 'Conhecimento')
    {
        moedasdeouro++;
        acertos++;
    }
    else
    {
        hp--;
        acertos--;
    }

 ///////////

    if (hp <= 0)
    {
        printf("Tu morrereste! HP: %d | Acertos: %d | Moedas: %d\n", hp, acertos, moedasdeouro);
    }
    else
    {
        printf("Dominaste a Bibloteca com sucesso!\nHP: %d | Acertos: %d | Moedas: %d\n", hp, acertos, moedasdeouro);
    }

}
