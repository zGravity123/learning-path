Program Pzim ;
var v:array[1..10000] of integer;
		i,soma,nv:integer;
		
procedure somaa;
 begin
	for i := 1 to nv do
	 Begin
		writeln('Introduza o vetor #',i);
		readln(v[i]);
		
		soma := soma + v[i];
		clrscr;
		
	 end;
 end;
  
Begin
	textcolor(cyan);
	soma := 0;

	writeln('Quantos vetores deseja?');
	readln(nv);
	clrscr;
	
	somaa;
	
	
	writeln('A soma de todos os vetores é: ',soma);
  
End.