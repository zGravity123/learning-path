#include <stdio.h>
#include <stdlib.h>
#include <locale.h>



main()
{

   int salario[5],i,novosalario[5];

   setlocale(LC_ALL, "Portuguese");

   for (i = 0; i < 5; i++)
   {
       printf("Introduza o salário do funcionario #%d: ", i);
       scanf("%d", &salario[i]);

       novosalario[i] = salario[i] - (salario[i] * 0.15);

       printf("Novo salario: %d \n", novosalario[i]);
   }
}

