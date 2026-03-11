Program Ex33 ;
var menor,maior,A,B,C:integer;

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
  
  writeln('Introduza 3 valores inteiros');
  readln(A, B, C);

  maior := A;

  if B > maior then
    maior := B;

  if C > maior then
    maior := C; 

  writeln('O número ', maior, ' é o maior número'); 
  
  
  menor := A;

  if B < maior then
    menor := B;

  if C < maior then
    menor := C; 

  writeln('O número ', menor, ' é o menor número'); 

  readkey;
	
End.