Program Pzim ;

	var l1,l2:real;

	function farea: real;
	Begin
		farea:=l1*l2;
	end;

	Begin
		writeln('Introduza os lados do retangulo');
		readln(l1,l2);
		writeln('A area do retangulo = ',farea);  
	End.