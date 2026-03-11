Program Pzim;
uses crt;

var
  i, os: integer;
  op: char;
  vl: array[1..3] of integer;
  max, min, meio: integer;

label home;

Begin
home:
  clrscr;
  textcolor(Cyan);

  writeln('Escolha uma opção:');
  writeln('1 - Ordem crescente');
  writeln('2 - Ordem decrescente');
  writeln('3 - Maior valor no meio');
  readln(os);

  max := -MaxInt;
  min := MaxInt;

  case os of
    1, 2, 3:
      begin
        writeln('Digite 3 valores inteiros:');
        for i := 1 to 3 do
        begin
          readln(vl[i]);

          if vl[i] > max then
            max := vl[i];

          if vl[i] < min then
            min := vl[i];
        end;

        for i := 1 to 3 do
          if (vl[i] <> max) and (vl[i] <> min) then
            meio := vl[i];

        if (vl[1] = vl[2]) or (vl[2] = vl[3]) or (vl[1] = vl[3]) then
          writeln('Os valores introduzidos nao podem ser iguais')
        else
        begin
          if os = 1 then
            writeln('Ordem crescente: ', min, ' ', meio, ' ', max)
          else if os = 2 then
            writeln('Ordem decrescente: ', max, ' ', meio, ' ', min)
          else if os = 3 then
            writeln('Maior valor no meio: ', min, ' ', max, ' ', meio);
        end;

        readkey;
      end;
  else
    writeln('Opcao invalida!');
    readkey;
  end;

  clrscr;
  writeln('Pressione A para reiniciar ou B para sair');
  readln(op);
  op := upcase(op);

  if op = 'A' then
    goto home
  else
  begin
    clrscr;
    writeln('Saindo do programa...');
    delay(500);
  end;
End.
