Program Pzim ;
var p, p2, op :string;
		palavra1, palavra2:integer;
		
label home;

Begin
 textcolor(Cyan);
 
	home:
	clrscr;
	writeln('Digite 2 palavras');
		readln(p, p2);
	
	palavra1 := length(p);
	palavra2 := length(p2);
	
	clrscr;
	if (palavra1 > palavra2) then
		writeln('A maior palavra introduzida foi "',p,'" que tem ',palavra1,' digitos!');
	if (palavra2 > palavra1) then
		writeln('A maior palavra introduzida foi "',p2,'" que tem ',palavra2,' digitos!');
	if (palavra1 = palavra2) then
		writeln('Ambas as palavras tem o mesmo tamanho.');
	readkey;	
		
	writeln('Para repetir pressione "A" pra fechar pressione "B"');
	readln(op);
	
	
	if (op = 'A') then
		goto home;
	
  
End.