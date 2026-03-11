Program Ex12;

var
  teste, trabalho, med: real;

Begin
  writeln('Introduza a nota do teste e trabalho');
  readln(teste, trabalho);  
  med:=teste*0.55+trabalho*0.45;
  
  writeln('A média é: ', med:0:2);
  readkey;
End.
