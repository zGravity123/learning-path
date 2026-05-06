#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <time.h>
#include <string.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    char R[50];
    int N; // Respostas numéricas
    int valor, hp = 13, moedasdeouro = 0, acertos = 0;

    srand(time(NULL));

// Pergunta 1

    printf("Para entrar, decifre o código: 'Qual é o número atómico do ouro?' \n");
    scanf("%d", &N);

    if (N == 79)
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
    printf("Sou o início do conhecimento e o fim da ignorância. Quem sou eu? \n");
    scanf("%s", R);

    strupr(R);

    valor = strcmp(R,"A");

    if (valor == 0)
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
    printf("À frente estão dois caminhos. O da direita leva a uma sala iluminada; o da esquerda, a uma escadaria sombria. \n");
    printf("(Escolha: Direita ou Esquerda)\n");
    scanf("%s", R);

// Pergunta 4
    printf("Transforma o número 42 no seu equivalente hexadecimal. \n");
    scanf("%s", R);

    strupr(R);
    valor = strcmp(R,"2A");

    if (valor == 0)
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
    printf("Cada degrau tem um número. Multiplique todos os números ímpares de 1 a 9 para descobrir o próximo passo. \n");
    scanf("%d", &N);

    if (N == 945)
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
    printf("Qual é a letra grega correspondente ao número 3? \n");
    scanf("%s", R);

    strupr(R);
    valor = strcmp(R,"GAMA");

    if (valor == 0)
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
    printf("Combine Hidrogénio e Oxigénio para formar algo vital. \n");
    scanf("%s", R);

    strupr(R);
    valor = strcmp(R,"H2O");

    if (valor == 0)
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
    printf("Quatro velas iluminam a sala, mas uma apaga-se. Quantas sobram? \n");
    scanf("%d", &N);

    if (N == 3)
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
    printf("Quantos bits tem um byte? \n");
    scanf("%d", &N);

    if (N == 8)
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
    printf("Calcula o fatorial de 5 \n");
    scanf("%d", &N);

    if (N == 120)
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
    printf("Qual é o 7o número da sequência de Fibonacci? \n");
    scanf("%d", &N);

    if (N == 13)
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
    printf("Quantos planetas existem no Sistema Solar? \n");
    scanf("%d", &N);

    if (N == 8)
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
    printf("Eu sou algo que cresce quanto mais partilhas, mas não sou um objeto físico. \n");
    printf("Sou a chave para o progresso e a solução para muitos problemas. O que sou? \n");
    scanf("%s", R);

    strupr(R);
    valor = strcmp(R,"CONHECIMENTO");

    if (valor == 0)
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
        printf("Tu morrereste! HP: %d | Acertos: %d | Moedas: %d \n", hp, acertos, moedasdeouro);
    }
    else
    {
        printf("Dominaste a Biblioteca com sucesso!\nHP: %d | Acertos: %d | Moedas: %d \n", hp, acertos, moedasdeouro);
    }
}
