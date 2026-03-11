Program Pzim;

var 
  texto1,texto2:Text;
  x:char;
  n,i:integer;

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

begin                                         
  clrscr;
  txt1;
  writeln;  
  txt2;
  readkey;
end.