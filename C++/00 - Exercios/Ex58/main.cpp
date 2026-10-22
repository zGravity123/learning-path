#include <iostream>
#include <windows.h>
#include "Validacao.h"

using namespace std;

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);
	
    double nota;
	
    cout << "Introduza uma nota: ";
    cin >> nota;
	
    try
    {
        validarNota(nota);
		
        cout << "Nota valida: " << nota << endl;
		
        if (nota >= 10)
            cout << "Aluno aprovado." << endl;
        else
            cout << "Aluno Reprovado." << endl;
    }
    catch (const char* mensagem)
    {
        cout << "Erro: " << mensagem << endl;
    }

    return 0;
}
