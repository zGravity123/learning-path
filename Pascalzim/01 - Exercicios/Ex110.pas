Program Pzim ;
var num:integer;

procedure lerdados;
Begin
	writeln('Introduza um valor');
	readln(num);
end;

Begin
	
	lerdados;
	
	writeln('O número introduzido pelo procedimento foi ',num);
	
	num := num * 2;
	
	writeln('O número introduzido e manipulado é ',num);
  
End.