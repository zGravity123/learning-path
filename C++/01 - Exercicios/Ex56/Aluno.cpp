#include <iostream>
#include "Aluno.h"

using namespace std;

void lerAluno(Aluno &aluno)
{
    cout << "Introduz o nome do aluno: ";
    getline(cin >> ws, aluno.nome);
    
    cout << "Introduz a idade: ";
    cin >> aluno.idade;
    
    cout << "Introduz a nota: ";
    cin >> aluno.nota;
}

void mostrarAluno(Aluno aluno)
{
    cout << endl;
    cout << "==== ALUNO ====" << endl;
    cout << "Nome: " << aluno.nome << endl;
    cout << "Idade: " << aluno.idade << endl;
    cout << "Nota: " << aluno.nota << endl;
    
    if (aprovado(aluno))
        cout << "Situacao: Aprovado" << endl;
    else
        cout << "Situacao: Reprovado" << endl;
}

bool aprovado(Aluno aluno)
{
    if (aluno.nota >= 10)
    	return true;
    else
    	return false;
}
