Program Pzim;
uses crt;

var
  negativos,i,v: integer;
  op: char;

label home;

Begin
home:
  clrscr;
  textcolor(Cyan);
   
  for i := 1 to 5 do
   begin  
   		clrscr;
  		writeln('Digite o valor #',i);
  		readln(v);
   	if (v < 0) then
 			negativos := negativos + 1;
   end;
   
 if (v < 0) then
 	negativos := negativos + 1;
 	
 	clrscr;
 	writeln('- - - - - - - - - - - - - - - - - -');
 	writeln(' São ', negativos, ' números negativos');
 	writeln('');
 	writeln(' Números Inseridos: ',v);
  
  

  readkey;

  clrscr;
  writeln('Pressione A para reiniciar ou B para sair');
  readln(op);
  op := upcase(op);

  if op = 'A' then
    goto home
  else
  begin
    clrscr;
    writeln('Saindo do programa...');
    delay(500);
  end;
End.
