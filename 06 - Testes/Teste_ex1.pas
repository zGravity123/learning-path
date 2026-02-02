Program Teste_ex1 ;
var I:real;
Begin
  
  textcolor(Yellow);
  writeln('Introduza a idade que deseja verificar');
  readln(I);
  clrscr;
  if (I < 1) then
  	writeln('Idade Inválida');
  if (I < 18) and (I > 0) then
  	writeln('A idade introduzida representa: Menor de idade');
  if (I >= 18) and  (I <= 64) then
  	writeln('A idade introduzida representa: Adulto');
  if (I >= 65) then
  	writeln('A idade introduzida representa: Idoso');
  
  
  
  readkey;
End.