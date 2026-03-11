Program Pzim;

var
  texto : Text;
  x: char;
  i: integer;
  nome: string;
  teste, trab, med: real;

Begin

  assign(texto, 'Turma.txt');
  rewrite(texto);

  for i := 1 to 5 do
  begin
    writeln('Introduza o Nome do aluno #', i);
    readln(nome);

    writeln('Introduza a nota do teste');
    readln(teste);

    writeln('Introduza a nota do trabalho');
    readln(trab);

    med := (teste + trab) / 2;

    writeln(texto, 'Nome: ', nome);
    writeln(texto, 'Teste: ', teste:0:1);
    writeln(texto, 'Trabalho: ', trab:0:1);
    writeln(texto, 'Media: ', med:0:1);

    if med >= 9.5 then
      writeln(texto, 'Aprovado')
    else
      writeln(texto, 'Reprovado');

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

End.