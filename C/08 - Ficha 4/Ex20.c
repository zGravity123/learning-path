#include <stdio.h>
#include <locale.h>
#include <stdlib.h>
#include <ctype.h>

struct Pessoa {
    char nome[50];
    int idade;
    float altura;
};

struct Aluno {
    char nome[50];
    float nota1;
    float nota2;
};

struct produto {
    char nome[50];
    float preco;
    int quantidade;
};

struct estudante {
    char nome[50];
    int idade;
};

struct veiculo {
    char marca[30];
    char modelo[30];
    int ano;
};

struct pessoa {
    int idade;
    char nome[30];
    float altura;
};

void ex1() {
    int numeros[10];
    int soma = 0;

    for (int i = 0; i < 10; i++) {
        printf("Digite o numero %d: ", i + 1);
        scanf("%d", &numeros[i]);
        soma = soma + numeros[i];
    }

    printf("A soma dos números é: %d\n", soma);
}

void ex2() {
    float numeros[10];
    float soma = 0;
    float media;

    for (int i = 0; i < 10; i++) {
        printf("Digite o %dº número: ", i + 1);
        scanf("%f", &numeros[i]);
        soma = soma + numeros[i];
    }

    media = soma / (float)10.0;

    printf("A média dos números é: %.2f\n", media);
}

void ex3() {
    int numeros[10];
    int maior, menor;

    for (int i = 0; i < 10; i++) {
        printf("Digite o número %d: ", i + 1);
        scanf("%d", &numeros[i]);
    }

    maior = numeros[0];
    menor = numeros[0];

    for (int i = 1; i < 10; i++) {
        if (numeros[i] > maior)
            maior = numeros[i];
        if (numeros[i] < menor)
            menor = numeros[i];
    }

    printf("O maior número é: %d\n", maior);
    printf("O menor número é: %d\n", menor);
}

void ex4() {
    int numeros[15];
    int pares = 0, impares = 0;

    setlocale(LC_ALL, "Portuguese");

    for (int i = 0; i < 15; i++) {
        printf("Digite o %dº número: ", i + 1);
        scanf("%d", &numeros[i]);
    }

    for (int i = 0; i < 15; i++) {
        if (numeros[i] % 2 == 0)
            pares++;
        else
            impares++;
    }

    printf("Quantidade de números pares: %d\n", pares);
    printf("Quantidade de números ímpares: %d\n", impares);
}

void ex5() {
    int numeros[10];
    int i, j, temp;

    setlocale(LC_ALL, "Portuguese");

    for (i = 0; i < 10; i++) {
        printf("Digite o %dº número: ", i + 1);
        scanf("%d", &numeros[i]);
    }

    for (i = 0; i < 9; i++) {
        for (j = 0; j < 9 - i; j++) {
            if (numeros[j] > numeros[j + 1]) {
                temp = numeros[j];
                numeros[j] = numeros[j + 1];
                numeros[j + 1] = temp;
            }
        }
    }

    printf("Vetor em ordem crescente: ");
    for (i = 0; i < 10; i++) {
        printf("%d ", numeros[i]);
    }
    printf("\n");
}

void ex6() {
    struct Pessoa pessoas[5];
    int i;

    setlocale(LC_ALL, "Portuguese");

    for (i = 0; i < 5; i++) {
        printf("Digite o nome da pessoa %d: ");
        scanf(" %s", pessoas[i].nome);
        printf("Digite a idade da pessoa %d: ");
        scanf("%d", &pessoas[i].idade);
        printf("Digite a altura da pessoa %d: ");
        scanf("%f", &pessoas[i].altura);
    }

    printf("\nDados das pessoas:\n");
    for (i = 0; i < 5; i++) {
        printf("Pessoa %d:\n", i + 1);
        printf("Nome: %s\n", pessoas[i].nome);
        printf("Idade: %d\n", pessoas[i].idade);
        printf("Altura: %.2f\n\n", pessoas[i].altura);
    }
}

void ex7() {
    setlocale(LC_ALL, "Portuguese");

    struct Aluno alunos[3];
    int i;
    float med;

    for (i = 0; i < 3; i++) {
        printf("Introduza o nome do aluno %d: ", i);
        scanf("%s", alunos[i].nome);
        printf("Introduza a nota #1: ");
        scanf("%f", &alunos[i].nota1);
        printf("Introduza a nota #2: ");
        scanf("%f", &alunos[i].nota2);
        printf("\n");
    }

    system("cls");

    for (i = 0; i < 3; i++) {
        med = (alunos[i].nota1 + alunos[i].nota2) / 2;
        printf("Aluno: %s\n", alunos[i].nome);
        printf("Média: %.2f\n", med);
        printf("---------------------\n");
    }
}

