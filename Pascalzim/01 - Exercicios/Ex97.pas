Program Pzim ;

	var vet:array[1..100] of integer;
	i:integer;
	soma,med:real;

Begin

	textcolor(Cyan);
	randomize;
	
	for i:= 1 to 100 do
	 Begin
		vet[i] := random(100);
		soma:=soma+vet[i]
	 end;
	 
	 
	 med := soma/100;
 
 
  for i:= 1 to 100 do
   Begin
   	writeln(vet[i]);
   end;
   
  writeln('Media: ',med:2:0);
   
  readkey;
  
End.