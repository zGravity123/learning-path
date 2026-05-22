#include <stdio.h>
#include <locale.h>
#include <ctype.h>

main()
{
    setlocale(LC_CTYPE, "Portuguese");

    char c;
    int vogais = 0;

    FILE *f = fopen("produtos.txt", "r");

    while (fscanf(f, "%c", &c) != EOF)
    {
        if (toupper(c) == 'A' || toupper(c) == 'E' || toupper(c) == 'I' || toupper(c) == 'O' || toupper(c) == 'U')
            vogais++;
    }

    fclose(f);

    printf("O arquivo tem %d vogais \n", vogais);
}
