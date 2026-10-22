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
        cout << "Está divorciado" << endl;
        break;
    case 'S':
        cout << "Está Solteiro" << endl;
        break;
    case 'C':
        cout << "Está Casado" << endl;
        break;
    case 'V':
        cout << "Está Viúvo" << endl;
        break;
    default:
    	cout << "Opção Inválida" << endl;
    	break;
	}
    return 0;
}

