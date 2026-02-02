Program Ex29 ;
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
	writeln('Escreva um número');
	readln(n);
	if (n mod 5 = 0) then
	
	
		Begin
	textcolor(Green);
		writeln('É multiplo de 5')
	End
		else
	Begin 
		textcolor(Red);
		writeln('Nao é multiplo de 5');
	End;
	readkey;


 
End.