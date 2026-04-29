#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <time.h>

main()
{
    setlocale(LC_ALL, "Portuguese");
    srand(time(NULL)); // = Randomize


    for (int i = 50; i < 101; i++)
    {

        if(i %2 == 0)
            printf("%d \n",i);
    }


}
