#include <stdio.h>

main() 
{
    
    float n1, n2, n3, media;

    printf("Introduza três numeros: ");
    scanf("%f %f %f", &n1, &n2, &n3);

    media = (n1 + n2 + n3) / 3;

    printf("A media dos tres numeros e: %.2f\n", media);
}
