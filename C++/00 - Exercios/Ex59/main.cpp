#include <iostream>
#include <iomanip>
#include <windows.h>
#include "Conta.h"

using namespace std;

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    Conta conta;

    int opcao;
    double valor;

    conta.iniciarConta();

    do
    {
        cout << endl;
        cout << "===== MULTIBANCO ====" << endl;
        cout << "1 - Consultar Saldo" << endl;
        cout << "2 - Depositar" << endl;
        cout << "3 - Levantar" << endl;
        cout << "4 - Sair" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        switch (opcao)
        {
            case 1:
            	
            	cout << fixed << setprecision(2);
            	
                cout << "Saldo atual: " << conta.consultarSaldo() << " EUR" << endl;
                break;

            case 2:
                cout << "Valor a depositar: ";
                cin >> valor;

                if (valor > 0)
                {
                    conta.depositar(valor);
                    cout << "Deposito efetuado com sucesso." << endl; 
                }
                else
                {
                    cout << "Valor inválido" << endl;
                }
                break;

            case 3:
                cout << "Introduza o valor a levantar: ";
                cin >> valor;

                if (conta.levantar(valor))
                    cout << "Levantamento efetuado com sucesso!" << endl;
                else
                    cout << "Não foi possivel efetuar o levantamento." << endl;
                break;

            case 4:
                cout << "Obrigado por utilizar o MultiBanco!" << endl;
                break;

            default:
                cout << "Opção inválida! Tente novamente." << endl;
                break;
        }

    } 
	
	while (opcao != 4); 

    return 0;
}
