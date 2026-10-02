#include <iostream>
#include <windows.h>
#include <iomanip>
#include <string>
using namespace std;

int main()
{
    string nomes[20];
    double precos[20];
    int quantidades[20];

    int totalProdutos = 0;
    int opcao, op;
    int i = 0;
    string nomep;
    int quantidadev;
    
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    do
    {
        system("cls");

        cout << "\n===== PAPELARIA =====" << endl;
        cout << "1. Adicionar um novo produto" << endl;
        cout << "2. Listar todos os produtos" << endl;
        cout << "3. Procurar um produto pelo nome" << endl;
        cout << "4. Efetuar a venda de um produto" << endl;
        cout << "5. Adicionar unidades ao stock" << endl;
        cout << "6. Alterar o preco de um produto" << endl;
        cout << "7. Consultar estatisticas" << endl;
        cout << "8. Sair" << endl;
        cout << "Opcao: ";
        cin >> opcao;

        system("cls");

        switch (opcao)
        {
        case 1:
            if (i < 20)
            {
                cout << "Introduza o nome do produto: ";
                cin.ignore();
                getline(cin, nomes[i]);

                do
                {
                    cout << "Introduza o preco: ";
                    cin >> precos[i];

                    if (precos[i] <= 0)
                        cout << "O preço tem que ser superior a zero!" << endl;

                } while (precos[i] <= 0);

                do
                {
                    cout << "Introduza a quantidade em stock: ";
                    cin >> quantidades[i];

                    if (quantidades[i] < 0)
                        cout << "A quantidade não pode ser negativa!" << endl;

                } while (quantidades[i] < 0);

                i++;
            }
            break;

        case 2:
            for (int j = 0; j < i; j++)
            {
                cout << "Produto: " << nomes[j] << endl;
                cout << "Preço: " << precos[j] << " EUR" << endl;
                cout << "Stock: " << quantidades[j] << endl;
                cout << "-------------------" << endl;
            }

            break;

        case 3:
            cout << "Introduza o nome do produto que deseja procurar: ";
            cin.ignore();
            getline(cin, nomep);

            for (int j = 0; j < i; j++)
            {
                if (nomes[j] == nomep)
                {
                    cout << "Produto encontrado!" << endl;
                    cout << "Produto: " << nomes[j] << endl;
                    cout << "Preço: " << precos[j] << " EUR" << endl;
                    cout << "Stock: " << quantidades[j] << endl;
                    cout << "-------------------" << endl;
                }
            }

            break;

        case 4:
            cout << "Qual produto foi vendido? ";
            cin.ignore();
            getline(cin, nomep);

            cout << "Qual foi a quantidade vendida? ";
            cin >> quantidadev;

            for (int j = 0; j < i; j++)
            {
                if (nomes[j] == nomep)
                    quantidades[j] = quantidades[j] - quantidadev;
            }

            cout << "O produto " << nomep << " teve " << quantidadev << " unidade vendidas!";

            break;

        case 5:
            cout << "Introduza o nome do Produto: ";
            cin.ignore();
            getline(cin, nomep);

            cout << "Deseja adicionar quantas unidades? ";
            cin >> op;

            for (int j = 0; j < i; j++)
            {
                if (nomes[j] == nomep)
                    quantidades[j] = quantidades[j] + op;
            }

            cout << "O produto " << nomep << " teve " << op << " unidades adicionadas!";

            break;

        case 6:
            cout << "Introduza o nome do Produto: ";
            cin.ignore();
            getline(cin, nomep);

            cout << "Introduza o novo preço: ";
            cin >> op;

            for (int j = 0; j < i; j++)
            {
                if (nomes[j] == nomep)
                    precos[j] = op;
            }

            cout << "O produto " << nomep << " teve o preço alterado para " << op << " EUR";

            break;

        case 7:
        {
            int totalUnidades = 0;
            double valorTotal = 0;
            int semStock = 0;
            int maisCaro = 0;
            int maisBarato = 0;

            for (int j = 0; j < i; j++)
            {
                totalUnidades = totalUnidades + quantidades[j];
                valorTotal = valorTotal + (precos[j] * quantidades[j]);

                if (quantidades[j] == 0)
                    semStock++;

                if (precos[j] > precos[maisCaro])
                    maisCaro = j;

                if (precos[j] < precos[maisBarato])
                    maisBarato = j;
            }

            cout << "Numero de produtos: " << i << endl;
            cout << "Total de unidades em stock: " << totalUnidades << endl;
            cout << "Valor total do stock: " << valorTotal << " EUR" << endl;
            cout << "Produto mais caro: " << nomes[maisCaro] << endl;
            cout << "Produto mais barato: " << nomes[maisBarato] << endl;
            cout << "Produtos sem stock: " << semStock << endl;

            break;
        }

        case 8:
            break;

        default:
            cout << "Opcão invalida!" << endl;
        }

        if (opcao != 8)
            system("pause");

    } while (opcao != 8);

    return 0;
}

