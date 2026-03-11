Program Pzim ;
var num, quant:integer;

procedure obterdados;
 Begin
 	writeln('Calculos multiplos');
 	writeln('Introduza um número');
 	readln(num);
 	writeln('Quantos multiplos quer?');
 	readln(quant);
 end;
 
procedure calcular;
var i, mult:integer;
begin
  for i := 1 to quant do
   begin
   	mult := i*num;
   	writeln(mult);
   end;
end;
  
Begin
	obterdados;
	calcular;
	writeln('Introduza um número');
	readln(num);
	calcular;
	readkey;
  
  
End.