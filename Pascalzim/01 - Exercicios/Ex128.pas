Program Pzim ;
	var Dados: array[1..5, 1..5] of integer;
	 contador,i,j:integer;
	 
Begin

	  randomize;
		textcolor(cyan);
		for i := 1 to 5 do
			begin
				for j :=1 to 5 do
					begin
						Dados[i,j] := random(11);
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
			
			
	writeln;
			
	  randomize;
		textcolor(cyan);
		for i := 1 to 5 do
			begin
				for j :=1 to 5 do
					begin
						
					end;
				writeln;
			end;
	
		for i := 1 to 5 do
			Begin
				for j := 1 to 5 do
					begin
						write(Dados[j,i]:5);
					end;
				writeln;
			end;
  
End.