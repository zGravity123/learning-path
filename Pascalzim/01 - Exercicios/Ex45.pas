Program Ex45 ;
var IMC,A,P:real;
					        
					
Begin

	textcolor(Yellow);
	writeln('Introduza o seu peso');
	readln(P);
	writeln('Introduza a sua altura em metro');
	readln(A);
	
	IMC := P/(A*A);
	
	clrscr;
	writeln(' ---- Visualizador de IMC ---- ');
	writeln('');
	writeln('          IMC: ',IMC:0:2);
	writeln('');
	writeln(' ---- Visualizador de IMC  ---- ');
	readkey;
		
End.         