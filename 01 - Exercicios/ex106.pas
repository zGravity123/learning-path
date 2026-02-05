Program Pzim ;
var vetor:array[1..10] of integer;
		i:integer;
		op:string;
label home;
Begin
home:
   // um vetor com 10 posiçoes, o vetor deve ser preenchido automaticamente com uma sequenciaa de 1 e 0
   
   textcolor(Cyan);
   for i := 1 to 10  do
    begin
			 
			 if (i mod 2 = 0) then
			 	vetor[i] := 1
			 else
			 	vetor[i] := 0;
			 
			 writeln(vetor[i]);
			  
    end;
    readkey;
    
  clrscr;
  
  writeln('Deseja reniciar o Progama?');
  writeln('      [S]im ou [N]ão      ');
  readln(op);
  
  op := upcase(op);
  
  if (op = 'S') then
   goto home
  else
  
   readkey;
End.