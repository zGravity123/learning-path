Program Pzim ;

	var vet:array[1..3] of integer;
	i:integer;

Begin

	writeln('Digite a posição 1');
	readln(vet[1]);
  
  writeln('Digite a posição 2');
	readln(vet[2]);
	
	writeln('Digite a posição 3');
	readln(vet[3]);

	clrscr;
 
 
  for i:= 1 to 3 do
   Begin
   	writeln(vet[i]);
   end;
   
  readkey;
  
End.