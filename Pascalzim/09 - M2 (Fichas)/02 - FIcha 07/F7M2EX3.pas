program Pzim;

var
  n,i,soma,conta: integer;

begin
  write('Digite um número inteiro n: ');
  readln(n);
  
  soma := 0;
  count := 1;
  
  for i := 1 to n do
  begin
    soma := soma + count;
    conta := conta + 2; 
  end;
  
  writeln('O quadrado de ', n, ' é ', soma);
end.
