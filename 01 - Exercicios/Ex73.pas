Program Pzim ;
var p:string;
     i, num:integer;
Begin
  
  writeln('Introduza uma palavra');
  readln(p);
  
  num:=length(p);
  
  for i:=num downto 1 do
  	begin
  		writeln(p[i]);
   end;
 readkey;
  
End.