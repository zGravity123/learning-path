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
  
  for i := length(fr) downto 1 do
  	Begin
  		clrscr;
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