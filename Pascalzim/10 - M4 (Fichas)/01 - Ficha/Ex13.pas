Program Ex13;
VAR n1, n2, n3: REAL;
media: REAL;
FUNCTION calcular_media(a, b, c: REAL): REAL;
BEGIN
	calcular_media := (n1 + n2 + n3) / 3
END;
PROCEDURE verificar_resultado(m: REAL);
BEGIN
	if (m >= 10) then
		writeln('Passou!')
	else
		writeln('Reprovou!');

END;
BEGIN
WRITE('Nota 1: ');
READLN(n1);
WRITE('Nota 2: ');
READLN(n2);
WRITE('Nota 3: ');
READLN(n3);
media := calcular_media(n1,n2,n3);
verificar_resultado(media);
END.