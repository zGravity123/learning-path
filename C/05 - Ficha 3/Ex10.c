#include <stdio.h>

main() {
    float med, teste, trabalho, defesa;

    printf("Introduza a nota do Teste: ");
    scanf("%f", &teste);

    printf("Introduza a nota do Trabalho: ");
    scanf("%f", &trabalho);

    printf("Introduza a nota da Defesa: ");
    scanf("%f", &defesa);

    med = (teste * 0.6) + (trabalho * 0.2) + (defesa * 0.2);

    printf("Media final: %.2f \n", media);

    if (media >= 9.5)
     printf("Aprovado \n");
    else {
     printf("Reprovado \n");


}
