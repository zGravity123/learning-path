Program Pzim ;
var
		base,altura,volume:real;
		op:string;
		label home;
		
Begin
  
  home:
  clrscr;
  textcolor(Cyan);
	
	writeln('Digite o valor da Base');
	readln(base);
	clrscr;
	writeln('Digite o valor da Altura');
	readln(altura);
	
	
	volume := 3.14 * (base * base) * altura;
		
 	clrscr;
 	writeln('O volume é:',volume:2:0);
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