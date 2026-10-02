#include <iostream>
#include <string>
#include <iomanip>
#include <windows.h>
using namespace std;

bool validarNota(double nota)
{
    if (nota >= 0 && nota <= 20)
    {
        return true;
    }
    else
    {
        return false;
    }
}

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    double nota;

    cout << "Introduz a nota: ";
    cin >> nota;

    while (!validarNota(nota))
    {
        cout << "Nota invalida! A nota deve estar entre 0 e 20." << endl;
        cout << "Introduz novamente a nota: ";
        cin >> nota;
    }

    cout << "Nota valida: " << nota << endl;

    return 0;
}
