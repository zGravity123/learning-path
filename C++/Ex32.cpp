#include <iostream>
#include <windows.h>
using namespace std;

int main()
{
	
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);
	
    int dia;

    cout << "Introduza um número de 1 a 7: ";
    cin >> dia;

    switch (dia)
    {
        case 1:
            cout << "Segunda-feira";
            break;

        case 2:
            cout << "Terca-feira";
            break;

        case 3:
            cout << "Quarta-feira";
            break;

        case 4:
            cout << "Quinta-feira";
            break;

        case 5:
            cout << "Sexta-feira";
            break;

        case 6:
            cout << "Sabado";
            break;

        case 7:
            cout << "Domingo";
            break;

        default:
            cout << "Numero invalido!";
            break;
    }

    return 0;
}

