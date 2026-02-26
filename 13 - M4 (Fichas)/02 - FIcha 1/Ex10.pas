Program Pzim ;
var v:array[1..3, 1..3] of integer;
		soma,soma1,soma2,soma3,i,j:integer;
		med1,med2,med3:real;
		
procedure tabela;
 Begin
  for i := 1 to 3 do
  	Begin
  		For j := 1 to 3 do
  		 Begin
  		   write(v[i,j]:3);
  		 End;
  		 writeln;
  	End;	 
 End;
 
procedure pergunta;
 begin
	for i := 1 to 3 do
 begin
   for j := 1 to 3 do
   begin
     writeln('Introduza um vetor') ;
		 readln(v[i,j]) ;  
   end;
 end;
 end;

procedure med;
 begin
	for i := 1 to 3 do
	 Begin
		soma1 := v[i,1] + soma;   med1 := soma1 / 3;
		soma2 := v[i,2] + soma;   med2 := soma2 / 3;
		soma3 := v[i,3] + soma;   med3 := soma3 / 3;
	
		clrscr;
		
	 end;
 end;
 
procedure resultado;
 begin
 	writeln('A mêdia da coluna 1 é: ',med1:0:2);
 	writeln('A mêdia da coluna 2 é: ',med2:0:2);
 	writeln('A mêdia da coluna 3 é: ',med3:0:2);
 end;
   	
Begin


	pergunta;
	readkey;
	tabela;
	readkey;
	med;
	readkey;
	resultado;
	readkey;
  	 
  
End.