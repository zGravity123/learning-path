Program Pzim;

var
  v: array[1..20] of integer;
  i, soma: integer;
  media: real;

Begin
  randomize; 
	textcolor(cyan);  

  soma := 0;
  
  for i := 1 to 20 do
  begin
    v[i] := random(100) + 1;  
    soma := soma + v[i];
  end;

  media := soma / 20;  

  writeln('Vetor:');
  for i := 1 to 20 do
    writeln(v[i]);

  writeln;
  writeln('Valores maiores que a média:');
  for i := 1 to 20 do
    if v[i] > media then
      writeln(v[i]);

  writeln;
  writeln('Valores múltiplos de 5:');
  for i := 1 to 20 do
    if v[i] mod 5 = 0 then
      writeln(v[i]);

  readln; 
End.