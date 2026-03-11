Program Ficha6_Ex2_2 ;
var n1,n2:integer;
Begin

	textcolor(Yellow);
	 writeln('Introduza dois números distintos');
	 readln(n1,n2);
		if (n1 > n2) then
			writeln('O número maior é: ',n1)
		else
			writeln('O número maior é: ',n2);
		readkey;
  
End.