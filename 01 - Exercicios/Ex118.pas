Program Pzim ;
var v:array[1..10] of integer;
		 op,soma,i,pares,impares,max,min:integer;
		 med:real;
		 
Procedure Menu;
 Begin
 		writeln('Menu:');
 		writeln('1 - Gerar números aleatórios');
 		writeln('2 - Listar números');
 		writeln('3 - Média dos números');
 		writeln('4 - Número de valores Pares');
 		writeln('5 - Númer de valores impares');
 		writeln('6 - Valor Máximo');
 		writeln('7 - Valor Minimo');
 		writeln('');
 		writeln('8 - Sair');
 End;
 
Procedure Ler_op;
 Begin
 	readln(op);
 End;

procedure Gerar;
 Begin
 	 for i := 1 to 10 do
 	  Begin
 			randomize;
 			v[i] := random(1000);
 	 end;
 End;
 
procedure Listar;
 Begin
 	 for i := 1 to 10 do
 	  Begin
 			writeln(v[i]);
 	 end;
 End;

procedure Media;
 Begin
 	 for i := 1 to 10 do
 	  Begin
 			soma := v[i] + v[i];
 			med := v[i]/10;
 	 end;
 End;
 
procedure Valores_pares;
 Begin
 	 for i := 1 to 10 do
 	  Begin
 			if (v[i] mod 2 = 0) then
 				writeln(v[i]);
 	 end;
 End;
 
procedure Valores_impares;
 Begin
 	 for i := 1 to 10 do
 	  Begin
 			if (v[i] mod 2 <> 0) then
 				writeln(v[i]);
 	 end;
 End;
 
procedure valor_max;
 Begin
 	 for i := 1 to 10 do
 	  Begin
 			if (v[i] > max) then
 				max := v[i];
 	 end;
 End;               

procedure valor_min;
 Begin
 	 for i := 1 to 10 do
 	  Begin
 			if (v[i] < min) then
 				min := v[i];
 	 end;
 End;

 procedure sair;
 Begin
 End;

Begin
 repeat
 Menu;
 Ler_op;
 	case op of
 		1: Gerar;
 		2: Listar;
 		3: Media;
 		4: Valores_pares;
 		5: valores_impares;
 		6: valor_max;
 		7: valor_min;
 		8: break;
 	end;
 	
 	until i = 100;
readkey;

End.
