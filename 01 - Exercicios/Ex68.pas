program Pzim;
var
  s, v, aumento: real;
begin
  textcolor(Cyan);
  writeln('Digite o salário atual:');
  readln(s);
  clrscr;
  
  writeln('Digite o total de vendas:');
  readln(v);
  clrscr;
  
  if (s <= 1000) then
  begin
    aumento := v * 0.05; 
    writeln('O seu salário foi atualizado para: ', (s + aumento):0:2);
  end
  
  else if (s > 1000) and (s <= 1500) then
  begin
    aumento := v * 0.10;  
    writeln('O seu salário foi atualizado para: ', (s + aumento):0:2);
  end
  
  else if (s > 1500) then
  begin
    aumento := v * 0.15; 
    writeln('O seu salário foi atualizado para: ', (s + aumento):0:2);
  end
  
  
  else
    writeln('Erro! Tente novamente.');
  
end.
