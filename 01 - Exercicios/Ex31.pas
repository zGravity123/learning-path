Program Ex31 ;
var med,A,B:real;
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
	writeln('Introduza a nota do teste e do trabalho');
	readln(A, B);	
	
		med:= (A+B)/2;
	
	if (med > 9.5) then
	Begin
		textcolor(Green);
		writeln('Aprovado, a sua media é: ', med:2:0);
	End
	
	else
	Begin
		textcolor(Red);
		writeln('Reprovado, a sua media é: ', med:2:0);
		readkey;
	End


 
End.