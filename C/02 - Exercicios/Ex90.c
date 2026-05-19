#include <stdio.h>

    int A,B;

    int adicionar()
    {
        return A + B;
    }

    int subtrair()
    {
        return A / B;
    }

    main()
    {
        int resposta;
        printf("Introduza o valor de A \n");
        scanf("%d",&A);
        printf("Introduza o valor de B \n");
        scanf("%d",&B);

        resposta = adicionar();

        printf("%d\n",resposta);

        resposta = adicionar();

        printf("%d\n",resposta);
    }
