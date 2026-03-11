Program Pzim ;
var nota: integer;

Begin
  writeln('Introduza uma nota de 0 a 20: ');
  Readln(nota);

  if (nota < 0) or (nota > 20) then
    Writeln('Nota inválida! Digite uma nota entre 0 e 20.')
  else if (nota >= 0) and (nota <= 7) then
    Writeln('Insuficiente')
  else if (nota >= 8) and (nota <= 11) then
    Writeln('Suficiente')
  else if (nota >= 12) and (nota <= 15) then
    Writeln('Bom')
  else
    Writeln('Muito Bom');
  
  Readln;
End.