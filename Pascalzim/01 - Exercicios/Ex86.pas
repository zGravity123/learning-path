Program Pzim ;
var j,num:integer;
		oc:string;
		i,op: char;
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
 		clrscr;	
	 	
	for i := 'a' to 'z' do
 	 begin
   	 write(i, ' ');   
   	 delay(150);
   End;  
	 readkey;
	end;
	  
 if op = 'B' then
  begin
		clrscr;
		
	for i := 'a' to 'z' do
 		 begin
   		 writeln(i, ' ');   
   		 delay(150);
  	 End;
     readkey; 
 	end; 

 if op = 'C' then
 begin	
	clrscr;
 		for i := 'a' to 'z' do
 	begin
 		writeln(i:num);
 		num := num + 1;
 		delay(150)
 	end;
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