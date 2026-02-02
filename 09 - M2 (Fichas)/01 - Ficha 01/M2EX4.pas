Program M2EX4 ;
var volume,Pi,R,A:real;

Begin
  
	Pi:= 3.14;
  
  writeln;
  writeln('Introduza o valor do raio da base');
  readln(R);
  writeln('Introduza o valor da altura');
  readln(A);
  
  volume:= Pi * R * R * A;
  
  writeln('O volume do recepiente é: ', volume:0:2);
  
End.