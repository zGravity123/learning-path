Program Pzim ;

var cont,i:integer;
		v:array[1..10] of integer;
Begin

 randomize;
 
 cont := 0;
 
	for i := 1 to 10 do
	 Begin
		
		v[i] := random(50);
		
		if v[i] mod 2 = 0 then
			cont := cont + 1;
	 end;
	
	readkey;
	writeln('Existem ',cont,' Pares!');
	
  
End.