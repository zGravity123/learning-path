Program Pzim;
var
  opc,i,vogais:integer;
  fr:string;
  op:char;
label home;

Begin
	home:
  textcolor(Cyan);
  writeln('1 - Apresentar quantos caracteres a frase');
  writeln('2 - Lê uma frase e troca os espaços por um "#"');
  writeln('3 - Lê uma frase e apresenta na vertical');
  writeln('4 - Lê uma frase verifica quantas vogais tem');
  writeln('5 - Lê uma frase e substitui as vogais pela sua respetiva maiúscula');
  writeln('6 - Lê uma frase e apresenta a frase de forma invertida');
  writeln('7 - Lê uma frase e apresenta as consuantes em maiúsculas e as vogais ficam minúsculas');
  writeln('8 - Lê uma frase e altera as vogais por um espaço'); 
  writeln('');
  writeln('0 - Sair do progama');
  readln(opc);

  case opc of

    1: Begin
         clrscr;
         textcolor(cyan);
         writeln('Digite uma frase');
         readln(fr);

         i := length(fr);

         writeln('A frase introduza tem ',i,' caracteres!');
         readkey;
         clrscr;
       End;

    2: Begin
         clrscr;
         textcolor(cyan);
         writeln('Digite uma frase');
         readln(fr);

         for i := 1 to length(fr) do
         Begin
           if fr[i] = ' ' then
             write('#')
           else
             write(fr[i]);
         End;

         readkey;
         clrscr;
       End;

    3: Begin
         clrscr;
         textcolor(cyan);
         writeln('Digite uma frase');
         readln(fr);

         for i := 1 to length(fr) do
         Begin
           writeln(fr[i]);
         End;

         readkey;
         clrscr;
       End;
       
    4: Begin
		 	clrscr;
		  textcolor(cyan);
		  writeln('Digite uma frase');
		  readln(fr);
		  
		  fr := upcase(fr);
		  vogais := 0;
		  
		  for i := 1 to length(fr) do
		  	Begin
		  		if (fr[i] = 'A') or (fr[i] = 'E') or (fr[i] = 'I') or (fr[i] = 'O') or (fr[i] = 'U') then
		  			vogais := vogais + 1
		  	end;
		   writeln('O texto introduzido possui ',vogais,' vogais!');
		   readkey;
		   clrscr;
		 End;
		 
	 5: Begin

		 	clrscr;
		  textcolor(cyan);
		  writeln('Digite uma frase');
		  readln(fr);
		  
		  vogais := 0;
		  
		  for i := 1 to length(fr) do
		  	Begin
		  		if (fr[i] = 'a') or (fr[i] = 'e') or (fr[i] = 'i') or (fr[i] = 'o') or (fr[i] = 'u') then
		  			fr[i] := upcase(fr[i]);
		  		write(fr[i]);
		  	end;
		   readkey;
		   clrscr;
	   End;
	   
	6: Begin
		 	clrscr;
		  textcolor(cyan);
		  writeln('Digite uma frase');
		  readln(fr);
		  
		  vogais := 0;
		  
		  for i := length(fr) downto 1 do
		  	Begin
		  		clrscr;
		  		write(fr[i]);
		  	end;
		   readkey;
		   clrscr;
		  
	   End;
	   
	7: Begin
		 	clrscr;
		  textcolor(cyan);
		  writeln('Digite uma frase');
		  readln(fr);
		  
		  
		  for i := 1 to length(fr) do
		  	Begin
		  		if (fr[i] = 'a') or(fr[i] = 'e') or (fr[i] = 'i') or (fr[i] = 'o') or (fr[i] = 'u') then
		  		 Begin
		  		  write(fr[i]);
		  		 end
		  		 
		  		else
		  		 begin
		  			fr[i] := upcase(fr[i]);
		  			write(fr[i]);
		  		 end;
		  	end;
		   readkey;
		   clrscr;

	   End;
	   
	8: Begin
		 	clrscr;
		  textcolor(cyan);
		  writeln('Digite uma frase');
		  readln(fr);
		  
		  
		  for i := 1 to length(fr) do
		  	Begin
		  		if (fr[i] = 'a') or(fr[i] = 'e') or (fr[i] = 'i') or (fr[i] = 'o') or (fr[i] = 'u') then
		  		 Begin
		  		  write(fr[i]);
		  		 end
		  		 
		  		else
		  		 begin
		  			fr[i] := upcase(fr[i]);
		  			write(fr[i]);
		  		 end;
		  	end;
		   readkey;
		   clrscr;
		  
	   End;
	end; 

	clrscr;
	writeln('Deseja reniciar o Progama?');
	writeln('      [S]im ou [N]ão      ');
	readln(op);
		  
		op := upcase(op);
		  
	if (op = 'S') then
		goto home;
	if (opc = 0) then
		
	else
		

End.
