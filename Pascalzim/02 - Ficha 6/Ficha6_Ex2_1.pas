Program Ficha6_Ex2_1 ;
var n:integer;
Begin

	textcolor(Yellow);
	 writeln('Introduza um número');
	 readln(n);
		if (n mod 2) = 0 then
			writeln('O número introduzido é par')
		else
			writeln('O número introduzido é impar');
		readkey;
  
End.