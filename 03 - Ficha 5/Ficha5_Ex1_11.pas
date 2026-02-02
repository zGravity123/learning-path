Program Ficha5_Ex1_11 ;
var x1,x2,y1,y2,D:real;
	
Begin

	textcolor(Yellow);
  
  
  writeln('Qual a distancia entre os pontos P?');
  readln(x1,y1);
  clrscr;
  writeln('Qual a distancia entre os pontos Q?');
  readln(x2,y2);
  clrscr;
  
  
  
  D := sqrt(sqr(x2 - x1) + sqr(y2 - y1));


  writeln('A distancia entre eles é: ', D:0:2);
  
  readln;
  
End.