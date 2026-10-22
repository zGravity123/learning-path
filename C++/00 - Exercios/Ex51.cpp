#include <iostream>
#include <string>
using namespace std;

int contador(string frase, char letra)
{
    int cont = 0;

    for (int i = 0; i < frase.length(); i++)
    {
        if (frase[i] == letra)
            cont++;
    }

    return cont;
}

int main()
{
    string frase;
    char letra;

    cout << "Introduza uma frase: ";
    getline(cin, frase);

    cout << "Introduza uma letra: ";
    cin >> letra;

    cout << "A letra introduzida aparece "
         << contador(frase, letra)
         << " vezes!" << endl;

    return 0;
}
