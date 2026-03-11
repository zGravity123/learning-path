Program Pzim;
label home;
var op, home: string;
    a: real;

Begin
home:
  textcolor(Cyan);

	clrscr;
	writeln('Digite um número positivo');
	readln(a);
	clrscr;
	
	if (a > 0) then
	
		writeln('Quadrado: ', sqr(a):0:2);
		writeln('Raiz Quadrada ', sqrt(a):0:2);
		readkey;
	else
		writeln('Erro!');
  clrscr;

  writeln('Pressione "A" se quiser reiniciar o programa, caso não, pressione "B"');
  readln(op);
  op := upcase(op);

  if (op = 'A') then
    goto home
  else
  begin
    clrscr;
    writeln('Saindo do programa.');
    delay(250);
    clrscr;
    writeln('Saindo do programa..');
    delay(250);
    clrscr;
    writeln('Saindo do programa...');
    delay(250);
  end;

End.
