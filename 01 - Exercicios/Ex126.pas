Program Pzim ;
	var Dados: array[1..5, 1..5] of integer;
	 contador,i,j:integer;
	 
Begin

	
		textcolor(cyan);
		for i := 1 to 5 do
			begin
				for j :=1 to 5 do
					begin
					  contador := contador + 1;
						Dados[i,j] := contador;
					end;
				writeln;
			end;
	
		for i := 1 to 5 do
			Begin
				for j := 1 to 5 do
					begin
						write(Dados[i,j]:5);
					end;
				writeln;
			end;
  
End.