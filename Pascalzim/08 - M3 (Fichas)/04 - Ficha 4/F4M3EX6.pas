Program Pzim ;
var op:string;
		nn:integer;

label home;
Begin
home:
	 textcolor(Cyan);
   writeln('Digite um número inteiro');
   readln(nn);
   
   if (nn > 0) then
   	writeln('O número introduzido é inteiro');
   if (nn < 0) then
   	writeln('0 número introduzido é negativo');
   if (nn = 0) then
   	writeln('O número introduzido é zero')
   else
   
  clrscr; 
  writeln('Deseja reniciar o Progama?');
  writeln('      [S]im ou [N]ão      ');
  readln(op);
  
  op := upcase(op);
  
  if (op = 'S') then
   goto home
  else
  
End.