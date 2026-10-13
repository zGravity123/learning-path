Program Pzim;
var nome1, nome2: string;
	T: text;
	c: char;
	total1, total2, vogais1, vogais2: integer;
	
	procedure perguntas;
	Begin
	textcolor(cyan);
	writeln('Introduza o nome do ficheiro 1 (i.g: example.txt)');
	readln(nome1);
	
	writeln('Introduza o nome do ficheiro 2 (i.g: example.txt)');
	readln(nome2);
	end;
	
	Begin
	perguntas;
	
	total1 := 0;
	vogais1 := 0;
	total2 := 0;
	vogais2 := 0;
	
	assign(T, nome1);
	reset(T);
	
	while not eof(T) do
	begin
	read(T, c);
	
	total1 := total1 + 1;
	
	if (c='a') or (c='e') or (c='i') or (c='o') or (c='u') or
	   (c='A') or (c='E') or (c='I') or (c='O') or (c='U') then
	  vogais1 := vogais1 + 1;
	
	end;
	
	close(T);
	
	assign(T, nome2);
	reset(T);
	
	while not eof(T) do
	begin
	read(T, c);
	total2 := total2 + 1;
	
	if (c='a') or (c='e') or (c='i') or (c='o') or (c='u') or
	   (c='A') or (c='E') or (c='I') or (c='O') or (c='U') then
	  vogais2 := vogais2 + 1;
	
	end;
	
	close(T);
	
	if vogais1 > vogais2 then
	writeln('O ficheiro 1 tem mais vogais')
	else
	writeln('O ficheiro 2 tem mais vogais');
	
	if total1 > total2 then
	writeln('O ficheiro 1 tem mais caracteres')
	else
	writeln('O ficheiro 2 tem mais caracteres');
	
	readkey;
	End.
