Program Ficha6_Ex2_4 ;
var P,A,imc:real;
Begin

	textcolor(Yellow);
	 writeln('Introduza o seu peso');
	 readln(P);
	clrscr;
	 writeln('Introduza a sua altura');
	 readln(A);
	clrscr;
	 
	 imc:= P/A;
	 
	  if (imc > 30)then
		writeln('Está obeso(a)')
		else
		writeln('Está sáudavel');
		readkey;
  
End.