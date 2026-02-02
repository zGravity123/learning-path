Program Ex20 ;

var nome:string;
	ano:integer;
	
Begin

	writeln('__________  _________.___              _________                   .__');
  writeln('\______   \/   _____/|   |            /   _____/ ___________  ____ |__| ____  ');
  writeln(' |     ___/\_____  \ |   |   ______   \_____  \_/ __ \_  __ \/ ___\|  |/  _ \ ');
  writeln(' |    |    /        \|   |  /_____/   /        \  ___/|  | \/ /_/  >  (  <_> )');
  writeln(' |____|   /_______  /|___|           /_______  /\___  >__|  \___  /|__|\____/ ');
  writeln('                  \/                         \/     \/     /_____/            ');
	writeln;
	writeln('Nome?');
	readln(nome);
	writeln('Ano de Nascimento?');
	readln(ano);
	
	writeln(nome,' tem: ', 2025-ano,' anos');
	readkey;
		
  
End.