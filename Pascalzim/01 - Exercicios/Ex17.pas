Program Ex17 ;
Begin

	writeln('__________  _________.___              _________                   .__');
  writeln('\______   \/   _____/|   |            /   _____/ ___________  ____ |__| ____  ');
  writeln(' |     ___/\_____  \ |   |   ______   \_____  \_/ __ \_  __ \/ ___\|  |/  _ \ ');
  writeln(' |    |    /        \|   |  /_____/   /        \  ___/|  | \/ /_/  >  (  <_> )');
  writeln(' |____|   /_______  /|___|           /_______  /\___  >__|  \___  /|__|\____/ ');
  writeln('                  \/                         \/     \/     /_____/            ');
	writeln;
	writeln('Caracter ASCII n.65 ', chr(66)); //  Exibe o caracter correspondente ao código ASCII 66, que é o 'B'. A função 'chr(66)' converte o número 66 para o caractere 'B'.
	writeln;
	writeln('N. ASCII do caracter A = ', ord('a')); // Exibe o número ASCII do caractere 'a'. A função 'ord('a')' retorna o código ASCII do caractere 'a', que é 97.
	writeln;
	writeln('Antes de A está ', Pred('A')); // Exibe o caractere que vem antes de 'A' na tabela ASCII. A função 'Pred('A')' retorna o caractere imediatamente anterior a 'A', que é 'Z'.
	writeln;
	writeln('Depois de A está ', Succ('A'));      // mostra oq vem depois do 'A'
	readkey;
		
  
End.