#include <iostream>
#include <iomanip>
#include <string>
using namespace std;

string nomeCompleto(string nome, string apelido)
{
    string nomeCompleto = nome + " " + apelido;

    return nomeCompleto;
}

int main()
{
    string nome;
    string apelido;

    cout << "Introduza o seu primeiro nome: ";
    getline(cin, nome);

    cout << "Introduza o seu apelido: ";
    getline(cin, apelido);

    cout << "Nome completo: " << nomeCompleto(nome, apelido) << endl;

    return 0;
}
