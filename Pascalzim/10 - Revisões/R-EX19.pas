Program Pzim ;
var v:array[1..100] of integer;
		soma,i,contador:integer;
		media:real;

Begin
	textcolor(cyan);
	randomize;
	
	soma := 0;
	
	for i := 1 to 100 do
	begin
	   v[i] := random(100);
	   writeln(v[i]);
	   soma := soma + v[i];
	end;
	
	media := soma / 100;
	
	contador := 0;
	
	for i := 1 to 100 do
	begin
	   if v[i] > media then
	      contador := contador + 1;
	end;      
	      
	writeln('A soma total é: ',soma);
	writeln('A media é: ',media:0:2);
	readkey;
	
end.
