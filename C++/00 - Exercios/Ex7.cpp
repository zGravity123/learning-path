#include <iostream>
#include <windows.h>
using namespace std;

int main()
{
	SetConsoleCP(1252);
	SetConsoleOutputCP(1252);
	
	int idade,idadeFutura;
	string nomeCompleto;
    
	cout << "Introduz a tua idade: ";
	cin >> idade;
	cin.ignore();
	
	cout << "Introduz o teu nome completo: ";
	getline(cin, nomeCompleto);
	
	idadeFutura = idade + 5;
	
	cout << endl;
	cout << "===== IDADE FUTURA =====" << endl;
	cout << "Nome: " << nomeCompleto << endl;
	cout << "Idade atual: " << idade << endl;
	cout << "Idade Atual: " << idade << endl;
	cout << "Daqui a 5 anos tens " << idadeFutura << " anos." << endl;
	
	return 0;
}
