Program Pzim;

var 
  texto1,texto2:Text;
  x:char;
  cont,cont2,n,i:integer;

procedure txt1;
begin
  assign(texto1, 'aleatorio1.txt');
  reset(texto1);

  while not eof(texto1) do
  begin
    read(texto1, x);
    write(x);
  end;

  close(texto1);
end;

procedure txt2;
begin
  assign(texto2, 'aleatorio2.txt');
  reset(texto2);

  while not eof(texto2) do
  begin
    read(texto2, x);
    write(x);
  end;

  close(texto2);
end;

procedure conta;
Begin
  assign(texto1, 'aleatorio1.txt');
  assign(texto2, 'aleatorio2.txt');

  reset(texto1);
  reset(texto2);

  cont := 0;
  cont2 := 0;

  while not eof(texto1) do
  Begin
    read(texto1,x);
    cont := cont + 1;
  end;

  while not eof(texto2) do
  Begin
    read(texto2,x);
    cont2 := cont2 + 1;
  end;

  close(texto1);
  close(texto2);

  if cont > cont2 then
    writeln('O arquivo "aleatorio1.txt" é maior!')
  else
  if cont2 > cont then
    writeln('O arquivo "aleatorio2.txt" é maior!')
  else
    writeln('Os arquivos têm o mesmo tamanho!');
end;

		
begin                                         
  clrscr;
  txt1;
  writeln;  
  txt2;
  readkey;
  conta;
  readkey;
end.