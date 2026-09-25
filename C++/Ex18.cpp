#include <iostream>
#include <windows.h>
using namespace std;

int main()
{
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252); //pi é 3.14159

    double R;
    const double pi = 3.14159;

    cout << "Introduza o raio: ";
    cin >> R;
	cin.ignore();

	if (R > 0)
		cout << "A Arêa do circulo é " << (R*R)*pi << endl;
	else
		cout << "O raio precisa ser maior que 0" << endl;


    return 0;
}

