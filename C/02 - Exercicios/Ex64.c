#include <stdio.h>

    // em vez de pedirmos uma palavra pedimos 2 e dizemos no final qual tem mais numeros de vogais

main()
{
    char palavra[50];
    int num,i,cont = 0;

    printf("Escreva uma palavra: ");
    scanf("%s",&palavra);

    num = strlen(palavra);
    strlwr(palavra);

    for (i = 0; i < num; i++)
    {
        if ((palavra[i] == 'a')||(palavra[i] == 'e') || (palavra[i] == 'i') || (palavra[i] == 'o') || (palavra[i] == 'u'))
          cont++;
    }

    printf("A palavra tem %d vogais \n",cont);

}

