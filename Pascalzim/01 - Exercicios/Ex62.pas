Program Ex62 ;
var n,i:integer;
Begin 

  for i := 1 to 100 do
  	begin
  	  textcolor(Yellow);
    	n := Random(1001);
    	if (n mod 2) = 0 then
    	writeln(n);       
  	end;
  		readkey;
  
End.