Program Ex44 ;
var C,F:real;
					             //5 bolas com os numeros até 50 e duas estrelas até 12
					
Begin

	textcolor(Yellow);
	writeln('Introduza a temperatura em graus Cº');
	readln(C);
	
	F := 9 * C/5 + 32;
	
	clrscr;
	writeln(C:0:2, ' Cº covertidos para graus é: ',F:0:2,'°F');
	readkey;
		
End.         