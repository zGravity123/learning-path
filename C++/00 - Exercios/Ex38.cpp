#include <iostream>
#include <string>
using namespace std;

int main() {
    string senha;

    cout << "Digite a senha de administrador: ";
    cin >> senha;

    if (senha == "1234") {
        cout << "Acesso autorizado!" << endl;
    } else {
        cout << "Senha errada. Tente novamente" << endl;
    }

    return 0;
}