void ex8() {
    setlocale(LC_ALL, "Portuguese");

    struct produto lista[5];
    int i;

    for (i = 0; i < 5; i++) {
        printf("Produto %d: \n", i);
        printf("Introduza o nome: ", i);
        scanf("%s", lista[i].nome);
        printf("Introduza o preço: ", i);
        scanf("%f", &lista[i].preco);
        printf("Introduza a quantidade: ", i);
        scanf("%d", &lista[i].quantidade);
        printf("\n");
    }

    system("cls");

    printf("--- Dados dos Produtos ---\n\n");

    for (i = 0; i < 5; i++) {
        printf("Produto %d:\n", i);
        printf("Nome: %s\n", lista[i].nome);
        printf("Preço: %.2f\n", lista[i].preco);
        printf("Quantidade: %d\n", lista[i].quantidade);
        printf("\n");
    }
}

void ex9() {
    setlocale(LC_ALL, "Portuguese");

    struct estudante lista[10];
    int i;
    int soma_idades = 0;
    float med;

    for (i = 0; i < 10; i++) {
        printf("Estudante %d: \n", i);

        printf("Introduza o nome: ");
        scanf("%s", lista[i].nome);

        printf("Introduza a idade: ");
        scanf("%d", &lista[i].idade);
        printf("\n");

        soma_idades = soma_idades + lista[i].idade;
    }

    med = soma_idades / (float)10;

    system("cls");
    printf("Idade média da turma: %.2f anos\n", med);
}

