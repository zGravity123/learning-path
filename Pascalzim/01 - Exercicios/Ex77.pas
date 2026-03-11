Program Pzim;
var
  b: string;
  i, decimal, potencia: integer;
begin

  textcolor(Cyan);
  writeln('Digite um valor binário com 8 bits');
  readln(b);

  if Length(b) <> 8 then
  begin
    writeln('ERRO! O valor binário deve ter exatamente 8 bits');
    exit;
  end;

  decimal := 0;
  potencia := 1;

  for i := 8 downto 1 do
  begin
    if b[i] = '1' then
      decimal := decimal + potencia;
    potencia := potencia * 2;
  end;
  clrscr;
  
	if (decimal >= 1) and (decimal <= 10) then
		begin
  		writeln('O valor decimal é: ', decimal);
  		writeln(b, ' -> ',decimal);
  		readkey;
	end
	
	else
  	writeln('O valor decimal está fora do intervalo de 1 a 10');

end.
