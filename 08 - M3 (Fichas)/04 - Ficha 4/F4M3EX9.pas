Program Pzim;
var
  i, valor, soma, acimaMedia: integer;
  media: real;
  valores: array[1..5] of integer;

begin
  textcolor(cyan);
  soma := 0;
  acimaMedia := 0;

  for i := 1 to 5 do
  begin
    clrscr;
    writeln('Digite o valor #', i);
    readln(valores[i]);
    soma := soma + valores[i];
  end;
  
  media := soma / 5;

  for i := 1 to 5 do
    if valores[i] > media then
      acimaMedia := acimaMedia + 1; 

  writeln('Valores superiores à média: ', acimaMedia);
  writeln('A média é: ', media:0:2);
  readkey;
end.
