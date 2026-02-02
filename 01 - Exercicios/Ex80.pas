Program Pzim ;
var

		op:string;
		L1,L2:char;
		diff:integer;
		label home;
Begin
  
  home:
  clrscr;
  textcolor(Cyan);


	writeln('Digite duas letras');
	readln(L1, L2);
	
	
	diff := ord(L1) - ord(L2);
	
	writeln('A diferençã númerica é: ',diff,'. Pressione qualquer tecla pra continuar');
	readkey;
	
	
 	clrscr;
	writeln('Pressione "A" se quiser reniciar o progama, caso não pressine "B"');
	readln(op);
	
	if (op = 'A') then
		goto home;            
	if (op = 'B') then
	  clrscr;
		writeln('Saindo do progamma.');
		delay(250);
		clrscr;
		writeln('Saindo do progamma..');
		delay(250);	
		clrscr;
	  writeln('Saindo do progamma...');
		delay(250);
  
  
End.