Program Ficha5_Ex1_6 ;
var V,H,D:real;
	
Begin

	textcolor(Yellow);
  
  
  writeln('Quanto tempo foi gasto? (horas)');
  readln(H);
  clrscr;
  writeln('Qual a distância percorrida? (km)');
  readln(D);
  clrscr;
  
  V:= D/H;


  writeln('A velocidade média é: ', V:2:0, 'km/h');
  
  readln;
  
End.