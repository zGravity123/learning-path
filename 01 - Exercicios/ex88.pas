Program Pzim ;
var num, i, j:integer;
Begin

	textcolor(Cyan);
	writeln('quantos Ramos?');
	readln(num);
	
	for i:= 1 to num do
	 Begin
	 
	 	writeln('');
	 
	for j:= 1 to i do
	 Begin
	 
	 	write('*');
	 	delay(70);
	 
	 end;
 End; 
 readkey
End.