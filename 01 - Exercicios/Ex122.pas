Program Pzim ;

var valor:integer;

function par (numero: integer):boolean;
Begin

	if (numero mod 2) = 0 then
		par := true
	else
		par := false
	end; 
	<

Begin
	writeln('Introduza um valor');
	readln(valor);
	 
	if par(valor) = true then
	 writeln('O valor é Par!')
	 	else
	 		writeln('O valor é impar');
End.