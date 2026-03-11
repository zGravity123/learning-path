Program Ex43 ;
var b1,b2,b3,b4,b5,e1,e2:integer;
					             //5 bolas com os numeros até 50 e duas estrelas até 12
					
Begin

	randomize;
	
	b1:=random(50);
	b2:=random(50);
	b3:=random(50);
	b4:=random(50);
	b5:=random(50);
	
	e1:=random(12);
	e2:=random(12);

	writeln(' ---- Chave EuroMilhoes ---- ');
	writeln('');
	writeln('    Numeros: ', b1 ,' ' , b2 ,' ' , b3 ,' ' , b4 ,' ' , b5,' ');
	writeln('    Estrelas: ', e1 , e2);
	readkey;
		
End.         