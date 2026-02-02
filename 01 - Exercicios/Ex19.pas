Program Ex19 ;

var C1,C2,H:real;
Begin

	writeln('__________  _________.___              _________                   .__');
  writeln('\______   \/   _____/|   |            /   _____/ ___________  ____ |__| ____  ');
  writeln(' |     ___/\_____  \ |   |   ______   \_____  \_/ __ \_  __ \/ ___\|  |/  _ \ ');
  writeln(' |    |    /        \|   |  /_____/   /        \  ___/|  | \/ /_/  >  (  <_> )');
  writeln(' |____|   /_______  /|___|           /_______  /\___  >__|  \___  /|__|\____/ ');
  writeln('                  \/                         \/     \/     /_____/            ');
	writeln;
	writeln('Introduza o valor dos catetos');
	readln(C1,C2);
	H:=sqrt(C1*C1+C2*C2);
	writeln('A hipotonusa é: ', H:0:2);
	readkey;
		
  
End.