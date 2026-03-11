Program Pzim;

var
  c1, c2, c3, c4, v, i: integer;
  op: char;

label home;

Begin
home:
  clrscr;
  textcolor(Cyan);

  // Contadores
  c1 := 0;
  c2 := 0;
  c3 := 0;
  c4 := 0;

  for i := 1 to 20 do
  begin
    writeln('Digite o valor #', i);
    readln(v);

    // Intervalos
    
    case v of
      0..25: c1 := c1 + 1;
      26..50: c2 := c2 + 1;
      51..75: c3 := c3 + 1;
      76..100: c4 := c4 + 1;
    else
      writeln('Valor fora do intervalo permitido!');
    end;
  end;

  // Resultados
  
  writeln('[0, 25]:   ', c1);
  writeln('[26, 50]:  ', c2);
  writeln('[51, 75]:  ', c3);
  writeln('[76, 100]: ', c4);

  readkey;

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
