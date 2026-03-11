Program Ex6;
VAR nota: INTEGER;
PROCEDURE validar(n: INTEGER);
BEGIN
IF (n >= 0) AND (n <= 100) THEN
WRITELN('Nota válida!')
ELSE
	writeln('ERRO! Nota Inválida!');
END;
BEGIN
WRITE('Digite uma nota: ');
READLN(nota);
validar(nota);
END.