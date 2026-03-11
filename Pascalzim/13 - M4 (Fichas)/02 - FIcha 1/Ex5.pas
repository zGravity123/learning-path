Program Pzim;
var 
  v: array[1..2, 1..4] of integer;
  soma1, soma2, i, j: integer;

procedure tabela;
begin
  randomize;
  textcolor(cyan);
  
  for i := 1 to 2 do
  begin
    for j := 1 to 4 do
    begin
      v[i,j] := random(50); 
    end;
    writeln;
  end;

  for i := 1 to 2 do
  begin
    for j := 1 to 4 do
    begin
      write(v[i,j]:3);
    end;
    writeln;
  end;
  
  soma1 := 0;
  soma2 := 0;
  
  for j := 1 to 4 do
  begin
    soma1 := soma1 + v[1,j];
    soma2 := soma2 + v[2,j];
  end;
  
end;

Begin
  tabela;
  readkey;
  writeln('A soma da linha 1 é: ', soma1);
  writeln('A soma da linha 2 é: ', soma2);
  readkey;
End.