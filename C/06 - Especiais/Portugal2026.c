#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define MAX_JOGOS 3
#define MAX_EQUIPAS 4
#define NOME_MAX 50
#define DATA_MAX 11
#define HORA_MAX 6
#define CANAL_MAX 30
#define FICHEIRO "dados.txt"

struct Jogo
{
    char equipaCasa[NOME_MAX];
    char equipaFora[NOME_MAX];
    char data[DATA_MAX];
    char hora[HORA_MAX];
    char canal[CANAL_MAX];
    int golosCasa;
    int golosFora;
    int realizado;
};

struct Equipa
{
    char nome[NOME_MAX];
    int jogados;
    int vitorias;
    int empates;
    int derrotas;
    int golosMarcados;
    int golosSofridos;
    int diferencaGolos;
    int pontos;
};

struct Jogo jogos[MAX_JOGOS];
struct Equipa equipas[MAX_EQUIPAS];
int numJogos = 0;

void inicializarDados(void)
{
    numJogos = 3;

    strcpy(jogos[0].equipaCasa, "Portugal");
    strcpy(jogos[0].equipaFora, "RD Congo");
    strcpy(jogos[0].data, "15/06/2026");
    strcpy(jogos[0].hora, "18:00");
    strcpy(jogos[0].canal, "RTP1");
    jogos[0].golosCasa = 0;
    jogos[0].golosFora = 0;
    jogos[0].realizado = 0;

    strcpy(jogos[1].equipaCasa, "Portugal");
    strcpy(jogos[1].equipaFora, "Uzbequistao");
    strcpy(jogos[1].data, "19/06/2026");
    strcpy(jogos[1].hora, "21:00");
    strcpy(jogos[1].canal, "RTP1");
    jogos[1].golosCasa = 0;
    jogos[1].golosFora = 0;
    jogos[1].realizado = 0;

    strcpy(jogos[2].equipaCasa, "Colombia");
    strcpy(jogos[2].equipaFora, "Portugal");
    strcpy(jogos[2].data, "23/06/2026");
    strcpy(jogos[2].hora, "21:00");
    strcpy(jogos[2].canal, "RTP1");
    jogos[2].golosCasa = 0;
    jogos[2].golosFora = 0;
    jogos[2].realizado = 0;

    strcpy(equipas[0].nome, "Portugal");
    strcpy(equipas[1].nome, "Colombia");
    strcpy(equipas[2].nome, "RD Congo");
    strcpy(equipas[3].nome, "Uzbequistao");
}

void limparEcra(void)
{
#ifdef _WIN32
    system("cls");
#else
    system("clear");
#endif
}

void imprimirSeparador(void)
{
    printf("============================================================\n");
}

void imprimirAsciiArt(void)
{
    limparEcra();
    printf("\n");
    printf(" _______  _______  ______    _______  __   __  _______  _______  ___      \n"
           "|       ||       ||    _ |  |       ||  | |  ||       ||       ||   |     \n"
           "|    _  ||    _  ||   | ||  |_     _||  | |  ||    ___||    _  ||   |     \n"
           "|   |_| ||   | | ||   |_||_   |   |  |  |_|  ||   | __ |   |_| ||   |     \n"
           "|    ___||   |_| ||    __  |  |   |  |       ||   ||  ||    ___||   |___  \n"
           "|   |    |       ||   |  | |  |   |  |       ||   |_| ||   |    |       | \n"
           "|___|    |_______||___|  |_|  |___|  |_______||_______||___|    |_______| \n");
    printf("\n");
    printf("          Copa do Mundo FIFA 2026 - Fase de Grupos\n");
    printf("                Jogos de Portugal (Grupo H)\n");
    printf("\n");
    imprimirSeparador();
    printf("\nPrima ENTER para continuar...");
    getchar();
}

