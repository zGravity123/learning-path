#include <iostream>
#include <iomanip>
#include <windows.h>
using namespace std;

	double soma(double n1, double n2)
	{
	    return n1 + n2;
	}
	
	double subtracao(double n1, double n2)
	{
	    return n1 - n2;
	}
	
	double multiplicacao(double n1, double n2)
	{
	    return n1 * n2;
	}
	
	double divisao(double n1, double n2)
	{
	    return n1 / n2;
	}

int main()
{
    int opcao;
    double n1, n2;
    
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    cout << "1 - Soma" << endl;
    cout << "2 - Subtracao" << endl;
    cout << "3 - Multiplicacao" << endl;
    cout << "4 - Divisao" << endl;
    cout << "5 - Resto" << endl;

    cout << "Escolha: ";
    cin >> opcao;

    cout << "Numero 1: ";
    cin >> n1;

    cout << "Numero 2: ";
    cin >> n2;

	switch (opcao) {
	    case 1:
	    	system("cls");
	        cout << soma(n1, n2);
	        break;
	
	    case 2:
	    	system("cls");
	        cout << subtracao(n1, n2);
	        break;
	
	    case 3:
	    	system("cls");
	        cout << multiplicacao(n1, n2);
	        break;
	
	    case 4:
	    	system("cls");
	        cout << divisao(n1, n2);
	        break;
	
	    default:
	    	system("cls");
	        cout << "Opcao invalida!";
	        break;
	}
    return 0;
}
