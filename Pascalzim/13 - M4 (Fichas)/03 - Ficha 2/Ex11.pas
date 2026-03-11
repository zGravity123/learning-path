Program Pzim ;
Procedure Ex1;
var i:integer;
			v:array[1..8] of integer;
Begin	
		
		for i := 1 to 8 do
		 Begin
			writeln('Introduza um valor inteiro (#',i,')');
			readln(v[i]);
			clrscr;
		 end;
		 
		for i := 1 to 8 do
		 Begin
		 	writeln(v[i]);
		 end;	
		
		readkey;
End;



Procedure Ex2 ;
var soma,i:integer;
		med:real;
		v:array[1..10] of integer;
Begin

	
	for i := 1 to 10 do
	 Begin
		writeln('Introduza um valor inteiro (#',i,')');
		readln(v[i]);
		clrscr;
	 end;
	 
	for i := 1 to 10 do
	 Begin
	 
	 	soma := soma + v[i]; 
	 	med := soma / 10;
	 	
	 end;
	
	readkey;
	writeln('Mêdia: ',med:0:2);
	writeln('Soma: ',soma:0:2);
	
End;



Procedure Ex3;
var menor,soma,i:integer;
		med:real;
		v:array[1..6] of integer;
Begin

   for i := 1 to 6 do
	 Begin
		writeln('Introduza um valor inteiro (#',i,')');
		readln(v[i]);
		clrscr;
	 end;
	 
		menor := 9999;
	
	for i := 1 to 6 do
	 Begin
	 
	 	if v[i] < menor then
	 		menor := v[i];
	 	
	 end;
	
	readkey;
	writeln('Menor: ',menor:0:2);
	
End;

Procedure Ex4;
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
End;

Procedure Ex5;
var v:array[1..2,1..3] of integer ;
		i,j:integer;
Begin
  	for i := 1 to 2 do
	 begin
	   for j := 1 to 3 do
	   	begin
	     writeln('Introduza um vetor') ;
			 readln(v[i,j]) ;  
	   	end;
	 end;  	
  
  
  
  
  for i := 1 to 2 do
  	Begin
  	 for j := 1 to 3 do
  	 	Begin
       write(v[i,j]:3);
      end;
      writeln;
  	end;
  	readkey;
End;

Procedure Ex6;
var v:array[1..2,1..3] of integer ;
		soma,i,j:integer;
Begin
	for i := 1 to 2 do
	 begin
	   for j := 1 to 3 do
	   	begin
	     writeln('Introduza um vetor') ;
			 readln(v[i,j]) ;  
	   	end;
	 end;  	
  

	for i := 1 to 2 do
	  	Begin
	  	 for j := 1 to 3 do
	  	 	Begin
	       soma := soma +  v[i,j];
	      end;
	      writeln;
	  	end;
End;
Begin
  ex1;
  ex2;
  ex3;
  ex4;
  ex5;
  ex6;
End.