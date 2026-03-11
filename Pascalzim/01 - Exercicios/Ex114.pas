Program Pzim ;
var vet:array[1..50] of integer;
		soma,i,pares,impares:integer;
		med:real;
Begin


	 randomize;
   
   textcolor(cyan);
  for i := 1 to 50 do
   begin
	   vet[i] := random(100);
	   
	   if (vet[i] mod 2 = 0) then
	   	pares := pares + 1
	   else
	    impares := impares + 1;
   end; 
  
  soma := vet[i] + vet[i];
  med := soma / 50;
  
  writeln('Existem ',pares,' números pares e ',impares,' impares, a media é ',med:0:2);
  readkey;
    
   
End.
