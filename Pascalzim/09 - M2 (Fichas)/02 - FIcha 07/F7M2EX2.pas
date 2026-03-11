program Pzim;

var
  n,soma,i:integer;

begin
  
  Write('Digite o valor de n: ');
  ReadLn(n);

  soma := 0;
  
  for i := 1 to n do
    soma := soma + i;
  
  WriteLn('A soma dos ', n, ' primeiros números naturais é: ', soma);
end.
