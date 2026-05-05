#include <stdio.h>

main()
{
    int a, b, c, max, min, amplitude;

    printf("Digite tres numeros inteiros: ");
    scanf("%d %d %d", &a, &b, &c);

    max = a; min = a;


    // Descobrir o max

    if(a > max)
        max = a;
    else if(b > max)
        max = b;
    else if(c > max)
        max = c;

    // Descobrir o min

    if (a < min)
        min = a;
    else if(b < min)
        min = b;
    else if(c < min)
        min = c;

    amplitude = max - min;

    printf("Maximo: %d \n", max);
    printf("Minimo: %d \n", min);
    printf("Amplitude: %d \n", amplitude);
}
