#include <iostream>
#include <windows.h>
#include <cctype>
using namespace std;

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    char cv;

    cout << "Escolha uma opção:\n";
    cout << "D - Divorciado\n";
    cout << "S - Solteiro\n";
    cout << "C - Casado\n";
    cout << "V - Viúvo\n";

    cin >> cv;
    cv = toupper(cv);

    if (cv == 'D')
        cout << "Está divorciado" << endl;

    else if (cv == 'S')
        cout << "Está solteiro" << endl;

    else if (cv == 'C')
        cout << "Está casado" << endl;

    else if (cv == 'V')
        cout << "Está viúvo" << endl;

    else
        cout << "Opção inválida" << endl;

    return 0;
}

