#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

    int nota,op, cont = 0;
    char nome[50];

void pedirnome()
{
    system("cls");
    printf("\n");
    printf("BOT: Olá! Como eu posso te chamar? \n");
    printf("\nIntroduza o seu nome: ");
    scanf("%s",&nome);
    system("pause");
}

void mostrarBoasVindas()
{
    cont++;
    system("cls");
    printf("\n");
    printf("BOT: Olá,%s. Eu sou o assistente virtual do Curso de TGPSI.\n",nome);
    printf("BOT: Estou aqui para ajudar a conhecer melhor o curso.\n");
    system("pause");
}

void falarSobreCurso()
{
    cont++;
    system("cls");
    printf("\n === O QUE É O CURSO TGPSI? === \n\n");
    printf("O curso de Técnico de Gestão e Programação de Sistemas Informáticos (TGPSI) é um curso de dupla certificação, equivalente ao 12.º ano, focado no ambiente digital. O objetivo principal é formar profissionais capazes de criar soluções de software, gerir bases de dados, configurar redes de computadores e garantir a segurança de sistemas informáticos.\n");
    system("pause");
}

void falarSobreConteudos()
{
    int opSub = 0;

    while (opSub != 5)
    {
        system("cls");
        printf("\nBOT: Queres saber mais sobre que área?\n\n");
        printf("  1 - Programação\n");
        printf("  2 - Bases de Dados\n");
        printf("  3 - Desenvolvimento Web\n");
        printf("  4 - Redes\n");
        printf("  5 - Voltar ao menu principal\n");
        printf("\nEscolhe uma opção: ");
        scanf("%d", &opSub);
        printf("\n");

        system("cls");
        switch (opSub)
        {
            case 1:
                cont++;
                printf("BOT: Na área de Programação vais aprender a criar algoritmos, utilizar linguagens de programação (como C, C++ ou Python) e resolver problemas do dia a dia através de código estruturado. \n\n");
                system("pause");
                break;
            case 2:
                cont++;
                printf("BOT: Na área de Bases de Dados vais aprender a estruturar, organizar e armazenar informação de forma segura. Vais dominar a linguagem SQL para criar e gerir tabelas de dados que servem de suporte a aplicações e sites. \n\n");
                system("pause");
                break;
            case 3:
                cont++;
                printf("BOT: Na área de Desenvolvimento Web vais aprender a construir sites e aplicações para a internet. Vais trabalhar o visual com HTML e CSS, a interatividade com JavaScript e a lógica do servidor com linguagens como PHP. \n\n");
                system("pause");
                break;
            case 4:
                cont++;
                printf("BOT: Na área de Redes vais perceber como os computadores e dispositivos comunicam entre si. Vais aprender a configurar redes locais, gerir routers e switches, e garantir a segurança na partilha de dados. \n\n");
                system("pause");
                break;
            case 5:
                printf("BOT: A voltar ao menu principal...\n");
                break;
            default:
                printf("Opção inválida!\n\n");
                system("pause");
        }
    }
}

void falarSobreProjetos()
{
    system("cls");
    printf("\n === PROJETOS QUE PODES DESENVOLVER === \n\n");
    printf("Ao longo do curso, são desenvolvidos projetos práticos aplicados a cenários reais, tais como:\n\n");
    printf("  - Aplicações de Gestão: Softwares para controlo de stock, faturação ou registo de utilizadores.\n");
    printf("  - Jogos Interativos: Desenvolvimento de jogos digitais em 2D ou 3D.\n");
    printf("  - Projeto de Aptidão Profissional (PAP): No último ano, o aluno desenvolve um arquivo de projeto final individual e inovador para apresentação a um júri de especialistas.\n");
    system("pause");
}

void falarSobreSaidasProfissionais()
{
    cont++;
    system("cls");
    printf("\n === SAÍDAS PROFISSIONAIS === \n\n");
    printf("O setor tecnológico apresenta uma elevada taxa de empregabilidade. Após a conclusão do curso, é possível atuar como:\n\n");
    printf("  - Programador / Desenvolvedor de Software (Desktop e Mobile)\n");
    printf("  - Web Developer (Criação e manutenção de plataformas web)\n");
    printf("  - Técnico de Suporte Informático (Helpdesk e manutenção de hardware)\n");
    printf("  - Administrador de Bases de Dados\n");
    printf("  - Técnico de Gestão e Configuração de Redes Informáticas\n\n");
    printf("Nota: O curso também garante a preparação necessária para prosseguir estudos no Ensino Superior, nomeadamente em Engenharia Informática.\n");
    system("pause");
}

void falarSobreMatriculas()
{
    cont++;
    system("cls");
    printf("\n=== MATRÍCULAS E INFORMAÇÕES ===\n\n");
    printf("As inscrições para o curso de TGPSI obedecem às seguintes condições gerais:\n\n");
    printf("  - Requisitos: Conclusão do 9.º ano de escolaridade e idade inferior a 20 anos.\n");
    printf("  - Procedimento: A matrícula pode ser realizada presencialmente na secretaria da instituição ou através do portal online oficial de matrículas.\n");
    printf("  - Apoios: Por se tratar de um curso profissional, os alunos elegíveis têm direito a subsídio de transporte e subsídio de alimentação.\n");
    system("pause");
}

void mostrarDespedida()
{
    system("cls");
    printf("\n");

    printf("O que achaste do meu chatbot? (0-5)");
    scanf("%d",&nota);

    if (nota <=2)
    {
        printf("BOT: Peço desculpas por não ter gostado da experiencia e agradeçomos o interesse no curso de TGPSI\n");
        printf("O assistente virtual está disponível para esclarecer novas dúvidas. Até depois %s!\n",nome);
    }
    else if (nota >= 3)
    {
        printf("BOT: Agradeçomos o interesse no curso de TGPSI\n");
        printf("O assistente virtual está disponível para esclarecer novas dúvidas. Até depois %s!\n",nome);
    }
    else
        printf("Nota invalida! Não pode ser 0 ou superior a 5.");

}

void mostrarMenuPrincipal()
{
    system("cls");
    printf("\n=========================================\n");
    printf("        CHATBOT DO CURSO TGPSI \n");
    printf("=========================================\n");
    printf("\nEscolha uma opção abaixo:\n");
    printf("  1 - O que é o curso TGPSI?\n");
    printf("  2 - Que conteúdos são ministrados no curso?\n");
    printf("  3 - Que projetos podem ser desenvolvidos?\n");
    printf("  4 - Saídas Profissionais\n");
    printf("  5 - Matrículas e informações\n");
    printf("  6 - Sair\n");
    printf("\n Opção: ");
    scanf("%d", &op);

    switch (op)
    {
        case 1: falarSobreCurso(); break;
        case 2: falarSobreConteudos(); break;
        case 3: falarSobreProjetos(); break;
        case 4: falarSobreSaidasProfissionais(); break;
        case 5: falarSobreMatriculas(); break;
        case 6: mostrarDespedida(); break;
        default: printf("\n Opção inválida!");
    }
}

main()
{
    setlocale(LC_ALL, "Portuguese");
    pedirnome();
    mostrarBoasVindas();
    op = 0;
    while (op != 6)
    {
        mostrarMenuPrincipal();
    }
}
