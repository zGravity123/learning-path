Program Pzim ;
var i:integer;
		mdt:array[1..3] of integer;

Begin
  textcolor(Cyan);
  for i := 1 to 3 do
  begin
  	writeln('Quais são as medidas dos três lados do Triângulo? (lado #',i,')');
  	readln(mdt[i]);
  end;
  
  if (mdt[1] = mdt[2]) and (mdt[2] = mdt[3]) then
  	clrscr;
  	writeln('O Triângulo é equilátero');
  	
  if ((mdt[1] = mdt[2]) and (mdt[1] <> mdt[3])) or
     ((mdt[1] = mdt[3]) and (mdt[1] <> mdt[2])) or
   	 ((mdt[2] = mdt[3]) and (mdt[1] <> mdt[2])) then
   	clrscr;
  	writeln('O Triângulo é Isósceles');
  if (mdt[1] <> mdt[2]) and (mdt[1] <> mdt[3]) and (mdt[2] <> mdt[3]) then
  	clrscr;
		writeln('Triângulo Escaleno');
 readkey; 
End.
