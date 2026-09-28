#include <iostream>
#include <windows.h>
using namespace std;

int main()
{
    int num;
    int soma = 0;
    
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    for (int i = 1; i <= 5; i++)
    {
        cout << "Introduza o " << i << " numero: ";
        cin >> num;

        soma = soma + num;
    }

    cout << "A soma dos numeros introduzidos e: " << soma << endl;

    return 0;
}

