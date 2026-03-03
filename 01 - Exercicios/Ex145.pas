Program Pzim ;
var texto: Text;
		i: integer;
Begin

	randomize;
	
	assign(texto, 'caracteres.txt' ) ;
	rewrite(texto); 
	
	for i := 1 to 1000 do
   Begin
	 	writeln(texto, chr(random(255)));
	 end;
	
	close(texto);
	readkey; 
End.
