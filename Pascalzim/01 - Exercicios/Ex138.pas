Program Pzim ;

	var texto : Text;
	 x:char;
	 turma,n,nn:string;
	 
Begin

	assign (texto, 'nome.txt'); // Associa a variavel texto fichero tgpsi.txt
	
	rewrite(texto); // Faz a abertura do ficheiro + modo de abertura
	
	writeln('Introduza seu primeiro & ultimo nome');
	readln(n,nn);
	writeln('Introduza a sua turma');
	readln(turma);
	
	writeln(texto, n); // Escrever para o ficheiro tgpsi.txt
	writeln(texto, nn);
	writeln(texto, turma);
	
	close(texto); // Fecho o ficheiro -> grava
	
	Reset(texto); // Colocar o ficheiro pronto para leitura
	
	while not eof(texto) do // eof = end of file
	 Begin
	 	read(texto,x);
	 	write(x);
	 end;
   readkey; 
End.