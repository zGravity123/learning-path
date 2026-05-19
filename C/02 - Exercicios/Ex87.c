#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <time.h>

main()
{
    setlocale(LC_ALL, "Portuguese");

    FILE *f = fopen("Notas.TXT", "w");

    for (int i = 0; i < 10; i++)
    {
        printf("Introduza i");
    }

    fprintf(fp, "\n Foram trocados %d valores! \n",qnt);
    printf("\n Foram trocados %d valores! \n",qnt);
    fclose(fp);
}
