#include "Validacao.h"

void validarNota(double nota)
{
	if (nota < 0 || nota > 20)
	{
		throw "A nota tem de estar entre 0 e 20.";
	}
}
