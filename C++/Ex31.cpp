#include <iostream>
#include <windows.h>
using namespace std;

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    int num,num2 = 0;
	double resultado;
	char op;

    cout << "Introduza dois números: ";
    cin >> num >> num2;

	system("cls");
	
	cout << "Escolha uma opção: " << endl;
	cout << " + - Soma" << endl;
	cout << " - - Subtração" << endl;
	cout << " * - Multiplicação" << endl;
	cout << " / - Divisão" << endl;
	
	cin >> op;
	
	switch (op) 
	{
    case '+':
    	
    	resultado = num + num2;
        cout << "Resultado:" << resultado;
        break;

    case '-':
    	
    	resultado = num - num2;
        cout << "Resultado:" << resultado;
        break;

    case '*':
    	
    	resultado = num * num2;
        cout << "Resultado:" << resultado;
        break;
        
    case '/':
    	   	
		if (num2 != 0) 
		{
		    resultado = num / num2;
		    printf("Resultado: %.2f", resultado);
		} 
		
		else 
		{
		    printf("Erro: não é possível dividir por zero");
		}


        break;

    default:
        cout << "Opção inválida";
        break;
	}


    return 0;
}

