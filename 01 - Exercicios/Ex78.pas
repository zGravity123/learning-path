Program Pzim ;
var
		texto,op:string;
			cont,i:integer;
			label home;

Begin


	home:
	clrscr;
	textcolor(Cyan);
	writeln('Digite uma palavra');
	readln(texto);
		
		
		cont:= 0;
	  texto:= upcase(texto);
		
 	for i := 1 to length(texto) do
 	 begin
   	 if  (texto[i] = 'A') or (texto[i] = 'E') or (texto[i] = 'I') or
      	 (texto[i] = 'O') or (texto[i] = 'U') then
     	 cont := cont + 1;
   End;
     	 
  writeln('A palavra introduzida possui ',cont,' vogais!');
	writeln('Pressione "A" se quiser reniciar o progama, caso não pressino "B"');
	readln(op);
	
	if (op = 'A') then
		goto home;
	if (op = 'B') then
		writeln('Saindo do progamma.');
		delay(250);
		writeln('Saindo do progamma..');
		delay(250);	
	  writeln('Saindo do progamma...');
		delay(250);
		
		
 readkey; 
End.