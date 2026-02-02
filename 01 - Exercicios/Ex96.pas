Program Pzim ;

	var vet:array[1..3] of integer;
	i:integer;

Begin

	textcolor(Cyan);
	for i:= 1 to 3 do
	 Begin
		writeln('Digite a posição #',i);
		readln(vet[i]);
		clrscr;
	 end;
 
 
  for i:= 1 to 3 do
   Begin
   	writeln(vet[i]);
   end;
   
   
   
  readkey;
  
End.