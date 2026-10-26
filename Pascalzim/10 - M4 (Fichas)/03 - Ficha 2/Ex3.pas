Program Pzim ;

var menor,soma,i:integer;
		med:real;
		v:array[1..6] of integer;
Begin

	
	for i := 1 to 6 do
	 Begin
		writeln('Introduza um valor inteiro (#',i,')');
		readln(v[i]);
		clrscr;
	 end;
	 
		menor := 9999;
	
	for i := 1 to 6 do
	 Begin
	 
	 	if v[i] < menor then
	 		menor := v[i];
	 	
	 end;
	
	readkey;
	writeln('Menor: ',menor:0:2);
	
  
End.