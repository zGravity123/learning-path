Program Pzim;
label home;
var op, home: string;
    a, b: real;

Begin
home:
  textcolor(Cyan);

	clrscr;
	writeln('Digite dois números');
	readln(a,b);
	clrscr;
	
	writeln('A mêdia aritmética é: ', (a + b)/2:0:2);
	readkey;

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
