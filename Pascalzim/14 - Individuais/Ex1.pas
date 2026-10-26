Program Pzim ;
var frase:string;
		i:integer;

Begin


	Writeln('Digite uma frase');
	readln(frase);
	
	for i := 1 to length(frase) do
	 Begin
		writeln(frase[i]);
	 End;	
  
End.