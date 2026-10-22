#include <iostream>
using namespace std;

int maior(int a, int b)
{
    if (a > b)
    {
        return a;
    }
    else
    {
        return b;
    }
}

double maior(double a, double b)
{
    if (a > b)
    {
        return a;
    }
    else
    {
        return b;
    }
}

int main()
{
    int numero1;
    int numero2;

    double numero3;
    double numero4;

    cout << "Introduz o primeiro numero inteiro: ";
    cin >> numero1;

    cout << "Introduz o segundo numero inteiro: ";
    cin >> numero2;

    cout << endl;

    cout << "Introduz o primeiro numero decimal: ";
    cin >> numero3;

    cout << "Introduz o segundo numero decimal: ";
    cin >> numero4;

    cout << endl;

    cout << "Maior numero inteiro: " << maior(numero1, numero2) << endl;

    cout << "Maior numero decimal: " << maior(numero3, numero4) << endl;

    return 0;
}

