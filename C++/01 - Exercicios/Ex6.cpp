#include <iostream>
#include <windows.h>
using namespace std;

int main()
{
	SetConsoleCP(1252);
	SetConsoleOutputCP(1252);
	
	int idade;
	string nomeCompleto;
    
	cout << "Introduz a tua idade: ";
	cin >> idade;
	cin.ignore();
	
	cout << "Introduz o teu nome completo: ";
	
	getline(cin, nomeCompleto);
	cout << "Nome: " << nomeCompleto << endl;
	cout << "Idade: " << idade << endl;
	
	return 0;
}
