Program Pzim ;

	var texto : Text;
	 x:char;
	 n,i:integer;
	 turma:string;
	 
Begin

	assign (texto, 'numeros.txt'); // Associa a variavel texto fichero tgpsi.txt
	
	rewrite(texto); // Faz a abertura do ficheiro + modo de abertura
	
	for i := 1 to 5000 do
		begin
			n := random(500);
			if n mod 2 = 0 then
			
				writeln(texto, n);
			
		end;
	clrscr;
	
	close(texto); // Fecho o ficheiro -> grava
	
	Reset(texto); // Colocar o ficheiro pronto para leitura
	
	while not eof(texto) do // eof = end of file
	 Begin
	 	read(texto,x);
	 	write(x);
	 end;
   readkey; 
End.