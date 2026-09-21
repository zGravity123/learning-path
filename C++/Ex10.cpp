#include <iostream>
#include <windows.h>
#include <iomanip>
using namespace std;

int main()
{
	SetConsoleCP(1252);
	SetConsoleOutputCP(1252);
	
	double nota = 0;
    
	cout << "Introduza a Nota:  ";
	cin >> nota;
	
	if (nota >= 10)
		cout << "É positivo, a nota introduza foi " << nota <<endl;
	
	return 0;
}
