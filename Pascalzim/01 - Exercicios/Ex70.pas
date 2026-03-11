Program Pzim ;
var
		i,a,N,p,conta:integer;
Begin

 randomize;
 textcolor(Cyan);
 for i := 1 to 100 do
 Begin	
		N:= random(100);
	
		if N mod 5 = 0 then
			conta:= conta +1;
		delay(5);
			
	  writeln(n);
			
 end;
 
 writeln('São ',conta,' números com multiplo de 5');
 readkey;
 
 
End.
	