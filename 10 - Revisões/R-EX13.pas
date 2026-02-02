Program Pzim ;
var n:integer;
Begin
	textcolor(Yellow);
	
   writeln('Introduza um valor valido');
   readln(n);
   clrscr;
   if (n>= 0) and (n<=10) then
   	writeln('Valor válido')
  else
  	writeln('Valo inválido');
  readkey;
  	
End.