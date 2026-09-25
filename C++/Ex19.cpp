#include <iostream>
#include <windows.h>
using namespace std;

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    double n1, n2, n3;
    double med;

    cout << "Introduza 3 notas: ";
    cin >> n1 >> n2 >> n3;
    cin.ignore();

    if (n1 >= 0 && n1 <= 20 && n2 >= 0 && n2 <= 20 && n3 >= 0 && n3 <= 20)
    {
        med = (n1 + n2 + n3) / 3;

        if (med > 9.5)
            cout << "Aprovado, a média do aluno é " << med << endl;
        else
            cout << "Reprovado, a média do aluno é " << med << endl;
    }
    else
        cout << "Notas inválidas" << endl;

    return 0;
}
