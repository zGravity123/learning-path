Program Pzim ;
var v:array[1..30] of integer;
		i,pares,impares,max:integer;
Begin
  
  
  pares := 0;
  impares := 0;
  max := 0;
  
  
  textcolor(Cyan);
  
  for i := 1 to 3 do
   Begin
  	writeln('Introduza o valor #',i);
  	readln(v[i]);
  	
  	if (v[i] mod 2 = 0) then 
  		pares := pares + 1;
  	if (v[i] mod 2 <> 0) then 
  		impares := impares + 1;	
  		
  	if (v[i] > max) then
  		max := v[i];
  	clrscr;
   End;
   
   writeln('------------------//------------------');
   writeln(' Existem ',pares,' valores pares!');
   writeln(' Existem ',impares,' valores impares!');
   writeln(' O maior valor introduzido é: ',max);
   writeln('------------------//------------------');
   readkey;
End.