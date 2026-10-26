Program Pzim ;

var i:integer;
		v:array[1..8] of integer;
Begin

	
	for i := 1 to 8 do
	 Begin
		writeln('Introduza um valor inteiro (#',i,')');
		readln(v[i]);
		clrscr;
	 end;
	 
	for i := 1 to 8 do
	 Begin
	 	writeln(v[i]);
	 end;	
	
	readkey;
	
  
End.