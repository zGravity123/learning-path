Program Pzim ;
var m:integer;

	
procedure contas;
	Begin
	if (m = 0) then
			writeln('É zero');
	if (m mod 2 <> 0) then
			writeln('É impar');
	if (m mod 2 = 0) then
			writeln('É par');	
	end;
	
procedure ler_dados;
	Begin
		writeln('Digite um valor');
		readln(m);	
	End;
	
Begin
   
	 ler_dados;                                      
	 contas;
	 readkey;
   
End.