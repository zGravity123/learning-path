Program Pzim ;
var
    n, i, soma: integer;
Begin
		textcolor(Cyan);
    writeln('Digite um número');
    readln(n);
    clrscr;
    
    soma := 0;

    for i := 1 to n do
        soma := soma + i;
    
    writeln('A soma dos números de 1 até ', n, ' é: ', soma);
    
    readkey; 
End.