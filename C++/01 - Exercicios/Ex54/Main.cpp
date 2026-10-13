#include <iostream>
#include "Matematica.h"

using namespace std;

int main()
{
    int numero;

    cout << "Introduz um numero: ";
    cin >> numero;

    cout << endl;
    cout << "Dobro: " << Matematica::dobro(numero) << endl;
    cout << "Triplo: " << Matematica::triplo(numero) << endl;

    return 0;
}
