Program Pzim ;
var e:real;
Begin
  
  textcolor(Yellow);
  writeln('Quantos euros são?');
  readln(e);
	clrscr;
	writeln('São ',e*100:0:2,' centimos');
	readkey; 
End.