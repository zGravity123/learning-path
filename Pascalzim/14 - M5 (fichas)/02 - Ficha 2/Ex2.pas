Program Pzim ;
var 
		v: array[1..50] of integer ;
		i, cont, cont1: integer;
		
Begin

	for i := 1 to 10 do
	 Begin
	 
		v[i] := random(1001);
		
		if v[i] >= 500 then
			cont := cont + 1
		else
			cont1 := cont1 + 1;
	 End;
	 
	 textcolor(cyan);\
	 writeln('Existem ',cont,' valores acima de 500 e ',cont1,' abaixo de 500!'); 
	 readkey;
  
End.