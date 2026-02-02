Program Ex12;

Var Resultado, R: real; // Declaração das variáveis: R para o raio

Begin
  writeln('Introduza o Raio');
  readln(R); 

  resultado := 3.1416 * (R * R); // Calcula a área

  writeln('A área é: ', resultado:0:2); 
  readkey; 
End.
