#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <ctype.h>



main()
{

   int salario,i,novosalario;
   char sexo;

   setlocale(LC_ALL, "Portuguese");

   home:
       printf("Introduza o salário do(a) funcionario(a): ");
       scanf("%d", &salario);

       printf("Introduza o sexo do(a) funcionario(a): \nM - Masculino\nF - Feminino\n");
       scanf(" %c", &sexo);

       sexo = toupper(sexo);

    if (sexo == 'M')
        novosalario = salario * 0.85;
    else if (sexo == 'F')
        novosalario = salario * 0.90;
    else
    {
        printf("Erro! Tente novamente.");
        goto home;
    }

    printf("Novo salário: %d\n", novosalario);
}

