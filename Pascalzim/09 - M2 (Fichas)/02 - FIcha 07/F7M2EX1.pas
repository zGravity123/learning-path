program Pzim;

var
  i: integer;
  numero, soma, media: real;

begin
  soma := 0; 

  for i := 1 to 10 do
  begin
    write('Digite o ', i, 'º número: ');
    readln(numero); 
    soma := soma + numero;  
  end;

  media := soma / 10;

  writeln('A média aritmética é: ', media:0:2);
end.
