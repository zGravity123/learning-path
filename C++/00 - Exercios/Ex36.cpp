#include <iostream>
#include <windows.h>
#include <iomanip>
using namespace std;

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    double nota= 0;
    double soma = 0;
    double media = 0;

    for (int i = 1; i <= 5; i++)
    {
        cout << "Introduza a " << i << "ª nota (0-20): ";
        cin >> nota;

        while (nota < 0 || nota > 20)
        {
            cout << "AVISO: A nota inserida e invalida!" << endl;
            cout << "Introduza novamente a " << i << "ª nota (0-20): ";
            cin >> nota;
        }

        soma = soma + nota;
    }

    media = soma / 5;

    cout << fixed << setprecision(2);
    cout << "Media das Notas: " << media << endl;

    if (media >= 9.5)
        cout << "Aprovado!" << endl;
    else
        cout << "Reprovado!" << endl;

    return 0;
}
