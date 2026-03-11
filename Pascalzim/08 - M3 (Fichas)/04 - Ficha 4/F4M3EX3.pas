Program Pzim ;
var op,fr:string;
		i:integer;

label home;

Begin
 home:
 	clrscr;
  textcolor(cyan);
  writeln('Digite uma frase');
  readln(fr);
  
  for i := 1 to length(fr) do
  	Begin
  			writeln(fr[i]);
  	end;
   readkey;
   clrscr;
  
  
  writeln('Deseja reniciar o Progama?');
  writeln('      [S]im ou [N]ão      ');
  readln(op);
  
  op := upcase(op);
  
  if (op = 'S') then
   goto home
  else
  	
End.