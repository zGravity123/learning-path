program Pzim;
uses crt;

label inicio;

var
  op: char;
  salario, extra, hth, ht: real;
  nf, f: integer;

begin
inicio:
  textcolor(Cyan);
  clrscr;

  writeln('Qual o número do funcionário?');
  readln(nf);

  writeln('Quantas horas foram trabalhadas?');
  readln(ht);

  writeln('Quanto recebe por hora?');
  readln(hth);

  writeln('Quantos filhos com idade menor do que 14?');
  readln(f);

  salario := ht * hth;

  if (f > 0) then
  begin
    extra := ht * (hth + 1);
    writeln('Seu salário é: ', extra:0:2);
  end
  else
  begin
    writeln('Seu salário é: ', salario:0:2);
  end;

  readkey;
  clrscr;

  writeln('Pressione "A" se quiser reiniciar o programa, caso não, pressione "B"');
  readln(op);
  op := upcase(op);

  if (op = 'A') then
    goto inicio
  else
  begin
    clrscr;
    writeln('Saindo do programa.');
    delay(250);
    clrscr;
    writeln('Saindo do programa..');
    delay(250);
    clrscr;
    writeln('Saindo do programa...');
    delay(250);
  end;
end.
