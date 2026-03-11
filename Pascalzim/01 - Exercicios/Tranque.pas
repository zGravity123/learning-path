Program Tanque ;

var Comp, Larg, Altura, Volume:real;
	
Begin

	writeln;
	writeln('Introduza as madedias do tanque');
	writeln('Comprimento da base:');
	readln(comp);
	writeln('Largura da base:');
	readln(Larg);	
	writeln('Altura do tanque:');
	readln(Altura);

	volume:= comp*Larg*Altura;

	writeln('Volume = ', volume);
	readkey;
End.