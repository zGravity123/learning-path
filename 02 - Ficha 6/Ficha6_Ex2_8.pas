program Ficha6_Ex2_8;
var
  a,b,c: real;

begin
  
  textcolor(Yellow);
  writeln('Introduza 3 números');;
  readln(a,b,c);
  clrscr;

	if (a + b > c) and (a + c > b) and (b + c > a) then
	begin
	
	  clrscr;
  	writeln('É um triângulo');
  
  	if (a = b) and (b = c) then
    	writeln('Triângulo Equilátero')
  	else if (a = b) or (a = c) or (b = c) then
    	writeln('Triângulo Isósceles')
  	else
    	writeln('Triângulo Escaleno');
end

	else
  	writeln('Não é um triângulo');


  
  readln;
end.


