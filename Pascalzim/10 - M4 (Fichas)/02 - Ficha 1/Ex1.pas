Program Pzim ;
var v:array[1..10] of integer;
		i:integer;
procedure aleatorio;
	begin
	
		randomize;
	 
		for i := 1 to 10 do
			begin
				v[i] := random(100);
			end;
	end;
	
procedure resultado; 
	begin
	 
		for i := 1 to 10 do
			begin
				writeln(v[i]);
			end;
	end;
Begin
  aleatorio;
  resultado;
  readkey;
  
End.