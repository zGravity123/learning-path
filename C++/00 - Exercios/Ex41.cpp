#include <iostream>
#include <string>
using namespace std;

 int soma(int numero1, int numero2)
 {
 	return numero1 + numero2;
 }
 
 
int main() 
{
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
 
