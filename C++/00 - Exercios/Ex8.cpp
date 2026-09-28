#include <iostream>
#include <windows.h>
#include <string>
#include <iomanip>
using namespace std;

int main()
{
	SetConsoleCP(1252);
	SetConsoleOutputCP(1252);
	
	double precoUn = 0,desconto = 0;
	int qntdd = 0;
	string nomeProduto;
	double subtotal = 0, subtotaldes = 0, valorIva = 0, totalFinal = 0;
    
	cout << "Introduza o nome do produto:  ";
	cin >> nomeProduto;
	cin.ignore();
	
	cout << "Introduza o preço unitário: ";
	cin >> precoUn;
	
	cout << "Introduza a quantidade: ";
	cin >> qntdd;
	
	cout << "Introduza a percentagem de Desconto: ";
	cin >> desconto;
	system("cls");
	
	subtotal = precoUn * qntdd;
	subtotaldes = subtotal - (subtotal * (desconto / 100));
	valorIva = subtotaldes * 0.23;
	totalFinal = subtotaldes + valorIva;
	
	cout << endl;
	cout << fixed << setprecision(2);
	
	cout << "===== FATURA =====" << endl;
	cout << "Produto: " << nomeProduto << endl;
	cout << "Qnt: " << qntdd << endl;
	cout << "IVA: " << "23%" << endl;
	cout << "Desconto: " << desconto << "%" << endl;
	cout << endl;
	cout << "IVA: " << valorIva << " EUR" << endl;
	cout << "Sub Total: " << subtotal << " EUR" << endl;
	cout << "Sub Total (Com Desconto): " << subtotaldes << " EUR" << endl;
	cout << "Total com IVA: " << totalFinal << " EUR";
	
	
	return 0;
}
