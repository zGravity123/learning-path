program Pzim;

var
  num, i, fatorial: Integer;

begin
  Write('Digite um número: ');
  ReadLn(num);

  fatorial := 1;

  for i := 1 to num do
  begin
    fatorial := fatorial * i;
  end;

  WriteLn('O fatorial de ', num, ' é: ', fatorial);
end.
