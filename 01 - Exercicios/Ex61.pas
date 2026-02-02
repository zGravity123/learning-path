Program Ex61 ;
var contapar,contaimpar,n,i:integer;
Begin 

   contapar:= 0;
   contaimpar:= 0;

  for i := 1 to 100 do
  	begin
    	n := Random(1001);
    	textcolor(Yellow);
    	writeln(n);
    	if (n mod 2) = 0 then
    		contapar:= contapar + 1
			else
				contaimpar:= contaimpar + 1 
  	end;
  	
  		writeln(contapar, ' Números pares');
  		writeln(contaimpar, ' Números impares');
  		readkey;
  
  
  
  
End.