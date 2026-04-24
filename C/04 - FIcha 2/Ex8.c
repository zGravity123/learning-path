#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

main()
{
    char c;

    setlocale(LC_ALL, "Portuguese");

    printf("Introduza um caracter: ");
    scanf("%s",&c);

    c = toupper(c);

    if (c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U')
        printf("É uma vogal");

}
