#include <iostream>
#include <windows.h>
using namespace std;

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    double notafinal;
    int nfaltas;

    cout << "Introduza a Nota Final: ";
    cin >> notafinal;

    cout << "Introduza o número de Faltas: ";
    cin >> nfaltas;

    if (notafinal >= 9.5 && nfaltas <= 2)
        cout << "Aprovado" << endl;
    else
        cout << "Não Aprovado" << endl;

    return 0;
}

