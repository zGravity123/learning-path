#include <iostream>
#include <windows.h>
#include <iomanip>
using namespace std;

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    double valorp, desconto, total;

    cout << "Introduza o valor total da compra: ";
    cin >> valorp;

    system("cls");

    if (valorp >= 100)
    {
        desconto = valorp * 0.10;
        total = valorp - desconto;
    }
    
    else
    {
        desconto = 0;
        total = valorp;
    }

    cout << fixed << setprecision(2);

    cout << "============================" << endl;
    cout << "       NOTINHA DO LIDL      " << endl;
    cout << "============================" << endl;

    cout << "Valor da compra: " << valorp << " EUR" << endl;
    cout << "Desconto: " << desconto << " EUR" << endl;
    cout << "Total a pagar: " << total << " EUR" << endl;

    return 0;
}

