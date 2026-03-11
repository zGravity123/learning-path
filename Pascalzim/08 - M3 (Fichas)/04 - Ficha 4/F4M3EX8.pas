Program Pzim ;
var
  i: Integer;
  contador: Integer;

begin
  contador := 0;
  
  writeln('Números pares entre 1 e 50');
  
  for i := 1 to 50 do
  begin
    if i mod 2 = 0 then
    begin
      writeln(i); 
      contador := contador + 1;  
    end;
  end;
  
  writeln('Números pares encontrados: ', contador);
end.	
End.