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
        
        cout << "===== DADOS PESSOAIS =====" << endl;
        cout << "Nome: " << nome << endl;
        cout << "Idade: " << idade << endl;
        cout << "Daqui a 5 anos terá: " << idade + 5 << endl;
        cout << "Daqui a 10 anos terá: " << idade + 10 << endl;
        cout << "Daqui a 20 anos terá: " << idade + 20 << endl;
    

    return 0;
}
