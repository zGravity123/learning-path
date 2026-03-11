Program Pzim;

var texto: Text;
  x: char;
  n, i: integer;
  turma: string;

procedure aleatorio1;
begin
  assign(texto, 'aleatorio1.txt');
  rewrite(texto);

  for i := 1 to 1000 do
  begin
    n := random(100);
    if n mod 2 = 0 then
      writeln(texto, n);
  end;

  close(texto);
  clrscr;

  reset(texto);
  while not eof(texto) do
  begin
    read(texto, x);
    write(x);
  end;

  close(texto);
  readkey;
end;

procedure aleatorio2;
begin
  assign(texto, 'aleatorio2.txt');
  rewrite(texto);

  for i := 1 to 1000 do
  begin
    n := random(100);
    if n mod 2 = 0 then
      writeln(texto, n);
  end;

  close(texto);
  clrscr;

  reset(texto);
  while not eof(texto) do
  begin
    read(texto, x);
    write(x);
  end;

  close(texto);
  readkey;
end;

begin

  randomize;     
  aleatorio1;   
  aleatorio2;
	   
end.