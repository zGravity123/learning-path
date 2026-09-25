#include <iostream>
#include <windows.h>
using namespace std;

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    double nota = 0.0;

	do
	{
			
		cout << "Introduza um nota entre 0-20: ";
		cin >> nota;
		
		if (nota < 0 || nota >20)
		{
			cout << "Nota inválida, tente novamente." << endl;
		}
	}
	
	while (nota < 0 || nota > 20);
	
	cout << "Nota Válida: " << nota << endl;
	
	return 0;
	
	cout << "Introduziu o número 0! Progamma encerrado.";
    return 0;
}

