#include <stdio.h>
#include <locale.h>
#include <stdlib.h>
#include <string.h>

struct Livro
{
    char autor[50],categoria[50],editora[50];
    char ISBN[50],titulo[50];
    int numeroPaginas,quantidade,ano;
};

struct Livro livros[100];
int cont = 0;
int op = -1;

void InserirLivro()
{
    if (cont >= 100) // Valida o limite maximo de 100 livros
    {
        printf("Limite maximo de livros atingido!\n");
        system("pause");
    }

    char tempISBN[50];
    printf("Livro %d: \n", cont);
    printf("Introduza o titulo: ");
    scanf("%s", livros[cont].titulo);
    printf("Introduza o autor: ");
    scanf("%s", livros[cont].autor);
    printf("Introduza a categoria: ");
    scanf("%s", livros[cont].categoria);
    printf("Introduza a editora: ");
    scanf("%s", livros[cont].editora);
    printf("Introduza o ISBN: ");
    scanf("%s", tempISBN);

    for (int i = 0; i < cont; i++) // Verifica se o ISBN ja existe pra n ter duplicados
    {
        if (strcmp(tempISBN, livros[i].ISBN) == 0)
        {
            printf("Erro: Este ISBN ja esta registado!\n");
            system("pause");
        }
    }
    strcpy(livros[cont].ISBN, tempISBN);

    printf("Introduza o numero de paginas: ");
    scanf("%d", &livros[cont].numeroPaginas);
    printf("Introduza a quantidade: ");
    scanf("%d", &livros[cont].quantidade);
    printf("Introduza o ano: ");
    scanf("%d", &livros[cont].ano);
    printf("\n");

    cont++;
    system("pause");
}

void ListarLivros()
{
    for (int i = 0; i < cont; i++) // Mostra todos os livros
    {
        printf("Livro %d: \n", i);
        printf("Titulo: %s\n", livros[i].titulo);
        printf("Autor: %s\n", livros[i].autor);
        printf("Categoria: %s\n", livros[i].categoria);
        printf("Editora: %s\n", livros[i].editora);
        printf("ISBN: %s\n", livros[i].ISBN);
        printf("Paginas: %d\n", livros[i].numeroPaginas);
        printf("Quantidade: %d\n", livros[i].quantidade);
        printf("Ano: %d\n", livros[i].ano);
        printf("\n");
    }

    if (cont == 0)
        printf("Nenhum livro registado.\n");

    system("pause");
}

void PesquisarLivro()
{
    char pesquisar[50];
    int encontrada = 0;

    printf("Introduza o ISBN do livro a pesquisar: ");
    scanf("%s", pesquisar);

    for (int i = 0; i < cont; i++)
    {
        if (strcmp(pesquisar, livros[i].ISBN) == 0)
        {
            printf("Livro %d: \n", i);
            printf("Titulo: %s\n", livros[i].titulo);
            printf("Autor: %s\n", livros[i].autor);
            printf("ISBN: %s\n", livros[i].ISBN);
            printf("\n");
            encontrada = 1;
        }
    }

    if (encontrada == 0)
        printf("ISBN nao encontrado.\n");

    system("pause");
}

void RegistarEmprestimo()
{
    char pesquisar[50];
    int encontrada = 0;

    printf("Introduza o ISBN do livro para emprestimo: ");
    scanf("%s", pesquisar);

    for (int i = 0; i < cont; i++) // Procura o livro pelo ISBN e tira uma unidade se tiver disponivel
    {
        if (strcmp(pesquisar, livros[i].ISBN) == 0)
        {
            encontrada = 1;
            if (livros[i].quantidade > 0)
            {
                livros[i].quantidade--;
                printf("Emprestimo registado com sucesso!\n");
            }
            else
                printf("Nao existem exemplares disponiveis para emprestimo.\n");
        }
    }

    if (encontrada == 0)
        printf("ISBN nao encontrado.\n");

    system("pause");
}

