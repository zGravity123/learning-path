Program Pzim ;
var frase:string;
		i:integer;

Begin


	Writeln('Digite uma frase');
	readln(frase);
	
	for i := length(frase) downto 1 do
	 Begin
		write(frase[i]);
	 End;	
  
End.