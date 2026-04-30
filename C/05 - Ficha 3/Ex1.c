#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{

    int op;
    float preco,precofinal,imposto;

    setlocale(LC_ALL, "Portuguese");

    printf("Insira o preço base do produto: ");
    scanf("%f", &preco);

    printf("Escolha uma das opçoes: \n");
    printf("\n1 - Coimbra \n2 - Lisboa \n3 - Porto \n4 - Evora \n");
    scanf("%d", &op);

    home:
    switch (op) {
        case 1:
            printf("Distrito: Coimbra\n");

            imposto = preco*0.07;
            precofinal = preco + imposto;

            printf("\nO produto com a taxa passa a custar: %0.2f",precofinal);
            break;
        case 2:
            printf("Distrito: Lisboa\n");

            imposto = preco*0.07;
            precofinal = preco + imposto;

            printf("\nO produto com a taxa passa a custar: %0.2f",precofinal);
            break;
        case 3:
            printf("Distrito: Porto\n");

            imposto = preco*0.07;
            precofinal = preco + imposto;

            printf("\nO produto com a taxa passa a custar: %0.2f",precofinal);
            break;
        case 4:
            printf("Distrito: Evora\n");

            imposto = preco*0.07;
            precofinal = preco + imposto;

            printf("\nO produto com a taxa passa a custar: %0.2f",precofinal);
            break;
        default:
            printf("Distrito desconhecido!\n");
    }
}
