Program Pzim;
label localx;
var 
  resp: char;

Begin
	textcolor(lightcyan);
  writeln('Aqui começa o programa');

localx:
  writeln('Aqui começa a parte que pode ser repetida');
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
