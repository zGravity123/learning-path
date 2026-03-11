Program Pzim ;
var v,cont,soma:Integer;
		med:real;
Begin
	
	textcolor(cyan);
	repeat 
		writeln('Introduza sucessivamente números inteiros positivos');
		readln(v);
		clrscr;
		
		cont := cont + 1;
		soma := soma + v;
		
	until v = 0;
	
		med := soma/cont;
	
	writeln('Foram introduzidos ',cont,'números!');
	writeln('A soma de todos os números é: ',soma);
	writeln('A média de todos os números é: ',med:0:2);
  
End.