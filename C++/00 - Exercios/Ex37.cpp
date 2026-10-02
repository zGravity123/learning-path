#include <iostream>
#include <windows.h>
using namespace std;

int main()
{
    int numeroSecreto = 7;
    int num = 0;

    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    while (num != numeroSecreto)
    {
        cout << "Introduza um número: ";
        cin >> num;

        if (num < numeroSecreto)
            cout << "O número introduzido foi muito baixo" << endl;

        if (num > numeroSecreto)
            cout << "O número introduzido foi muito alto" << endl;
    }

    cout << "Acertaste o número!" << endl;

    return 0;
}

