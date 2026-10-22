#include <iostream>
#include <windows.h>
using namespace std;

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    int idade = 0;

    cout << "Introduza a tua idade: ";
    cin >> idade;

    if (idade >= 18)
        cout << "És maior de idade" << endl;
    else
        cout << "És menor de idade" << endl;

    return 0;
}

