Program Ex36 ;
var op: integer;

Begin

	writeln('Introduza o Mes de 1 a 12');
	readln(op);
	
	case op of
		1: writeln('Janeiro');
		2: writeln('Fevereiro');
		3: writeln('Março');
		4: writeln('Abril');
		5: writeln('Maio');
		6: writeln('Junho');
		7: writeln('Julho');
		8: writeln('Agosto');
		9: writeln('Setembro');
		10: writeln('Outubro');
		11: writeln('Novembro');
		12: writeln('Dezembro');
		else
			writeln('Mes Invalido');
	end;
	readkey;
		
End.