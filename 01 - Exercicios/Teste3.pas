Program Pzim ;
var R,A,Pi:real;
Begin
	 textcolor(Cyan);
   writeln('Digite a Altura');
   readln(A);
   clrscr;
   writeln('Digite o Raio');
   readln(R);
   clrscr;
   
   Pi:= 3.1416;
   
   if (R > 0)then
   	writeln('Resultado: ', Pi * (r * r) * A:0:2)
   else
   	writeln('ERRO! Tente novamente');
   	
  readkey;
End.