Program Pzim ;
var contador:integer;
						 senha:string;
Begin
	textcolor(Cyan);
	contador:= 0;
  repeat
   writeln('Introduza a sua senha');
   	readln(senha);
   	contador:= contador + 1;
   	clrscr;
  until (senha = 'admin');
  	writeln('Sucesso! Está loggado na conta Admin.');
  	writeln('Conseguiste com ',contador,' tentativas');
  readkey;
  	
End.