Program Pzim ;
var n,i: integer;

Begin
  textcolor(Yellow);
  Writeln('Digite um número N: ');
  Readln(N);

  i := N;
  while i >= 1 do
  begin
    Writeln(i);
    i := i - 1;
  end;

  Readln;
End.