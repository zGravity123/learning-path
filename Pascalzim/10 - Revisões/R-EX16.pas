Program Pascal;
var p,positivos,negativos,zeros,n:integer;
 
begin 


	positivos:= 0;
	negativos:= 0;
	zeros:= 0;
	
	
	repeat
	  textcolor(Cyan);
  	writeln('Introduza um número, use 999 parar parar');
  	readln(n);
  	clrscr;
  	
  	if (n > 0) then
  		positivos:= positivos + 1;
  	if (n < 0) then
  		negativos:= negativos + 1;
  	if (n = 0) then
  		zeros:= zeros + 1;
  	if (n = 999) then
  		break;
  	
  until p = 1;
  writeln('Foram digitados ',positivos,' números positivos, ',negativos,' negativos e ',zeros, ' zeros');
  readkey;
  
End.