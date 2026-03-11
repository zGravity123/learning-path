Program Pzim ;
var soma,med,a,b,c:real;
Begin
  
  textcolor(Yellow);
  writeln('Introduza 10 números');
  readln(a,b,c);
  soma:= a+b+c;
  med:=a;
	clrscr;
	writeln('A soma é:', soma:2:0);
	writeln('A media é:', med:2:0);
	readkey; 
End.