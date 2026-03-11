Program Pzim ;
var
		divisores,primo,i,numero:integer;
		op,rs:string;
		label home;
		
Begin
  
  home:
  clrscr;
  textcolor(Cyan);
	
	writeln('Digite um número');
	readln(numero);
	
  primo := 1;  

	for i:=1 to numero do
		begin
			if numero mod i = 0 then
			divisores:=divisores +1;
		end;
	if divisores = 2 then
		writeln('Primo')
	else
		writeln('Não é primo');
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