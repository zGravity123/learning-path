#include <iostream>
#include <windows.h>
#include <iomanip>
using namespace std;

int main()
{
	SetConsoleCP(1252);
	SetConsoleOutputCP(1252);
	
	double nota = 0;
	int faltas = 0;
    
	cout << "Introduza a nota:  ";
	cin >> nota;
	cin.ignore();
	
	cout << "Introduza quantas faltas o aluno possui:  ";
	cin >> faltas;
	cin.ignore();
	
	// se a nota for 0 ou maior que 20 ou se as faltas forem menos que 0 da erro
	if (nota < 0 || nota > 20 || faltas < 0)
	    cout << "Erro" << endl;
	// se a nota for igual que 10 e tiver menos de 3 faltas o aluno passa
	else if (nota >= 10 && faltas <= 2)
	    cout << "Aprovado" << endl;
	else
	    cout << "Reprovado" << endl;
	
	return 0;
}
