Program Pzim ;
var
		i,num,m5,impares,pares:integer;
		op:string;
		label home;
		
Begin
  
  home:
  clrscr;
  textcolor(Cyan);
	
	for i:=1 to 10 do
	  begin
			writeln('Digite 10 valores');
			readln(num);
			if (num mod 2 = 0) then
				pares:= pares + 1
			else
				impares:= impares + 1;
				
			if (num mod 5 = 0) then
				 m5:= m5 + 1
		end;
		writeln('Pares =', pares);
		writeln('impares =', impares);
		writeln('Multiplo de 5 =', m5); 
		
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