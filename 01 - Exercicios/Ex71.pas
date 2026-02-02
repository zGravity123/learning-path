Program Pzim;
var
    n: real;
Begin
    textcolor(Cyan);
    writeln('Escreva um número de 1 a 5');
    readln(n);
    
    if (n <= 1.2) then
        writeln('Reduzido')
    else if (n > 1.2) and (n <= 3) then
        writeln('Medio')
    else if (n > 3) and (n <= 4.5) then
        writeln('Elevado')
    else
        writeln('Nivel Invalido');

    readkey;
End.
