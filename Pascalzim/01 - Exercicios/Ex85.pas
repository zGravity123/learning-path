Program Pzim ;
var j,i,num:integer;
		oc,texto:string;
		op: char;
		label home;
Begin
	num:=1;
	textcolor(Cyan);
	
	home:
	clrscr;
	writeln('Escolha uma opção');
	writeln('A - Escrita na horizontal');
	writeln('B - Escrita na vertical');
	writeln('C - Escrita na diagonal');
	readln(op);
	clrscr;
	
	
 if op = 'A' then
  begin
 		writeln('Insira o seu texto');
 		readln(texto);	
 		clrscr;	
	 	
	for i := 1 to length(texto) do
 	 begin
   	 write(texto[i], ' ');   
   	 delay(150);
   End;  
	 readkey;
	end;
	  
 if op = 'B' then
  begin
 		writeln('Insira o seu texto');
 		readln(texto);	
		clrscr;
		
	for i := 1 to length(texto) do
 		 begin
   		 writeln(texto[i], ' ');   
   		 delay(150);
  	 End;
     readkey; 
 	end; 

 if op = 'C' then
 begin
 	writeln('Insira o seu texto');
 	readln(texto);	
	clrscr;
	
 for i := 1 to length(texto) do
 		 begin
 for j:= 1 to i - 1 do
			 write(' ');
   		 writeln(texto[i], ' ');   
   		 delay(150);
  	 End;  
		 readkey; 
 end; 
 
 
 
 	writeln('Pressione "A" se quiser reniciar o progama, caso não pressine "B"');
	readln(oc);
 
 	if (oc = 'A') then
		goto home;            
	if (oc = 'B') then
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