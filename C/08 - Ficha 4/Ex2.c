#include <stdio.h>

main() {
    float numeros[10];
    float soma = 0;
    float media;

    for (int i = 0; i < 10; i++) {
        printf("Digite o %dº número: ", i + 1);
        scanf("%lf", &numeros[i]);
        soma = soma + numeros[i];
    }

    media = soma /(float) 10.0;

    printf("A média dos números é: %.2lf\n", media);
}
