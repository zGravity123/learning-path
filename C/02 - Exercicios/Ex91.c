#include <stdio.h>
#include <string.h>

    int contar (char str[20]) //parametro d entrada
    {
     int i;
        i = strlen(str);
        return i;
    }

    main()
    {
        char palavra[20];
        printf("Introduza uma string! \n");
        scanf("%s", &palavra);

        int j;

        j = contar(palavra);

        printf("%d \n",j);
    }
