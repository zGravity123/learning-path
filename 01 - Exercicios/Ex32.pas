Program Ex32 ;
var med,A,B:real;
	pessoa1,pessoa2:string;
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
  
	writeln('Introduza o nome da primeira pessoa');
	readln(pessoa1);	
	writeln('');
	writeln('Introduza o nome da segunda pessoa');
	readln(pessoa2);
	writeln('');
	writeln('Introduza a idade das duas pessoas');
	readln(A,B);
	
	if (A > B) then 
		writeln('A pessoa, ', pessoa1,' é mais velha(o)');
	If (A = B) then
		writeln('Ambos(as) tem a mesma idade')
	else
		writeln('A pessoa, ', pessoa2,' é mais velha(o)');
	readkey;
	
End.