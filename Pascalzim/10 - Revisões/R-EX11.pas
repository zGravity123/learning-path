Program Pzim ;
var soma,n,i: integer;

Begin
  textcolor(Yellow);
  Writeln('Digite um número N: ');
  Readln(N);

	soma:= 0;

  for i := 1 to N do  
  if i mod 2 = 0 then
    soma:= soma + i;
      Writeln('O resultado é: ',soma);

  Readln;
End.