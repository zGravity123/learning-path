Program Pzim ;
var v:array[1..10000] of integer;
		i,soma,nv:integer;
		med:real;
		
procedure verificacao;
 begin
	for i := 1 to nv do
	 Begin
		writeln('Introduza o vetor #',i);
		readln(v[i]);
		
		soma := soma + v[i];
		med := soma/nv;
		
		clrscr;
		
	 end;
 end;
  
Begin
	textcolor(cyan);

	writeln('Quantos vetores deseja?');
	readln(nv);
	clrscr;
	
	verificacao;
	
	writeln('O maior número introduzido é: ',med:0:2);
  
End.