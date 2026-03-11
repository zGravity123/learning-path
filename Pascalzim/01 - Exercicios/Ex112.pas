Program Pzim ;

var 
		num:integer;
 procedure lerdados;
	Begin
		textcolor(cyan);
		writeln('Digite um número inteiro');
		readln(num);
		clrscr;
	end;
	
 procedure conta;
  Begin 	
  	textcolor(cyan);
  	writeln('A raiz quadrada é ',sqrt(num):0:2);
  end;


 procedure dobro;
  Begin
  	textcolor(cyan);
    writeln('O dobro do número digitado: ',num * 2);
  end;

Begin

	lerdados;
	conta;
	dobro;
	readkey;
  
End.