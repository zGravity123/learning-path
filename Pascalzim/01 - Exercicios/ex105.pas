Program Pzim ;
var vetb:array[1..255] of char;
		veta:array[1..255] of integer;
		i:integer;
Begin
   textcolor(Cyan);
   
   for i := 1 to 255 do
   	begin
   	
   		veta[i] := i;
   		vetb[i] := Chr(i);
   		
   		writeln(vetb[i],' - ', veta[i]);
   	end;
   	readkey;
End.