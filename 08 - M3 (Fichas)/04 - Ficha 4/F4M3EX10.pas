Program Pzim ;
var nn:integer;
Begin
	 textcolor(cyan);
   writeln('Digite uma nota (0 - 20)');
   readln(nn);
   clrscr;
   
   case nn of
	   0..4: writeln('Mau');
	   5..9: writeln('Insuficiente');
	   10..13: writeln('Suficiente');
	   14..17: writeln('Bom');
	   18..20: writeln('Muito Bom')
   else
   	clrscr;
   	writeln('O valor ínvalido');
   end;
   
   
   
   
   
   
   
 readkey;  
End.