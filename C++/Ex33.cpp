#include <iostream>
#include <windows.h>
using namespace std;

int main()
{
	
	SetConsoleCP(1252);
    SetConsoleOutputCP(1252);
    
    int num;
    int contador = 1;

    cout << "Introduza um numero inteiro positivo: ";
    cin >> num;

    if (num <= 0)
        cout << "O numero tem de ser positivo!";
    else
    {
        while (contador <= num)
        {
            cout << contador << endl;
            contador++;
        }
    }

    return 0;
}

