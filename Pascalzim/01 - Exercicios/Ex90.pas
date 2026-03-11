Program Pzim ;
var
		espacos,i:integer;
		op,frase,espaco:string;
		label home;
		
Begin
  
  home:
  clrscr;
  textcolor(Cyan);
	
	espacos:= 0;
	espaco := ''; 
	
	writeln('Introduza uma frase');
	readln(frase);
      
 
	for i := 1 to length(frase) do
  begin
    if frase[i] <> ' ' then
      Espaco := Espaco + frase[i];
  end;

  writeln(Espaco);
	
	
	
	
	
	
	
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