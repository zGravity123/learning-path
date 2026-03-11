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
  
  i := length(fr);
  
  writeln('A frase introduza tem ',i,' caracteres!');
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