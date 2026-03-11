Program M2EX5 ;
var med,A,B,C,D:real;

Begin
  
  writeln;
  writeln('Introduza quatro valores de temperatura');
  readln(A,B,C,D);
  
  med:= (A+B+C+D)/4;
  
  writeln('A media das temperaturas é: ', med:0:2);
  
End.