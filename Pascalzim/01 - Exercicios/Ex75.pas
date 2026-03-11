Program Pzim;
label localx;
var 
  resp: char;
  p:string;
  op:char;
  i, num:integer;

Begin
	textcolor(lightcyan);
  writeln('Aqui começa o programa');

localx:
  writeln('Aqui começa a parte que pode ser repetida');
  
  writeln('Introduza uma palavra');
  readln(p);
  
  num:=length(p);
  
  for i:=num downto 1 do
  	begin
  		writeln(p[i]);
   end;
  
  writeln('Pressione "c" para continuar ou "t" para terminar.');
  read(resp);
  
  if (resp = 'c') or (resp = 'C') then
    goto localx
  else if (resp = 't') or (resp = 'T') then
    writeln('Aqui termina o programa')
  else
    writeln('Opção inválida, por favor pressione "c" ou "t".');

  readkey;
End.
