Program Pzim ;
Begin

	writeln('Introduza o nome do arquivo (e.g: example.txt)');
	readln(nome);
	
	assign(arq, nome);
	reset(arq);
  
End.