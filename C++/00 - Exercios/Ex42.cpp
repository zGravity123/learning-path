#include <iostream>
#include <string>
#include <iomanip>
#include <windows.h>
using namespace std;

 int soma(int numero1, int numero2)
 {
    if (numero1 > numero2)
        cout << "O número " << numero1 << " é maior!" << endl;
    else if (numero1 == numero2)
        cout << "Os dois números são iguais!" << endl;
    else
        cout << "O número " << numero2 << " é maior!" << endl;

    return 0;
 }
 
 
int main() 
{
	
	SetConsoleCP(1252);
    SetConsoleOutputCP(1252);
    
	int numero1;
	int numero2;
	int resultado;

    cout << "Introduz o primeiro numero: ";
    cin >> numero1;
    
    cout << "Introduz o segundo numero: ";
    cin >> numero2;
    
    resultado = soma(numero1, numero2);
    
    cout << "Resultado: " << resultado << endl;

    return 0;
}
 
