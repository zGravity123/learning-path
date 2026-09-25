#include <iostream>
#include <windows.h>
using namespace std;

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    int num = 1;

	while (num != 0)
	{
		cout << "Introduza um número: ";
		cin >> num;
	}
	
	cout << "Introduziu o número 0! Progamma encerrado.";
    return 0;
}

