#include <iostream>
#include <windows.h>
#include <iomanip>
using namespace std;

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    string nomeProduto, localidade;
    double area = 0, raio = 0;
    const double pi = 3.14159;

		cout << fixed << setprecision(2);
        cout << "Introduza o Raio do círculo: ";
        cin >> raio;	
        cin.ignore();
        
        if (raio > 0) {
        	area = pi * raio * raio;
        	cout << "A arêa é "<< area << endl;
        }
        else
        	cout << "Raio inválido. ";

    return 0;
}
