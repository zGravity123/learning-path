#include <iostream>
#include <windows.h>
#include <iomanip>
using namespace std;

int main()
{
	SetConsoleCP(1252);
	SetConsoleOutputCP(1252);
	
	int idd = 0;
    
	cout << "Introduza a idade:  ";
	cin >> idd;
	cin.ignore();
	
	if (idd >= 18)
		cout << "É maior de idade" << endl;
	else
		cout << "É menor de idade" << endl;
	
	return 0;
}
