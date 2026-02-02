	Program Ex27 ;
var N:integer;

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
  
	writeln('Introduza a sua nota');
	readln(N);
	if(N > 0) or (N < 20) then
	
	  Writeln('Nota Inválida')
	
	else
	begin
		if (N >= 9.5) then
	 	  writeln('Aprovado')
	 	  
	  else
	    writeln('Reprovado')
	end; 
		
		readkey;                               																					
  
End.