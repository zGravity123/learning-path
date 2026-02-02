Program Pzim ;
var n:integer;
Begin
  
	textcolor(Yellow);
	writeln('Introduza um número');
	readln(n);
	clrscr;

	if n mod 2 = 0 then
		writeln('Par')
	else
		writeln('Impar');
	readkey;
	End.