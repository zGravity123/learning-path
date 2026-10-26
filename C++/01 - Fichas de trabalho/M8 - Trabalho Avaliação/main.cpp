#include <iostream>
#include <string>
#include <windows.h>
#include "Loja.h"

using namespace std;
using namespace Loja;

int main()
{
    Produto pd[3];
    
    SetConsoleCP(1252);
    SetConsoleOutputCP(1252);
    
    pd[0].nome = "Tosta Mista";
    pd[0].preco = 0.90;
    pd[0].qnt_stock = 31;
    pd[0].qnt_vendas = 0;

    pd[1].nome = "Sumo de Laranja";
    pd[1].preco = 1.20;
    pd[1].qnt_stock = 25;
    pd[1].qnt_vendas = 0;
    
    pd[2].nome = "Croissant";
    pd[2].preco = 1.10;
    pd[2].qnt_stock = 18;
    pd[2].qnt_vendas = 0;
    
    string produto = "";

    cout << "===== MENU DA LOJA =====" << endl;
    cout << endl;

    try 
    {
        cout << "--- Validar Produtos ---" << endl;
        for (int i = 0; i < 3; i++) 
        {
            ValidarNomeEPreco(pd[i].nome, pd[i].preco);
        }
        cout << "Produtos validados!" << endl;
        cout << endl;
    } 
    catch (string mensagem) 
    {
        cout << "Erro: " << mensagem << endl;
    }

    cout << "--- Procurar Produto ---" << endl;
    produto = "Sumo de Laranja";
    try
    {
        ProcurarProduto(pd, produto);
        cout << endl;
    }
    catch (string mensagem)
    {
        cout << "Erro: " << mensagem << endl;
    }

    cout << "--- Alterar Stock ---" << endl;
    produto = "Tosta Mista";
    try 
    {
        AlterarStock(pd, produto, 40);
        cout << "Stock do produto " << produto << " alterado com sucesso!" << endl;
        cout << endl;
    }
    catch (string mensagem)
    {
        cout << "Erro: " << mensagem << endl;
    }

    cout << "--- Efetuar Vendas ---" << endl;
    try 
    {
        EfetuarVendas(pd, "Tosta Mista", 10);
        EfetuarVendas(pd, "Croissant", 5);
        cout << "Vendas efetuadas com sucesso!" << endl;
        cout << endl;
    }
    catch (string mensagem)
    {
        cout << "Erro: " << mensagem << endl;
    }

    cout << "--- Mostrar Dados (Simples) ---" << endl;
    MostrarDados(pd);
    cout << endl;

    cout << "--- Mostrar Dados (Detalhado) ---" << endl;
    MostrarDados(pd, true);

    cout << endl;
    
	Caixa cx;
	    cx.Iniciar();
	    
	    cx.RegistrarVenda(9.00);
	    cx.RegistrarVenda(5.50);
	    
	    cout << endl;
	    cx.ConsultarTotais();
    
    return 0;
}
