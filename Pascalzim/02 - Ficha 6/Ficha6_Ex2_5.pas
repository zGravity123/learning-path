Program Ficha6_Ex2_5 ;
var sl,sb,h:real;
Begin

	textcolor(Yellow);
	 writeln('Quantas horas trabalhou?');
	 readln(H);
	clrscr;
	
		sb:= h * 14.50;

	if (sb >= 1200) then
		sl:=  sb-(sb*0.15)
	else
		sl:= sb;
		writeln('O seu salario é: ',sl:0:2);
	readkey;
  
End.