void calcularClassificacao(void)
{
    int i;

    for (i = 0; i < MAX_EQUIPAS; i++)
    {
        equipas[i].jogados = 0;
        equipas[i].vitorias = 0;
        equipas[i].empates = 0;
        equipas[i].derrotas = 0;
        equipas[i].golosMarcados = 0;
        equipas[i].golosSofridos = 0;
        equipas[i].diferencaGolos = 0;
        equipas[i].pontos = 0;
    }

    for (i = 0; i < numJogos; i++)
    {
        if (jogos[i].realizado)
        {
            int indCasa = -1, indFora = -1;
            int j;

            for (j = 0; j < MAX_EQUIPAS; j++)
            {
                if (strcmp(equipas[j].nome, jogos[i].equipaCasa) == 0)
                    indCasa = j;
                if (strcmp(equipas[j].nome, jogos[i].equipaFora) == 0)
                    indFora = j;
            }

            if (indCasa != -1 && indFora != -1)
            {
                equipas[indCasa].jogados++;
                equipas[indFora].jogados++;
                equipas[indCasa].golosMarcados += jogos[i].golosCasa;
                equipas[indCasa].golosSofridos += jogos[i].golosFora;
                equipas[indFora].golosMarcados += jogos[i].golosFora;
                equipas[indFora].golosSofridos += jogos[i].golosCasa;

                if (jogos[i].golosCasa > jogos[i].golosFora)
                {
                    equipas[indCasa].vitorias++;
                    equipas[indCasa].pontos += 3;
                    equipas[indFora].derrotas++;
                }
                else if (jogos[i].golosCasa < jogos[i].golosFora)
                {
                    equipas[indFora].vitorias++;
                    equipas[indFora].pontos += 3;
                    equipas[indCasa].derrotas++;
                }
                else
                {
                    equipas[indCasa].empates++;
                    equipas[indFora].empates++;
                    equipas[indCasa].pontos++;
                    equipas[indFora].pontos++;
                }

                equipas[indCasa].diferencaGolos = equipas[indCasa].golosMarcados - equipas[indCasa].golosSofridos;
                equipas[indFora].diferencaGolos = equipas[indFora].golosMarcados - equipas[indFora].golosSofridos;
            }
        }
    }
}

void ordenarClassificacao(struct Equipa *tabela, int n)
{
    int i, j;
    struct Equipa temp;

    for (i = 0; i < n - 1; i++)
    {
        for (j = 0; j < n - 1 - i; j++)
        {
            int troca = 0;

            if (tabela[j].pontos < tabela[j + 1].pontos)
                troca = 1;
            else if (tabela[j].pontos == tabela[j + 1].pontos &&
                     tabela[j].diferencaGolos < tabela[j + 1].diferencaGolos)
                troca = 1;
            else if (tabela[j].pontos == tabela[j + 1].pontos &&
                     tabela[j].diferencaGolos == tabela[j + 1].diferencaGolos &&
                     tabela[j].golosMarcados < tabela[j + 1].golosMarcados)
                troca = 1;

            if (troca)
            {
                temp = tabela[j];
                tabela[j] = tabela[j + 1];
                tabela[j + 1] = temp;
            }
        }
    }
}

void verJogos(void)
{
    limparEcra();
    imprimirSeparador();
    printf("                    LISTA DE JOGOS\n");
    imprimirSeparador();
    printf("\n");

    int i;
    for (i = 0; i < numJogos; i++)
    {
        printf("Jogo %d:\n", i);
        printf("  %s vs %s\n", jogos[i].equipaCasa, jogos[i].equipaFora);
        printf("  Data: %s  |  Hora: %s  |  Canal: %s\n",
               jogos[i].data, jogos[i].hora, jogos[i].canal);

        if (jogos[i].realizado)
            printf("  Resultado: %d - %d\n", jogos[i].golosCasa, jogos[i].golosFora);
        else
            printf("  Resultado: Por realizar\n");

        printf("\n");
    }

    imprimirSeparador();
    printf("\nPrima ENTER para voltar ao menu...");
    getchar();
}

void registarResultado(void)
{
    limparEcra();
    imprimirSeparador();
    printf("                REGISTAR OU ALTERAR RESULTADO\n");
    imprimirSeparador();
    printf("\n");

    int i;
    for (i = 0; i < numJogos; i++)
        printf("Jogo %d: %s vs %s (%s)\n", i, jogos[i].equipaCasa, jogos[i].equipaFora, jogos[i].data);

    printf("\nIndique o numero do jogo a registar: ");
    int id;
    scanf("%d", &id);
    getchar();

    if (id < 0 || id >= numJogos)
    {
        printf("\nNumero de jogo invalido.\n");
        printf("Prima ENTER para continuar...");
        getchar();
    }
    else
    {
        if (jogos[id].realizado == 1)
        {
            printf("\nAtencao: Este jogo ja tem um resultado registado (%d - %d).\n", jogos[id].golosCasa, jogos[id].golosFora);
            printf("Os dados introduzidos irao alterar o resultado.\n");
        }

        int golosC, golosF;

        printf("\n");
        printf("Jogo %d: \n", id);
        printf("Introduza os golos de %s: ", jogos[id].equipaCasa);
        scanf("%d", &golosC);
        printf("Introduza os golos de %s: ", jogos[id].equipaFora);
        scanf("%d", &golosF);
        getchar();

        if (golosC < 0 || golosF < 0)
        {
            printf("\nValores invalidos. Os golos nao podem ser negativos.\n");
            printf("Prima ENTER para continuar...");
            getchar();
        }
        else
        {
            jogos[id].golosCasa = golosC;
            jogos[id].golosFora = golosF;
            jogos[id].realizado = 1;
            calcularClassificacao();

            printf("\nResultado registado com sucesso.\n");
            printf("Prima ENTER para voltar ao menu...");
            getchar();
        }
    }
}

