Program Ex23 ;

var euros,v:real;
	
Begin

	writeln('__________  _________.___              _________                   .__');
  writeln('\______   \/   _____/|   |            /   _____/ ___________  ____ |__| ____  ');
  writeln(' |     ___/\_____  \ |   |   ______   \_____  \_/ __ \_  __ \/ ___\|  |/  _ \ ');
  writeln(' |    |    /        \|   |  /_____/   /        \  ___/|  | \/ /_/  >  (  <_> )');
  writeln(' |____|   /_______  /|___|           /_______  /\___  >__|  \___  /|__|\____/ ');
  writeln('                  \/                         \/     \/     /_____/            ');
	writeln;
	writeln('Valor em dollar?');
	readln(v);
	
	euros:= v*0.8613560;
	
	writeln('São ', euros:0:2, ' euros');
	readkey;
		
  
End.