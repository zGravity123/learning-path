Program Ex63 ;
var n,nt,A,i:integer;
		med:real;
Begin 

  	writeln('Introduza o número de alunos');
  	readln(A);
  	
  	for i:= 1 to A do
  	Begin
  		writeln('Introduza a nota');
  		readln(n);
  		nt:= n + nt;
  		clrscr;
  	end;
  	
  	med:= nt/a;
  	
  	writeln('A media da turma é ', med:0:2);
    readkey;
End.