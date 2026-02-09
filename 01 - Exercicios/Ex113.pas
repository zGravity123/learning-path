Program Pzim ;

var 
		num:integer;
		nome1,nome22:string;
 procedure lerdados;
	Begin
		textcolor(cyan);
		writeln('Digite o primeiro nome');
		readln(nome1);
		clrscr;
	end;
	
 procedure nome2;
  Begin 	
  	textcolor(cyan);
  	writeln('Digite o ultimo nome');
  	readln(nome22);
  end;


 procedure resultado;
  Begin
  	textcolor(cyan);
    writeln('O nome completo é: ',nome1,' ',nome22);
  end;

Begin

	lerdados;
	nome2;
	resultado;
	readkey;
  
End.