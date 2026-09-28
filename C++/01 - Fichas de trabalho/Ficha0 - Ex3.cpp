#include <iostream>
#include <windows.h>
#include <iomanip>
using namespace std;

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    string nomeProduto, localidade;
    int idade = 0,quantidade = 0;
    double precoun = 0, total = 0;

        cout << "Introduza o Nome Do Produto: ";
        getline(cin, nomeProduto);
        
        cout << "Introduza o preço por unidade: ";
        cin >> precoun;	
        cin.ignore();
        
        cout << "Introduza a quantidade: ";
        cin >> quantidade;	
        cin.ignore();
        
        total= precoun * quantidade;
        cout << fixed << setprecision(2);
        
        cout << "===== DADOS DO PRODUTO =====" << endl;
        cout << "Produto: " << nomeProduto << endl;
        cout << "Preço unitário: " << precoun << endl;
        cout << "Quantidade: " << quantidade << endl;
        cout << "Total a pagar: " << total << " EUR" << endl;
    

    return 0;
}