void verClassificacao(void)
{
    limparEcra();
    calcularClassificacao();

    struct Equipa tabela[MAX_EQUIPAS];
    int i;
    for (i = 0; i < MAX_EQUIPAS; i++)
        tabela[i] = equipas[i];

    ordenarClassificacao(tabela, MAX_EQUIPAS);

    imprimirSeparador();
    printf("                   CLASSIFICACAO - GRUPO H\n");
    imprimirSeparador();
    printf("%-3s %-16s %3s %3s %3s %3s %3s %3s %4s %4s\n",
           "Pos", "Equipa", "J", "V", "E", "D", "GM", "GS", "DG", "Pts");
    imprimirSeparador();

    for (i = 0; i < MAX_EQUIPAS; i++)
    {
        printf("%-3d %-16s %3d %3d %3d %3d %3d %3d %+4d %4d\n",
               i,
               tabela[i].nome,
               tabela[i].jogados,
               tabela[i].vitorias,
               tabela[i].empates,
               tabela[i].derrotas,
               tabela[i].golosMarcados,
               tabela[i].golosSofridos,
               tabela[i].diferencaGolos,
               tabela[i].pontos);
    }

    imprimirSeparador();
    printf("\n  J=Jogados  V=Vitorias  E=Empates  D=Derrotas\n");
    printf("  GM=Golos Marcados  GS=Golos Sofridos  DG=Diferenca\n");
    printf("\nPrima ENTER para voltar ao menu...");
    getchar();
}

void verResumoPortugal(void)
{
    limparEcra();
    calcularClassificacao();

    int indPortugal = -1;
    int i;

    for (i = 0; i < MAX_EQUIPAS; i++)
    {
        if (strcmp(equipas[i].nome, "Portugal") == 0)
            indPortugal = i;
    }

    if (indPortugal == -1)
    {
        printf("Dados de Portugal nao encontrados.\n");
        printf("Prima ENTER para continuar...");
        getchar();
    }
    else
    {
        struct Equipa *p = &equipas[indPortugal];

        imprimirSeparador();
        printf("               RESUMO - SELECAO NACIONAL DE PORTUGAL\n");
        imprimirSeparador();
        printf("\n");
        printf("  Jogos realizados :  %d\n", p->jogados);
        printf("  Vitorias         :  %d\n", p->vitorias);
        printf("  Empates          :  %d\n", p->empates);
        printf("  Derrotas         :  %d\n", p->derrotas);
        printf("  Golos marcados   :  %d\n", p->golosMarcados);
        printf("  Golos sofridos   :  %d\n", p->golosSofridos);
        printf("  Diferenca golos  :  %+d\n", p->diferencaGolos);
        printf("  Pontos           :  %d\n", p->pontos);
        printf("\n");
        imprimirSeparador();
        printf("  ESTADO DA FASE DE GRUPOS:\n");
        printf("\n");

        if (p->jogados == 0)
            printf("  A fase de grupos ainda nao teve inicio.\n");
        else if (p->pontos == 0 && p->jogados > 0)
            printf("  Situacao critica. Portugal ainda nao pontuou na fase de grupos.\n");
        else if (p->pontos >= 1 && p->pontos <= 2)
            printf("  Situacao preocupante. Portugal precisa de recuperar pontos.\n");
        else if (p->pontos == 3 && p->jogados == 1)
            printf("  Excelente arranque! Portugal lidera apos a primeira jornada.\n");
        else if (p->pontos == 3 && p->jogados == 2)
            printf("  Portugal mantem-se na corrida, mas precisa de vencer o ultimo jogo.\n");
        else if (p->pontos == 4)
            printf("  Boa campanha. Portugal esta bem posicionado para a proxima fase.\n");
        else if (p->pontos == 6 && p->jogados == 2)
            printf("  Portugal ja esta matematicamente apurado para os oitavos de final!\n");
        else if (p->pontos >= 6 && p->jogados == 3)
            printf("  Portugal apurado para os oitavos de final com distinção!\n");
        else if (p->pontos >= 4 && p->jogados == 3)
            printf("  Portugal apurado para os oitavos de final!\n");
        else if (p->pontos < 4 && p->jogados == 3)
            printf("  Portugal pode estar eliminado. Aguardam-se os outros resultados.\n");

        printf("\n");
        imprimirSeparador();
        printf("\nPrima ENTER para voltar ao menu...");
        getchar();
    }
}

