#include <iostream>
#include <windows.h>
#include <iomanip>
using namespace std;

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    string nome, localidade;
    int idade = 0;

        cout << "Introduza o seu Nome: ";
        getline(cin, nome);
        
        cout << "Introduza a sua Idade: ";
        cin >> idade;
        cin.ignore();
        
        cout << "Introduza sua Localidade: ";
        getline(cin, localidade);
        
        cout << "===== DADOS PESSOAIS =====" << endl;
        cout << "Nome: " << nome << endl;
        cout << "Idade: " << idade << endl;
        cout << "Localidade: " << localidade << endl;
    

    return 0;
}
