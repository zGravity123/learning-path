#ifndef LOJA_H
#define LOJA_H

#include <string>
using namespace std;

namespace Loja 
{
    struct Produto 
    {
        string nome;
        double preco;
        int qnt_stock;
        int qnt_vendas;
    };
    
    class Caixa 
	{
	private:
	    double total_vendas;
	    int num_vendas;
	
	public:
	    void Iniciar();
	    void RegistrarVenda(double valor);
	    void ConsultarTotais();
	};

    void ValidarNomeEPreco(string nome, double preco);
    void ProcurarProduto(Produto pd[], string procurar);
    void MostrarDados(Produto pd[]);
    void MostrarDados(Produto pd[], bool detalhado);
    void AlterarStock(Produto pd[], string procurar, int novoStock);
    void EfetuarVendas(Produto pd[], string procurar, int vendas);
    double CalcularComDesconto(double preco, double desconto = 0.10);
}

#endif
