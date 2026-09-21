#include <iostream>
#include <windows.h>
#include <iomanip>
using namespace std;

int main()
{
	SetConsoleCP(1252);
	SetConsoleOutputCP(1252);
	
	int nota = 0;
    
	cout << "Introduza a nota:  ";
	cin >> nota;
	cin.ignore();
	
	if (nota < 10)
		cout << "Negativa" << endl;
	else if (nota < 14)
		cout << "Suficiente" << endl;
	else if (nota < 18)
		cout << "Boa" << endl;
	else
		cout << "Excelent" << endl;
	
	return 0;
}
