Program Ficha_Ex2;
var
  A, B, P: integer;
begin
  writeln('Introduza Dois valores inteiros');
  readln(A, B);
  writeln('Escolha uma das opçoes:');
  writeln('1: Adição');
  writeln('2: Subtração');
  writeln('3: Divisão');
  writeln('4: Multiplicação');
  readln(P);

  if (P = 1) then
    writeln('Resultado: ', A + B);
    
  if (P = 2) then
    writeln('Resultado: ', A - B);
  if (P = 3) then
    writeln('Resultado: ', A / B);                  
  if (P = 4) then
    writeln('Resultado: ', A * B);
  
  if (P < 1) or (P > 4) then
    writeln('Operação Inválida');
  
  readkey;
end.
