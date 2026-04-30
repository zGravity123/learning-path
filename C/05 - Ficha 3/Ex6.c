#include <stdio.h>
#include <stdlib.h>
#include <locale.h>



main()
{

   char str1[50], str2[50];

   printf("Introduza a primeira string: ");
   scanf("%s", &str1);

   printf("Introduza a segunda string: ");
   scanf("%s", &str2);

   if (strlen(str1) > strlen(str2))
    printf("A primeira string '( %s )' possui mais caracteres! \n", str1);

   if (strlen(str2) > strlen(str1))
    printf("A primeira segunda '( %s )' possui mais caracteres! \n ", str2);
}

