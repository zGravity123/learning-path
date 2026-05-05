#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <time.h>

main()
{

   int i, num,fatorial = 1;

   setlocale(LC_ALL, "Portuguese");

   printf("Introduza um número inteiro não positivo: ");
   scanf("%d",&num);

   for (i = 1; i <= num; i++)
   {
        fatorial *= i;

        printf("Fatorial de %d é: %d\n", num, fatorial);
   }
}
