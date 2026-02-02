program Ficha6_Ex2_6;
var
  med,tt,t:real;

begin
  textcolor(Yellow);
  writeln('Escreva a nota do trabalho e do teste');
  readln(tt, t);
  clrscr;
  
  med := (tt + t) / 2;
  
  if med >= 7 then
  begin
    textcolor(Green);
    writeln('Estás aprovado! A sua media é: ', med:0:2);
  end
  
  else if med < 3 then
  begin
    textcolor(Red);
    writeln('Estás reprovado! A sua media é: ', med:0:2);
  end
  
  else
  begin
    textcolor(Blue);
    writeln('Estás reprovado e de recuperação! A sua media é: ', med:0:2);
  end;
end.
