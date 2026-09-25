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

    switch (cv)
    {
	
	case 'D':
	case 'd':
        cout << "Está divorciado" << endl;
        break;
    case 'S':
    case 's':
        cout << "Está Solteiro" << endl;
        break;
    case 'C':
    case 'c':
        cout << "Está Casado" << endl;
        break;
    case 'V':
    case 'v':
        cout << "Está Viúvo" << endl;
        break;
	}
    return 0;
}

