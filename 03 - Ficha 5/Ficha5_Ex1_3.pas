Program Ficha5_Ex1_3 ;
var D,C:integer;
Begin

	textcolor(Yellow);
	writeln('Qual a distancia percorrida? (km)');
	readln(D);
	clrscr;
	writeln('Quanto de combustível foi gasto?');
	readln(C);
	clrscr;
	writeln('O consumo médio foi de ', D/C:0:2, ' km/l');
	readkey;
  
End.