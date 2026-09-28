#include <iostream>
#include <iomanip>
#include <windows.h>

using namespace std;

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    double n1 = 0, n2 = 0, n3 = 0;
    double med = 0;

    cout << "Introduza 3 notas: ";
    cin >> n1 >> n2 >> n3;
    cin.ignore();

    if (n1 >= 0 && n1 <= 20 && n2 >= 0 && n2 <= 20 && n3 >= 0 && n3 <= 20)
    {
        med = n1 * 0.50 + n2 * 0.25 + n3 * 0.25;

        cout << fixed << setprecision(2);

        if (med >= 9.5)
            cout << "Aprovado, a média final e " << med << endl;
        else
            cout << "Nao Aprovado, a média final e " << med << endl;
    }
    else
        cout << "Uma ou mais notas sao invalidas" << endl;

    return 0;
}

