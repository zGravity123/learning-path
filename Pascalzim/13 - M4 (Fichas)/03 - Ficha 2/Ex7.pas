Program Pzim ;
var v:array[1..3,1..3] of integer ;
		soma1,soma,i,j:integer;
Begin
  
	for i := 1 to 3 do
	 begin
	   for j := 1 to 3 do
	   	begin
	     writeln('Introduza um vetor') ;
			 readln(v[i,j]) ;  
	   	end;
	 end;  	
  

	for i := 1 to 3 do
	  	Begin
	  	 for j := 1 to 3 do
	  	 	Begin
	  	 	 soma := soma +  v[1,j];
	       soma1 := soma1 +  v[2,j];
	      end;
	      writeln;
	  	end;

  
  
  for i := 1 to 3 do
  	Begin
  	 for j := 1 to 3 do
  	 	Begin
       write(v[i,j]:3);
      end;
      writeln;
  	end;
  	readkey;
  	
  writeln('A soma da coluna 1 é ',soma);
  writeln('A soma da coluna 2 é ',soma1);
  
End.