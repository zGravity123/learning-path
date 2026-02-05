Program Ex100 ;
var v1:array[1..6] of integer;
		v2:array[1..6] of integer;
		iguais,i:integer;
		op:string;
		
label home;
Begin

home:
	textcolor(Cyan);
	
	for i := 1 to 6 do
	  Begin
	  	clrscr;
			writeln('Introduza o valor 1 (#',i,')');
			readln(v1[i]);
    end;  
  
  for i := 1 to 6 do
	  Begin
	  	clrscr;
			writeln('Introduza o valor 2 (#',i,')');
			readln(v2[i]);
    end;  

  for i := 1 to 6 do
	  Begin
	  	if v1[i] = v2[i] then
	  		iguais := iguais + 1;
    end; 
    
  writeln('Existem ',iguais,' valores iguais!');
  readkey;
		 
  readkey;
  
  clrscr;
  
  writeln('Deseja reniciar o Progama?');
  writeln('      [S]im ou [N]ão      ');
  readln(op);
  
  op := upcase(op);
  
  if (op = 'S') then
   goto home
  else
 
End.