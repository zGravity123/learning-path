<<<<<<< HEAD
#include <iostream>
#include <iomanip>
#include <windows.h>
using namespace std;

	void aumentar(int &numero)
	{
		numero++;
	}

int main()
{ 
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

	int numero;
	
    cout << "Introduz um numero: ";
    cin >> numero;
    
    cout << "Valor antes: " << numero << endl;
    
    aumentar(numero);
    
    cout << "Valor depois: " << numero << endl;
 
    return 0;
}
=======
#include <iostream>
#include <iomanip>
#include <windows.h>
using namespace std;

	void aumentar(int &numero)
	{
		numero++;
	}

int main()
{ 
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

	int numero;
	
    cout << "Introduz um numero: ";
    cin >> numero;
    
    cout << "Valor antes: " << numero << endl;
    
    aumentar(numero);
    
    cout << "Valor depois: " << numero << endl;
 
    return 0;
}
>>>>>>> 87198b66f59b3f6ae0c740a84499998c6040377a
