Program Pzim;
var
  i: integer;
  op,texto: string;    
  label home;

begin
  home:
  clrscr;
  textcolor(Cyan);

  writeln('Digite uma palavra');
  readln(texto);
  clrscr;
  
 	for i := 1 to length(texto) do
 	 begin
   	 write(texto[i], ' ');   
   	 delay(150);
   End;  
	 readkey; 

	clrscr;
  writeln('Pressione "A" se quiser reiniciar o programa, caso não, pressione "B"');
  readln(op);

  if (op = 'A') then
    goto home;  

  if (op = 'B') then
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

end.
