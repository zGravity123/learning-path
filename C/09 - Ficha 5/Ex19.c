
#include <stdio.h>
#include <locale.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    FILE *fp;
    char ch;
    int contador = 0;

    fp = fopen("origem.txt", "r");

    ch = fgetc(fp);

    toupper(ch);

    while (ch != EOF)
    {
        if (ch != 'A' && ch != 'E' && ch != 'I' && ch != 'O' && ch != 'U')
            contador++;

        ch = fgetc(fp);
    }

    fclose(fp);

    printf("Existem %d caracteres diferentes de vogais \n", contador);
}
