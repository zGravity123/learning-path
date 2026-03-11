Program Ex38 ;
var estado: char;
					
					
Begin

	writeln('Introduza o seu estado civil');         
	readln(estado);
	
	case estado of
		'c':writeln('Estado Civil - Casado');
		'd':writeln('Estado Civil - Divorciado');
		'v':writeln('Estado Civil - Viuvo');
		's':writeln('Estado Civil - Solteiro');
	
	readkey;
		
End.             