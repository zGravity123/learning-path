#include <stdio.h>

    int valor;

    int dobro()
    {
        return valor * 2;
    }


    main()
    {
        int resposta;

        printf("Introduza um valor: ");
        scanf("%d",&valor);

        resposta = dobro();

        printf("%d\n",resposta);
    }
