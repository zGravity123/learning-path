Program Pzim ;
var v:array[1..10000] of integer;
		i,maior,nv:integer;
		
procedure verificacao;
 begin
	for i := 1 to nv do
	 Begin
		writeln('Introduza o vetor #',i);
		readln(v[i]);
		
		if v[i] > maior then
			maior := v[i];
		clrscr;
		
	 end;
 end;
  
Begin
	textcolor(cyan);
	maior := 0;

	writeln('Quantos vetores deseja?');
	readln(nv);
	clrscr;
	
	verificacao;
	
	writeln('O maior número introduzido é: ',maior);
  
End.