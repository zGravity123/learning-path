#include <iostream>
#include <windows.h>
#include "Aluno.h"

using namespace std;

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);
	
    Aluno aluno1;

    lerAluno(aluno1);
    mostrarAluno(aluno1);

    return 0;
}