void guardarDados(void)
{
    FILE *f = fopen(FICHEIRO, "w");

    if (f == NULL)
    {
        printf("\nErro ao abrir o ficheiro para escrita.\n");
        printf("Prima ENTER para continuar...");
        getchar();
    }
    else
    {
        fprintf(f, "%d\n\n", numJogos);

        int i;
        for (i = 0; i < numJogos; i++)
        {
            fprintf(f, "%s\n", jogos[i].equipaCasa);
            fprintf(f, "%s\n", jogos[i].equipaFora);
            fprintf(f, "%s\n", jogos[i].data);
            fprintf(f, "%s\n", jogos[i].hora);
            fprintf(f, "%s\n", jogos[i].canal);
            fprintf(f, "%d\n", jogos[i].golosCasa);
            fprintf(f, "%d\n", jogos[i].golosFora);
            fprintf(f, "%d\n\n", jogos[i].realizado);
        }

        fclose(f);
        printf("\nDados guardados com sucesso em \"%s\".\n", FICHEIRO);
        printf("Prima ENTER para continuar...");
        getchar();
    }
}

void carregarDados(void)
{
    FILE *f = fopen(FICHEIRO, "r");

    limparEcra();

    if (f != NULL)
    {
        int n;
        if (fscanf(f, "%d", &n) == 1)
        {
            if (n >= 0 && n <= MAX_JOGOS)
            {
                numJogos = n;
                int i;
                for (i = 0; i < numJogos; i++)
                {
                    fscanf(f, " %[^\n]", jogos[i].equipaCasa);
                    fscanf(f, " %[^\n]", jogos[i].equipaFora);
                    fscanf(f, " %[^\n]", jogos[i].data);
                    fscanf(f, " %[^\n]", jogos[i].hora);
                    fscanf(f, " %[^\n]", jogos[i].canal);
                    fscanf(f, "%d", &jogos[i].golosCasa);
                    fscanf(f, "%d", &jogos[i].golosFora);
                    fscanf(f, "%d", &jogos[i].realizado);
                }
                calcularClassificacao();
                printf("\nDados carregados com sucesso.\n");
            }
            else
                printf("\nErro ao ler formato. A carregar dados iniciais dos jogos.\n");
        }
        else
            printf("\nFicheiro vazio ou corrompido. A carregar dados iniciais dos jogos.\n");

        fclose(f);
    }
    else
    {
        printf("\nNao foram encontrados dados guardados.\n");
        printf("A carregar dados iniciais dos jogos.\n");
    }

    printf("Prima ENTER para iniciar o programa...");
    getchar();
}

void imprimirMenu(void)
{
    imprimirSeparador();
    printf("         COPA DO MUNDO 2026 - PORTUGAL - GRUPO H\n");
    imprimirSeparador();
    printf("\n");
    printf("   1 - Ver jogos\n");
    printf("   2 - Registar ou alterar resultado\n");
    printf("   3 - Ver classificacao\n");
    printf("   4 - Ver resumo de Portugal\n");
    printf("   5 - Guardar dados\n");
    printf("   0 - Sair\n");
    printf("\n");
    imprimirSeparador();
    printf("\nEscolha uma opcao: ");
}

void main(void)
{
    inicializarDados();
    carregarDados();
    imprimirAsciiArt();

    int opcao;

    do
    {
        limparEcra();
        imprimirMenu();
        scanf("%d", &opcao);
        getchar();

        if (opcao == 1)
            verJogos();
        else if (opcao == 2)
            registarResultado();
        else if (opcao == 3)
            verClassificacao();
        else if (opcao == 4)
            verResumoPortugal();
        else if (opcao == 5)
            guardarDados();
        else if (opcao != 0)
        {
            printf("\nOpcao invalida. Tente novamente.\n");
            printf("Prima ENTER para continuar...");
            getchar();
        }
    }
    while (opcao != 0);

    limparEcra();
    printf("\nObrigado por utilizar o programa. Forca Portugal!\n\n");
}
