Program Pzim ;
var 
		v: array [1..10] of integer ;
		cont,i,impares,pares: integer;
		med : real;
 
Begin

	randomize;
	
	impares := 0;
	pares := 0;
	cont := 0;
	
	for i := 1 to 10 do
	 Begin
		v[i] := random(101);
		
			cont := cont + v[i];
		
		if v[i] mod 2 = 0 then
			pares := pares + 1
		else
			impares := impares + 1;
	 End;
	 
	 med := cont / 10;
	 
	 textcolor(Cyan);
	 writeln('Existem ',impares,' valores impares ',pares,' pares e a media é: ',med:0:2);
	 readkey;
  
End.