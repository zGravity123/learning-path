Program Ex12;

const pi = 3.1416;   // Define o valor do pi

Var Resultado,R:real;

Begin
  writeln('Introduza o Raio');
  readln(R);

  resultado := pi * (R * R);

  writeln('A área é: ', resultado:0:2);
  readkey;
End.
