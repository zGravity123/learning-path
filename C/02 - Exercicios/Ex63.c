#include <stdio.h>
#include <locale.h>

    // ler uma string e contar quantas vogais a palavra tem

main()
{

    setlocale(LC_ALL, "Portuguese");

    char palavra1[50], palavra2[50];
    int num1,num2,i,cont1 = 0, cont2 = 0;

    printf("Escreva duas palavras: ");
    scanf("%s %s",&palavra1, &palavra2);

    num1 = strlen(palavra1);
    num2 = strlen(palavra2);
    strlwr(palavra1, palavra2);

    for (i = 0; i < num1; i++)
    {
        if ((palavra1[i] == 'a')||(palavra1[i] == 'e') || (palavra1[i] == 'i') || (palavra1[i] == 'o') || (palavra1[i] == 'u'))
          cont1++;
    }


    for (i = 0; i < num2; i++)
    {
        if ((palavra2[i] == 'a')||(palavra2[i] == 'e') || (palavra2[i] == 'i') || (palavra2[i] == 'o') || (palavra2[i] == 'u'))
          cont2++;
    }

    if (cont1 > cont2)
        printf("A palavra que tem mais vogais é: %s\n",palavra1);
    else
        printf("A palavra que tem mais vogais é: %s\n",palavra2);

}

