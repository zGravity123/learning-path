Program Pzim;

Uses crt;

Var
  nomes: array[1..3] of string;
  idade: array[1..3] of integer;
  genero: array[1..3] of integer;
  i, m, f, soma, max, min: integer;
  maxn, minn: string;
  media: real;

Begin
  soma := 0;
  m := 0;
  f := 0;

  textcolor(Cyan);

  for i := 1 to 3 do
  begin
    clrscr;
    writeln('Digite o nome da pessoa #', i);
    readln(nomes[i]);

    writeln('Digite a idade da pessoa #', i);
    readln(idade[i]);

    writeln('Digite o genero da pessoa #', i);
    writeln('1 - Masculino');
    writeln('2 - Feminino');
    readln(genero[i]);

    soma := soma + idade[i];

    if genero[i] = 1 then
      m := m + 1
    else if genero[i] = 2 then
      f := f + 1;

    if i = 1 then
    begin
      max := idade[i];
      min := idade[i];
      maxn := nomes[i];
      minn := nomes[i];
    end
    else
    begin
      if idade[i] > max then
      begin
        max := idade[i];
        maxn := nomes[i];
      end;

      if idade[i] < min then
      begin
        min := idade[i];
        minn := nomes[i];
      end;
    end;
  end;

  media := soma / 3;

  clrscr;
  writeln('--------- INFOS -----------');
  writeln('');
  writeln(m, ' Pessoas do genero Masculino');
  writeln(f, ' Pessoas do genero Feminino');
  writeln('A pessoa mais velha é ', maxn);
  writeln('A pessoa mais nova é ', minn);
  writeln('A media das idades é ', media:2:0);
  writeln('');
  writeln('--------- INFOS -----------');

  readln;
End.
