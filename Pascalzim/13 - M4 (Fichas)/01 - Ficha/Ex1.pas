Program Ex1;
VAR num, resultado: INTEGER;
FUNCTION quadrado(num: integer): INTEGER;
BEGIN
	quadrado := num * num;
END;
BEGIN
WRITE('Digite um número: ');
READLN(num);
resultado := quadrado(num);
WRITELN('O quadrado é: ', resultado);
END.