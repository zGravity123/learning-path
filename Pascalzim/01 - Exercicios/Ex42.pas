Program Ex42 ;
var a,n:integer;
					
					
Begin

	randomize;
	
	a:=random(5);

	writeln('Introduza um número de 0 - 5');
	readln(n);
	
		if (a = n) then
		writeln('Voce ganhou')
	else
		writeln('Voce Perdeu');
	readkey;
		
End.             