Program Pzim ;

var teste,trabalho,media:real;
 procedure lerdados;
	Begin
		writeln('Digite a nota do teste');
		readln(teste);
		clrscr;
		writeln('Digite a nota do trabalho');
		readln(trabalho);
	end;
	
 procedure conta;
 var media:real;
  Begin
  	media := teste * 0.60 + trabalho * 0.40;
  	writeln('A media é: ',media:0:2);
  end;

Begin

	lerdados;
	conta;
	readkey;
  
End.