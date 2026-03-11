Program M2-EX1;

var
  nota: Integer;

begin
  writeln('Introduza uma classificacao entre 1 e 5:');
  readln(nota);

  case nota of
    1: writeln('Muito Fraco');
    2: writeln('Fraco');
    3: writeln('Médio');
    4: writeln('Bom');
    5: writeln('Excelente');
  else
    writeln('Classificacao invalida! Deve ser um número entre 1 e 5.');
  end;

  readln;
end.
