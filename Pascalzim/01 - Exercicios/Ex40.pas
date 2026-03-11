Program Ex40 ;
var estado: char;
					
					
Begin

	writeln('Introduza o seu estado civil');         
	readln(estado);
	
	estado := upcase(estado);
	
	case estado of
		'C':writeln('Estado Civil - Casado');
		'D':writeln('Estado Civil - Divorciado');
		'V':writeln('Estado Civil - Viuvo');
		'S':writeln('Estado Civil - Solteiro');
	else
		writeln('Estado civil Invalido');
 end;	
	readkey;
		
End.             