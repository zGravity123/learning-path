Program Pzim ;
var v: array[1..15] of integer;
		i, soma, impares, maior, pares: integer;
		med: real;


procedure num;
	Begin
	
	maior := 0;
	
	for i := 1 to 15 do
		Begin
			textcolor(cyan);
			writeln('Introduza um valor inteiro! (#',i,')');
			readln(v[i]);
	
			soma := soma + v[i];
			
			if v[i] mod 2 = 0 then
				impares := impares + 1;
			if v[i] > maior then
				maior := v[i]
			else
				pares := pares + 1;
	  end;
	 
	 med := soma / 15;
	 
	End;
	
Begin

	num;
	clrscr;
	textcolor(cyan);
	writeln('O maior numero introduzido é: ',maior);
	writeln('A media de todos os valores é ',med:0:2);
	writeln('Existem ',pares,' valores pares e ',impares, ' valores impares!');
	readkey;
	

	
  
End.