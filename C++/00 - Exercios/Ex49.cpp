#include <iostream>
#include <iomanip>
using namespace std;

double calcularPreco(double preco, double desconto = 10)
{
    double valorDesconto;
    double precoFinal;

    valorDesconto = preco * desconto / 100;
    precoFinal = preco - valorDesconto;

    return precoFinal;
}

int main()
{
    double preco;
    double desconto;

    cout << "Introduz o preco do produto: ";
    cin >> preco;

    cout << fixed << setprecision(2);

    cout << endl;
    cout << "Preco final com desconto 10%: "
         << calcularPreco(preco) << " euros" << endl;

    cout << endl;
    cout << "Introduz outra percentagem desconto: ";
    cin >> desconto;

    cout << "Preco final com desconto de "
         << desconto << "%: "
         << calcularPreco(preco, desconto)
         << " euros" << endl;

    return 0;
}
