#include <iostream>
#include "Geometria.h"
using namespace std;

int main()
{
    int lado, comprimento, largura;

    cout << "Introduz o valor do lado do quadrado: ";
    cin >> lado;

    cout << "Introduz o comprimento do retangulo: ";
    cin >> comprimento;

    cout << "Introduz a largura do retangulo: ";
    cin >> largura;

    cout << endl;
    cout << "Area do quadrado: "
         << Geometria::areaquadrado(lado) << endl;

    cout << "Area do retangulo: "
         << Geometria::arearetangulo(comprimento, largura) << endl;

    return 0;
}
