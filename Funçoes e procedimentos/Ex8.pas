Program Ex8;
PROCEDURE tabuada(numero: INTEGER);
VAR i: INTEGER;
BEGIN
WRITELN('Tabuada do ', numero);
FOR i := 1 TO 10 DO
WRITELN(numero, ' x ', i, ' = ', numero * i);
END;
BEGIN
tabuada(7);    // 7 x 1 = 7
							 // 7 x 2 = 14
							 // 7 x 3 = 21
END.