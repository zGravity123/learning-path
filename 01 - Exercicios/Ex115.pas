Program Pzim ;
var vv,par,impar:integer;

procedure ler_dados;
	Begin
		writeln('Digite um valor');
		readln(vv);	
	End;
	
procedure contas;
	Begin
		if (vv mod 2 = 0) then
			writeln('É par')
		else
			writeln('É impar');	
	end;
	
Begin
   
	 ler_dados;
	 contas;
	 readkey;
   
End.