void GuardarLivro()
{
    FILE *f = fopen("livros.txt", "w"); // Abre o ficheiro p modo escrita

    if (f == NULL)
    {
        printf("Erro ao abrir arquivo!\n");
        system("pause");
        return;
    }

    fprintf(f, "%d\n", cont);

    for (int i = 0; i < cont; i++)
    {
        fprintf(f, "%s %s %s %s %s %d %d %d\n", livros[i].titulo, livros[i].autor, livros[i].categoria, livros[i].editora, livros[i].ISBN, livros[i].numeroPaginas, livros[i].quantidade, livros[i].ano);
    }

    fclose(f);
    printf("Livros guardados com sucesso!\n");
    system("pause");
}

void CarregarLivro()
{
    FILE *f = fopen("livros.txt", "r"); // Abre o arquivo p leitura

    if (f == NULL)

    if (fscanf(f, "%d", &cont) == EOF)
    {
        cont = 0;
        fclose(f);
    }

    for (int i = 0; i < cont; i++)
    {
        fscanf(f, "%s %s %s %s %s %d %d %d", livros[i].titulo, livros[i].autor, livros[i].categoria, livros[i].editora, livros[i].ISBN, &livros[i].numeroPaginas, &livros[i].quantidade, &livros[i].ano);
    }

    fclose(f);
}

void RelatorioBibloteca()
{
    int totalExemplares = 0;
    int somaAnos = 0;
    float mediaAnos = 0;
    int maisAntigo = 0;
    int maisRecente = 0;

    if (cont == 0)
    {
        printf("Nenhum livro registado para gerar relatorio.\n");
        system("pause");

    }

    for (int i = 0; i < cont; i++) // Usa os dados do vetor p calcular o relatorio
    {
        totalExemplares = totalExemplares + livros[i].quantidade;
        somaAnos = somaAnos + livros[i].ano;

        if (livros[i].ano < livros[maisAntigo].ano)
            maisAntigo = i;

        if (livros[i].ano > livros[maisRecente].ano)
            maisRecente = i;
    }

    mediaAnos = (float)somaAnos / (float)cont;

    printf("=== Relatorio Biblioteca ===\n");
    printf("Total Livros Registados: %d\n", cont);
    printf("Exemplares Disponiveis: %d\n", totalExemplares);
    printf("Media Anos de Publicacao: %.2f\n", mediaAnos);
    printf("Livro Mais Antigo: %s (%d)\n", livros[maisAntigo].titulo, livros[maisAntigo].ano);
    printf("Livro Mais Recente: %s (%d)\n", livros[maisRecente].titulo, livros[maisRecente].ano);
    printf("============================\n");

    system("pause");
}

void menu()
{
    printf("\n======= MENU BIBLIOTECA ======= \n");
    printf("1. Inserir Novo Livro\n");
    printf("2. Listar Livros (Todos) \n");
    printf("3. Pesquisar Livros (ISBN)\n");
    printf("4. Registar Emprestimo \n");
    printf("5. Guardar Livros (Ficheiro) \n");
    printf("6. Carregar Livros (Ficheiro)  \n");
    printf("7. Relatorio Biblioteca \n");
    printf("0. Sair \n");
    printf("Escolha uma opcao: ");
    scanf("%d",&op);

    switch (op)
    {
        case 1: InserirLivro(); break;
        case 2: ListarLivros(); break;
        case 3: PesquisarLivro(); break;
        case 4: RegistarEmprestimo(); break;
        case 5: GuardarLivro(); break;
        case 6: CarregarLivro(); break;
        case 7: RelatorioBibloteca(); break;
        case 0: system("cls"); break;
        default: printf("\n Opção inválida!");
    }
}

main()
{
    setlocale(LC_ALL,"Portuguese");
    CarregarLivro(); // Carrega os dados do ficheiro livros.txt ao ligar o programa

    while (op != 0)
    {
        system("cls");
        menu();
    }
}
