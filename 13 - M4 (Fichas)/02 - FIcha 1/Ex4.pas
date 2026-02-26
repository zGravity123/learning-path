Program Pzim ;
var v:array[1..3, 1..3] of integer;
		i,j:integer;

procedure tabela;
	Begin
	
	 	randomize;
		textcolor(cyan);
		for i := 1 to 3 do
			begin
				for j :=1 to 3 do
					begin
						textcolor(yellow);
						v[i,j] := random(50);
					end;
				writeln;
			end;
			
		for i := 1 to 3 do
			Begin
				for j := 1 to 3 do
					begin
						write(v[i,j]:3);
					end;
				writeln;
			end;
	
	end;
Begin

	tabela;
	readkey;
  
End.