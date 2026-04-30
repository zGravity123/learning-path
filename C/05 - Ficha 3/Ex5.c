#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <time.h>



main()
{

    int t1, t2, t3, max, min, amplitude;

    printf("Introduza 3 temperaturas: ");
    scanf("%d %d %d", &t1, &t2, &t3);

    max = t1;
    min = t1;

    // Verificar o valor mais alto

    if (t1 > max)
      max = t1;
    if (t2 > max)
      max = t2;
    if (t3 > max)
      max = t3;

    // Verificar o valor mais baixo

    if (t1 < min)
      min = t1;
    if (t2 < min)
      min = t2;
    if (t3 < min)
      min = t3;

    amplitude = max - min;

    printf("Amplitude termica: %d\n", amplitude);
}
