Program Pzim ;
var aprovados,i:integer;
		esclh:string;
		med,n:real;
Begin
  
  i := 0;
  aprovados := 0;
  
  writeln('Introduza a nota do aluno N.',i);
  readln(n);
  
  		med := (n + med);
  		
  		if  n >= 9.5 then
  			aprovados := aprovados + 1;
  		i := i + 1;
  	
  repeat
  	clrscr;
  	writeln('Introduza a nota do aluno N.',i);
  	readln(n);
  	
  		med := (n + med);
  		
  		if  n >= 9.5 then
  			aprovados := aprovados + 1;
  		i := i + 1;
  	
  	writeln('Calcular a média de outro aluno [S]im [N]ão?');
  	readln(esclh);
  	esclh := upcase(esclh);
  until esclh = 'N';
  
   	med := med / i;
  
  	writeln('A mêdia é: ',med:2:0,'. ',aprovados,' alunos foram aprovados');
  	readkey;

  	
  

End.