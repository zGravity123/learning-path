Program R-EX5 ;
var n:integer;
Begin
  
	textcolor(Yellow);
	writeln('Introduza um número');
	readln(n);
	clrscr;

	if (n mod 3 = 0) and (n mod 5 = 0) then
  	writeln('É múltiplo de ambos')
	else if n mod 3 = 0 then
  	writeln('É múltiplo de 3')
	else if n mod 5 = 0 then
  	writeln('É múltiplo de 5')
	else
  	writeln('Não é múltiplo de nenhum');

	readkey;
	End.