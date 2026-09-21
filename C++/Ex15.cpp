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
	
    if (nota >= 10 && nota <= 20)
        cout << "Aprovado" << endl;
    else if (nota >= 0 && nota < 10)
        cout << "Reprovado" << endl;
	
	return 0;
}
