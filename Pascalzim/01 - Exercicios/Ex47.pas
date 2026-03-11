Program Ex47 ;
var b1,b2,b3,b4,b5,e1,e2,t1,t2,t3,t4,t5,a1,a2,E:integer;
					        
					
Begin

 // EuromILHOES
 
	randomize;
	
	b1:=random(50);
	b2:=random(50);
	b3:=random(50);
	b4:=random(50);
	b5:=random(50);
	
	e1:=random(12);
	e2:=random(12);
	
	//Totoloto
	
	t1:=random(49);
	t2:=random(49);
	t3:=random(49);
	t4:=random(49);
	t5:=random(49);
	
	a1:=random(13);
	
	// Operaçao de escolha
	
	textcolor(Yellow);
	writeln('Escolha a opçao " 1 " para obter a chave totoloto ou " 2 " para a de euromilhoes');  
	readln(E);
	clrscr;
	case E of
		1: begin
		textcolor(Yellow);
		writeln(' ----  Chave Totoloto   ---- ');
		writeln('');
		writeln('    Numeros: ', t1 ,' ' , t2 ,' ' , t3 ,' ' , t4 ,' ' , t5,' ');
		writeln('    Nº Da sorte: ', a1);
		writeln('');
		writeln(' ----                   ---- ');
	readkey;
	end;
	
		2: 	if (E = 2) then
	begin
		textcolor(Yellow);
		writeln(' ---- Chave EuroMilhoes ---- ');
		writeln('');
		writeln('    Numeros: ', b1 ,' ' , b2 ,' ' , b3 ,' ' , b4 ,' ' , b5,' ');
		writeln('    Estrelas: ', e1 , e2);
		writeln('');
		writeln(' ----                   ---- ');
		readkey;
	end;
	else
		writeln('Opçao Invalida');
	readkey;
	

	End	
End.         