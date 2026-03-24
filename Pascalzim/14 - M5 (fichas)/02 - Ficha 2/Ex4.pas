Program Pzim;
var 
  T: text;
  i, v, impares, pares: integer;
  nome: string;

Begin
  
  pares := 0;
  impares := 0;

  textcolor(cyan);
  writeln('Introduza o nome do ficheiro (i.g: example.txt)');
  readln(nome);
  writeln;

  assign(T, nome);
  rewrite(T);

  for i := 1 to 100 do
  begin
    v := random(1000);
    writeln(T, v);   

    if v mod 2 = 0 then
      pares := pares + 1
    else
      impares := impares + 1;
  end;

  close(T);

  writeln('Existem ', pares,' números pares & ', impares,' números impares');
  readkey;

End.