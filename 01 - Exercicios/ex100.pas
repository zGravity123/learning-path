//( aproveitmmos o ex99, informamos qual o valor max e min, e indicamento a posiçao dele
Program Ex100 ;
var vet:array[1..50] of integer;
		posicao1,posicao,i,min,max:integer;
Begin
	max:= 0;
	min:=999;

randomize;
	textcolor(Cyan);
	
	for i := 1 to 50 do
	 begin
		vet[i] := random(100);
		if vet[i] > max then
		 begin
			max := vet[i];
			posicao := i;
		 end;
		 
		if vet[i] < min then
		 begin
			min := vet[i];
			posicao1 := i;
		 end;
	 end;

	writeln('O min é ',min,' (posição: ', posicao1, ') e o max é ',max,' (posição: ', posicao,')');
 
  readkey;
 
End.