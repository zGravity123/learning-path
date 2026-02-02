Program Pzim ;
var
  p,num, max, min: integer;
begin
  max := -MaxInt;  
  min := MaxInt;   
  
  repeat
    clrscr;
    textcolor(cyan);
    writeln('Introduza um número:');
    readln(num);
    
    if num = 999 then
      break;

    if num > max then
      max := num;
      
    if num < min then
      min := num;
      
  until p = 0;  

  clrscr;
  writeln('Máximo: ', max);
  writeln('Mínimo: ', min);
  readkey;
end.
