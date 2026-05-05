#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <time.h>

main()
{
   srand(time(NULL));
   int i,num = 0,zeros = 0;

   for (i = 0; i < 10; i++)
   {
       num = rand() % 11;

       if (num == 0)
            zeros++;
   }

   printf("Existem %d zeros! ",zeros);
}
