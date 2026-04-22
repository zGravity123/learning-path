#include <stdio.h>
#include <locale.h>
#include <string.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    char frase[500];

    printf("\033[36mIntroduza um nome de utilizador! \n");
    scanf("%s", &frase);

    system("cls");

    printf("Olá, %s \n",frase);

}
