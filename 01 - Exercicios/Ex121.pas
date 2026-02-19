Program Pzim ;

	var palavra, pal1, pal2:string;
				a,b:integer;
	function fpalavra : integer;
	Begin		
		a := length(pal1);
		b := length(pal2);
		
	 if a > b then
	 	fpalavra := a
	 else
	 	fpalavra := b;
	end;
	
Begin
  writeln('Introduza a palavra #1');
	readln(pal1);
	writeln('Introduza a palavra #2');
	readln(pal2);
	clrscr;
	
	if fpalavra = a then
		writeln(pal1)
	else
		writeln(pal2);

End.