#include <iostream>
#include <windows.h>
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
    if (cv == 'S')
        cout << "Está Solteiro" << endl;
    if (cv == 'C')
        cout << "Está Casado" << endl;
    if (cv == 'V')
        cout << "Está Viúvo" << endl;

    return 0;
}

