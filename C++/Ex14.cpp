#include <iostream>
#include <windows.h>
#include <iomanip>
using namespace std;

int main()
{
	SetConsoleCP(1252);
	SetConsoleOutputCP(1252);
	
	int temperatura = 0;
    
	cout << "Introduza a temperatura:  ";
	cin >> temperatura;
	cin.ignore();
	system("cls");
	
	if (temperatura < 10)
		cout << "Frio" << endl;
	else if (temperatura < 20)
		cout << "Ta fresco" << endl;
	else if (temperatura < 30)
		cout << "Ta calor" << endl;
	else
		cout << "Calor Extremo" << endl;
	
	return 0;
}
