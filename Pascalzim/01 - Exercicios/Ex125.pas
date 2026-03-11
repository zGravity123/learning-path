Program Pzim ;
	var Dados: array[1..2, 1..4] of integer;
	 i,j:integer;
	 
Begin
	
		textcolor(cyan);
		for i := 1 to 2 do
			begin
				for j :=1 to 4 do
					begin
						writeln('Introduza um valor inteiro (Coluna #',i,' Posição #',j,')');
						readln(Dados[i,j]);
						clrscr;
					end;
				writeln;
			end;
	
		for i := 1 to 2 do
			Begin
				for j := 1 to 4 do
					begin
						write(Dados[i,j]:5);
					end;
				writeln;
			end;
  
End.