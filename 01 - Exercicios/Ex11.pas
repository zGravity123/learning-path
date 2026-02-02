Program Ex12 ;

var A, B:integer;
	med  :real;
  
Begin

	writeln('Introduza o dois números');
	readln(A, B);
	med:=(A+B)/2;
	
	writeln('A media é: ', med);
	writeln('A media é: ', med:0:2); // Casas decimais: o valor '2' exibe duas casas após a vírgula (ex.: 5.00), enquanto o padrão original mostra seis (ex.: 5.000000)
	readkey;
	                               
End.