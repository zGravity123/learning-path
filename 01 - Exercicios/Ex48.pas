Program Ex48;

var
  A, B, C, med : real;

Begin
  textcolor(Yellow);
  writeln('Introduza a sua nota da Apresentacao');
  readln(A);
  clrscr;

  writeln('Insira a sua nota do trabalho');
  readln(B);
  clrscr;

  writeln('Insira a sua nota do teste');
  readln(C);
  clrscr;

  med := (A * 0.6) + (B * 0.2) + (C * 0.2);

  if (A >= 10) and (B >= 10) and (C >= 10) and (med >= 10) then
    writeln('A sua média foi de: ', med:0:2, ' Foste foi aprovado.')
  else
    writeln('Todas as notas devem ser superiores a 10!');

  readkey;
End.