void ex10() {
    setlocale(LC_ALL, "Portuguese");

    struct veiculo lista[5];
    int i;

    for (i = 0; i < 5; i++) {
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
    for (i = 0; i < 5; i++) {
        printf("Veículo %d:\n", i);
        printf("Marca: %s\n", lista[i].marca);
        printf("Modelo: %s\n", lista[i].modelo);
        printf("Ano: %d\n", lista[i].ano);
        printf("-----------------------\n");
    }
}

void ex11() {
    setlocale(LC_ALL, "Portuguese");

    int num[10];
    int i;

    FILE *f = fopen("numeros.txt", "w");

    for (i = 0; i < 10; i++) {
        printf("Introduza o valor %d: ", i);
        scanf("%d", &num[i]);

        fprintf(f, "%d\n", num[i]);
    }

    system("cls");
    fclose(f);
}

void ex12() {
    setlocale(LC_ALL, "Portuguese");

    int num[10];
    int i;

    FILE *f = fopen("numeros.txt", "r");

    for (i = 0; i < 10; i++) {
        fscanf(f, "%d", &num[i]);
        printf("%d\n", num[i]);
    }

    fclose(f);
}

void ex13() {
    setlocale(LC_ALL, "Portuguese");

    struct pessoa pessoas[5];
    int i;

    FILE *f = fopen("pessoas.txt", "w");

    for (i = 0; i < 5; i++) {
        printf("Pessoa %d: \n", i);

        printf("Introduza o nome: ");
        scanf("%s", pessoas[i].nome);

        printf("Introduza a idade: ");
        scanf("%d", &pessoas[i].idade);

        printf("Introduza a altura: ");
        scanf("%f", &pessoas[i].altura);
        printf("\n");

        fprintf(f, "%s %d %.2f\n", pessoas[i].nome, pessoas[i].idade, pessoas[i].altura);
    }

    fclose(f);
}

void ex14() {
    setlocale(LC_ALL, "Portuguese");

    struct pessoa pessoas[5];
    int i;

    FILE *f = fopen("pessoas.txt", "r");

    for (i = 0; i < 5; i++) {
        fscanf(f, "%s %d %f", pessoas[i].nome, &pessoas[i].idade, &pessoas[i].altura);

        printf("Pessoa %d:\n", i);
        printf("Nome: %s\n", pessoas[i].nome);
        printf("Idade: %d\n", pessoas[i].idade);
        printf("Altura: %.2f\n", pessoas[i].altura);
        printf("\n");
    }

    fclose(f);
}

void ex15() {
    setlocale(LC_ALL, "Portuguese");

    char c;

    FILE *A = fopen("origem.txt", "r");
    FILE *B = fopen("destino.txt", "w");

    while (fscanf(A, "%c", &c) != EOF) {
        fprintf(B, "%c", c);
    }

    fclose(A);
    fclose(B);

    printf("Conteúdo copiado com sucesso \n");
}

void ex16() {
    setlocale(LC_ALL, "Portuguese");

    struct produto lista[5];
    int i;

    FILE *f = fopen("produtos.txt", "w");

    for (i = 0; i < 5; i++) {
        printf("Produto %d: \n", i);
        fprintf(f, "Produto %d: \n", i);

        printf("Introduza o nome: ");
        fflush(stdin);
        scanf("%s", lista[i].nome);
        fprintf(f, "Nome: %s\n", lista[i].nome);

        printf("Introduza o preço: ");
        scanf("%f", &lista[i].preco);
        fprintf(f, "Preço: %f\n", lista[i].preco);

        printf("Introduza a quantidade: ");
        scanf("%d", &lista[i].quantidade);
        fprintf(f, "Quantidade: %d\n\n", lista[i].quantidade);
        printf("\n");
    }

    system("cls");

    printf("--- Dados Introduzidos ---\n");
    fprintf(f, "--- Dados Introduzidos ---\n");

    for (i = 0; i < 5; i++) {
        printf("Produto %d - Nome: %s | Preço: %.2f | Qtd: %d\n", i, lista[i].nome, lista[i].preco, lista[i].quantidade);
        fprintf(f, "Produto %d - Nome: %s | Preço: %.2f | Qtd: %d\n", i, lista[i].nome, lista[i].preco, lista[i].quantidade);
    }
    fclose(f);
}

void ex17() {
    setlocale(LC_CTYPE, "Portuguese");

    struct produto lista[5];
    int i;

    FILE *f = fopen("produtos.txt", "r");

    for (i = 0; i < 5; i++) {
        fscanf(f, "Produto %d: \n", &i);
        fscanf(f, "Nome: %s\n", lista[i].nome);
        fscanf(f, "Preço: %f\n", &lista[i].preco);
        fscanf(f, "Quantidade: %d\n\n", &lista[i].quantidade);
    }

    fclose(f);

    printf("--- Dados Lidos do Ficheiro ---\n");

    for (i = 0; i < 5; i++) {
        printf("Produto %d - Nome: %s | Preço: %.2f | Qtd: %d\n", i, lista[i].nome, lista[i].preco, lista[i].quantidade);
    }
}

void ex18() {
    setlocale(LC_CTYPE, "Portuguese");

    char c;
    int lines = 0;

    FILE *f = fopen("produtos.txt", "r");

    while (fscanf(f, "%c", &c) != EOF) {
        if (c == '\n') {
            lines++;
        }
    }

    fclose(f);

    printf("O ficheiro tem %d linhas \n", lines);
}

void ex19() {
    setlocale(LC_CTYPE, "Portuguese");

    char c;
    int vogais = 0;

    FILE *f = fopen("produtos.txt", "r");

    while (fscanf(f, "%c", &c) != EOF) {
        if (toupper(c) == 'A' || toupper(c) == 'E' || toupper(c) == 'I' || toupper(c) == 'O' || toupper(c) == 'U')
            vogais++;
    }

    fclose(f);

    printf("O arquivo tem %d vogais \n", vogais);
}

main() {
    setlocale(LC_ALL, "Portuguese");
    int opcao;

    printf("======== Menu de Exercícios ======== \n");
    printf("1 - Soma de 10 números \n");
    printf("2 - Média de 10 números decimais \n");
    printf("3 - Maior e menor de 10 números \n");
    printf("4 - Contar pares e ímpares em 15 números \n");
    printf("5 - Ordenação crescente de 10 números \n");
    printf("6 - Dados de 5 pessoas \n");
    printf("7 - Média de notas de 3 alunos \n");
    printf("8 - Dados de 5 produtos \n");
    printf("9 - Idade média de 10 estudantes \n");
    printf("10 - Lista de 5 veículos \n");
    printf("11 - Gravar 10 números em arquivo \n");
    printf("12 - Ler 10 números de arquivo \n");
    printf("13 - Gravar 5 pessoas em arquivo \n");
    printf("14 - Ler 5 pessoas de arquivo \n");
    printf("15 - Copiar arquivo origem para destino \n");
    printf("16 - Gravar e exibir 5 produtos \n");
    printf("17 - Ler 5 produtos de arquivo \n");
    printf("18 - Contar linhas de um arquivo \n");
    printf("19 - Contar vogais de um arquivo \n");
    printf("0 - Sair\n\n");
    printf("Escolha uma opção: ");
    scanf("%d", &opcao);

    system("cls");

    switch (opcao) {
        case 1: ex1(); break;
        case 2: ex2(); break;
        case 3: ex3(); break;
        case 4: ex4(); break;
        case 5: ex5(); break;
        case 6: ex6(); break;
        case 7: ex7(); break;
        case 8: ex8(); break;
        case 9: ex9(); break;
        case 10: ex10(); break;
        case 11: ex11(); break;
        case 12: ex12(); break;
        case 13: ex13(); break;
        case 14: ex14(); break;
        case 15: ex15(); break;
        case 16: ex16(); break;
        case 17: ex17(); break;
        case 18: ex18(); break;
        case 19: ex19(); break;
    }
}
