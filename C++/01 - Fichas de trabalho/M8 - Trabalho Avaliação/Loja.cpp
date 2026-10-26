#include <iostream>
#include <string>
#include "Loja.h"

using namespace std;

namespace Loja 
{
    void ValidarNomeEPreco(string nome, double preco) 
    {
        if (nome.length() < 3)
        {
            throw string("O nome do produto e demasiado curto!");
        }
        if (preco <= 0)
        {
            throw string("O preco e invalido!");
        }
    }
    
    void ProcurarProduto(Produto pd[], string procurar)
    {
        int encontrado = false;

        for (int i = 0; i < 3; i++)
        {
            if (procurar == pd[i].nome)
            {
                cout << "Produto encontrado: " << pd[i].nome << endl;
                double precoDesconto = CalcularComDesconto(pd[i].preco);
                cout << " - Preco: " << pd[i].preco << " EUR" << endl;
                cout << " - Preco c/ Desconto: " << precoDesconto << " EUR" << endl;
                cout << " - Stock: " << pd[i].qnt_stock << endl;
                encontrado = true;
                break;
            }
        }

        if (encontrado == false)
        {
            throw string("Produto nao encontrado");
        }
    }
    
    void MostrarDados(Produto pd[])
    {
        for (int i = 0; i < 3; i++)
        {
            cout << "Nome: " << pd[i].nome << " | Preco: " << pd[i].preco << " EUR" << endl;
        }
    }

    void MostrarDados(Produto pd[], bool detalhado)
    {
        for (int i = 0; i < 3; i++)
        {
            if (detalhado == true) 
            {
                cout << "Nome: " << pd[i].nome 
                     << " | Preco: " << pd[i].preco << " EUR"
                     << " | Vendas: " << pd[i].qnt_vendas
                     << " | Stock: " << pd[i].qnt_stock << endl;
            } 
        }
    }
    
    void AlterarStock(Produto pd[], string procurar, int novoStock)
    {
        int encontrado = false;
    
        for (int i = 0; i < 3; i++)
        {
            if (procurar == pd[i].nome)
            {
                pd[i].qnt_stock = novoStock;
                encontrado = true;
                break;
            }
        }
    
        if (encontrado == false)
        {
            throw string("Produto nao encontrado para alterar o stock!");
        }
    }
    
    void EfetuarVendas(Produto pd[], string procurar, int vendas)
    {
        int encontrado = false;
    
        for (int i = 0; i < 3; i++)
        {
            if (procurar == pd[i].nome)
            {
                if (vendas <= pd[i].qnt_stock) 
                {
                    pd[i].qnt_vendas = pd[i].qnt_vendas + vendas;
                    pd[i].qnt_stock = pd[i].qnt_stock - vendas;
                }  
                else 
                {
                    throw string("Stock insuficiente para vender!");
                }
                encontrado = true;
                break;
            }
        }
    
        if (encontrado == false)
        {
            throw string("Produto nao encontrado para efetuar a venda!");
        }
    }

    double CalcularComDesconto(double preco, double desconto)
    {
        return preco - (preco * desconto);
    }
    
	void Caixa::Iniciar() 
	{
	    total_vendas = 0;
	    num_vendas = 0;
	}
	
	void Caixa::RegistrarVenda(double valor) 
	{
	    total_vendas = total_vendas + valor;
	    num_vendas= num_vendas + 1;
	}
	
	void Caixa::ConsultarTotais() 
	{
	   cout << "--- Consultar Totais ---" << endl;
	   cout << "Total Vendas: " << total_vendas << endl;
	   cout << "Numero Vendas: " << num_vendas << " EUR" << endl;
	}
    
}
