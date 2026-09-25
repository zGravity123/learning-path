#include <iostream>
#include <windows.h>
using namespace std;

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);

    int cont = 1;

	while (cont <= 5)
	{
		cout << cont << endl;
		cont++;
	}
    return 0;
}

