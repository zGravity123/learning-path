#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    int idd;

    printf("Introduza a idade de uma pessoa! \n");
    scanf("%d", &idd);
    system("cls");

    if (idd >= 18)
        printf("A pessoa é Adulta!");
    else
        printf("A pessoa é Menor!");

}
