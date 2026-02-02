Program Pzim ;
var n,i: integer;

Begin
  textcolor(Yellow);
  Writeln('Digite um número N: ');
  Readln(N);

  for i := 2 to N do  
    if i mod 2 = 0 then 
      Writeln(i);

  Readln;
End.