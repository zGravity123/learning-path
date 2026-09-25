#include <iostream>
#include <windows.h>
#include <iomanip>
using namespace std;

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);
    
    int resultado, numero;
    
    cout << "Introduz um número: ";
    cin >> numero;
    
    system("cls");

	for (int i = 1; i <= 10; i++)
	{
		resultado = numero * i;
		cout << numero << " x " << i << " = " << resultado << endl;
	}
	
    return 0;
}

