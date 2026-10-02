#include <iostream>
using namespace std;

void trocar(int &a, int &b) 
{
	int temp;
    temp = a;
    a = b;
    b = temp;
}

int main() 
{
    int A, B;

    cout << "Digite A: ";
    cin >> A;

    cout << "Digite B: ";
    cin >> B;

    trocar(A, B);

    cout << "A = " << A << endl;
    cout << "B = " << B << endl;

    return 0;
}

