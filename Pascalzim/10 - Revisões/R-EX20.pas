Program Pzim ;
var v:array[1..50] of integer;
		I,min,max,cont:integer;
Begin
	textcolor(cyan);
	randomize;
	
	max := 0;
	min := 9999999;
	
	for i := 1 to 50 do	
	 Begin
		 v[i] := random(200);
		 
			writeln(v[i]);	
			
			if (v[i] > max) then
				max := v[i];
			if (v[i] < min) then
		    min := v[i];
		  if (v[i] >= 50) and (v[i] <= 150) then
		  	cont := cont + 1;
	 end;
	  	
	  writeln('Maior valor é: ',max,' e o minimo é: ',min);
	  writeln('Existem ',cont,' números entre 50 e 150');
	  readkey;
		
  
End.