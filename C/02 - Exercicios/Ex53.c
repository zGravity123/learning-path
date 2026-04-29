#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int op;

    menu:
        printf("1 - Adicionar Cliente \n");
        printf("2 - Listar cliente \n");
        printf("3 - Editor Cliente \n");
        printf("4 - Guardar Ficheiro \n");
        printf("5 - Sair \n");
        scanf("%d", &op);

        if (op <= 4)
            goto menu;

    printf(" Para sair pressione qualquer tecla");
    printf("\n");

}
