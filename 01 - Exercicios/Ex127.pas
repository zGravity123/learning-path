Program Pzim ;
	var Dados: array[1..10, 1..10] of integer;
	 contador,i,j:integer;
	 
Begin

	  randomize;
		textcolor(cyan);
		for i := 1 to 10 do
			begin
				for j :=1 to 10 do
					begin
						Dados[i,j] := random(101);
					end;
				writeln;
			end;
	
		for i := 1 to 10 do
			Begin
				for j := 1 to 10 do
					begin
						write(Dados[i,j]:5);
					end;
				writeln;
			end;
  
End.