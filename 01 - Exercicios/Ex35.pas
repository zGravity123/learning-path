Program Ex35;
var 
  min, max, a, b, c: integer;

Begin
  TextColor(Yellow);
  writeln('__________  _________.___              _________                   .__');
  writeln('\______   \/   _____/|   |            /   _____/ ___________  ____ |__| ____  ');
  writeln(' |     ___/\_____  \ |   |   ______   \_____  \_/ __ \_  __ \/ ___\|  |/  _ \ ');
  writeln(' |    |    /        \|   |  /_____/   /        \  ___/|  | \/ /_/  >  (  <_> )');
  writeln(' |____|   /_______  /|___|           /_______  /\___  >__|  \___  /|__|\____/ ');
  writeln('                  \/                         \/     \/     /_____/            ');
  TextColor(White);
  
  ////////////////////////////////////////////////////////////////////////////////////////////
  
  writeln('Introduza 3 Valores');
  readln(a, b, c);
  
  if (a > b) and (a > c) then
    begin
      max := a;
      if (b > c) then
        min := c
      else
        min := b;
    end;
    
  if (b > a) and (b > c) then
    begin
      max := b;
      if (a > c) then
        min := c
      else
        min := a;
    end;
    
  if (c > a) and (c > b) then
    begin
      max := c;
      if (a > b) then
        min := b
      else
        min := a;
    end;

    
  writeln('O maior é: ', max);
  writeln('O menor é: ', min);
  writeln('O número do meio é: ', a + b + c - max - min);
  
  readkey;
End.
