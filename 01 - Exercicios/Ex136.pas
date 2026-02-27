Program Pzim ;

	var texto : Text;
	 x:char;
	 
Begin

	assign (texto, 'nome.txt'); // Associa a variavel texto fichero tgpsi.txt
	
	rewrite(texto); // Faz a abertura do ficheiro + modo de abertura
	
	writeln(texto, 'Sérgio'); // Escrever para o ficheiro tgpsi.txt
	writeln(texto, 'Almeida');
	
	close(texto); // Fecho o ficheiro -> grava
	
	Reset(texto); // Colocar o ficheiro pronto para leitura
	
	while not eof(texto) do // eof = end of file
	 Begin
	 	read(texto,x);
	 	write(x);
	 end;
   readkey; 
End.