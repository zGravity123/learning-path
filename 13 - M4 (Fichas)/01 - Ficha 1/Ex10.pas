Program Ex10;
VAR a, b, s, d, p: INTEGER;
PROCEDURE calculos(x, y: INTEGER; VAR soma, diferenca, produto: INTEGER);
BEGIN
	soma := x + y;  // soma
	diferenca := x - y;  // Diferença
	produto := x * y;  // produto
END;
BEGIN
a := 10;
b := 5;
calculos(a, b, s, d, p);
WRITELN('Soma: ', s);
WRITELN('Diferença: ', d);
WRITELN('Produto: ', p);
END.