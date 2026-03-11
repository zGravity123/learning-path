Program Pzim ;

var soma,i:integer;
		med:real;
		v:array[1..10] of integer;
Begin

	
	for i := 1 to 10 do
	 Begin
		writeln('Introduza um valor inteiro (#',i,')');
		readln(v[i]);
		clrscr;
	 end;
	 
	for i := 1 to 10 do
	 Begin
	 
	 	soma := soma + v[i]; 
	 	med := soma / 10;
	 	
	 end;
	
	readkey;
	writeln('Mêdia: ',med:0:2);
	writeln('Soma: ',soma:0:2);
	
  
End.