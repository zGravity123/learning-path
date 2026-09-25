#include <iostream>
#include <windows.h>
using namespace std;

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    int idade = 0             ;

    cout << "Introduza a sua idade: ";
    cin >> idade;

    while (idade < 0)
    {
        cout << "Idade invalida! Introduza uma idade valida: ";
        cin >> idade;
    }
         
    system("cls");

    if (idade < 12)
        cout << "Crianca" << endl;
    else if (idade <= 17)
        cout << "Adolescente" << endl;
    else if (idade <= 64)
        cout << "Adulto" << endl;
    else
        cout << "Idoso" << endl;

    return 0;
}

