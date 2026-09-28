#include <iostream>
#include <windows.h>
using namespace std;

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    double nota;

    cout << "Introduz umav  nota: ";
    cin >> nota;

    if (nota < 0 || nota > 20)
        cout << "Nota inválida" << endl;

    else if (nota >= 10)
        cout << "Positiva" << endl;

    else
        cout << "Negativa" << endl;

    return 0;
}

