Program Pzim ;

Type Jogador = Record
		 Nome: string[20];
		 Pontos: integer;
end;

var J1, J2, J3: Jogador;
		i:integer;
		med:real;

Begin
	
	writeln('Introduza o nome do jogador 1');
	readln(J1.Nome);
	writeln('Introduza o nome do jogador 2');
	readln(J2.Nome);
	writeln('Introduza o nome do jogador 3');
	readln(J3.Nome);
	
	writeln('Introduza quantos pontos o jogador 1 marcou');
	readln(J1.Pontos);
	writeln('Introduza quantos pontos o jogador 1 marcou');
	readln(J2.Pontos);
	writeln('Introduza quantos pontos o jogador 1 marcou');
	readln(J3.Pontos);
	
	if (J1.Nome > 	J2.Nome) and (J1.Nome > 	J3.Nome) then
		writeln('O jogador 1 foi o melhor jogador');
	if (J2.Nome > 	J3.Nome) and (J2.Nome > 	J1.Nome) then
		writeln('O jogador 2 foi o melhor jogador');	
	if (J3.Nome > 	J2.Nome) and (J3.Nome > 	J1.Nome) then
		writeln('O jogador 3 foi o melhor jogador');
	
	
	med := (J1.Pontos + J2.Pontos + J3.Pontos)/3;
		
	writeln('A media dos pontos marcado é ',med:0:2);
End.