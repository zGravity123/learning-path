Program Pzim ;
var a,b,c,maior:real;
Begin
  
	textcolor(Yellow);
	writeln('Introduza 3 números');
	readln(a, b, c);
	clrscr;

	 maior := a;

	if b > maior then
 	 maior := b;

	if c > maior then
 	 maior := c;

	writeln('O maior número é: ', maior:0:2);
	readkey;
	End.