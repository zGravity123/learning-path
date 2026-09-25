#include <iostream>
#include <windows.h>
#include <iomanip>
using namespace std;

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);
    
    int resultado, numero1, numero2;
    
    cout << "Introduz dois números: ";
    cin >> numero1 >> numero2;
    
    system("cls");

	if (numero1 > numero2)
		cout << "O número " << numero1 << " é o maior número introduzido!";
	if (numero2 > numero1)
		cout << "O número " << numero2 << " é o maior número introduzido!";	
	if (numero1 == numero2)
		cout << "Os dois números são iguais!" << endl;
	
	
	
    return 0;
}

