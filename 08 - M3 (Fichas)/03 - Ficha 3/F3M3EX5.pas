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
  
  vogais := 0;
  
  for i := 1 to length(fr) do
  	Begin
  		if (fr[i] = 'a') or (fr[i] = 'e') or (fr[i] = 'i') or (fr[i] = 'o') or (fr[i] = 'u') then
  			fr[i] := upcase(fr[i]);
  		write(fr[i]);
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