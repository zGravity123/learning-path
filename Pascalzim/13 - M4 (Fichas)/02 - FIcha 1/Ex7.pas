Program Pzim;

var 
  v: array[1..4, 1..4] of integer;
  i, j: integer;

procedure tabela;
begin
  textcolor(cyan);
  
  for i := 1 to 4 do
  begin
    for j := 1 to 4 do
    begin
      if i = j then
        v[i, j] := 1
      else if i + j = 5 then
        v[i, j] := 1
      else
        v[i, j] := 0;
        
      write(v[i,j]:3);
    end;
    writeln;
  end;
end;

Begin
  tabela;
  readkey;
End.	