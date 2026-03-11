Program Pzim ;
var op,fr:string;
		vogais, i:integer;
		

label home;

Begin
 home:
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
  
  
  writeln('Deseja reniciar o Progama?');
  writeln('      [S]im ou [N]ão      ');
  readln(op);
  
  op := upcase(op);
  
  if (op = 'S') then
   goto home
  else
  	
End.